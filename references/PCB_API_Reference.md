# Altium PCB DelphiScript API Reference
Compact AI-optimized reference. All code is DelphiScript (Object Pascal variant).

## UNITS
Internal coords: 1mil=10000 units. Convert: `MilsToCoord()` `CoordToMils()` `MMsToCoord()` `CoordToMMs()`. String convert: `StringToCoordUnit(str,coord,unit)` `CoordUnitToString(coord,unit)` where unit is `eImperial`|`eMetric`. `RealUnitToString(coord,unit)`.

## SERVER & BOARD ACCESS
```
Board := PCBServer.GetCurrentPCBBoard;
If Board = Nil Then Exit;
```
New doc: `Workspace := GetWorkSpace; Workspace.DM_CreateNewDocument('PCB');` or `CreateNewDocumentFromDocumentKind('PCB');`
Start server: `Client.StartServer('PCB');`

### Board Properties
`Board.FileName` `Board.DisplayUnit` (TUnit: eImperial|eMetric) `Board.XOrigin` `Board.YOrigin` `Board.CurrentLayer` `Board.IsLibrary` `Board.PCBWindow` `Board.I_ObjectAddress`

### Sheet
`Sheet := Board.PCBSheet;` Props: `Sheet.SheetX` `Sheet.SheetY` `Sheet.SheetHeight` `Sheet.SheetWidth` `Sheet.ShowSheet` `Sheet.LockSheet`

### Layer Display
`Board.LayerIsDisplayed[layer] := True/False;` `Board.LayerIsUsed[layer] := True/False;`

## UNDO SYSTEM
**Critical pattern** - wrap all modifications:
```
PCBServer.PreProcess;
Try
  // create/modify/delete objects here
Finally
  PCBServer.PostProcess;
End;
```
- One PreProcess/PostProcess pair = one undo level
- Multiple pairs = multiple undo levels
- **Creating**: `Board.AddPCBObject(Obj); PCBServer.SendMessageToRobots(Board.I_ObjectAddress, c_Broadcast, PCBM_BoardRegisteration, Obj.I_ObjectAddress);`
- **Modifying**: `PCBServer.SendMessageToRobots(Obj.I_ObjectAddress, c_Broadcast, PCBM_BeginModify, c_NoEventData);` ...change props... `PCBServer.SendMessageToRobots(Obj.I_ObjectAddress, c_Broadcast, PCBM_EndModify, c_NoEventData);`
- **Deleting**: collect objects in TInterfaceList first, then `Board.RemovePCBObject(Obj);`

## OBJECT FACTORY
`Obj := PCBServer.PCBObjectFactory(objectType, eNoDimension, eCreate_Default);`

### TObjectId Constants
`eNoObject` `eArcObject` `ePadObject` `eViaObject` `eTrackObject` `eTextObject` `eFillObject` `eConnectionObject` `eNetObject` `eComponentObject` `ePolyObject` `eDimensionObject` `eCoordinateObject` `eClassObject` `eRuleObject` `eFromToObject` `eViolationObject` `eEmbeddedObject` `eTraceObject` `eSpareViaObject` `eBoardObject` `eBoardOutlineObject` `eRegionObject` `eComponentBodyObject`

## OBJECT PROPERTIES

### IPCB_Track
`X1` `Y1` `X2` `Y2` `Width` `Layer` (all TCoord except Layer=TLayer)

### IPCB_Arc
`XCenter` `YCenter` `Radius` `LineWidth` `StartAngle` `EndAngle` `Layer`

### IPCB_Via
`X` `Y` `Size` `HoleSize` `LowLayer` `HighLayer` `Net` (IPCB_Net)
Cache: see TPadCache below.

