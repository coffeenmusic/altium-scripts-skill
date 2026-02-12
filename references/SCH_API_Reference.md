# Altium SCH DelphiScript API Reference
Compact AI-optimized reference. All code is DelphiScript (Object Pascal variant).

## UNITS
Internal coords use DXP units. Convert: `MilsToCoord()` `CoordToMils()` `InchesToCoord()` `DxpsToCoord(0.1)`. Locations use `Point(x,y)` returning `TLocation`. `TLocation` has `.X` `.Y` properties. `TCoordRect` has `.left` `.bottom` `.right` `.top`.

## SERVER & DOCUMENT ACCESS
```
If SchServer = Nil Then Exit;
CurrentSch := SchServer.GetCurrentSchDocument;
If CurrentSch = Nil Then Exit;
```
By path: `SchServer.GetSchDocumentByPath(fullPath)` returns `ISch_Document`.
New doc: `GetWorkSpace.DM_CreateNewDocument('SCH');`
Start server: `Client.StartServer('SCH');`
Check doc type: `CurrentSch.ObjectID <> eSchLib` (eSchLib=library doc). Also: `Client.CurrentView.OwnerDocument.Kind` returns 'SCH'|'SCHLIB'.
`CurrentSch.DocumentName` - filename. `CurrentSch.IsLibrary` - boolean check.
`CurrentSch.OwnerDocument.DocumentName` - owner doc name.
`CurrentSch.VisibleGridSize` (TCoord) - current visible grid size. `CurrentSch.GetState_SheetSizeY` (TCoord) - sheet height.
`CurrentSch.RegisterSchObjectInContainer(Obj)` - register object in doc container (alternative to AddSchObject + robot message).
`cInternalPrecision` - constant divisor for converting internal coords to mils (e.g. `Location.X / cInternalPrecision`).

## UNDO SYSTEM
**Critical pattern** - wrap all modifications:
```
SchServer.ProcessControl.PreProcess(CurrentSch, '');
Try
  // create/modify/delete objects here
Finally
  SchServer.ProcessControl.PostProcess(CurrentSch, '');
End;
```
- One PreProcess/PostProcess pair = one undo level
- **Creating**: `Doc.RegisterSchObjectInContainer(Obj);` or `ParentObj.AddSchObject(Obj);` then `SchServer.RobotManager.SendMessage(Parent.I_ObjectAddress, c_BroadCast, SCHM_PrimitiveRegistration, Obj.I_ObjectAddress);`
- **Modifying**: `SchServer.RobotManager.SendMessage(Obj.I_ObjectAddress, c_BroadCast, SCHM_BeginModify, c_NoEventData);` ...change props... `SchServer.RobotManager.SendMessage(Obj.I_ObjectAddress, c_BroadCast, SCHM_EndModify, c_NoEventData);`
- **Deleting**: collect objects in TInterfaceList first, then: `Component.RemoveSchObject(Param);` + `SchServer.RobotManager.SendMessage(Component.I_ObjectAddress, c_BroadCast, SCHM_PrimitiveRegistration, Param.I_ObjectAddress);`
- For document-level: `Doc.RemoveSchObject(Obj);`
- Refresh: `Doc.GraphicallyInvalidate;`

### Robot Messages
`SCHM_PrimitiveRegistration` - register new object with undo
`SCHM_BeginModify` / `SCHM_EndModify` - bracket modifications
`c_BroadCast` - broadcast constant
`c_NoEventData` - no data constant

## OBJECT FACTORY
`Obj := SchServer.SchObjectFactory(objectType, eCreate_GlobalCopy);`
Alternative: `SchServer.SchObjectFactory(objectType, eCreate_Default);`

