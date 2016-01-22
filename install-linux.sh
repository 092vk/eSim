#!/bin/bash 
#===============================================================================
#
#          FILE: install.sh
# 
#         USAGE: ./install.sh --install 
#                 or
#                ./install.sh --uninstall
#                
#   DESCRIPTION: This is installation/uninstallation script for eSim
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Fahim Khan, (fahim.elex@gmail.com)
#  ORGANIZATION: FOSSEE at IIT Bombay.
#       CREATED: Wednesday 15 July 2015 15:26
#      REVISION:  ---
#===============================================================================

ngspiceFlag=0

##All Functions goes here

function installNghdl
{
echo -n "Do you want to install nghdl? (y/n): "
read getNghdl

if [ $getNghdl == "y" -o $getNghdl == "Y" ];then
    echo "Downloading nghdl"
    wget https://github.com/FOSSEE/nghdl/archive/master.zip
    unzip master.zip
    mv nghdl-master nghdl
    rm master.zip

    echo "Installing nghdl"
    cd nghdl/
    ./install-nghdl.sh
    
    if [ $? -ne 0 ];then
        echo -e "\n\n\nNghdl ERROR: Error while installing nghdl\n\n"
        exit 0
    else
        ngspiceFlag=1
        cd ..
    fi
elif [ $getNghdl == "n" -o $getNghdl == "N" ];then
    echo "Proceeding without installing nghdl"
else
    echo "Please select the right option"
    exit 0
fi
}

function addKicadPPA
{
    echo "Adding Kicad PPA to install latest Kicad version"
    #sudo add-apt-repository ppa:js-reynaud/ppa-kicad
    ##Updating to Kicad-4
    sudo add-apt-repository --yes ppa:js-reynaud/kicad-4
    sudo apt-get update

}

function installDependency
{

    echo "Installing Kicad............"
    sudo apt-get install -y kicad
    if [ $ngspiceFlag -ne 1 ];then
        echo "Installing ngspice.........."
        sudo apt-get install -y ngspice
    else
        echo "ngspice already installed......"
    fi
    echo "Installing PyQt4............"
    sudo apt-get install -y python-qt4
    echo "Installing Matplotlib......."
    sudo apt-get install -y python-matplotlib

}