### IPCB_Pad
`X` `Y` `HoleSize` `Name` `Layer` `Net` `Mode` `HoleType` `HoleRotation`
**Modes** (TPadMode): `ePadMode_Simple` `ePadMode_LocalStack` `ePadMode_ExternalStack`
**Simple**: `TopShape` `TopXSize` `TopYSize`
**LocalStack (Top/Mid/Bot)**: `TopShape` `TopXSize` `TopYSize` `MidShape` `MidXSize` `MidYSize` `BotShape` `BotXSize` `BotYSize`
**ExternalStack (FullStack)**: `XStackSizeOnLayer[layer]` `YStackSizeOnLayer[layer]` `StackShapeOnLayer[layer]`
**TShape**: `eNoShape` `eRounded` `eRectangular` `eOctagonal` `eCircleShape` `eArcShape` `eTerminator` `eRoundRectShape` `eRotatedRectShape`
**THoleType**: `eRoundHole` `eSquareHole` `eSlotHole`
Pad descriptor: `Pad.GetState_PinDescriptorString`

### TPadCache (shared by Pad & Via)
```
PadCache := Obj.GetState_Cache;  // or Obj.Cache
PadCache.ReliefAirGap := MilsToCoord(11);
PadCache.PowerPlaneReliefExpansion := MilsToCoord(11);
PadCache.PowerPlaneClearance := MilsToCoord(11);
PadCache.ReliefConductorWidth := MilsToCoord(11);
PadCache.SolderMaskExpansion := MilsToCoord(11);
PadCache.SolderMaskExpansionValid := eCacheManual;
PadCache.PasteMaskExpansion := MilsToCoord(11);
PadCache.PasteMaskExpansionValid := eCacheManual;
Obj.SetState_Cache := PadCache;  // or Obj.SetState_Cache(PadCache)
```
Additional cache props: `PlaneConnectionStyle` `PlaneConnectionStyleValid` `PlanesValid` `ReliefEntries` `ReliefEntriesValid` `ReliefAirGapValid` `PowerPlaneReliefExpansionValid` `PowerPlaneClearanceValid` `SolderMaskExpansionValid` `PasteMaskExpansionValid`
**TCacheState**: `eCacheInvalid` `eCacheValid` `eCacheManual`
**TPlaneConnectionStyle**: `ePlaneNoConnect` `ePlaneReliefConnect` `ePlaneDirectConnect`

### IPCB_Fill
`X1Location` `Y1Location` `X2Location` `Y2Location` `Layer` `Rotation`

### IPCB_Text
`XLocation` `YLocation` `Layer` `Text` `Size` (height)
TrueType: `UseTTFonts` `Bold` `Italic` `FontName`
Inverted: `Inverted` `InvertedTTTextBorder`

### IPCB_Component (inherits IPCB_Group)
`X` `Y` `Layer` `Rotation` (TAngle, degrees) `Height` `SourceDesignator`
Name/Comment: `NameOn` `Name.Text` `Name.XLocation` `Name.YLocation` `CommentOn` `Comment.Text` `Comment.XLocation` `Comment.YLocation`
Add child: `Comp.AddPCBObject(childObj); PCBServer.SendMessageToRobots(Comp.I_ObjectAddress, c_Broadcast, PCBM_BoardRegisteration, childObj.I_ObjectAddress);`

### IPCB_Region
`Layer` `Name` `Kind` (TRegionKind: `eRegionKind_Copper` `eRegionKind_Cutout` `eRegionKind_NamedRegion`)
Contour: `MainContour` (IPCB_Contour) `HoleCount` `Holes[i]` (IPCB_Contour)
`SetOutlineContour(contour)` `GeometricPolygon.AddContourIsHole(Nil, True)`
Parent checks: `InPolygon` `InComponent` `InNet` `.Polygon` `.Component` `.Net` `.Descriptor`

### IPCB_Contour
`Count` (vertex count, set to allocate) `X[i]` `Y[i]` (1-based index) `Translate(dx,dy)` `Replicate`

### IPCB_Polygon
`Layer` `Detail` `Net` `PolyHatchStyle` `PourOver` `RemoveDead` `Grid` `TrackSize` `UseOctagons`
Solid-specific: `MinTrack` `RemoveIslandsByArea` `IslandAreaThreshold` `RemoveNarrowNecks` `NeckWidthThreshold` `ArcApproximation`
Segments: `PointCount` `Segments[i].vx` `.vy` `.Kind` (.cx .cy .Angle1 .Angle2 .Radius for arcs)
**TPolyHatchStyle**: `ePolyHatch90` `ePolyHatch45` `ePolyVHatch` `ePolyHHatch` `ePolyNoHatch` `ePolySolid`
**TPolygonPourOver**: `ePolygonPourOver_None` `ePolygonPourOver_SameNet` `ePolygonPourOver_SameNetPolygons`
**Segment Kind**: `ePolySegmentLine` `ePolySegmentArc`

