#define MyAppName "CASE Apps"
#define MyAppVersion "21.4.1"
#define MyAppPublisher "CASE"
#define MyAppURL "https://github.com/rudderdon/case-apps"

#define RevitAppName  "Case.Apps"
#define RevitAddinFolder "{userappdata}\Autodesk\REVIT\Addins"
#define RevitFolder15 RevitAddinFolder+"\2015\"+RevitAppName
#define RevitAddin15  RevitAddinFolder+"\2015\"
#define RevitFolder16 RevitAddinFolder+"\2016\"+RevitAppName
#define RevitAddin16  RevitAddinFolder+"\2016\"
#define RevitFolder17 RevitAddinFolder+"\2017\"+RevitAppName
#define RevitAddin17  RevitAddinFolder+"\2017\"
#define RevitFolder18 RevitAddinFolder+"\2018\"+RevitAppName
#define RevitAddin18  RevitAddinFolder+"\2018\"
#define RevitFolder19 RevitAddinFolder+"\2019\"+RevitAppName
#define RevitAddin19  RevitAddinFolder+"\2019\"
#define RevitFolder20 RevitAddinFolder+"\2020\"+RevitAppName
#define RevitAddin20  RevitAddinFolder+"\2020\"
#define RevitFolder21 RevitAddinFolder+"\2021\"+RevitAppName
#define RevitAddin21  RevitAddinFolder+"\2021\"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1AE796B6-5B97-4CC7-848A-C3F44956FB90}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName=CASE Design, Inc\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=.\LICENSE
OutputDir=.
OutputBaseFilename=CASEApps-installer
SetupIconFile=assets\logo.ico
WizardImageFile=assets\banner.bmp
Compression=lzma
SolidCompression=yes
;info: http://revolution.screenstepslive.com/s/revolution/m/10695/l/95041-signing-installers-you-create-with-inno-setup
;comment/edit the line below if you are not signing the exe with the CASE pfx
;SignTool=signtoolcase

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Components]
Name: revit15; Description: CASE Apps for Autodesk Revit 2015;  Types: full 
Name: revit16; Description: CASE Apps for Autodesk Revit 2016;  Types: full
Name: revit17; Description: CASE Apps for Autodesk Revit 2017;  Types: full
Name: revit18; Description: CASE Apps for Autodesk Revit 2018;  Types: full
Name: revit19; Description: CASE Apps for Autodesk Revit 2019;  Types: full
Name: revit20; Description: CASE Apps for Autodesk Revit 2020;  Types: full
Name: revit21; Description: CASE Apps for Autodesk Revit 2021;  Types: full

[Files]
; REVIT 2015 ~~~~~~~~~~~~~~~~~~~
Source: "deploy\2015\*"; DestDir: "{#RevitFolder15}"; Excludes: "*.pdb,*.xml,*.config,*.addin,*.tmp"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: revit15 
Source: "deploy\{#RevitAppName}.addin"; DestDir: "{#RevitAddin15}"; Flags: ignoreversion; Components: revit15 

;REVIT 2016 ~~~~~~~~~~~~~~~~~~~
Source: "deploy\2016\*"; DestDir: "{#RevitFolder16}"; Excludes: "*.pdb,*.xml,*.config,*.addin,*.tmp"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: revit16 
Source: "deploy\{#RevitAppName}.addin"; DestDir: "{#RevitAddin16}"; Flags: ignoreversion; Components: revit16

;REVIT 2017 ~~~~~~~~~~~~~~~~~~~
Source: "deploy\2017\*"; DestDir: "{#RevitFolder17}"; Excludes: "*.pdb,*.xml,*.config,*.addin,*.tmp"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: revit17 
Source: "deploy\{#RevitAppName}.addin"; DestDir: "{#RevitAddin17}"; Flags: ignoreversion; Components: revit17

;REVIT 2018 ~~~~~~~~~~~~~~~~~~~
Source: "deploy\2018\*"; DestDir: "{#RevitFolder18}"; Excludes: "*.pdb,*.xml,*.config,*.addin,*.tmp"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: revit18 
Source: "deploy\{#RevitAppName}.addin"; DestDir: "{#RevitAddin18}"; Flags: ignoreversion; Components: revit18

;REVIT 2019 ~~~~~~~~~~~~~~~~~~~
Source: "deploy\2019\*"; DestDir: "{#RevitFolder19}"; Excludes: "*.pdb,*.xml,*.config,*.addin,*.tmp"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: revit19 
Source: "deploy\{#RevitAppName}.addin"; DestDir: "{#RevitAddin19}"; Flags: ignoreversion; Components: revit19

;REVIT 2020 ~~~~~~~~~~~~~~~~~~~
Source: "deploy\2020\*"; DestDir: "{#RevitFolder20}"; Excludes: "*.pdb,*.xml,*.config,*.addin,*.tmp"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: revit20
Source: "deploy\{#RevitAppName}.addin"; DestDir: "{#RevitAddin20}"; Flags: ignoreversion; Components: revit20

;REVIT 2021 ~~~~~~~~~~~~~~~~~~~
Source: "deploy\2021\*"; DestDir: "{#RevitFolder21}"; Excludes: "*.pdb,*.xml,*.config,*.addin,*.tmp"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: revit21
Source: "deploy\{#RevitAppName}.addin"; DestDir: "{#RevitAddin21}"; Flags: ignoreversion; Components: revit21

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
