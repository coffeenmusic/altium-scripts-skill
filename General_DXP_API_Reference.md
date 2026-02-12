# Altium General/DXP DelphiScript API Reference
Compact AI-optimized reference. All code is DelphiScript (Object Pascal variant). Covers DXP framework, WSM extended interfaces, process system, general scripting utilities, and FPGA.

## DXP CLIENT FRAMEWORK
```
If Client = Nil Then Exit;
```
### IClient Properties/Methods
`Client.ApplicationHandle` (Integer) `Client.MainWindowHandle` (Integer) `Client.CurrentView` (IServerDocumentView) `Client.GetCurrentView` (same)
`Client.Count` - active server count. `Client.ServerModule[I]` (IServerModule). `Client.ServerModuleByName['PCB']` (IServerModule).
`Client.ProcessControl.ProcessDepth` (Integer)
`Client.GUIManager.StatusBar_GetState(0)` `Client.GUIManager.StatusBar_SetState(0, msg)`
`Client.GetServerRecordCount` `Client.GetServerRecord(I)` (IServerRecord) `Client.GetServerRecordByName('CLIENT')` (IServerRecord)
`Client.StartServer('SCH')` `Client.StartServer('PCB')` - start editor servers.

### Document Operations
`Client.OpenDocument('Sch', path)` `Client.OpenDocument('Text', path)` returns IServerDocument.
`Client.OpenDocumentShowOrHide('Text', path, False)` - open without showing.
`Client.ShowDocument(doc)` `Client.ShowDocumentDontFocus(doc)` - display document.
`Client.SendMessage('WorkspaceManager:OpenObject','Kind=PcbProject | ObjectKind=NewAnything',1024,Nil)` - create blank project.

### IServerRecord
`GetName` `GetVersion` `GetCopyRight` `GetDate` `GetGeneralInfo` `GetDescription`
`GetSupportsDDBRead` `GetSupportsDDBWrite` `GetSystemExtension` (LongBool)
`GetInsPath` `GetRCSFilePath` `GetExePath`
`GetServerFileExist` `GetIsDocumentWizard` (LongBool)
`GetWindowKindCount` `GetWindowKind(I)` (IServerWindowKind)
`GetCommandCount` `GetCommand(I)` (IServerProcess)
`GetPanelInfoCount` `GetPanelInfo(I)` (IServerPanelInfo)

### IServerWindowKind
`GetName` `GetNewWindowCaption` `GetNewWindowExtension` `GetWindowKindDescription` `GetIconName`
`GetIsDomain` `GetIsDocumentEditor` (LongBool)
`GetWindowKindClassCount` `GetWindowKindClass(I)` (String)

### IServerProcess
`GetOriginalId` `GetLongSummary` `GetParameterCount` `GetParameter(I)` (String)

### IServerPanelInfo
`GetName` `GetCategory` `GetBitmap` `GetHotkey`
`GetButtonVisible` `GetMultipleCreation` `GetCanDockVertical` `GetCanDockHorizontal` (LongBool)
`GetCreationClassName`

### IServerModule
`ModuleName` `DocumentCount` `Documents[I]` (IServerDocument)

### IServerDocument
`FileName` `Kind` `Count` (view count) `View[I]` (IServerDocumentView) `ServerModule` (IServerModule)
`Modified` (Boolean, read/write) - set True to mark dirty for save.

### IServerDocumentView
`ViewName` `Caption` `IsPanel` (Boolean) `OwnerDocument` (IServerDocument)

## WORKSPACE MANAGER (WSM) INTERFACES
```
WS := GetWorkSpace;
If WS = Nil Then Exit;
Prj := WS.DM_FocusedProject;
Prj.DM_Compile;  // required before accessing connectivity
```

### IWorkSpace
`DM_ProjectCount` `DM_Projects(I)` (IProject) `DM_FocusedProject` (IProject) `DM_FocusedDocument` (IDocument)
`DM_MessagesManager` (IMessagesManager) `DM_ShowMessageView` - display Messages panel.
`DM_GetProjectFromPath(path)` (IProject) `DM_CreateNewDocument('SCH'|'PCB')`
`DM_AddDocumentToActiveProject(fileName)` (may add to Free Documents - use DM_FocusedProject.DM_AddSourceDocument instead)

