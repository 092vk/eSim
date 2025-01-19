# module for handling installations 
# of tools and dependencies

# tools and dependencies to be installed --> Kicad , ngspice , verilator , ghdl and other dependencies

# importing py libraries
import subprocess
import platform
import logging
import json
import tarfile
import os
import sys

# All variables goes here
config_dir="$HOME/.esim"
config_file="config.ini"
eSim_Home='pwd'
ngspiceFlag=0
nghdl="nghdl-simulator"
ghdl="ghdl-0.37"
verilator="verilator-4.210"
llvm_version="9"
config_dir="$HOME/.nghdl"
config_file="config.ini"
src_dir='pwd'
kicadppa = "kicad/kicad-6.0-releases"

# setting the log file
logging.basicConfig(filename="tool_manager.log", level=logging.INFO)


#error or exit function
def error_exit():
    print("\n\nError! Kindly resolve the above error(s) and try again.")
    print("\nAborting Installation...\n")


# function to install dependencies listed in install-esim.sh
def install_dependencies_i():
    try:
        # Load dependencies from JSON file
        with open('dependencies.json', 'r') as f:
            dependencies = json.load(f)
        
        os_type = platform.system()

        # Update apt repository for Linux
        if os_type == "Linux":
            if "apt" in dependencies:
                for package in dependencies["apt"]:
                    logging.info(f"Installing {package}...")
                    subprocess.run(["sudo", "apt-get", "install", "-y", package], check=True)

            # pip is installed
            subprocess.run(["sudo", "apt", "install", "-y", "python3-pip"], check=True)

            # Install dependencies using pip
            if "pip" in dependencies:
                for package in dependencies["pip"]:
                    logging.info(f"Installing {package}...")
                    subprocess.run(["pip3", "install", package], check=True)

        # Install dependencies for Windows
        elif os_type == "Windows":
            # Install dependencies using choco
            if "choco" in dependencies:
                for package in dependencies["choco"]:
                    logging.info(f"Installing {package}...")
                    subprocess.run(["choco", "install", package, "-y"], check=True)

            # Ensure pip is installed for Python packages
            logging.info("Installing Python dependencies using pip...")
            if "pip" in dependencies:
                for package in dependencies["pip"]:
                    logging.info(f"Installing {package}...")
                    subprocess.run(["pip", "install", package], check=True)

        logging.info("All dependencies installed successfully.")

    except subprocess.CalledProcessError as e:
        logging.error(f"An error occurred during installation: {e}")
    except FileNotFoundError:
        logging.error("The dependencies.json file was not found.")



# function to install dependencies listed in nghdl
def install_dependencies_n():
    try:
        with open('toolManager/dependencies.json', 'r') as f:
            dependencies = json.load(f)
    except FileNotFoundError:
        logging.error("dependencies.json file not found.")
        print("dependencies.json file not found.")
        error_exit()

    for pkg in dependencies.get("dependencies", []):
        print(f"Installing {pkg}...")
        if platform.system() == "Linux":
            try:
                subprocess.run(["sudo", "apt", "install", "-y", pkg], check=True)
                logging.info(f"{pkg} installed successfully.")
            except subprocess.CalledProcessError:
                logging.error(f"Failed to install {pkg}.")
                error_exit()
        elif platform.system() == "Windows":
            try:
                subprocess.run(["choco", "install", "-y", pkg], check=True)
                logging.info(f"{pkg} installed successfully.")
            except subprocess.CalledProcessError:
                logging.error(f"Failed to install {pkg}.")
                error_exit()
        else:
            logging.error("Unsupported operating system.")
            print("Unsupported operating system.")
            error_exit()