### TObjectId Constants (SCH)
**Schematic objects**: `ePort` `eSchComponent` `ePin` `eRectangle` `eJunction` `eNetlabel` `eLine` `eWire` `eCrossSheetConnector` `eParameter` `eImplementation` `eSheetSymbol` `eSheetEntry` `eBus` `eBusEntry` `eSignalHarness` `eHarnessConnector`
**Drawing primitives**: `eArc` `eEllipticalArc` `eRoundRectangle` `eImage` `ePie` `eEllipse` `ePolygon` `ePolyline` `eBezier`
**Text/label objects**: `eLabel` `eTextFrame` `eDesignator` `eSheetFileName` `eSheetName` `ePowerObject`
**Implementation**: `eImplementation` `eImplementationMap` `eImplementationsList` `eMapDefiner`
**Other**: `eParameter` `eParameterSet` `eParameterList` `eSymbol` `eSchLib`

## OBJECT PROPERTIES

### ISch_Port
`Location` (TLocation) `Style` (ePortRight|ePortLeft|ePortTop|ePortBottom) `IOType` (ePortBidirectional) `Alignment` (eHorizontalCentreAlign|eRightAlign|eLeftAlign) `Width` (Integer) `AreaColor` (TColor) `TextColor` (TColor) `Name` (String)

### ISch_Component
`Designator` (ISch_Parameter - has .Name .Text) `Comment` (ISch_Parameter - has .Text) `LibReference` (String) `LibraryPath` (String) `Location` (TLocation) `Orientation` (TRotationBy90) `IsMirrored` (Boolean) `CurrentPartID` (Integer) `DisplayMode` (Integer) `AreaColor` (TColor) `PinColor` (TColor) `ShowHiddenFields` (Boolean) `UniqueId` (String) `ComponentDescription` (String) `Selection` (Boolean)
Multi-part: `IsMultiPartComponent` `FullPartDesignator(PartID)` `GetState_CurrentPartID`
Direct param access: `Comp.GetState_SchParameterByName('ParamName').Text` - get parameter value by name without iterating.
Library ID: `LibIdentifierKind` `LibraryIdentifier` `DesignItemID`
Children: `AddSchObject(child)` `RemoveSchObject(child)` `SchIterator_Create` `SchIterator_Destroy(iter)`
Movement: `MoveByXY(dx, dy)`

### ISch_Pin
`Location` (TLocation) `Orientation` (TRotationBy90) `Designator` (String) `Name` (String) `Color` (TColor) `OwnerPartId` (Integer) `OwnerPartDisplayMode` (Integer) `Selection` (Boolean) `ShowName` (Boolean) `IsHidden` (Boolean) `PinLength` (Integer, internal coords) `Description` (String) `HiddenNetName` (String) `PinPackageLength` (Integer, writable - physical pin length for footprint)
Electrical: `Electrical` (TPinElectrical)
IEEE Symbols: `Symbol_Inner` `Symbol_InnerEdge` `Symbol_Outer` `Symbol_OuterEdge` (all TIeeeSymbol)
Location access: `GetState_Location` / `SetState_Location(loc)` (explicit get/set alternative)
Children: `AddSchObject(param)` - add parameter to pin

### ISch_Parameter
`Name` (String) `Text` (String) `Location` (TLocation) `ShowName` (Boolean) `IsHidden` (Boolean) `Color` (TColor) `Orientation` (TRotationBy90) `ParamType` (eParameterType_String) `ReadOnlyState` (eReadOnly_None) `CalculatedValueString` (String, read-only computed value) `FontID` (TFontID)
`Justification` (TTextJustification) `Autoposition` (Boolean, auto-position relative to parent)
Location access: `GetState_Location` / `SetState_Location(loc)` (explicit get/set)
Parent: `Container` - returns parent object
Special values: `=CURRENTFOOTPRINT` (system expression that resolves to current footprint name)

### ISch_Rectangle
`Location` (TLocation) `Corner` (TLocation) `Color` (TColor) `AreaColor` (TColor) `IsSolid` (Boolean) `LineWidth` (eSmall|eMedium|eLarge) `OwnerPartId` (Integer) `OwnerPartDisplayMode` (Integer)