### IPCB_Connection
`X1` `Y1` `X2` `Y2` `Net` (.Name)

### IPCB_Net
`Name`

### IPCB_Embedded
`Name` `Description`

### IPCB_ComponentBody
`Name` `Kind` (TRegionKind) `GetOverallHeight`

### IPCB_FromTo
`FromPad` `ToPad` `NetName` (all strings)

### IPCB_Violation
`Name` `Description` `Rule` (IPCB_Rule) `Primitive1` `Primitive2` (IPCB_Primitive, Primitive2 may be Nil for unary rules)

### IPCB_Primitive (base)
`ObjectId` `Layer` `Selected` `BoundingRectangle` (TCoordRect) `I_ObjectAddress` `MoveByXY(dx,dy)` `IsFreePrimitive` `Net`

### TCoordRect
`Left` `Bottom` `Right` `Top` (synonym: X1/Y1/X2/Y2). Init: `CoordRect := TCoordRect;`

## ITERATORS

### Board Iterator
```
Iterator := Board.BoardIterator_Create;
Iterator.AddFilter_ObjectSet(MkSet(eTrackObject));  // or MkSet(obj1, obj2)
Iterator.AddFilter_LayerSet(AllLayers);              // or MkSet(eTopLayer) or LayerSet.AllLayers
Iterator.AddFilter_Method(eProcessAll);
// Alt: Iterator.SetState_FilterAll;  // no filters
// Alt: Iterator.AddFilter_IPCB_LayerSet(LayerSet.AllLayers);

Obj := Iterator.FirstPCBObject;
While Obj <> Nil Do Begin
    // process
    Obj := Iterator.NextPCBObject;
End;
Board.BoardIterator_Destroy(Iterator);
```
`MkSet()` creates TObjectSet or TLayerSet. `AllLayers` and `AllObjects` are predefined sets. `SignalLayers` `InternalPlanes` are predefined layer sets. `SetUnion(set1,set2)` combines sets. `InSet(layer, layerSet)` tests membership. `Include(objectSet, objectId)` adds to set.

### Spatial Iterator
```
If Not Board.ChooseRectangleByCorners('First corner','Final corner',x1,y1,x2,y2) Then Exit;
Iterator := Board.SpatialIterator_Create;
Iterator.AddFilter_ObjectSet(MkSet(eTrackObject,eArcObject));
Iterator.AddFilter_LayerSet(MkSet(eTopLayer,eBottomLayer));
Iterator.AddFilter_Area(X1,Y1,X2,Y2);
// iterate same as board iterator
Board.SpatialIterator_Destroy(Iterator);
```

### Group Iterator (component children)
```
GroupIter := Component.GroupIterator_Create;
GroupIter.AddFilter_ObjectSet(MkSet(ePadObject));  // or AllObjects or SetState_FilterAll
Child := GroupIter.FirstPCBObject;
While Child <> Nil Do Begin
    Child := GroupIter.NextPCBObject;
End;
Component.GroupIterator_Destroy(GroupIter);
```
Also works on IPCB_Net: `Net.GroupIterator_Create` to iterate net members.

### Library Iterator (PCB Lib)
```
CurrentLib := PCBServer.GetCurrentPCBLibrary;
FootprintIter := CurrentLib.LibraryIterator_Create;
FootprintIter.SetState_FilterAll;
Footprint := FootprintIter.FirstPCBObject;  // IPCB_LibComponent
While Footprint <> Nil Do Begin
    // Footprint.Name, Footprint.Height, Footprint.Description
    // Use Footprint.GroupIterator_Create for primitives
    Footprint := FootprintIter.NextPCBObject;
End;
CurrentLib.LibraryIterator_Destroy(FootprintIter);
```
Lib props: `CurrentLib.Board` `CurrentLib.CurrentComponent` `CurrentLib.Board.FileName` `CurrentLib.Board.DisplayUnit`

