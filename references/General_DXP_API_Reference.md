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
`Client.GetProductVersion` (String) - returns version string (e.g. "19.0.13").
`Client.IsDocumentOpen(path)` (Boolean) - check if a document is already open.
`Client.GetDocumentByPath(path)` (IServerDocument) - get already-open document by path.
`Client.GetDocumentKindFromDocumentPath(path)` (String) - infer document kind from file path.
`Client.CloseDocument(doc)` - closes an open document.

### Document Operations
`Client.OpenDocument('Sch', path)` `Client.OpenDocument('Text', path)` `Client.OpenDocument('OUTPUTJOB', path)` returns IServerDocument.
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
`Modified` (Boolean, read/write) - set True to mark dirty for save. `GetModified` (Boolean) - alternative getter.
`SetFileName(path)` - set the document file name.
`DoFileSave(format)` - save document in format (e.g. `'PrjPcb'`, `'HyperLynx'`).
`DoFileLoad` - reload document from disk.

### IServerDocumentView
`ViewName` `Caption` `IsPanel` (Boolean) `OwnerDocument` (IServerDocument)

### IProcessLauncher
`Client` implements `IProcessLauncher` for async process execution.
`PostMessage(processId, params, paramLen, view)` - post process message asynchronously. Used for `PCB:RunQuery` and other deferred operations.

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
`DM_GetProjectFromPath(path)` (IProject) `DM_GetDocumentFromPath(path)` (IDocument) `DM_CreateNewDocument('SCH'|'PCB')`
`DM_OpenProject(path, flag)` (IProject) - open a project by path.
`DM_AddDocumentToActiveProject(fileName)` (may add to Free Documents - use DM_FocusedProject.DM_AddSourceDocument instead)

### IProject
`DM_ProjectFileName` `DM_ProjectFullPath` `DM_GetOutputPath`
`DM_LogicalDocumentCount` `DM_LogicalDocuments(I)` (IDocument) - pre-compile docs.
`DM_PhysicalDocumentCount` `DM_PhysicalDocuments(I)` (IDocument) - post-compile expanded docs.
`DM_Compile` - compile for connectivity. Required before accessing physical docs, nets, components.
`DM_AddSourceDocument(fileName)` `DM_AddGeneratedDocument(fileName)` - add to project.
`DM_RemoveSourceDocument(fileName)` - remove source document from project.
`DM_GetDocumentFromPath(path)` (IDocument) `DM_DocumentFlattened` (IDocument) - flattened design doc.
`DM_GeneratedDocumentCount` `DM_GeneratedDocuments(I)` (IDocument) - generated/output documents.
`DM_ParameterCount` `DM_Parameters(I)` - project-level parameters.
`DM_ProjectVariantCount` `DM_ProjectVariants(I)` (IProjectVariant) - project variants.
`DM_ConfigurationCount` `DM_Configurations(I)` (IConfiguration) - FPGA configurations.

### IDocument
`DM_FileName` `DM_FullPath` `DM_DocumentKind` (String: 'SCH','PCB','SCHLIB','PCBLIB','DBLIB','DBLINK' etc.)
`DM_ComponentCount` `DM_Components(I)` (IComponent) - post-compile.
`DM_NetCount` `DM_Nets(I)` (INet) - post-compile.
`DM_PartCount` `DM_Parts(I)` (IPart) - parts in document.
`DM_SheetSymbolCount` `DM_SheetSymbols(I)` (ISheetSymbol) - sheet symbols in document.
`DM_ParentDocumentCount` - number of parent documents in hierarchy.
`DM_IndentLevel` (Integer) - indent level in project hierarchy (1 = top-level).
`DM_DocumentIsLoaded` (Boolean) - whether the document is currently loaded.
`DM_ChildDocumentCount` `DM_ChildDocuments(I)` (IDocument) - child documents.

