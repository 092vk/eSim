
#===============================================================================
#
#          FILE: Application.py
# 
#         USAGE: --- 
# 
#   DESCRIPTION: This main file use to start the Application
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Fahim Khan, fahim.elex@gmail.com
#  ORGANIZATION: eSim team at FOSSEE, IIT Bombay.
#       CREATED: Wednesday 21 January 2015 
#      REVISION:  ---
#===============================================================================
import os
import sys
#Setting PYTHONPATH
cwd = os.getcwd()
(setPath,fronEnd) = os.path.split(cwd) 
sys.path.append(setPath)

from PyQt4 import QtGui, QtCore
from configuration.Appconfig import Appconfig
from projManagement.openProject import OpenProjectInfo
from projManagement.newProject import NewProjectInfo
from projManagement.Kicad import Kicad
from projManagement.Validation import Validation
from projManagement import Worker
from frontEnd import ProjectExplorer
from frontEnd import Workspace
from frontEnd import DockArea
from pspicetoKicad.ImportPspice import ImportPspiceLibrary,ConvertPspiceKicad
import time
from PyQt4.Qt import QSize


class Application(QtGui.QMainWindow):
    global project_name	
    """
    Its our main window of application
    """
    def __init__(self,*args):
        """
        Initialize main Application window
        """
        #Calling __init__ of super class
        QtGui.QMainWindow.__init__(self,*args)
        
        #Creating require Object
        self.obj_workspace = Workspace.Workspace()
        self.obj_Mainview = MainView()
        self.obj_kicad = Kicad(self.obj_Mainview.obj_dockarea)
        self.obj_appconfig = Appconfig() 
        self.obj_validation = Validation()
        #Initialize all widget
        self.setCentralWidget(self.obj_Mainview)
        self.initToolBar()
        
        self.setGeometry(self.obj_appconfig._app_xpos,
                         self.obj_appconfig._app_ypos,
                         self.obj_appconfig._app_width,
                         self.obj_appconfig._app_heigth)
        self.setWindowTitle(self.obj_appconfig._APPLICATION) 
        self.showMaximized()
        self.setWindowIcon(QtGui.QIcon('../../images/logo.png'))
        #self.show()
              
        
    def initToolBar(self):
        """
        This function initialize Tool Bar
        """
        #Top Tool bar
        self.newproj = QtGui.QAction(QtGui.QIcon('../../images/newProject.png'),'<b>New Project</b>',self)
        self.newproj.setShortcut('Ctrl+N')
        self.newproj.triggered.connect(self.new_project)
        #self.newproj.connect(self.newproj,QtCore.SIGNAL('triggered()'),self,QtCore.SLOT(self.new_project()))
               
        self.openproj = QtGui.QAction(QtGui.QIcon('../../images/openProject.png'),'<b>Open Project</b>',self)
        self.openproj.setShortcut('Ctrl+O')
        self.openproj.triggered.connect(self.open_project)
                       
        self.importPspiceLib = QtGui.QAction(QtGui.QIcon('../../images/import_icon.png'),'<b>Import PSPICE Library</b>',self)
        self.importPspiceLib.setShortcut('Ctrl+X')
        self.importPspiceLib.triggered.connect(self.import_pspice_lib)
        
        self.convertPspiceKicad = QtGui.QAction(QtGui.QIcon('../../images/Ps2Ki.png'),'<b>Convert PSPICE to KICAD</b>',self)
        self.convertPspiceKicad.setShortcut('Ctrl+X')
        self.convertPspiceKicad.triggered.connect(self.convert_pspice_kicad)
        
        self.exitproj = QtGui.QAction(QtGui.QIcon('../../images/closeProject.png'),'<b>Exit</b>',self)
        self.exitproj.setShortcut('Ctrl+X')
        self.exitproj.triggered.connect(self.exit_project)
        
        self.helpfile = QtGui.QAction(QtGui.QIcon('../../images/helpProject.png'),'<b>Help</b>',self)
        self.helpfile.setShortcut('Ctrl+H')
        self.helpfile.triggered.connect(self.help_project)
        
        self.topToolbar = self.addToolBar('Top Tool Bar')
        self.topToolbar.addAction(self.newproj)
        self.topToolbar.addAction(self.openproj)
        self.topToolbar.addAction(self.importPspiceLib)
        self.topToolbar.addAction(self.convertPspiceKicad)
        self.topToolbar.addAction(self.exitproj)
        self.topToolbar.addAction(self.helpfile)
        
        self.spacer = QtGui.QWidget()
        self.spacer.setSizePolicy(QtGui.QSizePolicy.Expanding,QtGui.QSizePolicy.Expanding)
        self.topToolbar.addWidget(self.spacer)
        self.logo = QtGui.QLabel()
        self.logopic = QtGui.QPixmap(os.path.join(os.path.abspath('../..'),'images','fosseeLogo.png'))
        self.logopic = self.logopic.scaled(QSize(150,150),QtCore.Qt.KeepAspectRatio)
        self.logo.setPixmap(self.logopic)
        self.logo.setStyleSheet("padding:0 15px 0 0;")
        self.topToolbar.addWidget(self.logo)
             
        #Left Tool bar Action Widget 
        self.kicad = QtGui.QAction(QtGui.QIcon('../../images/kicad.png'),'<b>Open Schematic</b>',self)
        self.kicad.triggered.connect(self.obj_kicad.openSchematic)
        
        self.conversion = QtGui.QAction(QtGui.QIcon('../../images/ki-ng.png'),'<b>Convert Kicad to Ngspice</b>',self)
        self.conversion.triggered.connect(self.obj_kicad.openKicadToNgspice)
               
        self.ngspice = QtGui.QAction(QtGui.QIcon('../../images/ngspice.png'), '<b>Simulation</b>', self)
        self.ngspice.triggered.connect(self.open_ngspice)
        
        """
        #Removing PCB and Footprint Editor as it will start from eeschema
        self.footprint = QtGui.QAction(QtGui.QIcon('../../images/footprint.png'),'<b>Footprint Editor</b>',self)
        self.footprint.triggered.connect(self.obj_kicad.openFootprint)
        
        self.pcb = QtGui.QAction(QtGui.QIcon('../../images/pcb.png'),'<b>PCB Layout</b>',self)
        self.pcb.triggered.connect(self.obj_kicad.openLayout)
        """
              
        self.model = QtGui.QAction(QtGui.QIcon('../../images/model.png'),'<b>Model Editor</b>',self)
        self.model.triggered.connect(self.open_modelEditor) 
        
        self.subcircuit=QtGui.QAction(QtGui.QIcon('../../images/subckt.png'),'<b>Subcircuit</b>',self)
        self.subcircuit.triggered.connect(self.open_subcircuit)

        self.nghdl = QtGui.QAction(QtGui.QIcon('../../images/nghdl.png'), '<b>Nghdl</b>', self)
        self.nghdl.triggered.connect(self.open_nghdl)
        
        self.omedit = QtGui.QAction(QtGui.QIcon('../../images/omedit.png'),'<b>Modelica Converter</b>',self)
        self.omedit.triggered.connect(self.open_OMedit) 
        
        self.omoptim=QtGui.QAction(QtGui.QIcon('../../images/omoptim.png'),'<b>OM Optimisation</b>',self)
        self.omoptim.triggered.connect(self.open_OMoptim)
        
        #Adding Action Widget to tool bar   
        self.lefttoolbar = QtGui.QToolBar('Left ToolBar')
        self.addToolBar(QtCore.Qt.LeftToolBarArea, self.lefttoolbar)
        self.lefttoolbar.addAction(self.kicad)
        self.lefttoolbar.addAction(self.conversion)
        self.lefttoolbar.addAction(self.ngspice)
        """
        self.lefttoolbar.addAction(self.footprint)
        self.lefttoolbar.addAction(self.pcb)
        """
        self.lefttoolbar.addAction(self.model)
        self.lefttoolbar.addAction(self.subcircuit)
        self.lefttoolbar.addAction(self.nghdl)
        self.lefttoolbar.addAction(self.omedit)
        self.lefttoolbar.addAction(self.omoptim)
        self.lefttoolbar.setOrientation(QtCore.Qt.Vertical)
        self.lefttoolbar.setIconSize(QSize(40,40))
     
     
    def new_project(self):
        """
        This function call New Project Info class.
        """
        text, ok = QtGui.QInputDialog.getText(self, 'New Project Info','Enter Project Name:')
        if ok:
            self.projname = (str(text))
            self.project = NewProjectInfo()
            directory, filelist =self.project.createProject(self.projname)
    
            self.obj_Mainview.obj_projectExplorer.addTreeNode(directory, filelist)
            
        else:
            print "No project created"
            self.obj_appconfig.print_info('No new project created')
            try:
                self.obj_appconfig.print_info('Current project is : ' + self.obj_appconfig.current_project["ProjectName"])
            except:
                pass
        
    def open_project(self):
        """
        This project call Open Project Info class
        """
        print "Open Project called"
        self.project = OpenProjectInfo()
        
        try:
            directory, filelist = self.project.body()
            self.obj_Mainview.obj_projectExplorer.addTreeNode(directory, filelist)
        except:
            pass
    
    def exit_project(self):
        print "Exit Project called"
        for proc in self.obj_appconfig.procThread_list:
                try:
                        proc.terminate()
                except:
                        pass
              
        try :       
            for process_object in self.obj_appconfig.process_obj:
                try:
                    process_object.close()
                except:
                        pass
        except:
            pass
        ##Just checking if open and New window is open. If yes just close it when application is closed
        try:
            self.project.close()
        except:
            pass
        
        self.close()
    
    def import_pspice_lib(self):
        print "Import Pspice Library is called"
        self.obj_appconfig.print_info('Import Pspice Library is called')
        
        self.obj_import_pspice = ImportPspiceLibrary()
        
        self.obj_import_pspice.imortLib()
        
    def convert_pspice_kicad(self):
        print "PSPICE to KICAD converter is called"
        self.obj_appconfig.print_info('PSPICE to KICAD converter is called')
        
        self.obj_run_converter = ConvertPspiceKicad()
        
        self.obj_run_converter.runConverter()
        
    def help_project(self):
        print "Help is called"
        self.obj_appconfig.print_info('Help is called')
        print "Current Project : ",self.obj_appconfig.current_project
        self.obj_Mainview.obj_dockarea.usermanual()    
    
    
    def open_ngspice(self):
        """
        This Function execute ngspice on current project
        """
        
        self.projDir = self.obj_appconfig.current_project["ProjectName"]
        
        if self.projDir != None:
            self.obj_Mainview.obj_dockarea.ngspiceEditor(self.projDir)
            time.sleep(2)  #Need permanent solution 
            #Calling Python Plotting
                
            try:
                self.obj_Mainview.obj_dockarea.plottingEditor()
            except Exception as e:
                self.msg = QtGui.QErrorMessage(None)
                self.msg.showMessage('Error while opening python plotting Editor.')
                print "Exception:",str(e)
                self.obj_appconfig.print_error('Exception generated : ' + str(e))
                self.msg.setWindowTitle("Error Message")
                        
        else:
            self.msg = QtGui.QErrorMessage()
            self.msg.showMessage('Please select the project first. You can either create new project or open existing project')
            self.msg.setWindowTitle("Error Message")
            
    def open_subcircuit(self):
        print "Subcircuit editor is called"
        self.obj_appconfig.print_info('Subcircuit editor is called')
        self.obj_Mainview.obj_dockarea.subcircuiteditor()

    def open_nghdl(self):
        print "Nghdl is called"
        self.obj_appconfig.print_info('Nghdl is called')

        if self.obj_validation.validateTool('nghdl'):
            self.cmd = 'nghdl -e'
            self.obj_workThread = Worker.WorkerThread(self.cmd)
            self.obj_workThread.start()

        else:
            self.msg = QtGui.QErrorMessage(None)
            self.msg.showMessage('Error while opening nghdl. Please make sure nghdl is installed')
            self.obj_appconfig.print_error('Error while opening nghdl. Please make sure nghdl is installed')
            self.msg.setWindowTitle('nghdl Error Message')
            
      
    def open_modelEditor(self):
        print "model editor is called"
        self.obj_appconfig.print_info('model editor is called')
        self.obj_Mainview.obj_dockarea.modelEditor()

    
    def open_OMedit(self):
        """
        This function call ngspice to OM edit converter and then launch OM edit.
        """
        self.obj_appconfig.print_info('OM edit is called')
        self.projDir = self.obj_appconfig.current_project["ProjectName"]
        
        if self.projDir != None:
            if self.obj_validation.validateCirOut(self.projDir):
                self.projName = os.path.basename(self.projDir)
                self.ngspiceNetlist = os.path.join(self.projDir,self.projName+".cir.out")
                self.modelicaNetlist = os.path.join(self.projDir,self.projName+".mo")
                
                try:
                    #Creating a command for Ngspice to Modelica converter
                    self.cmd1 = "python ../ngspicetoModelica/NgspicetoModelica.py "+self.ngspiceNetlist
                    self.obj_workThread1 = Worker.WorkerThread(self.cmd1)
                    self.obj_workThread1.start()
                    
                    
                    if self.obj_validation.validateTool("OMEdit"):
                        #Creating command to run OMEdit
                        self.cmd2 = "OMEdit "+self.modelicaNetlist
                        self.obj_workThread2 = Worker.WorkerThread(self.cmd2)
                        self.obj_workThread2.start()
                    else:
                        self.msg = QtGui.QMessageBox()
                        self.msgContent = "There was an error while opening OMEdit.<br/>\
                        Please make sure OpenModelica is installed in your system. <br/>\
                        To install it on Linux : Go to <a href=https://www.openmodelica.org/download/download-linux>OpenModelica Linux</a> and install nigthly build release.<br/>\
                        To install it on Windows : Go to <a href=https://www.openmodelica.org/download/download-windows>OpenModelica Windows</a> and install latest version.<br/>"
                        self.msg.setTextFormat(QtCore.Qt.RichText)
                        self.msg.setText(self.msgContent)
                        self.msg.setWindowTitle("Missing OpenModelica")
                        self.obj_appconfig.print_info(self.msgContent)
                        self.msg.exec_()
                                  
                except Exception as e:
                    self.msg = QtGui.QErrorMessage()
                    self.msg.showMessage('Unable to convert NgSpice netlist to Modelica netlist :'+str(e))
                    self.msg.setWindowTitle("Ngspice to Modelica conversion error")
                    self.obj_appconfig.print_error(str(e))
                    
            else:
                self.msg = QtGui.QErrorMessage()
                self.msg.showMessage('Current project does not contain any ngspice file. Please create ngspice file with extension .cir.out')
                self.msg.setWindowTitle("Missing Ngspice netlist")
        else:
            self.msg = QtGui.QErrorMessage()
            self.msg.showMessage('Please select the project first. You can either create new project or open existing project')
            self.msg.setWindowTitle("Error Message")
        
    
    def open_OMoptim(self):
        print "OM Optim is called"    
        self.obj_appconfig.print_info('OM Optim is called')
        #Check if OMOptim is installed 
        if self.obj_validation.validateTool("OMOptim"):
            #Creating a command to run
            self.cmd = "OMOptim"
            self.obj_workThread = Worker.WorkerThread(self.cmd)
            self.obj_workThread.start()
        else:
            self.msg = QtGui.QMessageBox()
            self.msgContent = "There was an error while opening OMOptim.<br/>\
            Please make sure OpenModelica is installed in your system. <br/>\
            To install it on Linux : Go to <a href=https://www.openmodelica.org/download/download-linux>OpenModelica Linux</a> and install nigthly build release.<br/>\
            To install it on Windows : Go to <a href=https://www.openmodelica.org/download/download-windows>OpenModelica Windows</a> and install latest version.<br/>"
            self.msg.setTextFormat(QtCore.Qt.RichText)
            self.msg.setText(self.msgContent)
            self.msg.setWindowTitle("Error Message")
            self.obj_appconfig.print_info(self.msgContent)
            self.msg.exec_()

