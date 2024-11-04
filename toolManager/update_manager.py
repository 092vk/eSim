# module for handling updates 

from dependency_checker import check_installed_version , check_ngspice_version, check_kicad_version

from install_manager import install_kicad,install_dependencies_i, install_dependencies_n,install_verilator_dependencies,install_ngspice, install_ghdl

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
    if(kiCadVersion == None):
        install_kicad()
    else:
        print("KiCad is already up to date.")
    
# Function to update Ngspice
def update_ngspice():
    """Update Ngspice to the latest version."""
    print("Updating Ngspice...")
    ngSpiceVersion = check_ngspice_version()
    if(ngSpiceVersion == None):
        install_ngspice()
    else:
        print("Ngspice is already up to date.")

# Function to update Verilator
def update_verilator():
    """Update Verilator to the latest version."""
    print("Updating Verilator...")
    install_verilator_dependencies()

# Function to update GHDL
def update_ghdl(ghdl, llvm_version):
    """Update GHDL to the latest version."""
    print("Updating GHDL...")
    install_ghdl(ghdl, llvm_version)