### IComponent (WSM)
`DM_PhysicalDesignator` `DM_LogicalDesignator`
`DM_Footprint` `DM_Comment` `DM_PartType` `DM_Description`
`DM_UniqueId` - unique identifier for cross-referencing to PCB.
`DM_PinCount` `DM_Pins(I)` (IPin)
`DM_SubPartCount` `DM_SubParts(I)` (IPart) - sub-parts for multi-part components.
`DM_ParameterCount` `DM_Parameters(I)` (IParameter) - component parameters.

### INet (WSM)
`DM_CalculatedNetName` `DM_FullNetName` `DM_NetName`
`DM_PinCount` `DM_Pins(I)` (IPin)
`DM_NetLabelCount` `DM_NetLabels(I)` - net labels on this net.
`DM_PortCount` - number of ports. `DM_PowerObjectCount` - number of power objects.
`DM_CountOfNonPinItems` - non-pin net items (ports, netlabels etc).

### IPin (WSM)
`DM_PinNumber` `DM_PinName` `DM_FlattenedNetName`
`DM_PhysicalPartDesignator` `DM_PartType`
`DM_Part` (IPart) - parent part object.
`DM_Electric` (TPinElectrical: `eElectricInput` `eElectricIO` `eElectricOutput` `eElectricOpenCollector` `eElectricPassive` `eElectricHiZ` `eElectricOpenEmitter` `eElectricPower`)

### ISheetSymbol (WSM)
`DM_LocationX` `DM_LocationY` - sheet symbol position.
`DM_ChildSheetCount` `DM_ChildSheet(I)` (IDocument) - child sheet documents.

### IPart (WSM - from IDocument.DM_Parts)
`DM_LogicalDesignator` `DM_PhysicalDesignator` `DM_LibraryReference` `DM_SourceLibraryName`
`DM_LocationX` `DM_LocationY` - part position coordinates.
`DM_OwnerDocumentFullPath` - full path of owning document.
`DM_PartID` - part ID for multi-part components.
`DM_PinCount` `DM_Pins(I)` - pins on part.
`DM_ParameterCount` `DM_Parameters(I)` (IParameter) - part parameters.
`DM_ImplementationCount` `DM_Implementations(I)` (IComponentImplementation)

### IComponentImplementation (WSM)
`DM_ModelName` `DM_ModelType` `DM_Description` `DM_IntegratedModel` (Boolean)
`DM_ParameterCount` `DM_Parameters(I)` (IParameter)
`DM_DatafileCount` `DM_DatafileEntity(I)` `DM_DatafileKind(I)` `DM_DatafileLocation(I)`

### IParameter (WSM)
`DM_Name` `DM_Value` `DM_ObjectKindString`

### IProjectVariant (WSM)
`DM_Description` - variant description string.
`DM_FindComponentVariationByUniqueId(uniqueId)` (IComponentVariation) - find variation for a component.

### IComponentVariation (WSM)
`DM_VariationKind` - variation type: `eVariation_NotFitted` etc.

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
`IntMan.AvailableLibraryCount` (Integer) `IntMan.InstalledLibraryPath(I)` (String) - enumerate installed libraries.
`IntMan.ExtractSources(intLibPath)` - extract source libs from IntLib.
`IntMan.GetComponentLocation(sourceLibName, libReference, TopLevelLoc)` returns component path. TopLevelLoc returns IntLib path.
`IntMan.GetComponentDatafileLocation(datafileIndex, modelName, modelType, libReference, compLoc, topLevelLoc)` - get model data file location within IntLib.
`IntMan.FindDatafileInStandardLibs(name, kind, location, inIntLib, foundLocation)` - search installed libs. Kind: `'PCBLIB'` `'PCB3DLIB'`. inIntLib: Boolean.
`IntMan.GetAvailableDBLibDocAtPath(path)` (IDatabaseLibDocument) - get database library document.

### IDatabaseLibDocument
`GetTableCount` (Integer) `GetTableNameAt(I)` (String) - enumerate tables in database library.

