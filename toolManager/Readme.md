# Tool Manager

## The problem statement:

1.Tool Installation Management 

->Download and Install required tools and dependencies automatically 
---->KiCad
---->NgSpice
---->others which are listed in the script

->Ensure compatibility with the system environment
----> Linux
----> Windows

->Handle Version control of the tools and dependencies 


2.Update and Upgrade system 

->Check for updates of the external tools and libraries
->Functionality for the user to update these tools and dependencies


3.User Interface 

-> Provide log of steps taken 
-> Provide GUI or Cli
-> Allow the user to see installed tools , versions and updates if available 


#How the Tool manager works:

## files/modules and their responsibility: 

main.py ->  responsible for calling all the modules 
dependencies.json ->    keeps tracks of all the dependencies and tools and the version currently in use in eSim
dependencies_checker.py ->  module responsible for checking if the user has the dependency and if it has returns the version 
install_manager.py ->   module responsible for installing the dependencies and tools
update_manager.py ->    moduel responsible for checking and updating the dependencies 



## flow of module calling --->

main.py --> dependencies.json --> dependency_checker.py -> install_manager.py / update_manager.py


# How tool Manager works :

Tool manager has different modules each for different tasks as mentioned above in files/modules and their responsibilities , it includes instraller , update_manager , dependency_checker , config_manager and ui_manager

--> the main.py is the main file reponsible for calling all the modules 