### ISch_Junction
`Location` (TLocation) `SetState_Size` `SetState_Locked`

### ISch_NetLabel
`Location` (TLocation) `Orientation` (TRotationBy90) `Text` (String)
Methods: `MoveToXY(x, y)` `RotateBy90(center, count)` (rotate count*90 degrees around center TLocation) `SetState_xSizeySize` (recalculate bounding size)

### ISch_Line
`Location` (TLocation) `Corner` (TLocation) `LineWidth` (eSmall|eMedium|eLarge) `LineStyle` (eLineStyleSolid) `Color` (TColor)

### ISch_Wire
`Location` (TLocation) `SetState_LineWidth := eSmall` (TSize) `InsertVertex := i` (add vertex at index) `SetState_Vertex(index, Point(x,y))` (set vertex position)

### ISch_Label (standalone text, eLabel)
`Text` (String) `FontId` (TFontID) `Color` (TColor) `Location` (TLocation) `Justification` (TTextJustification)

### ISch_CrossSheetConnector
`Location` (TLocation) `CrossSheetStyle` (eCrossSheetRight) `Orientation` (TRotationBy90) `Text` (String)

### ISch_SheetSymbol
`SheetName` (ISch_Parameter - has .Text) `SchIterator_Create` for child sheet entries

### ISch_SheetEntry
`Name` (String)

### ISch_GraphicalObject (base)
`Location` (TLocation - has .X .Y) `ObjectId` (TObjectId) `GraphicallyInvalidate` `I_ObjectAddress` `Selection` (Boolean) `FontID` (TFontID)

### ISch_BasicContainer (base)
`ObjectId` `FontID` `GetState_Text` `I_ObjectAddress` `GraphicallyInvalidate` `SchIterator_Create` `SchIterator_Destroy(iter)`

## IMPLEMENTATION/MODEL SYSTEM

### ISch_Implementation
`ModelName` (String) `ModelType` (String - 'PCBLIB'|'SIM'|etc) `Description` (String) `IsCurrent` (Boolean) `UseComponentLibrary` (Boolean) `MapAsString` (String - pin-to-pad mapping) `DatafileLinkCount` (Integer) `DatafileLink[index]` (ISch_ModelDatafileLink) `DatalinksLocked` (Boolean) `DatabaseModel` (Boolean) `IntegratedModel` (Boolean)
Add model: `Component.AddSchImplementation(Impl)`
Create: `SchServer.SchObjectFactory(eImplementation, eCreate_Default)`
Links: `AddDataFileLink(link)` `ClearAllDatafileLinks`
Child params: `SchIterator_Create` then filter `MkSet(eParameter)` for model parameters (Kind, SubKind, Spice Prefix, Netlist)

### ISch_ModelDatafileLink
`Location` (String - library path) `EntityName` (String) `FileKind` (String) `LibIdentifierKind` `LibraryIdentifier`

### IntegratedLibraryManager
Place component: `IntegratedLibraryManager.PlaceLibraryComponent(compName, libName, paramString);`
Param string format: `'Orientation=1|Location.X=...|Location.Y=...'`
Library ops: `InstallLibrary(path)` `UnInstallLibrary(path)`
Find paths: `FindComponentLibraryPath(kind, identifier, designItemID)` `FindModelLibraryPath(kind, identifier, designItemID, modelName, modelType)` `FindDatafileEntitySourceLibraryPath(kind, identifier, entityName, fileKind)` `FindDatafileEntityLibraryPath(...)` `FindDatafileEntitySourceDatafilePath(...)` `FindDatafileEntityDatafilePath(...)`

### TLibIdentifierKind
`eLibIdentifierKind_Any` (=0) `eLibIdentifierKind_NameNoType` `eLibIdentifierKind_NameWithType` `eLibIdentifierKind_FullPath`

## ITERATORS