### Layer Object Iterator
```
LayerIter := Board.ElectricalLayerIterator;  // or Board.MechanicalLayerIterator
While LayerIter.Next Do Begin
    LayerObj := LayerIter.LayerObject;  // IPCB_LayerObject
    // LayerObj.LayerID, .Name, .CopperThickness, .NextLayer
    // LayerObj.Dielectric.DielectricType, .DielectricMaterial, .DielectricHeight, .DielectricConstant
    // LayerObj.IsDisplayed[Board], .UsedByPrims (mech layers)
End;
```
**TDielectricType**: `eNoDielectric` `eCore` `ePrePreg` `eSurfaceMaterial`

### Layer Stack
```
TheLayerStack := Board.LayerStack;
LayerObj := TheLayerStack.FirstLayer;
// LayerObj.NextLayer returns TLayer
// TheLayerStack.LayerObject(layer) returns IPCB_LayerObject
// TheLayerStack.LayerObject[layer] also works
```
Mech layer extra (IPCB_MechanicalLayer): `LinkToSheet` `MechanicalLayerEnabled` `DisplayInSingleLayerMode`

### Drill Layer Pairs
```
For i := 0 To Board.DrillLayerPairsCount - 1 Do Begin
    Pair := Board.LayerPair[i];  // IPCB_DrillLayerPair
    // Pair.LowLayer, Pair.HighLayer
End;
Board.LayerPositionInSet(layerSet, layerObj)  // returns position integer
```

## LAYERS (TLayer constants)
Signal: `eTopLayer` `eMidLayer1`..`eMidLayer30` `eBottomLayer` `eMultiLayer`
Planes: `eInternalPlane1`..`eInternalPlane16`
Mask: `eTopSolder` `eBottomSolder` `eTopPaste` `eBottomPaste`
Silk: `eTopOverlay` `eBottomOverlay`
Other: `eKeepOutLayer` `eDrillGuideLayer` `eDrillDrawingLayer` `eConnectLayer` `eMechanical1`..`eMechanical16`
Ranges: `MinLayer` `MaxLayer` (signal range for loops)
Convert: `Layer2String(layer)` `String2Layer(str)`
Plane ops: `Board.InvalidatePlane(layer)` `Board.ValidateInvalidPlanes` `Board.GraphicalView_ZoomRedraw`

## BOARD OUTLINE
```
Board.BoardOutline.Invalidate;
Board.BoardOutline.Rebuild;
Board.BoardOutline.Validate;
BR := Board.BoardOutline.BoundingRectangle;  // TCoordRect
Board.BoardOutline.PointCount  // vertex count
Board.BoardOutline.Segments[i].vx, .vy  // vertex coords
Board.BoardOutline.Segments[i].Kind     // ePolySegmentLine or ePolySegmentArc
Board.BoardOutline.Segments[i].cx, .cy, .Radius, .Angle1, .Angle2  // arc props
Board.BoardOutline.AreaSize  // in 10^-14 inch^2
```

## RULES
Create: `Rule := PCBServer.PCBRuleFactory(eRule_MaxMinWidth);`
Common props: `Rule.Name` `Rule.Comment` `Rule.UniqueId` `Rule.RuleKind` `Rule.NetScope` `Rule.LayerKind` `Rule.Scope1Expression` `Rule.Scope2Expression`