### ILibCompFullInfoReader
```
Reader := SchServer.CreateLibCompFullInfoReader(libPath);
Reader.ComponentFullInfos[I].CompName  // component name in library
```

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
`Sch:Deselect` - params: `Action`='All' or `Action`='AllOpenDocuments'
`Sch:Zoom` - params: `Action`='Pan'|'ZoomIn'|'ZoomOut'|'Redraw'
`Sch:PlaceIntegratedComponentFromDB` - place component from DbLib. Params: `PartId`, `LibReference`, `Library`, `CurFootprint`, `SourceLibraryName`, `DatabaseTableName`.
`SCH:FirstComponentLibraryEditor` `SCH:LastComponentLibraryEditor` `SCH:NextComponentLibraryEditor` `SCH:PreviousComponentLibraryEditor` - navigate components in SchLib.
`SCH:NextComponentPart` `SCH:PreviousComponentPart` - navigate parts in multi-part component.

### PCB Processes (General)
`PCB:Zoom` - params: `Action`='All'|'In'|'Out'|'Pan'|'Redraw'
`PCB:SetCurrentLayer` - params: `LayerName`='Next'|'Previous'
`PCB:GotoLibraryComponent` - navigate to footprint in PcbLib. Params: `FileName`, `Footprint`.
`PCB:LastComponent` `PCB:PreviousComponent` `PCB:NextComponent` - navigate components in PcbLib.
`PCB:SwitchTo2D` - switch PCB view to 2D mode.

### Workspace/Cross-Domain Processes

#### WorkspaceManager:OpenObject
```
AddStringParameter('ObjectKind', 'Document');  // or 'Project'
AddStringParameter('FileName', filePath);
RunProcess('WorkspaceManager:OpenObject');
```

#### WorkspaceManager:SaveObject
```
AddStringParameter('ObjectKind', 'FocusedDocument');  // or 'Document'
AddStringParameter('SaveMode', 'Standard');            // or 'SaveAs'
AddStringParameter('FileFormat', 'Export P-CAD ASCII'); // optional export format
AddStringParameter('File', 'output.pcb');              // optional output path
RunProcess('WorkspaceManager:SaveObject');
```

#### WorkspaceManager:CloseObject
```
AddStringParameter('ObjectKind', 'FocusedProjectDocuments'); // or 'Document'
AddStringParameter('FileName', filePath);                    // for specific document
RunProcess('WorkspaceManager:CloseObject');
```

#### WorkspaceManager:SetCurrentProject
`RunProcess('WorkspaceManager:SetCurrentProject')` - set the focused project as current.

#### WorkspaceManager:Compare
```
AddStringParameter('ObjectKind', 'Project');
AddStringParameter('Action', 'UpdateOther');  // or 'UpdateMe'
AddIntegerParameter('Index', N);
RunProcess('WorkspaceManager:Compare');
```

#### WorkspaceManager:DocumentOptions
`AddStringParameter('ObjectKind', 'Project')` `AddStringParameter('Action', 'ComponentLinking')` - component linking dialog.

#### IntegratedLibrary:RefreshInstalledLibraries
`RunProcess('IntegratedLibrary:RefreshInstalledLibraries')` - refresh installed library list.

#### VersionControl:VersionControl
`RunProcess('VersionControl:VersionControl')` - trigger version control operations.

#### PinSwapper:RunManualPinSwapper
`RunProcess('PinSwapper:RunManualPinSwapper')` - open manual pin swapper.

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