### Document Iterator
```
Iterator := CurrentSch.SchIterator_Create;
Iterator.AddFilter_ObjectSet(MkSet(eSchComponent));
Try
  Obj := Iterator.FirstSchObject;
  While Obj <> Nil Do Begin
    // process Obj
    Obj := Iterator.NextSchObject;
  End;
Finally
  CurrentSch.SchIterator_Destroy(Iterator);
End;
```
Optional depth: `Iterator.SetState_IterationDepth(eIterateFirstLevel);` (standalone objects only, not children) or `eIterateAllLevels` (all nested objects).
Filter all: `Iterator.SetState_FilterAll;` - removes all filters.
Part filter: `Iterator.AddFilter_CurrentPartPrimitives;` - restrict to current part's primitives only.

### Spatial Iterator (area filter)
```
SpatialIterator := CurrentSch.SchIterator_Create;
SpatialIterator.AddFilter_ObjectSet(MkSet(eJunction, eSchComponent));
SpatialIterator.AddFilter_Area(Rect.left, Rect.bottom, Rect.right, Rect.top);
```
Get area interactively: `CurrentSch.ChooseRectangleInteractively(Rect, 'prompt1', 'prompt2')` returns Boolean, fills `TCoordRect`.

### Nested/Child Iterator (component children)
```
PIterator := AComponent.SchIterator_Create;
PIterator.AddFilter_ObjectSet(MkSet(eParameter)); // or ePin, eImplementation
Try
  Param := PIterator.FirstSchObject;
  While Param <> Nil Do Begin
    // process child
    Param := PIterator.NextSchObject;
  End;
Finally
  AComponent.SchIterator_Destroy(PIterator);
End;
```
Works for: Component→Pins/Parameters/Implementations, SheetSymbol→SheetEntries, Pin→Parameters

### Library Iterator
```
CurrentLib := SchServer.GetCurrentSchDocument; // returns ISch_Lib
If CurrentLib.ObjectID <> eSchLib Then Exit;
LibIterator := CurrentLib.SchLibIterator_Create;
LibIterator.AddFilter_ObjectSet(MkSet(eSchComponent));
Try
  LibComp := LibIterator.FirstSchObject;
  While LibComp <> Nil Do Begin
    // LibComp.LibReference, LibComp.AliasCount, LibComp.Alias[i]
    LibComp := LibIterator.NextSchObject;
  End;
Finally
  CurrentLib.SchIterator_Destroy(LibIterator);
End;
```

### ISch_Lib Direct Methods
`ISch_Lib.GetState_SchComponentByLibRef(libRef)` - get component by library reference name.
`ISch_Lib.PlaceSchComponent` - place component in library.
`ISch_Lib.RemoveSchComponent(comp)` - remove component from library.
`ISch_Document.CreateLibraryFromProject` - create library from current project.
`SchServer.LoadComponentFromDatabaseLibrary` - load component from DBLib.

### Library Component Info Reader
```
ALibCompReader := SchServer.CreateLibCompInfoReader(FileName);
ALibCompReader.ReadAllComponentInfo;
CompNum := ALibCompReader.NumComponentInfos;
For J := 0 To CompNum - 1 Do Begin
  CompInfo := ALibCompReader.ComponentInfos[J];
  // CompInfo.CompName, .AliasName, .PartCount, .Description, .Offset
End;
SchServer.DestroyCompInfoReader(ALibCompReader);
```

## LIBRARY OPERATIONS

### Create Component in Library
```
SchLib := SchServer.GetCurrentSchDocument;
SchComp := SchServer.SchObjectFactory(eSchComponent, eCreate_Default);
SchComp.LibReference := 'MyComponent';
SchComp.Designator.Text := 'U?';
// Add child primitives (rectangles, pins)
Rect := SchServer.SchObjectFactory(eRectangle, eCreate_Default);
// set rect properties...
SchComp.AddSchObject(Rect);
Pin := SchServer.SchObjectFactory(ePin, eCreate_Default);
// set pin properties...
SchComp.AddSchObject(Pin);
// Register in library
SchLib.AddSchComponent(SchComp);
SchLib.CurrentSchComponent := SchComp;
```