### IProject
`DM_ProjectFileName` `DM_ProjectFullPath` `DM_GetOutputPath`
`DM_LogicalDocumentCount` `DM_LogicalDocuments(I)` (IDocument) - pre-compile docs.
`DM_PhysicalDocumentCount` `DM_PhysicalDocuments(I)` (IDocument) - post-compile expanded docs.
`DM_Compile` - compile for connectivity. Required before accessing physical docs, nets, components.
`DM_AddSourceDocument(fileName)` `DM_AddGeneratedDocument(fileName)` - add to project.
`DM_GetDocumentFromPath(path)` (IDocument) `DM_DocumentFlattened` (IDocument) - flattened design doc.
`DM_ConfigurationCount` `DM_Configurations(I)` (IConfiguration) - FPGA configurations.

### IDocument
`DM_FileName` `DM_FullPath` `DM_DocumentKind` (String: 'SCH','PCB' etc.)
`DM_ComponentCount` `DM_Components(I)` (IComponent) - post-compile.
`DM_NetCount` `DM_Nets(I)` (INet) - post-compile.
`DM_PartCount` `DM_Parts(I)` (IPart) - parts in document.

### IComponent (WSM)
`DM_PhysicalDesignator` `DM_LogicalDesignator`
`DM_Footprint` `DM_Comment` `DM_PartType` `DM_Description`
`DM_PinCount` `DM_Pins(I)` (IPin)

### INet (WSM)
`DM_CalculatedNetName` `DM_FullNetName`
`DM_PinCount` `DM_Pins(I)` (IPin)
`DM_CountOfNonPinItems` - non-pin net items (ports, netlabels etc).

### IPin (WSM)
`DM_PinNumber` `DM_PinName` `DM_FlattenedNetName`
`DM_PhysicalPartDesignator` `DM_PartType`
`DM_Electric` (TPinElectrical: `eElectricInput` `eElectricIO` `eElectricOutput` `eElectricOpenCollector` `eElectricPassive` `eElectricHiZ` `eElectricOpenEmitter` `eElectricPower`)

### IPart (WSM - from IDocument.DM_Parts)
`DM_LogicalDesignator` `DM_LibraryReference` `DM_SourceLibraryName`
`DM_ImplementationCount` `DM_Implementations(I)` (IComponentImplementation)

### IComponentImplementation (WSM)
`DM_ModelName` `DM_ModelType` `DM_Description` `DM_IntegratedModel` (Boolean)
`DM_ParameterCount` `DM_Parameters(I)` (IParameter)
`DM_DatafileCount` `DM_DatafileEntity(I)` `DM_DatafileKind(I)` `DM_DatafileLocation(I)`

### IParameter (WSM)
`DM_Name` `DM_Value` `DM_ObjectKindString`

## MESSAGES MANAGER
```
MM := GetWorkSpace.DM_MessagesManager;
MM.ClearMessages;
MM.BeginUpdate;
MM.AddMessage(MessageClass, MessageText, MessageSource, MessageDocument,
              CallBackProcess, CallBackParameters, ImageIndex, BooleanFlag);
MM.EndUpdate;
GetWorkSpace.DM_ShowMessageView;
```
**Image Index Constants**: Tick=3, Cross=4, Folder_NoError=6, Folder_Warning=7, Folder_Error=8, Folder_Fatal=9, Marker_NoError=107, Marker_Warning=108, Marker_Error=109, Marker_Fatal=110, ProjectGroup=54, ProjectGroup2=55, PcbLayer=51, CamJob=67, BoardProject=56, FpgaProject=57, EmbeddedProject=58, IntegratedLibrary=59, FreeDocumentsProject=6

