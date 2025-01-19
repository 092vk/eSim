# checks the version of dependecies and tools 

import subprocess
import logging

logging.basicConfig(filename="tool_manager.log", level=logging.INFO)

def check_ngspice_version():
    """Check if Ngspice is installed and retrieve its version."""
    try:
        result = subprocess.run(["ngspice", "-v"], stdout=subprocess.PIPE, text=True)
        return result.stdout.strip().split()[-1]  
        # Assuming version is the last word
    except FileNotFoundError:
        return None

def check_kicad_version():
    """Check if KiCad is installed and retrieve its version."""
    try:
        result = subprocess.run(["kicad", "--version"], stdout=subprocess.PIPE, text=True)
        return result.stdout.strip().split()[-1]
    except FileNotFoundError:
        return None

def check_installed_version(tool_name):
    """Determine the installed version of a tool based on its name."""
    if tool_name == "Ngspice":
        return check_ngspice_version()
    elif tool_name == "KiCad":
        return check_kicad_version()
    else:
        logging.warning(f"Unknown tool: {tool_name}")
        return None