# function to install kicad
def install_kicad():
    kicadppa = "kicad/kicad-6"  # Define the PPA

    print("Checking if KiCad is already installed...")

    if platform.system() == "Linux":
        # Check if KiCad is installed
        try:
            subprocess.run(["dpkg", "-l", "kicad"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True)
            print("KiCad is already installed.")
            return  # Exit the function if KiCad is already installed
        except subprocess.CalledProcessError:
            print("KiCad is not installed. Proceeding with installation...")

            # Check if the PPA is already added
            try:
                subprocess.run(["grep", "-h", "-r", f"^deb.*{kicadppa}", "/etc/apt/sources.list*"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            except subprocess.CalledProcessError:
                # If the PPA is not found, add it
                print("Adding KiCad-6 PPA to local apt-repository...")
                subprocess.run(["sudo", "add-apt-repository", "-y", f"ppa:{kicadppa}"], check=True)
                subprocess.run(["sudo", "apt-get", "update"], check=True)

            print("Installing KiCad and its components...")
            try:
                subprocess.run(["sudo", "apt-get", "install", "-y", "--no-install-recommends",
                                "kicad", "kicad-footprints", "kicad-libraries", "kicad-symbols", "kicad-templates"], check=True)
                print("KiCad installed successfully on Linux.")
            except subprocess.CalledProcessError:
                print("Failed to install KiCad on Linux.")

    elif platform.system() == "Windows":
        # Check if KiCad is installed using Chocolatey
        try:
            subprocess.run(["choco", "list", "--local-only", "kicad"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True)
            print("KiCad is already installed.")
            return  # Exit the function if KiCad is already installed
        except subprocess.CalledProcessError:
            print("KiCad is not installed. Proceeding with installation...")

            print("Installing KiCad ...")
            try:
                subprocess.run(["choco", "install", "-y", "kicad"], check=True)
                print("KiCad installed successfully on Windows.")
            except subprocess.CalledProcessError:
                print("Failed to install KiCad on Windows.")

    else:
        logging.error("Unsupported operating system.")
        print("Unsupported operating system.")
        sys.exit(1)  # Exit with error code


# function to install verilator dependencies 
def install_verilator_dependencies(verilator):
    print(f"Installing dependencies for {verilator}...")

    if platform.system() == "Linux":
        try:
            subprocess.run([
                "sudo", "apt", "install", "-y",
                "make", "autoconf", "g++", "flex", "bison"
            ], check=True)
            logging.info("Verilator dependencies installed successfully ....")
            print("Verilator dependencies installed successfully on Linux.")
        except subprocess.CalledProcessError as e:
            logging.error(f"Failed to install Verilator dependencies : {e}")
            print("Failed to install Verilator dependencies")
            error_exit()

    elif platform.system() == "Windows":
        try:
            subprocess.run([
                "choco", "install", "-y",
                "make", "autoconf", "gcc", "flex", "bison"
            ], check=True)
            logging.info("Verilator dependencies installed successfully...")
            print("Verilator dependencies installed successfully")
        except subprocess.CalledProcessError as e:
            logging.error(f"Failed to install Verilator dependencies : {e}")
            print("Failed to install Verilator dependencies on Windows.")
            error_exit()
    else:
        print("Unsupported operating system.")
        logging.error("Unsupported operating system.")
        error_exit()


# function to install ngspice
def install_ngspice():
    if platform.system() == "Linux":
        try:
            subprocess.run(["sudo", "apt-get", "install", "-y", "ngspice"], check=True)
            logging.info("Ngspice installed successfully.")
        except subprocess.CalledProcessError:
            logging.error("Failed to install Ngspice.")

    elif platform.system() == "Windows":
        try:
            subprocess.run(["choco", "install", "-y", "ngspice"], check=True)
            logging.info("Ngspice installed successfully.")
        except subprocess.CalledProcessError:
            logging.error("Failed to install Ngspice.")



def install_ghdl(ghdl, llvm_version):
    try:
        print(f"Installing {ghdl} LLVM.................................")

        # Extract the tar file
        with tarfile.open(f'{ghdl}.tar.xz', 'r:xz') as tar:
            tar.extractall()
            print(f"{ghdl} successfully extracted")

        print("Changing directory to GHDL installation")
        os.chdir(ghdl)

        print("Configuring GHDL build as per requirements")
        # Change file permissions on Linux
        if platform.system() == "Linux":
            subprocess.run(['chmod', '+x', 'configure'], check=True)

        # Configure GHDL with the provided LLVM version
        subprocess.run(['./configure', f'--with-llvm-config=/usr/bin/llvm-config-{llvm_version}'], check=True)
        print("Building the install file for GHDL LLVM")

        # Build the project
        subprocess.run(['make'], check=True)

        # Install the package according platform
        if platform.system() == "Linux":
            subprocess.run(['sudo', 'make', 'install'], check=True)
        elif platform.system() == "Windows":
            print("Installing GHDL on Windows...")
            subprocess.run(['make', 'install'], check=True)

        print("GHDL installed successfully")

    except subprocess.CalledProcessError as e:
        print(f"An error occurred while installing GHDL: {e}")
        error_exit()
    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        error_exit()


