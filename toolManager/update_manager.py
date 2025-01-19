# module for handling updates 

import json
import logging

from dependency_checker import check_installed_version , check_ngspice_version, check_kicad_version

from install_manager import install_kicad,install_dependencies_i, install_dependencies_n,install_verilator_dependencies,install_ngspice, install_ghdl

# Function to load JSON data from a file
def load_json(file_path):
    with open(file_path, 'r') as file:
        data = json.load(file)
    return data


# Function to update the dependencies
def update_dependencies(tool):
    """Update a tool if a newer version is available."""
    tool_name = tool["name"]
    tool_version = tool["version"]
    installed_version = check_installed_version(tool_name)

    if installed_version != tool_version:
        print(f"Updating {tool_name} from version {installed_version} to {tool_version}...")
        install_verilator_dependencies()
        install_dependencies_i()
        install_dependencies_n()
    else:
        print(f"{tool_name} is already up to date.")

# Function to update KiCad
def update_kicad():
    """Update KiCad to the latest version."""
    print("Updating KiCad...")
    kiCadVersion = check_kicad_version()

    #extracting version from dependencies.json
    json_data = load_json('toolManager/dependencies.json') 
    Req_kicad_version = None
    for tool in json_data["tools"]:
        if tool["name"] == "KiCad":
            kicad_version = tool["version"]
            break

    if(kiCadVersion != Req_kicad_version):
        install_kicad()
    else:
        print("KiCad is already up to date.")
    
# Function to update Ngspice
def load_json(filename):
    try:
        with open(filename, 'r') as f:
            return json.load(f)
    except FileNotFoundError:
        logging.error(f"{filename} file not found.")
        print(f"{filename} file not found.")
        error_exit()  # or handle the error as needed

def update_ngspice():
    """Update Ngspice to the latest version."""
    print("Updating Ngspice...")
    ngSpiceVersion = check_ngspice_version()

    # Extracting version from dependencies.json
    json_data = load_json('dependencies.json')  # This now uses the try-except handling
    Req_ngSpice_version = None
    for tool in json_data["tools"]:
        if tool["name"] == "Ngspice":
            Req_ngSpice_version = tool["version"]
            break
        
    if ngSpiceVersion == Req_ngSpice_version:
        install_ngspice()
    else:
        print("Ngspice is already up to date.")

# Function to update Verilator
def update_verilator():
    """Update Verilator to the latest version."""
    print("Updating Verilator...")
    install_verilator_dependencies('veriloator version can be given here ....')

# Function to update GHDL
def update_ghdl(ghdl, llvm_version):
    """Update GHDL to the latest version."""
    print("Updating GHDL...")
    install_ghdl(ghdl, llvm_version)