## INTEGRATED LIBRARY MANAGER
```
IntMan := IntegratedLibraryManager;
If IntMan = Nil Then Exit;
```
`IntMan.InstallLibrary(path)` `IntMan.UnInstallLibrary(path)`
`IntMan.ExtractSources(intLibPath)` - extract source libs from IntLib.
`IntMan.GetComponentLocation(sourceLibName, libReference, TopLevelLoc)` returns component path. TopLevelLoc returns IntLib path.
`IntMan.GetComponentDatafileLocation(datafileIndex, modelName, modelType, libReference, compLoc, topLevelLoc)` - get model data file location within IntLib.
`IntMan.FindDatafileInStandardLibs(name, kind, location, inIntLib, foundLocation)` - search installed libs. Kind: `'PCBLIB'` `'PCB3DLIB'`. inIntLib: Boolean.

## MODEL TYPE MANAGER
```
ModelTypeMan := ModelTypeManager;
```
`ModelTypeMan.ModelTypeCount` `ModelTypeMan.ModelTypes[I]` (IModelType)
`ModelTypeMan.ModelDatafileTypeCount` `ModelTypeMan.ModelDatafileTypes[I]` (IModelDatafileType)

### IModelType
`Name` `Description` `PortDescriptor`

### IModelDatafileType
`FileKind` `ExtensionFilter` `Description` `EntityType`

## FPGA CONFIGURATION
```
ConfigCount := Prj.DM_ConfigurationCount;
Config := Prj.DM_Configurations(I);
```
### IConfiguration
`DM_ConstraintsFileCount` `DM_ConstraintsFilePath(I)` (String) `DM_GetTargetDeviceName` (String)

### Constraint File Format
Pipe-delimited records: `Record=Constraint | TargetKind=Pin | TargetId=15 | SWAPID=1`

## PROCESS SYSTEM
**Core pattern** for all process operations:
```
ResetParameters;
AddStringParameter('ParamName', 'Value');
AddIntegerParameter('ParamName', intValue);
RunProcess('Server:ProcessName');
GetStringParameter('ParamName', resultVar);   // read output
GetIntegerParameter('ParamName', resultVar);   // read output
```

### PCB Processes

#### Pcb:SetupPreferences (Color Scheme)
All parameters are color values as strings. Layer color parameters:
`TopSignalColor` `Mid1Color`..`Mid30Color` `BottomSignalColor` `TopOverlayColor` `BottomOverlayColor` `TopPasteColor` `BottomPasteColor` `TopSolderColor` `BottomSolderColor` `Plane1Color`..`Plane16Color` `DrillGuideColor` `KeepOutColor` `Mechanical1Color`..`Mechanical16Color` `DrillDrawingColor` `MultiLayerColor` `ConnectLayerColor` `BackgroundColor` `DRCErrorColor` `SelectionColor` `VisibleGrid1Color` `VisibleGrid2Color` `PadHoleColor` `ViaHoleColor`

#### Pcb:DocumentPreferences (Layer Visibility)
All parameters are 'True'/'False' strings. Layer visibility parameters:
`TopSignal` `Mid1`..`Mid30` `BottomSignal` `TopOverlay` `BottomOverlay` `TopPaste` `BottomPaste` `TopSolder` `BottomSolder` `Plane1`..`Plane16` `DrillGuide` `KeepOut` `Mechanical1`..`Mechanical16` `DrillDrawing` `MultiLayer`

### SCH Processes
`Sch:SetupPreferences` - params: `SelectionReference`='True'/'False'
`Sch:ToggleSelection` - toggle selection mode.
`Sch:Copy` `Sch:Paste` - clipboard operations.
`Sch:Deselect` - params: `Action`='All'

### Workspace/Cross-Domain Processes

#### WorkspaceManager:Print (PDF Publishing)
```
AddStringParameter('Action', 'PublishToPDF');
AddStringParameter('ObjectKind', 'OutputSingle');
AddStringParameter('SelectedName1', 'Assembly Drawings');  // OutJob output name
AddStringParameter('SelectedName2', 'Schematic Prints');   // additional output
AddStringParameter('DisableDialog', 'True');
AddStringParameter('OutputFilePath', 'c:\output.pdf');
AddStringParameter('OpenOutput', 'True');
AddIntegerParameter('ZoomLevel', 50);
AddStringParameter('FitSCHPrintSizeToDoc', 'True');
AddStringParameter('FitPCBPrintSizeToDoc', 'True');
AddStringParameter('GenerateNetsInfo', 'True');
AddStringParameter('MarkPins', 'True');
AddStringParameter('MarkNetLabels', 'True');
AddStringParameter('MarkPorts', 'True');
RunProcess('WorkspaceManager:Print');
```