#### OutJob Batch Processing Pattern
OutJob files (.OutJob) are INI-format. Parse with TIniFile to read output configurations, then run each via processes:
```
// Open OutJob document
OutJobDoc := Client.OpenDocument('OUTPUTJOB', outJobPath);
Client.ShowDocument(OutJobDoc);
// Run all outputs in OutJob:
ResetParameters;
AddStringParameter('Action', 'Run');
AddStringParameter('ObjectKind', 'OutputBatch');
RunProcess('WorkspaceManager:GenerateReport');
```
Extended PDF parameters for OutJob outputs: `AddStringParameter('PDFACompliance', 'True')` `AddStringParameter('PDFVersion', '1.5')`.

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
// Color dialog:
AddStringParameter('Dialog', 'Color');
AddStringParameter('Color', '0');          // initial color
RunProcess('Client:RunCommonDialog');
GetStringParameter('Result', s);           // 'True' if OK clicked
GetStringParameter('Color', s);            // selected color value

// File open dialog:
AddStringParameter('Dialog', 'FileOpenSave');
AddStringParameter('Mode', '0');           // 0=Open, 1=Save
AddStringParameter('Path', 'C:\*.xml');
AddStringParameter('Prompt', 'Choose a file');
AddStringParameter('FileType1', 'XML files (*.xml)|*.xml');
RunProcess('Client:RunCommonDialog');
GetStringParameter('Result', s);           // 'True' if OK
GetStringParameter('Path', s);             // selected file path
```

## GENERAL UTILITY FUNCTIONS

### Built-in Functions
`ShowMessage(str)` `ShowInfo(str)` `ShowWarning(str)` `ShowError(str)` - message dialogs.
`MessageDlg(msg, msgType, buttons, helpCtx)` - full dialog with icon/buttons. Types: `mtError` `mtWarning` `mtInformation` `mtConfirmation`. Buttons: `[mbOk]` `[mbYes, mbNo]` `[mbOk, mbCancel]`.
`InputQuery(title, prompt, varStr)` - input dialog, returns Boolean (modifies varStr in-place).
`InputBox(title, prompt, default)` - input dialog, returns String directly.
`RunApplication(commandLine)` - execute external program, returns error code (0=success).
`GetErrorMessage(errorCode)` - human-readable error string.
`BeginHourGlass` `EndHourGlass` - hourglass cursor.
`ConfirmNoYes(str)` - yes/no dialog, returns Boolean.
`FindFiles(path, pattern, attributes, recursive, stringList)` - built-in file search. Uses `faAnyFile` attribute.
`FileExists(path)` - check if file exists. `DirectoryExists(path)` - check if directory exists.
`CopyFile(src, dst, failIfExists)` - copy a file. `DeleteFile(path)` - delete a file.
`FileAge(path)` - file modification time. `FileSetDate(name, age)` - set file modification time.
`RemoveDir(path)` - remove a directory. `ChDir(path)` - change current directory. `GetCurrentDir` - returns current directory.
`Sleep(ms)` - pause execution for milliseconds.
`Assigned(obj)` (Boolean) - test if reference is non-nil.
`SpecialFolder_MyDesigns` - returns path to My Designs folder.
`ClientAPI_SpecialFolder_AltiumApplicationData` - returns Altium AppData folder path.
`VFS_SetFileEditorName(fileName, editorName)` - set file's associated editor (e.g. 'ProtelNetlist').
`CreateNewDocumentFromDocumentKind('PCB')` - create new document by kind.

### String Functions
`IntToStr(i)` `StrToInt(s)` `StrToIntDef(s, default)` `FloatToStr(f)` `StrToFloatDef(s, default)` `BoolToStr(b)`
`UpperCase(s)` `LowerCase(s)` `Trim(s)` `Length(s)` `Copy(s,start,len)` `Delete(s,start,len)` `Pos(sub,s)` `Inc(i)`
`ContainsText(fullStr, subStr)` `AnsiContainsText(fullStr, subStr)` - case-insensitive substring check (Boolean). `AnsiStartsStr(prefix, str)` `AnsiEndsStr(suffix, str)` - case-sensitive prefix/suffix check.
`AnsiPos(sub, str)` - returns position (1-based, 0 if not found). Same as `Pos` but ANSI-aware.
`AnsiMidStr(str, start, len)` `AnsiLeftStr(str, len)` `AnsiRightStr(str, len)` - substring extraction.
`AnsiCompareText(s1, s2)` - case-insensitive comparison (0 if equal). `AnsiCompareStr(s1, s2)` - case-sensitive.
`SameString(s1, s2, caseSensitive)` (Boolean) - string equality test.
`AnsiUpperCase(str)` `AnsiLowerCase(str)` - case conversion.
`LastDelimiter(delims, str)` - finds last occurrence of any delimiter character.
`SetLength(str, newLen)` - set string length. `Insert(sub, str, index)` - insert substring at position.
`FormatFloat(format, value)` - format float to string (e.g. `FormatFloat('0.00', 3.14)`).
`ExtractFileName(path)` `ExtractFilePath(path)` (includes trailing `\`) `ExtractFileDir(path)` (no trailing `\`) `ExtractFileNameFromPath(path)` `ExtractFileExt(path)` `ExtractFileDrive(path)` `ChangeFileExt(path,ext)`
`DirectoryExists(path)` `CreateDir(path)` `StringReplace(s, old, new, MkSet(rfReplaceAll))` Flags: `rfReplaceAll` `rfIgnoreCase`
`Chr(n)` - char from ordinal. `#13` `#10` `#13#10` - CR, LF, CRLF.

