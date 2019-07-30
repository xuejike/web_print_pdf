; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "24优递打印服务"
#define MyAppVersion "1.1"
#define MyAppPublisher "24优递"
#define MyAppExeName "pdf24sdPrinter.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{12610DBC-59B7-485A-B710-8B99C7B1BAC3}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=24优递打印服务
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "chinesesimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\pdf24sdPrinter.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\pdf24sdPrinter.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\pdf24sdPrinter.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\pdf24sdPrinter.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\Spire.License.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\Spire.License.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\Spire.Pdf.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\Spire.Pdf.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\System.IO.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\System.IO.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\System.Net.Http.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\System.Net.Http.Extensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\System.Net.Http.Extensions.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\System.Net.Http.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\System.Net.Http.Primitives.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\System.Net.Http.WebRequest.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\System.Net.Http.WebRequest.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\System.Net.Http.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\System.Runtime.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\xueji\source\repos\pdf24sdPrinter\pdf24sdPrinter\bin\x86\Release\System.Runtime.xml"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Tasks]
Name: "startupicon"; Description: "开机启动"; GroupDescription: "{cm:AdditionalIcons}"; 
[Icons]
Name: "{userstartup}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