### TRuleKind (all eRule_* constants)
`eRule_Clearance` `eRule_ParallelSegment` `eRule_MaxMinWidth` `eRule_MaxMinLength` `eRule_MatchedLengths` `eRule_DaisyChainStubLength` `eRule_PowerPlaneConnectStyle` `eRule_RoutingTopology` `eRule_RoutingPriority` `eRule_RoutingLayers` `eRule_RoutingCornerStyle` `eRule_RoutingViaStyle` `eRule_PowerPlaneClearance` `eRule_SolderMaskExpansion` `eRule_PasteMaskExpansion` `eRule_ShortCircuit` `eRule_BrokenNets` `eRule_ViasUnderSMD` `eRule_MaximumViaCount` `eRule_MinimumAnnularRing` `eRule_PolygonConnectStyle` `eRule_AcuteAngle` `eRule_ConfinementConstraint` `eRule_SMDToCorner` `eRule_ComponentClearance` `eRule_ComponentRotations` `eRule_PermittedLayers` `eRule_NetsToIgnore` `eRule_SignalStimulus` `eRule_Overshoot_FallingEdge` `eRule_Overshoot_RisingEdge` `eRule_Undershoot_FallingEdge` `eRule_Undershoot_RisingEdge` `eRule_MaxMinImpedance` `eRule_SignalTopValue` `eRule_SignalBaseValue` `eRule_FlightTime_RisingEdge` `eRule_FlightTime_FallingEdge` `eRule_LayerStack` `eRule_MaxSlope_RisingEdge` `eRule_MaxSlope_FallingEdge` `eRule_SupplyNets` `eRule_MaxMinHoleSize` `eRule_TestPointStyle` `eRule_TestPointUsage` `eRule_UnconnectedPin` `eRule_SMDToPlane` `eRule_SMDNeckDown` `eRule_LayerPair` `eRule_FanoutControl` `eRule_MaxMinHeight` `eRule_DifferentialPairsRouting`

### TNetScope
`eNetScope_DifferentNetsOnly` `eNetScope_SameNetOnly` `eNetScope_AnyNet`

### TRuleLayerKind
`eRuleLayerKind_SameLayer` `eRuleLayerKind_AdjacentLayer`

### Width Constraint (IPCB_MaxMinWidthConstraint)
`MinWidth(layer)` `MaxWidth(layer)` `FavoredWidth(layer)` (layer is TLayer, use `(L)` not `[L]` in DelphiScript)

### Confinement (IPCB_ConfinementConstraint)
`BoundingRect` (TCoordRect) `ConstraintLayer` `Kind` (TConfinementStyle: `eConfineOut`)

### Rule Interfaces List
`IPCB_ClearanceConstraint` `IPCB_ParallelSegmentConstraint` `IPCB_MaxMinWidthConstraint` `IPCB_MaxMinLengthConstraint` `IPCB_MatchedNetLengthsConstraint` `IPCB_DaisyChainStubLengthConstraint` `IPCB_PowerPlaneConnectStyleRule` `IPCB_PolygonConnectStyleRule` `IPCB_RoutingTopologyRule` `IPCB_RoutingPriorityRule` `IPCB_RoutingLayersRule` `IPCB_RoutingCornerStyleRule` `IPCB_RoutingViaStyleRule` `IPCB_PowerPlaneClearanceRule` `IPCB_SolderMaskExpansionRule` `IPCB_PasteMaskExpansionRule` `IPCB_ShortCircuitConstraint` `IPCB_BrokenNetRule` `IPCB_ViasUnderSMDConstraint` `IPCB_MaximumViaCountRule` `IPCB_MinimumAnnularRing` `IPCB_AcuteAngle` `IPCB_ConfinementConstraint` `IPCB_ComponentClearanceConstraint` `IPCB_ComponentRotationsRule` `IPCB_PermittedLayersRule` `IPCB_SignalStimulus` `IPCB_MaxOvershootFall` `IPCB_MaxOvershootRise` `IPCB_MaxUndershootFall` `IPCB_MaxUndershootRise` `IPCB_RuleMaxMinImpedance` `IPCB_RuleMinSignalTopValue` `IPCB_RuleMaxSignalBaseValue` `IPCB_RuleFlightTime_RisingEdge` `IPCB_RuleFlightTime_FallingEdge` `IPCB_RuleMaxSlopeRisingEdge` `IPCB_RuleMaxSlopeFallingEdge` `IPCB_NetsToIgnoreRule` `IPCB_SMDToCornerConstraint` `IPCB_RuleSupplyNets` `IPCB_MaxMinHoleSizeConstraint` `IPCB_TestPointStyleRule` `IPCB_TestPointUsage` `IPCB_UnConnectedPinRule` `IPCB_SMDToPlaneConstraint` `IPCB_SMDNeckDownConstraint` `IPCB_LayerPairsRule` `IPCB_FanoutControlRule` `IPCB_MaxMinHeightConstraint` `IPCB_DifferentialPairsRoutingRule`