### Date/Time
`Now` `Date` `Time` return TDateTime. `DateToStr(dt)` `TimeToStr(dt)` `DateTimeToStr(dt)` - convert to string.
`FormatDateTime(fmt, dt)` - format with pattern (e.g. `'h:n:s'`, `'yyyy-mm-dd'`).

### Math Functions
`DegToRad(degrees)` `RadToDeg(radians)` - angle conversion. `ArcTan(x)` - returns radians.
`Max(a, b)` `Min(a, b)` - returns maximum/minimum of two values.

### Set Operations
`MkSet(val1, val2, ...)` - create set from values. `MkSetRange(first, last)` - create set from range.
`SetUnion(set1, set2)` - union of two sets. `InSet(element, set)` (Boolean) - test set membership.

### Keyboard State
`ShiftKeyDown` `AltKeyDown` `ControlKeyDown` - returns Boolean, True if key is held.

### Coordinate Utilities
`MilsToCoord(value)` `MMsToCoord(value)` `CoordToMils(coord)` `CoordToMMs(coord)` - unit conversion.
`DxpsToCoord(value)` - DXP units to internal coordinates.
`Point(x, y)` - create coordinate point.
`RectToCoordRect(rect)` - convert TRect to TCoordRect. `RectWidth(rect)` `RectHeight(rect)` - rect dimensions.
**TCoordRect**: `.Left` `.Right` `.Top` `.Bottom` - coordinate rectangle properties.

### Screen/Cursor
`Screen.Cursor := crHourGlass` - set hourglass cursor. Alternative to `BeginHourGlass`/`EndHourGlass`.

### Debug
`WriteToDebugFile(text)` - write to debug output file.

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
`Create` `Free` `Add(s)` `AddObject(s, obj)` `GetObject(I)` `Insert(index, s)` `Delete(index)` `Exchange(i,j)` `Clear`
`Count` `Strings[I]` `Objects[I]` `Items[I]` (same as Strings)
`Sorted` `Sort` `Duplicates` (dupIgnore) `CaseSensitive` `Text` (all content as string)
`AddStrings(otherList)` - add all strings from another list.
`SaveToFile(path)` `LoadFromFile(path)` `Filter` (for file dialogs)
`IndexOf('text')` - returns index or -1 if not found.
**CSV/Delimited parsing**: `Delimiter` (Char, delimiter character) `StrictDelimiter` (Boolean, True=only use Delimiter, False=also whitespace) `DelimitedText` (String, read/write - entire list as delimited string).
**Name/Value Pairs**: `NameValueSeparator := '='` (default). `Names[I]` `Values[I]` `ValueFromIndex(I)` - access key/value parts. `IndexOfName('key')` - find by key name. Lines formatted as `key=value`.