class MainView(QtGui.QWidget):
    """
    This class initialize the Main View of Application
    """
    def __init__(self, *args):
        # call init method of superclass
        QtGui.QWidget.__init__(self, *args)
        
        self.obj_appconfig = Appconfig()
        
        self.leftSplit = QtGui.QSplitter()
        self.middleSplit = QtGui.QSplitter()
        
        self.mainLayout = QtGui.QVBoxLayout()
        #Intermediate Widget
        self.middleContainer = QtGui.QWidget()
        self.middleContainerLayout = QtGui.QVBoxLayout()
        
        #Area to be included in MainView
        self.noteArea = QtGui.QTextEdit()
        self.noteArea.setReadOnly(True)
        self.obj_appconfig.noteArea['Note'] = self.noteArea
        self.obj_appconfig.noteArea['Note'].append('        eSim Started......')
        self.obj_appconfig.noteArea['Note'].append('Project Selected : None')
        self.obj_appconfig.noteArea['Note'].append('\n')
        
        #CSS
        self.noteArea.setStyleSheet(" \
        QWidget { border-radius: 15px; border: 1px solid gray; padding: 5px; } \
        ")
        
        self.obj_dockarea = DockArea.DockArea()
        self.obj_projectExplorer = ProjectExplorer.ProjectExplorer()
               
        #Adding content to vertical middle Split. 
        self.middleSplit.setOrientation(QtCore.Qt.Vertical)
        self.middleSplit.addWidget(self.obj_dockarea)
        self.middleSplit.addWidget(self.noteArea)
        
        #Adding middle split to Middle Container Widget
        self.middleContainerLayout.addWidget(self.middleSplit)
        self.middleContainer.setLayout(self.middleContainerLayout)
        
        #Adding content of left split
        self.leftSplit.addWidget(self.obj_projectExplorer)
        self.leftSplit.addWidget(self.middleContainer)
    
        
        #Adding to main Layout
        self.mainLayout.addWidget(self.leftSplit)
        self.leftSplit.setSizes([self.width()/4.5,self.height()])
        self.middleSplit.setSizes([self.width(),self.height()/2])
        self.setLayout(self.mainLayout)
     