## CLASSES
Create: `NetClass := PCBServer.PCBClassFactoryByClassMember(eClassMemberKind_Net);`
Props: `NetClass.SuperClass := False;` `NetClass.Name := 'name';` `NetClass.AddMemberByName('GND');`
`Board.AddPCBObject(NetClass);`
Iterate members: `NetClass.MemberName[i]` (returns '' when done) `NetClass.MemberKind` `NetClass.IsMember(name)`
**TClassMemberKind**: `eClassMemberKind_Net` (0) `eClassMemberKind_Component` (1) `eClassMemberKind_FromTo` (2) `eClassMemberKind_Pad` (3) `eClassMemberKind_Layer` (4)

## PCB LIBRARY OPERATIONS
```
CurrentLib := PCBServer.GetCurrentPCBLibrary;
NewComp := PCBServer.CreatePCBLibComp;
NewComp.Name := 'Footprint';
CurrentLib.RegisterComponent(NewComp);
// Add pads/tracks to NewComp via NewComp.AddPCBObject(obj)
// Register: PCBServer.SendMessageToRobots(NewComp.I_ObjectAddress, c_Broadcast, PCBM_BoardRegisteration, obj.I_ObjectAddress)
// Final register: PCBServer.SendMessageToRobots(CurrentLib.Board.I_ObjectAddress, c_Broadcast, PCBM_BoardRegisteration, NewComp.I_ObjectAddress)
CurrentLib.CurrentComponent := NewComp;
CurrentLib.Board.ViewManager_FullUpdate;
```

## INTERACTIVE METHODS
```
// Click to select object
Obj := Board.GetObjectAtCursor(MkSet(ePadObject), AllLayers, 'Choose a pad');
// While Obj <> 0 Do ... loop for multiple selections

// Click location
Board.ChooseLocation(x, y, 'Choose point');

// Select at XY with disambiguation
Comp := Board.GetObjectAtXYAskUserIfAmbiguous(x, y, MkSet(eComponentObject), AllLayers, eEditAction_Select);

// Rectangle selection
Board.ChooseRectangleByCorners('First corner', 'Final corner', x1, y1, x2, y2)  // returns Boolean
```

## SYSTEM OPTIONS
```
PCBSystemOptions := PCBServer.SystemOptions;
PCBSystemOptions.BoardCursorType := eCurShapeCross90;  // or eCurShapeBigCross, eCurShapeCross45
```

## REFRESH/REDRAW
```
Client.SendMessage('PCB:Zoom', 'Action=Redraw', 255, Client.CurrentView);
// or
ResetParameters; AddStringParameter('Action','Redraw'); RunProcess('PCB:Zoom');
// or
ResetParameters; AddStringParameter('Action','All'); RunProcess('PCB:Zoom');
// or
Board.ViewManager_FullUpdate;
Board.GraphicalView_ZoomRedraw;
Client.CommandLauncher.LaunchCommand('PCB:Zoom', 'Action=Redraw', 255, Client.CurrentView);
```

## MESSAGES PANEL
```
WSM := GetWorkSpace;
MM := WSM.DM_MessagesManager;
MM.ClearMessages;
MM.BeginUpdate;
MM.AddMessage(MessageClass, MessageText, MessageSource, MessageDocument, CallBackProcess, CallBackParams, ImageIndex, False);
MM.EndUpdate;
WSM.DM_ShowMessageView;
```

## FILE I/O & REPORTS
```
// TStringList approach
Rpt := TStringList.Create;
Rpt.Add('line');
Rpt.Insert(0, 'header');
Rpt.SaveToFile(filename);
Rpt.Free;

// TextFile approach
AssignFile(OutFile, filename);
Rewrite(OutFile);
Write(OutFile, text);    // or Writeln(OutFile, text)
CloseFile(OutFile);

// Open in Altium
Document := Client.OpenDocument('Text', filename);
If Document <> Nil Then Client.ShowDocument(Document);

// Filename manipulation
FileName := ChangeFileExt(Board.FileName, '.txt');
ExtractFileName(path)  ExtractFilePath(path)
```