### TList
`Create` `Free` `Add(item)` `Items[I]` `Count`
`CreateObject(className)` - alternative object creation (e.g. `CreateObject(TStringList)`).

### TObjectList
`Create` `Free` `Add(item)` `Items[I]` `Count` `IndexOf(obj)` (Integer, -1 if not found)
`OwnsObjects` (Boolean) - when True, frees objects when removed or list is freed.

### TIniFile
```
Uses IniFiles;
IniFile := TIniFile.Create(fileName);
IniFile.ReadString(section, key, default);
IniFile.WriteString(section, key, value);
IniFile.ReadBool(section, key, default);
IniFile.WriteBool(section, key, value);
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
**ShowModal**: Form.Visible must be False. Returns `ModalResult`: `mrOk` `mrCancel` `mrNone` `mrYes` `mrNo`.
`MessageDlg(msg, dlgType, buttons, helpCtx)` returns `mrYes`/`mrNo`/`mrCancel`. Types: `mtError` `mtWarning` `mtInformation` `mtConfirmation`. Buttons: `mbOKCancel` `mbYesNoCancel` `[mbYes, mbNo]`.
`ConfirmNoYesCancelWithCaption(caption, msg)` - returns `mrYes`/`mrNo`/`mrCancel`.
**Non-unit scripts**: omit unit/interface/implementation/End. Use `Interface`...`Implementation` blocks without unit name.

### VCL Components
**TButton**: `Caption` `Default` `Cancel` `OnClick`
**TEdit**: `Text` `OnChange`
**TLabel**: `Caption`
**TRadioGroup**: `ItemIndex` (0-based)
**TCheckListBox**: `Items` (TStrings) `Items.Add(s)` `Items.Count` `Items[I]` `Checked[I]` (Boolean)
**TCheckBox**: `Checked` (Boolean) `Caption` `Visible` `Enabled` `State` (cbChecked)
**TRadioButton**: `Checked` (Boolean) `Enabled`
**TComboBox**: `Text` `Items.Add(s)` `Items.Clear` `SetFocus` `AddItem(name, obj)` (add item with associated object) `GetItemIndex` `SetItemIndex(index)` `ItemIndex` (Integer, selected index) `Items.Objects[I]` (associated object at index)
**TListBox**: `Items.Insert(i,s)` `Clear` `ScrollWidth` `Canvas.TextWidth(s)`
**TStringGrid**: `Cells[col,row]` `RowCount` `ColCount` `FixedRows` `FixedCols` `Col` `Row` `CellRect(col,row)` `DefaultRowHeight` `ColWidths[I]` `Rows(I)` (TStringList) `Selection` (TGridRect) `SetFocus`
**TStatusBar**: `Panels.Items(I).Text` `SimpleText` `Update`
**TImage**: image display control.
**TOpenDialog**: `Execute` (Boolean) `FileName` `Filter` `Title` `InitialDir` `Options` (set: `ofNoValidate` `ofPathMustExist` `ofEnableSizing` `ofOverwritePrompt` `ofFileMustExist`)
**TSaveDialog**: `Execute` (Boolean) `FileName` `Filter` `Title` `DefaultExt` `InitialDir` `FilterIndex` (Integer, 1-based active filter)
**TFontDialog**: `Execute` (Boolean) `Font` (TFont)
**TTimer**: `Interval` `OnTimer` `Enabled`
**TShape**: `Create(Nil)` `Parent` `Left` `Top` `Width` `Height` `Visible` `Show`
  `Shape` (stCircle|stRectangle|stRoundRect|stEllipse|stSquare|stRoundSquare)
  `Brush.Color` `Brush.Style` (bsSolid|bsClear) `Pen.Color` `Pen.Mode` (pmCopy) `Pen.Style` (psSolid) `Pen.Width`
**TBevel**: decorative frame.
**TMemo**: `Text` `Lines` (TStrings) `Lines.Clear` `Lines.Add(s)`
**Self**: reference to owning form. `Self.Width` `Self.Invalidate` `Self.Close` `Self.Update` `Self.SetFocus`
**TInterfaceList**: `Create` `Add(item)` `Count` `Items[I]` `Free` - list of interface references.

### Color Values
Integer color values used in AddStringParameter and object properties. Common: 0=Black, 255=Red, 32768=Green, 16711680=Blue, 65535=Yellow, 16777215=White, 8421504=Gray, 12632256=Silver.

## PCB LIBRARY INTERFACES
```
PcbLib := PCBServer.GetCurrentPCBLibrary;
If PcbLib = Nil Then Exit;
// Create/load: PCBServer.CreatePCBLibrary  PCBServer.LoadPCBLibraryByPath(path)
```
### IPCB_Library
`LibraryIterator_Create` (IPCB_LibraryIterator) `LibraryIterator_Destroy(iter)` - footprint iteration.
`CurrentComponent` (IPCB_LibComponent, read/write) - gets/sets current footprint.
`GetComponentByName(name)` (IPCB_LibComponent) - find footprint by name.
`RegisterComponent(libComp)` - register new component in library.
`ComponentCount` (Integer) - number of footprints in library.
`Board` (IPCB_Board) - library board object. `Board.ViewManager_FullUpdate` - refresh view.
`SetBoardToComponentByName(name)` - set board display to named component.
`RefreshView` - refresh the library view.

### IPCB_LibraryIterator
`SetState_FilterAll` - accept all footprints.
`AddFilter_ObjectSet(MkSet(...))` - filter by object type.
`FirstPCBObject` `NextPCBObject` (IPCB_LibComponent) - iterate footprints.

### IPCB_LibComponent
`Name` (String, read/write) - footprint name.
`Description` (String) - footprint description.
`Height` - component height (read/write).
`GroupIterator_Create` `GroupIterator_Destroy(iter)` - iterate child primitives.
`RemovePCBObject(obj)` - remove a primitive from the footprint.
`BeginModify` `EndModify` - bracket modifications to library component (undo support).

## SCH LIBRARY INTERFACES
```
SchLib := SchServer.GetCurrentSchDocument;  // returns ISch_Lib in library context
```
### ISch_Lib
`SchLibIterator_Create` (ISch_Iterator) - create iterator over library symbols.
`GetState_Current_SchComponent` (ISch_Component) - current component in library.
`GetState_CurrentSchComponentPartId` (Integer) - current part ID in multi-part component.

### ISch_Component (Library Symbol)
`LibReference` (String) `SymbolReference` (String) `UniqueId` (String)
`SymbolItemGUID` `SymbolRevisionGUID` `SymbolVaultGUID` - vault/GUID properties.
`IsMultiPartComponent` (Boolean) `PartCount` (Integer) `CurrentPartID` (Integer)
`DatabaseLibraryName` `DatabaseTableName` `DesignItemID` - database library properties.
`ComponentDescription` (read/write) - component description.
`AddSchObject(param)` - add parameter to component.
`AddSchImplementation` - add model/footprint implementation.
`RemoveSchImplementation(model)` - remove model/footprint implementation.

### ISch_Implementation (Model/Footprint)
`ModelName` (String, read/write) `ModelType` (String, e.g. 'PCBLIB') `Description` (String)
`IsCurrent` (Boolean, read/write) - whether this is the active implementation.
`MapAsString` (String) - model pin mapping as string.
`DatafileLinkCount` (Integer) `DatafileLink[I]` / `GetState_SchDatafileLink(I)` (ISch_ModelDatafileLink)

### ISch_ModelDatafileLink
`EntityName` (String) `FileKind` (String) `Location` (String)

## DOCUMENT KIND CONSTANTS
`cDocKind_Sch` = 'SCH'  `cDocKind_SchLib` = 'SCHLIB'  `cDocKind_Pcb` = 'PCB'  `cDocKind_PcbLib` = 'PCBLIB'
Also used as strings: `'DBLIB'` `'DBLINK'` `'PrjPcb'` `'OutJob'`

## PCB COMPONENT PLACEMENT FROM LIBRARY
```
Comp := PCBServer.PCBObjectFactory(eComponentObject, eNoDimension, eCreate_Default);
Comp.Board := Board;
Comp.LoadFromLibrary('SourceLibReference=FP_Name\|FootPrint=FP_Name\|SourceComponentLibrary=MyLib.DbLib');
Comp.Layer := eV7_TopLayer;
Comp.SetState_XLocation(MilsToCoord(1000));
Comp.SetState_YLocation(MilsToCoord(1000));
Board.AddPCBObject(Comp);
Board.GraphicalView_ZoomRedraw;
```

## PCB LAYER ITERATOR
```
LayerI := Board.LayerIterator;
LayerI.First;
While LayerI.LayerObject <> Nil Do Begin
  LayerObj := LayerI.LayerObject;
  LayerName := LayerObj.Name;
  DisplayName := LayerObj.GetState_LayerDisplayName(0);  // 0=short, 1=long, 2=user
  LayerI.Next;
