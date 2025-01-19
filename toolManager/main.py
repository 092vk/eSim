# main script to run the tool manager

"""
main function calls the install and update functions for the tools and dependencies required for eSim using the modules install_manager and update_manager
"""

import logging
import subprocess
import platform
import json

# Function to load JSON data from a file
def load_json(file_path):
    with open(file_path, 'r') as file:
        data = json.load(file)
    return data


from install_manager import install_kicad,install_dependencies_i, install_dependencies_n,install_verilator_dependencies,install_ngspice, install_ghdl

from update_manager import update_kicad, update_ngspice, update_verilator, update_ghdl , update_dependencies

logging.basicConfig(filename="tool_manager.log", level=logging.INFO)

#error or exit function
def error_exit():
    print("\n\nError! Kindly resolve the above error(s) and try again.")
    print("\nAborting Installation...\n")

           
def main():

    # welcome message
    print("Welcome to eSim Tool Manager")
    print("\nThis tool will help you install and update the tools required for eSim.\n")
    print("The tools required for eSim are:\n")
    print("1. KiCad\n2. Ngspice\n3. GHDL\n4. Verilator , other dependencies mentioned in install.sh , rest which are missing will be added eventually ....\n")

    # check the operating system
    if platform.system() == "Linux":
        print("Operating System: Linux\n")
    elif platform.system() == "Windows":
        print("Operating System: Windows\n")
    else:
        logging.error("Unsupported operating system.")
        print("Unsupported operating system.")
        error_exit()


    #extracting version from dependencies.json
    # json_data = load_json('toolManager/dependencies.json') 
    # ghdl = json_data["ghdl"]
    # llvm_version = json_data["llvm"]

    # ask the user if they want to install or update the tools
    print("Do you want to install or update the tools?")
    print("1. Install\n2. Update\n")
    choice1 = input("Enter your choice: ")
    if(choice1 == "1"):

        print("Do you want to do full installation or selective installation?")
        print("1. Full Installation\n2. Selective Installation\n")
        choice2 = input("Enter your choice: ")

        if(choice2 == "1"):
            print(" FUll Installation of eSim...")
            install_kicad()
            install_dependencies_i()
            install_dependencies_n()
            # install_verilator_dependencies()
            install_ngspice()
            install_ghdl(ghdl, llvm_version)

        elif(choice2 == "2"):
            #handle selective installation
            print("Selective Installation of tools...")
            print("checking for which tools are already installed and whcih are missing ...")
            print("Installing the missing tools...")
            # check for missing dependencies and install them

        else:
            print("Invalid choice")
        
    elif(choice1 == "2"):
        print("Updating the tools...")
        print("This might not work as some tools have different commands to check version insted of simple -v or --version , also they give info other than version , which can cause problem on knowing their exact version , it needs more time  , it is put on do it later ")
        # update_kicad()
        update_ngspice()
        update_verilator()
        update_ghdl(ghdl, llvm_version)
        update_dependencies()

    else:
        print("Invalid choice")


if __name__ == "__main__":
    main()