## DIALOG HELPERS
`ShowMessage(s)` `ShowInfo(s)` `ShowWarning(s)` `ShowError(s)` `ConfirmNoYes(s)` (returns Boolean)
`BeginHourGlass` `EndHourGlass`
`Screen.Cursor := crHourGlass;` / `Screen.Cursor := crArrow;`

## DELPHI COLLECTIONS
```
// TInterfaceList (for safe object deletion)
List := TInterfaceList.Create;
List.Add(obj);
List.Count  List.Items[i]
List.Free;

// TList
List := TList.Create;
List.Add(obj);
List[i]  List.Count
List.Free;

// TStringList
SL := TStringList.Create;
SL.Add(str);
SL.Sorted := True;
SL.Duplicates := dupIgnore;  // or dupAccept
SL.Count  SL.Strings[i]  SL.Text
SL.SaveToFile(fn);
SL.Find(str, index)  // returns Boolean
SL.Delete(i)  SL.Insert(i, str)
SL.Clear  SL.Free
```

## TSaveDialog
```
SaveDialog := TSaveDialog.Create(Application);
SaveDialog.Title := 'title';
SaveDialog.Filter := 'files (*.rpt)|*.rpt|All (*.*)|*.*';
SaveDialog.InitialDir := path;
SaveDialog.FileName := default;
SaveDialog.DefaultExt := 'rpt';
SaveDialog.Options := MkSet(ofOverwritePrompt, ofShowHelp, ofPathMustExist);
If SaveDialog.Execute Then filename := SaveDialog.FileName;
SaveDialog.Free;
```

## PROCESS-BASED PCB OPERATIONS

### Generate Outputs
```
Client.SendMessage('WorkspaceManager:GenerateReport', 'ObjectKind=Assembly|Index=2', 255, Client.CurrentView);  // Pick&Place
Client.SendMessage('WorkspaceManager:GenerateReport', 'ObjectKind=Report|Kind=SimpleBOM|Target=Document', 255, Client.CurrentView);
```

### Place Polygon via Process
```
ResetParameters;
AddStringParameter('Location.X','5000'); AddStringParameter('Location.Y','5000');
AddStringParameter('PourOver','True'); AddStringParameter('RemoveDead','False');
AddStringParameter('GridSize','10'); AddStringParameter('TrackWidth','12');
AddStringParameter('HatchStyle','90Degree'); AddStringParameter('Name','GND');
AddStringParameter('Layer','Top'); AddStringParameter('PolygonType','Polygon');
// Vertices: Kind0..KindN (0=line), Vx0..VxN, Vy0..VyN
AddStringParameter('Kind0','0'); AddStringParameter('Vx0','1000'); AddStringParameter('Vy0','1000');
// ... more vertices
RunProcess('PCB:PlacePolygonPlane');
```

### Layer Visibility via Process
```
ResetParameters;
AddStringParameter('TopSignal','True'); AddStringParameter('Mid1','False'); // etc.
RunProcess('PCB:PCBLayerSet');
```

### Color Scheme via Process
```
ResetParameters;
AddStringParameter('TopSignal','16711680');  // decimal RGB
// ... set all layer colors
RunProcess('PCB:PCBChangeSystemColors');
```

### Common Dialog
```
ResetParameters;
AddStringParameter('Dialog','Color'); AddStringParameter('Color','0');
RunProcess('Client:RunCommonDialog');
GetStringParameter('Result')  GetStringParameter('Color')
```

## DELPHISCRIPT NOTES
- No `[]` indexing on properties - use `()` instead: `Rule.MinWidth(layer)` not `Rule.MinWidth[layer]`
- Exception: direct array props like `Board.LayerIsDisplayed[layer]` do use `[]`
- `MkSet()` for creating sets
- `Var` section declares variables before `Begin`
- String concat with `+`, newline `#13` or `#13#10`
- Boolean: `True`/`False`
- Integer ops: `Inc(x)` `Trunc(real)` `Ord(enum)`
- Float: `FloatToStr()` `StrToInt()` `IntToStr()`
- String: `UpperCase()` `Copy()` `Length()` `Pos()`
- Math: `Sin()` `Cos()` `Sqrt()` `PI` `Degrees2Radians()`
- Case: `Case x Of val1: ...; val2: ...; End;`
- Type casting by assignment (no explicit casts in script)
- `&&` used for logical AND in some scripts (alongside `And`)
- Comments: `//` line, `{ }` block, `(* *)` block