## FONT MANAGER
```
FontManager := SchServer.FontManager;
FontManager.GetFontSpec(FontID, Size, Rotation, Underline, Italic, Bold, StrikeOut, FontName);
FontID := FontManager.GetFontID(Size, Rotation, Underline, Italic, Bold, StrikeOut, FontName);
Obj.FontID := FontID; // apply font to any text object
```
`GetStateString_ObjectId(ObjectID)` - convert TObjectId to display string.

## ENUMS

### TRotationBy90
`eRotate0` `eRotate90` `eRotate180` `eRotate270`

### TSize (LineWidth)
`eSmall` `eMedium` `eLarge`

### TPinElectrical
`eElectricInput` `eElectricIO` `eElectricOutput` `eElectricOpenCollector` `eElectricPassive` `eElectricHiZ` `eElectricOpenEmitter` `eElectricPower`

### TIeeeSymbol
`eNoSymbol` `eDot` `eRightLeftSignalFlow` `eClock` `eActiveLowInput` `eAnalogSignalIn` `eNotLogicConnection` `eShiftRight` `ePostPonedOutput` `eOpenCollector` `eHiz` `eHighCurrent` `ePulse` `eSchmitt` `eDelay` `eGroupLine` `eGroupBin` `eActiveLowOutput` `ePiSymbol` `eGreaterEqual` `eLessEqual` `eSigma` `eOpenCollectorPullUp` `eOpenEmitter` `eOpenEmitterPullUp` `eDigitalSignalIn` `eAnd` `eInvertor` `eOr` `eXor` `eShiftLeft` `eInputOutput` `eOpenCircuitOutput` `eLeftRightSignalFlow` `eBidirectionalSignalFlow`

### TTextJustification
`eJustify_BottomLeft` `eJustify_BottomCenter` `eJustify_BottomRight` `eJustify_CenterLeft` `eJustify_CenterCenter` `eJustify_CenterRight` `eJustify_TopLeft` `eJustify_TopCenter` `eJustify_TopRight`

### TFontStyles
`fsBold` `fsItalic` `fsUnderline` `fsStrikeOut`. Check membership: `InSet(fsBold, Font.Style)`

### Colors
BGR format: `$0000FF`=red `$00FF00`=green `$FF0000`=blue. Use `clBlue` etc. or `TColor` integer.

## WORKSPACE MANAGER (WSM) INTERFACES

### Project Iteration
```
Project := GetWorkspace.DM_FocusedProject;
Project.DM_Compile;
For I := 0 to Project.DM_LogicalDocumentCount - 1 Do Begin
  Doc := Project.DM_LogicalDocuments(I);
  If Doc.DM_DocumentKind = 'SCH' Then Begin
    // process doc
  End;
End;
```

### IWorkSpace
`DM_ProjectCount` `DM_Projects(i)` (IProject)
`DM_FocusedDocument` (IDocument)
`DM_MessagesManager` (IMessagesManager) `DM_ShowMessageView` - open Messages panel.

### IProject
`DM_FocusedProject` (from GetWorkspace)
`DM_LogicalDocumentCount` `DM_LogicalDocuments(i)` (IDocument)
`DM_PhysicalDocumentCount` `DM_PhysicalDocuments(i)` (IDocument - for net info after compile)
`DM_ProjectFileName` `DM_ProjectFullPath`
`DM_Compile` - compile project (expands logical→physical docs)
`DM_TopLevelLogicalDocument` (IDocument) - top-level doc in hierarchical design.
`DM_DocumentFlattened` (IDocument) - flattened hierarchy doc (Nil if not compiled).

