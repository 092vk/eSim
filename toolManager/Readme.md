# Tool Manager

## Overview

The Tool Manager is designed to automate the installation, updating, and management of essential tools and dependencies required for eSim. This manager ensures that required tools are compatible with the system environment, handles version control, and provides a user-friendly interface for monitoring installed tools and updates.

## Problem Statement

### 1. Tool Installation Management 

- **Automated Installation:** Download and install required tools and dependencies automatically, including:
  - KiCad
  - NgSpice
  - Additional tools and dependencies listed in the configuration script

- **System Compatibility:** Ensure compatibility with the operating system:
  - Linux
  - Windows

- **Version Control:** Manage versions of tools and dependencies to maintain consistency.

### 2. Update and Upgrade System 

- **Update Checks:** Check for updates of external tools and libraries.
- **Upgrade Functionality:** Provide functionality for the user to update these tools and dependencies as needed.

### 3. User Interface 

- **Logging:** Provide logs of all actions taken by the Tool Manager.
- **Interface Options:** Offer both CLI and GUI options for user interaction.
- **Tool Management Overview:** Allow the user to view installed tools, their versions, and any available updates.

## How the Tool Manager Works

### Files/Modules and Their Responsibilities 

- **main.py**  
  Responsible for coordinating all the modules.

- **dependencies.json**  
  Tracks all required dependencies and tools, along with their versions, for eSim.

- **dependencies_checker.py**  
  Checks if the required dependencies are already installed on the user’s system and retrieves their versions.

- **install_manager.py**  
  Handles the installation of tools and dependencies.

- **update_manager.py**  
  Manages update checks and performs updates for tools and dependencies.

### Module Call Flow 

The Tool Manager operates in the following flow:

```plaintext
main.py --> dependencies.json --> dependency_checker.py --> install_manager.py / update_manager.py