## COMPLETE PATTERNS

### Delete objects safely
```
Procedure DeleteObjects;
Var Board: IPCB_Board; Iterator: IPCB_BoardIterator; Obj: IPCB_Track; ObjList: TInterfaceList; I: Integer;
Begin
    Board := PCBServer.GetCurrentPCBBoard; If Board = Nil Then Exit;
    ObjList := TInterfaceList.Create;
    Iterator := Board.BoardIterator_Create;
    Iterator.AddFilter_ObjectSet(MkSet(eTrackObject));
    Iterator.AddFilter_LayerSet(MkSet(eTopLayer));
    Try
        Obj := Iterator.FirstPCBObject;
        While Obj <> Nil Do Begin ObjList.Add(Obj); Obj := Iterator.NextPCBObject; End;
    Finally Board.BoardIterator_Destroy(Iterator); End;
    Try
        PCBServer.PreProcess;
        For I := 0 To ObjList.Count - 1 Do Board.RemovePCBObject(ObjList.Items[I]);
    Finally PCBServer.PostProcess; ObjList.Free; End;
    Board.ViewManager_FullUpdate;
End;
```

### Create component with children
```
PCBServer.PreProcess;
Comp := PCBServer.PCBObjectFactory(eComponentObject, eNoDimension, eCreate_Default);
// Create pads/tracks, add to comp:
Pad := PCBServer.PCBObjectFactory(ePadObject, eNoDimension, eCreate_Default);
// set pad properties...
Comp.AddPCBObject(Pad);
PCBServer.SendMessageToRobots(Comp.I_ObjectAddress, c_Broadcast, PCBM_BoardRegisteration, Pad.I_ObjectAddress);
// Set comp properties
Comp.X := MilsToCoord(x); Comp.Y := MilsToCoord(y); Comp.Layer := eTopLayer;
Comp.NameOn := True; Comp.Name.Text := 'U1';
PCBServer.SendMessageToRobots(Board.I_ObjectAddress, c_Broadcast, PCBM_BoardRegisteration, Comp.I_ObjectAddress);
Board.AddPCBObject(Comp);
PCBServer.PostProcess;
```

### Unroute net (remove free primitives)
```
Iterator := Net.GroupIterator_Create;
Prim := Iterator.FirstPCBObject;
KillList := TList.Create;
While Prim <> Nil Do Begin
    If Prim.IsFreePrimitive Then KillList.Add(Prim);
    Prim := Iterator.NextPCBObject;
End;
For i := 0 To KillList.Count - 1 Do Board.RemovePCBObject(KillList[i]);
KillList.Free;
```

### Region with contour and hole
```
Region := PCBServer.PCBObjectFactory(eRegionObject, eNoDimension, eCreate_Default);
Contour := Region.MainContour.Replicate;
Region.Layer := eBottomLayer;
Contour.Count := N;  // set vertex count
For I := 1 To N Do Begin
    Contour.X[I] := MilsToCoord(x); Contour.Y[I] := MilsToCoord(y);
End;
Contour.Translate(MilsToCoord(offsetX), MilsToCoord(offsetY));
Region.SetOutlineContour(Contour);
// Add hole
If Region.HoleCount = 0 Then Region.GeometricPolygon.AddContourIsHole(Nil, True);
Region.Holes[0].Count := holeVertexCount;
For I := 1 To Region.Holes[0].Count Do Begin
    Region.Holes[0].X[I] := MilsToCoord(hx); Region.Holes[0].Y[I] := MilsToCoord(hy);
End;
Region.Holes[0].Translate(MilsToCoord(offsetX), MilsToCoord(offsetY));
Board.AddPCBObject(Region);
```
