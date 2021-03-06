; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "IrriPlan"
#define MyAppVerName "IrriPlan"
#define MyAppPublisher "INIFAP"
#define MyAppURL "http://www.inifap.gob.mx/"
#define MyAppExeName "IrriPlan.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppID={{CF5919DA-350B-44F4-9DB8-9A2DE613B770}
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=IrriPlanSetup
Compression=lzma2/Max
SolidCompression=true
InternalCompressLevel=Ultra64
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: spanish; MessagesFile: compiler:Languages\Spanish.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; 
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; 

[Files]
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: "Win32\Release\IrriPlan.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Win64\Release\IrriPlan.exe"; DestDir: "{app}"; Flags: ignoreversion; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"
Name: "{group}\IrriGranos"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}";  Parameters: "IrriGranos"
Name: "{group}\IrriPapa"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}";  Parameters: "IrriPapa"
Name: "{group}\IrriCa�a"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}";  Parameters: "IrriCana"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"; WorkingDir: "{app}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; Tasks: quicklaunchicon
Name: "{group}\IrriPlan"; Filename: "{app}\IrriPlan.exe"; WorkingDir: "{app}"

[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram,{#MyAppName}}; Flags: nowait postinstall skipifsilent