End;
```

## PCB SYSTEM OPTIONS
```
PCBServer.SystemOptions.DoOnlineDRC  // Boolean, read/write - enable/disable online DRC
```

## LAYER UTILITY FUNCTIONS
`Layer2String(layerID)` - converts layer ID to display name.
`String2Layer(layerName)` - converts layer name to layer ID.
`ILayer.MechanicalLayer(i)` - returns mechanical layer ID for index 1-32.
`ILayer.IsSignalLayer(layerID)` (Boolean) - test if layer is a signal (copper) layer.
`LayerUtils.FromShortDisplayString(name)` - convert short display name to TLayer.
`IPCB_LayerObject.GetState_LayerDisplayName(mode)` - layer display name. Mode: 0=short, 1=long, 2=user.

## DELPHISCRIPT LANGUAGE NOTES
- **Variant types**: `Var x;` (no type) creates variant - can hold any type.
- **Typed constants**: `Const x = 5;` supported. `Const x : Set Of Char` NOT supported - use string instead: `Numbers = '0123456789'; If Pos(ch, Numbers) > 0`.
- **Set syntax**: `MkSet(value1, value2)` replaces `[value1, value2]` in standard Delphi.
- **Program scripts**: `Program Name; ... End.` syntax for standalone scripts.
- **Procedure params**: `Procedure Name(Value)` - untyped variant param. `Procedure Name(Var S : String)` - typed.
- **Uses clause**: `Uses IniFiles;` at top of script for external units.
- **Function results**: `Result := value;` to set return value.
- **Forward declarations**: `Procedure Name(...); Forward;` - declare procedure signature before implementation (for mutual recursion or out-of-order definitions).
- **BooleanToString helper**: `If Value = True Then Result := 'True' Else Result := 'False';` (not built-in).
- **Try/Except**: `Try ... Except ShowMessage('Error: ' + E.Message); End;` - catch runtime errors. Use Try/Finally for cleanup, Try/Except for error handling.
- **Hide from Run Script dialog**: Add a dummy parameter to prevent a procedure from appearing in the Run Script picker: `Procedure MyHiddenProc(Dummy : Integer);` - only parameterless procedures appear in the dialog.
- **Command-line execution**: `"C:\Program Files\Altium\AD19\X2.EXE" -RScriptingSystem:RunScript(ProjectName="<ScriptProjectPath>"|ProcName="ProcedureName")` - run script from command line. Note `|` separator (use `^|` in CMD to escape).