def main(args):
    """
    It is main function of the module.It starts the application
    """
    print "Starting eSim......"
    app = QtGui.QApplication(args)
    
    splash_pix = QtGui.QPixmap('../../images/splash_screen_esim.png')
    splash = QtGui.QSplashScreen(splash_pix,QtCore.Qt.WindowStaysOnTopHint)
    splash.setMask(splash_pix.mask())
    splash.show()
    #QtGui.QApplication.setStyle(QtGui.QStyleFactory.create("Cleanlooks"))
    appView = Application()
    appView.splash=splash
    appView.obj_workspace.returnWhetherClickedOrNot(appView)
    appView.hide()
    appView.obj_workspace.show() 
    sys.exit(app.exec_())
    #appView.hide()
    ########################################################################################################################################
    
    """splash_pix = QtGui.QPixmap('../images/splash_screen_esim.png')
    splash = QtGui.QSplashScreen(splash_pix,QtCore.Qt.WindowStaysOnTopHint)
    progressBar = QtGui.QProgressBar(splash) 
    progressBar.setGeometry(0,470,1004,20)
    splash.setMask(splash_pix.mask())
    splash.show()
    
    for i in range(0, 100):
        progressBar.setValue(i)
        #cond=threading.Condition()
        if i==50:
            
            appView = Application()
            appView.hide()
            #appView.obj_workspace.returnWhetherClickedOrNot(appView)
            appView.obj_workspace.show()            
            #appView.obj_workspace.show()
            appView.obj_workspace.calledFromApplicationToAssignSysAndApp(sys,app)#`11    ,cond)
            #with cond:
                #cond.wait()
        
        t = time.time() 
        while time.time() < t + 0.1:
            app.processEvents()    
    
    #time.sleep(2)
    
    #appView = Application()
    #appView.hide()
    splash.finish(appView)
    #sys.exit(app.exec_())
    
    #QtGui.QApplication.setStyle(QtGui.QStyleFactory.create("Cleanlooks"))
    #appView.obj_workspace.returnWhetherClickedOrNot(appView)
    #appView.obj_workspace.show() 
    #appView.hide()
    
    appView.show()
    sys.exit(app.exec_())"""
######################################################################################################################################################    
    


# Call main function
if __name__ == '__main__':
    # Create and display the splash screen
    main(sys.argv)
    