### IDocument
`DM_DocumentKind` ('SCH'|'SCHLIB'|etc) `DM_FullPath` `DM_FileName` (name only)
`DM_ComponentCount` `DM_Components(i)` (IComponent)
`DM_NetCount` `DM_Nets(i)` (INet)
`DM_ChildDocumentCount` `DM_ChildDocuments[i]` (IDocument, for hierarchical traversal)

### IComponent (WSM)
`DM_PhysicalPath` `DM_UniqueId` `DM_UniqueIdName` `DM_UniqueIdPath` `DM_FullLogicalDesignator`
`DM_SubPartCount` `DM_SubParts(i)` (IPart) `DM_PinCount` `DM_Pins(i)` (IPin)

### IPart (WSM)
`DM_PinCount` `DM_Pins(i)` (IPin) `DM_FullLogicalDesignator`

### IPin (WSM)
`DM_PinNumber` `DM_FlattenedNetName`

### INet (WSM)
`DM_NetName` `DM_PinCount` (Integer) `DM_Pins(i)` (INetItem) `DM_IsLocal` (Boolean, unconnected/single-pin net)

### INetItem (WSM - pins accessed via INet)
`DM_PinNumber` (String) `DM_PinName` (String) `DM_NetName` (String) `DM_LogicalPartDesignator` (String, e.g. 'U1A') `DM_OwnerNetLogical` (INet)

## PROCESS-BASED OPERATIONS
Pattern: `ResetParameters; Add*Parameter(...); RunProcess('Process:Name');`
Get results: `GetIntegerParameter('ParamName', variable);`

### Port Placement
```
ResetParameters;
AddIntegerParameter('Location.X', x); AddIntegerParameter('Location.Y', y);
AddIntegerParameter('Style', 2); AddIntegerParameter('IOType', 3);
AddIntegerParameter('Alignment', 0); AddIntegerParameter('Width', w);
AddStringParameter('Name', 'PortName');
AddIntegerParameter('AreaColor', $FFFFFF); AddIntegerParameter('TextColor', $000000);
RunProcess('Sch:PlacePort');
```

### Wire Placement
```
ResetParameters;
AddColorParameter('Color', R, G, B);
AddIntegerParameter('Location1.X', x1); AddIntegerParameter('Location1.Y', y1);
AddIntegerParameter('Location2.X', x2); AddIntegerParameter('Location2.Y', y2);
RunProcess('Sch:PlaceWire');
```

### Component Placement (Process)
```
ResetParameters;
AddStringParameter('Library', 'LibName.IntLib');
AddStringParameter('LibReference', 'CompRef');
AddStringParameter('Designator', 'R1');
AddIntegerParameter('Location.X', x); AddIntegerParameter('Location.Y', y);
AddIntegerParameter('Orientation', 0);
AddStringParameter('ModelType', 'SIM');
AddStringParameter('ModelParameterName0', 'Value');
AddStringParameter('ModelParameterValue0', '100');
RunProcess('IntegratedLibrary:PlaceLibraryComponent');
```

### Power Port
```
ResetParameters;
AddIntegerParameter('Location.X', x); AddIntegerParameter('Location.Y', y);
AddIntegerParameter('Orientation', 3); AddStringParameter('S', 'GND');
AddIntegerParameter('Style', 4);
RunProcess('Sch:PlacePowerPort');
```

### Interactive Location
```
ResetParameters;
RunProcess('Sch:AskForXYLocation');
GetIntegerParameter('LocationX', X);
GetIntegerParameter('LocationY', Y);
GetIntegerParameter('Result', Result); // 0=cancelled, non-0=ok
```

### Selection & Deletion
```
ResetParameters; AddStringParameter('Action','All'); RunProcess('Sch:Deselect');
ResetParameters; AddStringParameter('Action','InsideArea'); RunProcess('Sch:Select');
ResetParameters; RunProcess('Sch:Clear'); // delete selected
```