function copyKicadLibrary
{

    #Copy Kicad library made for eSim
    sudo cp -r kicadSchematicLibrary/*.lib /usr/share/kicad/library/
    sudo cp -r kicadSchematicLibrary/*.dcm /usr/share/kicad/library/

    # Full path of 'kicad.pro file'[Verified for Ubuntu 12.04]                  
    KICAD_PRO="/usr/share/kicad/template/kicad.pro"
    KICAD_ORIGINAL="/usr/share/kicad/template/kicad.pro.original"  

    if [ -f "$KICAD_ORIGINAL" ];then
        echo "kicad.pro.original file found....."
        sudo cp -rv kicadSchematicLibrary/kicad.pro ${KICAD_PRO}
    else 
        echo "Making copy of original file"
        sudo cp -rv ${KICAD_PRO}{,.original}                                             
        sudo cp -rv kicadSchematicLibrary/kicad.pro ${KICAD_PRO}
    fi

}

function copySourceCode
{

    #Creating eSim directory
    esim_loc="/opt/eSim"

    if [ -d "$esim_loc" ];then
        #sudo rm -r "$esim_loc"
        #sudo mkdir -v "$esim_loc"

        #Copy source code to eSim directory
        sudo cp -rvp src/configuration/* "$esim_loc/src/configuration"
        sudo cp -rvp src/modelParamXML/* "$esim_loc/src/modelParamXML"
        sudo cp -rvp src/modelEditor/* "$esim_loc/src/modelEditor"
        sudo cp -rvp src/projManagement/* "$esim_loc/src/projManagement"
        sudo cp -rvp src/ngspiceSimulation/* "$esim_loc/src/ngspiceSimulation"
        sudo cp -rvp src/kicadtoNgspice/* "$esim_loc/src/kicadtoNgspice"
        sudo cp -rvp src/browser/* "$esim_loc/src/browser"
        sudo cp -rvp src/frontEnd/* "$esim_loc/src/frontEnd"
        sudo cp -rvp src/ngspicetoModelica/* "$esim_loc/src/ngspicetoModelica"
        sudo cp -rvp kicadSchematicLibrary "$esim_loc"
        sudo cp -rvp images "$esim_loc"
    else
        sudo mkdir -v "$esim_loc"
        #Copy source code to eSim directory
        sudo cp -rvp src "$esim_loc"
        sudo cp -rvp kicadSchematicLibrary "$esim_loc"
        sudo cp -rvp images "$esim_loc"
    fi

    if [ "$?" -eq 1 ];then
        echo "Unable to create /opt/eSim "
        exit 1;
    else
        echo "Created /opt/eSim"
    fi


    #Copy desktop icon file to Desktop
    cp -vp esim.desktop $HOME/Desktop/

    #Copy esim start script
    sudo cp -vp esim-start.sh /usr/bin/esim

    #Change mode of eSim directory
    sudo chmod -R 777 "$esim_loc"



}


###Checking if file is passsed as argument to script

if [ "$#" -eq 1 ];then
    option=$1
else
    echo "USAGE : "
    echo "./install.sh --install"
    exit 1;
fi

##Checking flags

if [ $option == "--install" ];then
    echo "Enter proxy details if you are connected to internet thorugh proxy"
    
    echo -n "Is your internet connection behind proxy? (y/n): "
    read getProxy
    if [ $getProxy == "y" -o $getProxy == "Y" ];then
            echo -n 'Proxy Hostname :'
            read proxyHostname

            echo -n 'Proxy Port :'
            read proxyPort

            echo -n username@$proxyHostname:$proxyPort :
            read username

            echo -n 'Password :'
            read -s passwd

            unset http_proxy
            unset https_proxy
            unset HTTP_PROXY
            unset HTTPS_PROXY
            unset ftp_proxy
            unset FTP_PROXY

            export http_proxy=http://$username:$passwd@$proxyHostname:$proxyPort
            export https_proxy=http://$username:$passwd@$proxyHostname:$proxyPort
            export https_proxy=http://$username:$passwd@$proxyHostname:$proxyPort
            export HTTP_PROXY=http://$username:$passwd@$proxyHostname:$proxyPort
            export HTTPS_PROXY=http://$username:$passwd@$proxyHostname:$proxyPort
            export ftp_proxy=http://$username:$passwd@$proxyHostname:$proxyPort
            export FTP_PROXY=http://$username:$passwd@$proxyHostname:$proxyPort

            echo "Install with proxy"
            #Calling functions
            installNghdl
            addKicadPPA
            installDependency
            copyKicadLibrary
            copySourceCode

    elif [ $getProxy == "n" -o $getProxy == "N" ];then
            echo "Install without proxy"
            
            #Calling functions
            installNghdl
            addKicadPPA
            installDependency
            copyKicadLibrary
            copySourceCode

            if [ $? -ne 0 ];then
                echo -e "\n\n\nFreeEDA ERROR: Unable to install required packages. Please check your internet connection.\n\n"
                exit 0
            fi
    
    else
            echo "Please select the right option"
            exit 0    
    fi


elif [ $option == "--uninstall" ];then
    echo -n "Are you sure ? As it will remove complete eSim including your subcircuit and model library packages(y/n):"
    read getConfirmation
    if [ $getConfirmation == "y" -o $getConfirmation == "Y" ];then
        sudo rm -rf /opt/eSim/
    elif [ $getConfirmation == "n" -o $getConfirmation == "N" ];then
        exit 0
    else 
        echo "Please select the right option"
        exit 0
    fi


else 
    echo "Please select the proper operation."
    echo "--install"
    echo "--uninstall"

fi