#### WorkspaceManager:GenerateReport (Netlist)
```
AddStringParameter('ObjectKind', 'Netlist');
AddIntegerParameter('Index', 4);  // 1=EDIF,2=Multiwire,3=Pcad,4=Protel,5=Verilog,6=VHDL,7=XSPICE
AddStringParameter('ReturnGeneratedDocuments', 'True');
RunProcess('WorkspaceManager:GenerateReport');
GetIntegerParameter('Result', value);  // 0=failed
GetStringParameter('File1', fileName); // generated file path
```

#### SimView:ImportWaveforms
```
AddStringParameter('DocumentFilename', 'output.sdf');  // target SDF file
AddStringParameter('FileName', 'data.csv');              // source CSV file
AddStringParameter('ChartName', 'ChartTitle');
AddStringParameter('ListSeparator', ',');
AddStringParameter('ChartType', 'XY-Scatter');           // 'Table' or 'XY-Scatter'
AddStringParameter('DataType', 'Real');                   // 'Real' or 'Complex'
AddStringParameter('PlotWaves0', 'wave1,wave2');         // waves for Plot 0
AddStringParameter('PlotWaves1', 'wave3');               // waves for Plot 1
AddStringParameter('OverwriteWaves', 'True');
AddStringParameter('XScaleMode', 'Linear');              // 'Log10','Log2','Linear'
AddStringParameter('XUnits', 's');
AddStringParameter('XAxisLabel', 'Time');
AddStringParameter('OptimiseWaves', 'True');             // reduce memory
AddStringParameter('ImportWaves', 'wave1,wave2');        // selective import
RunProcess('SimView:ImportWaveforms');
```

#### Client:RunCommonDialog
```
AddStringParameter('Dialog', 'Color');     // 'Color' or 'FileOpenSave'
AddStringParameter('Color', '0');          // initial color for Color dialog
RunProcess('Client:RunCommonDialog');
GetStringParameter('Result', s);           // 'True' if OK clicked
GetStringParameter('Color', s);            // selected color value
```

## GENERAL UTILITY FUNCTIONS

### Built-in Functions
`ShowMessage(str)` `ShowInfo(str)` `ShowWarning(str)` `ShowError(str)` - message dialogs.
`InputQuery(title, prompt, varStr)` - input dialog, returns Boolean.
`RunApplication(commandLine)` - execute external program, returns error code (0=success).
`GetErrorMessage(errorCode)` - human-readable error string.
`BeginHourGlass` `EndHourGlass` - hourglass cursor.
`FindFiles(path, pattern, attributes, recursive, stringList)` - built-in file search. Uses `faAnyFile` attribute.
`SpecialFolder_MyDesigns` - returns path to My Designs folder.
`VFS_SetFileEditorName(fileName, editorName)` - set file's associated editor (e.g. 'ProtelNetlist').
`CreateNewDocumentFromDocumentKind('PCB')` - create new document by kind.

### String Functions
`IntToStr(i)` `StrToInt(s)` `FloatToStr(f)` `BoolToStr(b)`
`UpperCase(s)` `LowerCase(s)` `Trim(s)` `Length(s)` `Copy(s,start,len)` `Delete(s,start,len)` `Pos(sub,s)` `Inc(i)`
`ExtractFileName(path)` `ExtractFilePath(path)` `ExtractFileNameFromPath(path)` `ExtractFileExt(path)` `ChangeFileExt(path,ext)`
`DirectoryExists(path)` `CreateDir(path)` `StringReplace(s, old, new, MkSet(rfReplaceAll))`
`Chr(n)` - char from ordinal. `#13` `#10` `#13#10` - CR, LF, CRLF.

### Date/Time
`Time` returns TDateTime. `TimeToStr(dt)` converts to string.

### Text File I/O
```
Var F: TextFile;   // or Text
AssignFile(F, fileName);
Rewrite(F);       // open for writing (create/overwrite)
Reset(F);          // open for reading
While Not EOF(F) Do Begin
  Readln(F, line);
  // process line
End;
Writeln(F, 'text');
CloseFile(F);
```
`VarIsNull(v)` - check if variant is null (useful for empty lines).