### Zoom
```
ResetParameters; AddStringParameter('Action', 'Document'); RunProcess('Sch:Zoom');
// or: AddStringParameter('Action', 'All');
// or: AddStringParameter('Action', 'Redraw');  // force screen redraw
```

### Compile Project (Process)
```
ResetParameters; AddStringParameter('Action', 'Compile');
AddStringParameter('ObjectKind', 'Project'); RunProcess('WorkspaceManager:Compile');
```

## MESSAGES PANEL
```
WSM := GetWorkSpace;
MM := WSM.DM_MessagesManager;
MM.ClearMessages;
MM.BeginUpdate;
MM.AddMessage('Category', 'Message text', 'Source', 'DocPath', '', '', IconIndex, False);
MM.EndUpdate;
WSM.DM_ShowMessageView;
```
Icon indices: `3` (OK) `4` (Error) `107` (Info).

## CLIENT METHODS
`Client.OpenDocument('SCH', fullPath)` - open document, returns IServerDocument.
`Client.ShowDocument(doc)` - activate/focus document. `Client.ShowDocumentDontFocus(doc)` - show without stealing focus.
`Client.StartServer('SCH')` - ensure schematic server is running.
`IServerDocument.Modified := True` - mark document as dirty (prompts save on close).
`Clipboard.AsText` (String r/w) - read/write system clipboard text.
`FindParameterByName(SchDoc, 'ParamName')` - get ISch_Parameter from document by name.

## STANDARD SHEET PARAMETERS (title block fields)
`Title` `DocumentNumber` `Revision` `Date` `Time` `Author` `DrawnBy` `CheckedBy` `ApprovedBy` `Engineer` `CompanyName` `Organization` `Address1`..`Address4` `SheetNumber` `SheetTotal` `ModifiedDate`

## DIALOGS & UTILITY FUNCTIONS
`ShowMessage(str)` `ShowInfo(str)` `ShowWarning(str)` `ShowError(str)` `ConfirmNoYes(str)` (returns Boolean)
`BeginHourGlass` `EndHourGlass` - cursor control
`StringsEqual(s1, s2)` - case-insensitive compare
`DateToStr(Date)` `TimeToStr(Time)` - timestamps
`SpecialFolder_MyDesigns` - special path constant
`VarToStr(variant)` - convert variant to string. `InSet(element, set)` - test set membership.
`TFontDialog.Execute` - show font picker dialog. Access `.Font.Name` `.Font.Size` `.Font.Color` `.Font.Style` after.

## FILE I/O
```
ReportList := TStringList.Create;
ReportList.Add('line'); ReportList.Insert(0, 'header');
ReportList.SaveToFile('C:\Report.txt');
ReportList.Free;
Document := Client.OpenDocument('Text', 'C:\Report.txt');
If Document <> Nil Then Client.ShowDocument(Document);
```
Open SCH doc: `Client.OpenDocument('Sch', fullPath);`
Sorted list (no dupes): `List.Sorted := True; List.Duplicates := dupIgnore;`
String objects: `List.AddObject(key, obj);` `List.Objects[i]`
File ops: `CopyFile(old, new, False)` `ChangeFileExt(path, '.ext')` `ExtractFileName(path)` `FileExists(path)`

## COMPLETE CODE PATTERNS

### Iterate All Components on Sheet
```
Iterator := CurrentSch.SchIterator_Create;
Iterator.AddFilter_ObjectSet(MkSet(eSchComponent));
Try
  Comp := Iterator.FirstSchObject;
  While Comp <> Nil Do Begin
    // Comp.Designator.Text, Comp.LibReference, Comp.Location
    Comp := Iterator.NextSchObject;
  End;
Finally
  CurrentSch.SchIterator_Destroy(Iterator);
End;
```

### Get Footprint Name from Component
```
ImplIter := Comp.SchIterator_Create;
ImplIter.AddFilter_ObjectSet(MkSet(eImplementation));
Impl := ImplIter.FirstSchObject;
While Impl <> Nil Do Begin
  If StringsEqual(Impl.ModelType, 'PCBLIB') And Impl.IsCurrent Then
    FootprintName := Impl.ModelName;
  Impl := ImplIter.NextSchObject;
End;
Comp.SchIterator_Destroy(ImplIter);
```

### Add Parameter to Component (with Undo)
```
SchServer.ProcessControl.PreProcess(Doc, '');
Try
  Param := SchServer.SchObjectFactory(eParameter, eCreate_Default);
  Param.Name := 'ParamName'; Param.Text := 'Value';
  Param.Location := Point(Comp.Location.X, Comp.Location.Y + DxpsToCoord(0.1));
  Comp.AddSchObject(Param);
  SchServer.RobotManager.SendMessage(Comp.I_ObjectAddress, c_BroadCast, SCHM_PrimitiveRegistration, Param.I_ObjectAddress);
Finally
  SchServer.ProcessControl.PostProcess(Doc, '');
End;
```

### Replace Selected Component
```
SchServer.ProcessControl.PreProcess(Sheet, '');
Try
  // Find selected component
  Iterator := Sheet.SchIterator_Create;
  Iterator.AddFilter_ObjectSet(MkSet(eSchComponent));
  Comp := Iterator.FirstSchObject;
  While Comp <> Nil Do Begin
    If Comp.Selection Then Break;
    Comp := Iterator.NextSchObject;
  End;
  Sheet.SchIterator_Destroy(Iterator);
  If Comp = Nil Then Exit;
  Loc := Comp.Location;
  Sheet.RemoveSchObject(Comp);
  IntegratedLibraryManager.PlaceLibraryComponent('NewComp', 'Library.IntLib',
    'Orientation=1|Location.X=' + IntToStr(Loc.X) + '|Location.Y=' + IntToStr(Loc.Y));
Finally
  SchServer.ProcessControl.PostProcess(Sheet, '');
End;
```

### Iterate Project Schematics
```
Project := GetWorkspace.DM_FocusedProject;
Project.DM_Compile;
For I := 0 to Project.DM_LogicalDocumentCount - 1 Do Begin
  Doc := Project.DM_LogicalDocuments(I);
  If Doc.DM_DocumentKind = 'SCH' Then Begin
    SchDoc := Client.OpenDocument('Sch', Doc.DM_FullPath);
    Client.ShowDocument(SchDoc);
    CurrentSch := SchServer.GetCurrentSchDocument;
    // process CurrentSch...
  End;
End;
```

### Create Symbol in Library
```
SchLib := SchServer.GetCurrentSchDocument;
SchComp := SchServer.SchObjectFactory(eSchComponent, eCreate_Default);
SchComp.LibReference := 'MySymbol';
SchComp.Designator.Text := 'U?';
// Rectangle body
Rect := SchServer.SchObjectFactory(eRectangle, eCreate_Default);
Rect.Location := Point(InchesToCoord(-0.1), InchesToCoord(-0.3));
Rect.Corner := Point(InchesToCoord(0.1), InchesToCoord(0.1));
Rect.IsSolid := True; Rect.Color := $0000FF; Rect.AreaColor := $00FF00;
Rect.OwnerPartId := 1; Rect.OwnerPartDisplayMode := 0;
SchComp.AddSchObject(Rect);
// Pin
Pin := SchServer.SchObjectFactory(ePin, eCreate_Default);
Pin.Location := Point(InchesToCoord(-0.2), InchesToCoord(0));
Pin.Orientation := eRotate0; Pin.Designator := '1'; Pin.Name := 'IN';
Pin.OwnerPartId := 1; Pin.OwnerPartDisplayMode := 0;
SchComp.AddSchObject(Pin);
SchLib.AddSchComponent(SchComp);
SchLib.CurrentSchComponent := SchComp;
```