### TStringList
`Create` `Free` `Add(s)` `AddObject(s, obj)` `Insert(index, s)` `Delete(index)` `Exchange(i,j)`
`Count` `Strings[I]` `Objects[I]` `Items[I]` (same as Strings)
`Sorted` `Duplicates` (dupIgnore) `CaseSensitive` `Text` (all content as string)
`SaveToFile(path)` `LoadFromFile(path)` `Filter` (for file dialogs)

### TList
`Create` `Free` `Add(item)` `Items[I]` `Count`

### TIniFile
```
Uses IniFiles;
IniFile := TIniFile.Create(fileName);
IniFile.ReadString(section, key, default);
IniFile.WriteString(section, key, value);
IniFile.Free;
```

### TXceedZip
```
Zip := TXceedZip.Create(zipFileName);
Zip.UseTempFile := False;
Zip.PreservePaths := True;
Zip.AddFilesToProcess(filePath);
Zip.Zip;
Zip.Free;
```

## VCL FORM STRUCTURE
```
unit UnitName;
interface
Uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;
Type
  TMyForm = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
  public
  End;
Var MyForm: TMyForm;
Implementation
{$R *.DFM}
Procedure TMyForm.Button1Click(Sender: TObject); Begin ... End;
Procedure RunForm; Begin MyForm.ShowModal; End;
End.
```
**ShowModal**: Form.Visible must be False. Returns `ModalResult`: `mrOk` `mrCancel` `mrNone`.
**Non-unit scripts**: omit unit/interface/implementation/End. Use `Interface`...`Implementation` blocks without unit name.

### VCL Components
**TButton**: `Caption` `Default` `Cancel` `OnClick`
**TEdit**: `Text` `OnChange`
**TLabel**: `Caption`
**TRadioGroup**: `ItemIndex` (0-based)
**TCheckListBox**: `Items` (TStrings) `Items.Add(s)` `Items.Count` `Items[I]` `Checked[I]` (Boolean)
**TOpenDialog**: `Execute` (Boolean) `FileName` `Filter`
**TSaveDialog**: `Execute` (Boolean) `FileName`
**TFontDialog**: `Execute` (Boolean) `Font` (TFont)
**TTimer**: `Interval` `OnTimer` `Enabled`
**TShape**: `Create(Nil)` `Parent` `Left` `Top` `Width` `Height` `Visible` `Show`
  `Shape` (stCircle|stRectangle|stRoundRect|stEllipse|stSquare|stRoundSquare)
  `Brush.Color` `Brush.Style` (bsSolid|bsClear) `Pen.Color` `Pen.Mode` (pmCopy) `Pen.Style` (psSolid) `Pen.Width`
**TBevel**: decorative frame.
**TMemo**: `Text` `Lines` (TStrings)
**Self**: reference to owning form. `Self.Width` `Self.Invalidate` `Self.Close`

### Color Values
Integer color values used in AddStringParameter and object properties. Common: 0=Black, 255=Red, 32768=Green, 16711680=Blue, 65535=Yellow, 16777215=White, 8421504=Gray, 12632256=Silver.

## DELPHISCRIPT LANGUAGE NOTES
- **Variant types**: `Var x;` (no type) creates variant - can hold any type.
- **Typed constants**: `Const x = 5;` supported. `Const x : Set Of Char` NOT supported - use string instead: `Numbers = '0123456789'; If Pos(ch, Numbers) > 0`.
- **Set syntax**: `MkSet(value1, value2)` replaces `[value1, value2]` in standard Delphi.
- **Program scripts**: `Program Name; ... End.` syntax for standalone scripts.
- **Procedure params**: `Procedure Name(Value)` - untyped variant param. `Procedure Name(Var S : String)` - typed.
- **Uses clause**: `Uses IniFiles;` at top of script for external units.
- **Function results**: `Result := value;` to set return value.
- **BooleanToString helper**: `If Value = True Then Result := 'True' Else Result := 'False';` (not built-in).
