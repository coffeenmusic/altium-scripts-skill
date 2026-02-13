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
`Board.FileName` `Board.DisplayUnit` (TUnit: eImperial|eMetric) `Board.XOrigin` `Board.YOrigin` `Board.CurrentLayer` (r/w TLayer) `Board.IsLibrary` `Board.PCBWindow` `Board.I_ObjectAddress` `Board.SnapGridSize` `Board.XCursor` `Board.YCursor` `Board.BoundingRectangleChildren`
`Board.GetPcbComponentByRefDes('U36')` - direct component lookup by reference designator, returns IPCB_Component.
`Board.PrimPrimDistance(obj1, obj2)` - returns TCoord distance between two primitives.
`Board.SelectecObjectCount` `Board.SelectecObject[i]` - access selected objects (note: "Selectec" is correct API spelling).
`Board.NewUndo()` - create undo entry (alternative to PreProcess/PostProcess for simple changes).
`Board.MechanicalPairs.Count` `Board.MechanicalPairs.PairDefined(layer1, layer2)` `Board.MechanicalPairs.LayerUsed(layer)` `Board.MechanicalPairs.RemovePair(layer1, layer2)` - mech layer pair info.
`Board.LayerName(layer)` - get layer name string from TLayer.
`Board.BoardOutline.PointInPolygon(x, y)` - Boolean point-in-polygon test.
`Board.FindDominantRuleForObject(obj, eRule_*)` - get dominant rule for object. `Board.FindDominantRuleForObjectPair(obj1, obj2, eRule_*)` - for a pair.
`Board.DispatchMessage(Board.I_ObjectAddress, c_Broadcast, PCBM_BoardRegisteration, Obj.I_ObjectAddress)` - alternative to SendMessageToRobots.
`Board.ViewManager_GraphicallyInvalidatePrimitive(obj)` - invalidate specific primitive display.
`Board.ViewManager_UpdateLayerTabs` - refresh layer tab display after layer visibility changes.

### Sheet
`Sheet := Board.PCBSheet;` Props: `Sheet.SheetX` `Sheet.SheetY` `Sheet.SheetHeight` `Sheet.SheetWidth` `Sheet.ShowSheet` `Sheet.LockSheet`

### Layer Display
`Board.LayerIsDisplayed[layer] := True/False;` `Board.LayerIsUsed[layer] := True/False;`
`Board.LayerColor[layer]` - get/set layer color as TColor integer. Example: `Board.LayerColor[String2Layer('Top Layer')]`

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
- **Modifying (shorthand)**: `Obj.BeginModify;` ...change props... `Obj.EndModify;` (equivalent to SendMessageToRobots pattern)
- **Deleting**: collect objects in TInterfaceList first, then `Board.RemovePCBObject(Obj);`
- **Destroying**: `PCBServer.DestroyPCBObject(Obj);` - free object memory (use after RemovePCBObject)

## OBJECT FACTORY
`Obj := PCBServer.PCBObjectFactory(objectType, eNoDimension, eCreate_Default);`

### TObjectId Constants
`eNoObject` `eArcObject` `ePadObject` `eViaObject` `eTrackObject` `eTextObject` `eFillObject` `eConnectionObject` `eNetObject` `eComponentObject` `ePolyObject` `eDimensionObject` `eCoordinateObject` `eClassObject` `eRuleObject` `eFromToObject` `eViolationObject` `eEmbeddedObject` `eTraceObject` `eSpareViaObject` `eBoardObject` `eBoardOutlineObject` `eRegionObject` `eComponentBodyObject` `eSplitPlaneObject` `eRoomObject` `eDifferentialPairObject`

## OBJECT PROPERTIES

### IPCB_Track
`X1` `Y1` `X2` `Y2` `Width` `Layer` (all TCoord except Layer=TLayer)
`GetState_Length` (TCoord, computed track length) `SetState_Length(value)` (sets track length)
Methods: `MoveToXY(x, y)` `RotateBy(angle)` `Replicate` (clone track object)
Net: `Track.Net.InDifferentialPair` (Boolean, whether track's net is part of a differential pair)

### IPCB_Arc
`XCenter` `YCenter` `Radius` `LineWidth` `StartAngle` `EndAngle` `Layer`
`StartX` `StartY` `EndX` `EndY` (computed endpoints of arc)

### IPCB_Via
`X` `Y` `Size` `HoleSize` `LowLayer` `HighLayer` `Net` (IPCB_Net)
`IsTenting` (Boolean) `IsTenting_Top` `IsTenting_Bottom` `Mode` (ePadMode_Simple|ePadMode_LocalStack|ePadMode_ExternalStack) `IntersectLayer(layer)` (Boolean - does via pass through layer?) `IsConnectedToPlane[layer]` (Boolean)
`SizeOnLayer[layer]` (TCoord, per-layer via size when Mode <> ePadMode_Simple)
Explicit getters/setters: `GetState_IsTenting_Top()` `SetState_IsTenting_Top(bool)` `GetState_IsTenting_Bottom()` `SetState_IsTenting_Bottom(bool)`
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
`Pad.BoundingRectangleOnLayer(layer)` (TCoordRect for specific layer) `Pad.Layer_V6` (V6 layer property) `Pad.PasteMaskExpansion` (direct read, alternative to cache)
**Full Stack per-layer** (IPCB_Pad2): `XSizeOnLayer[layer]` `YSizeOnLayer[layer]` `XStackSizeOnLayer[layer]` `YStackSizeOnLayer[layer]` `XPadOffset[layer]` `YPadOffset[layer]`
**Slot hole**: `HoleWidth` (when `HoleType = eSlotHole`)

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
`XLocation` `YLocation` `Layer` `Text` `Size` (height) `Width` (stroke width) `Rotation` (TAngle, degrees) `FontID` (TFontID)
TrueType: `UseTTFonts` `Bold` `Italic` `FontName`
Inverted: `Inverted` `InvertedTTTextBorder` `UseInvertedRectangle` `InvRectHeight` `InvRectWidth` `TTFOffsetFromInvertedRect`
Barcode: `TextKind` (`eText_BarCode`) `BarCodeFullHeight` `BarCodeXMargin` `BarCodeYMargin` `BarCodeRenderMode` (`eRender_ByMinWidth`) `BarCodeMinWidth` `BarCodeFullWidth`
Designator: `GetDesignatorDisplayString` (resolved display string) `GetState_Mirror` (Boolean, mirrored state)
Multiline: `SetState_Multiline(True)` (enable multiline text) `MultilineTextAutoPosition` (auto-position mode)
Bounds: `X1Location` `Y1Location` `X2Location` `Y2Location` (bounding rectangle coordinates)
Methods: `RotateBy(angle)` (rotate text by delta angle) `RotateAroundXY(cx, cy, angle)` (rotate around arbitrary center point)

### IPCB_Component (inherits IPCB_Group)
`X` `Y` `Layer` `Rotation` (TAngle, degrees) `Height` `SourceDesignator` `Pattern` (footprint name) `UniqueId`
Name/Comment: `NameOn` `Name.Text` `Name.XLocation` `Name.YLocation` `CommentOn` `Comment.Text` `Comment.XLocation` `Comment.YLocation`
`Name.Replicate` `Comment.Replicate` (clone name/comment text objects) `Name.RotateBy(angle)` `Comment.RotateBy(angle)`
`ChangeNameAutoposition(pos)` (TTextAutoposition) `GetState_NameAutoPos` `NameAutoPosition` (read current autoposition)
`LockStrings` (Boolean, lock name/comment position)
`MoveToXY(x, y)` `BoundingRectangleNoNameComment` (TCoordRect, excludes designator/comment from bounds)
`PrimitiveLock` (Boolean, lock component primitives) `ComponentKind` (`eComponentKind_Graphical` for non-BOM graphical components)
Add child: `Comp.AddPCBObject(childObj); PCBServer.SendMessageToRobots(Comp.I_ObjectAddress, c_Broadcast, PCBM_BoardRegisteration, childObj.I_ObjectAddress);`
**TTextAutoposition**: `eAutoPos_Manual` `eAutoPos_TopLeft` `eAutoPos_CenterLeft` `eAutoPos_BottomLeft` `eAutoPos_TopCenter` `eAutoPos_CenterCenter` `eAutoPos_BottomCenter` `eAutoPos_TopRight` `eAutoPos_CenterRight` `eAutoPos_BottomRight`

### IPCB_Region
`Layer` `Name` `Kind` (TRegionKind: `eRegionKind_Copper` `eRegionKind_Cutout` `eRegionKind_NamedRegion` `eRegionKind_BoardCutout`)
Contour: `MainContour` (IPCB_Contour) `HoleCount` `Holes[i]` (IPCB_Contour)
`SetOutlineContour(contour)` `GeometricPolygon.AddContourIsHole(Nil, True)`
Parent checks: `InPolygon` `InComponent` `InNet` `.Polygon` `.Component` `.Net` `.Descriptor`

### IPCB_Contour
`Count` (vertex count, set to allocate) `X[i]` `Y[i]` (1-based index) `Translate(dx,dy)` `Replicate` `Clear` `AddPoint(x,y)`
Factory: `Contour := PCBServer.PCBContourFactory;` - create empty contour.

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
`Name` `ShowNetConnects` `HideNetConnects` (show/hide ratsnest for this net)
`ConnectivelyInValidate` (force net connectivity recalculation)
`Net.AddPCBObject(Prim)` - add primitive to net. `Net.RemovePCBObject(Prim)` - remove from net.
`Net.Color` (TColor) `Net.OverrideColorForDraw` (Boolean) - net color and override display.
`Net.InDifferentialPair` (Boolean) - whether net belongs to a differential pair.
Iterate members: `Net.GroupIterator_Create` (see Group Iterator section)

### IPCB_Embedded
`Name` `Description`

### IPCB_ComponentBody
`Name` `Kind` (TRegionKind) `GetOverallHeight` `OverallHeight` `StandoffHeight` `Model` `Model.ModelType`
`ModelFactory_UpdateModel(Radius, Param, ModelType)` - update/recreate 3D model.
**e3DModelType**: `e3DModelType_Extruded` `e3DModelType_Cylinder` `e3DModelType_Sphere` `e3DModelType_Generic`

### IPCB_Coordinate
`LineWidth` `TextHeight` `TextWidth` `UseTTFonts` `Track1` `Track2` (sub-track primitives) `Text` (sub-text primitive)

### IPCB_FromTo
`FromPad` `ToPad` `NetName` (all strings)

### IPCB_DifferentialPair
`Name` (String) `PositiveNet` (IPCB_Net) `NegativeNet` (IPCB_Net)
TObjectId = `eDifferentialPairObject`. Used with `PCBServer.PCBClassFactoryByClassMember(eClassMemberKind_DifferentialPair)`.

### IPCB_SplitPlane
`Layer` `Net` (internal plane split region). TObjectId = `eSplitPlaneObject`.

### IPCB_ObjectClass
`Name` `MemberName[i]` `MemberKind` `IsMember(Net)` (Boolean, test net membership in class)

### IPCB_Violation
`Name` `Description` `Rule` (IPCB_Rule) `Primitive1` `Primitive2` (IPCB_Primitive, Primitive2 may be Nil for unary rules)

### IPCB_Primitive (base)
`ObjectId` `Layer` `Selected` `BoundingRectangle` (TCoordRect) `BoundingRectangleNoNameCommentForSignals` (TCoordRect - excludes name/comment) `I_ObjectAddress` `MoveByXY(dx,dy)` `IsFreePrimitive` `Net`
`Moveable` (Boolean, lock/unlock movement) `TearDrop` (Boolean) `InDimension` (Boolean) `InCoordinate` (Boolean) `Replicate` (clone object) `SetState_Selected(True/False)` `GraphicallyInvalidate` (force redraw) `Board` (parent IPCB_Board ref)
`InComponent` `InPolygon` `InNet` `.Component` `.Polygon` `.Net` (parent accessors)
`IsTestpoint_Top` `IsTestpoint_Bottom` `IsAssyTestpoint_Top` `IsAssyTestpoint_Bottom` (Boolean, testpoint markers)
`UnionIndex` (Integer, objects with same index belong to same union)

### TCoordRect
`Left` `Bottom` `Right` `Top` (synonym: X1/Y1/X2/Y2). Init: `CoordRect := TCoordRect;`

## ITERATORS

### Board Iterator
```
Iterator := Board.BoardIterator_Create;
Iterator.AddFilter_ObjectSet(MkSet(eTrackObject));  // or MkSet(obj1, obj2)
Iterator.AddFilter_LayerSet(AllLayers);              // or MkSet(eTopLayer) or LayerSet.AllLayers
Iterator.AddFilter_Method(eProcessAll);           // or eProcessFree (free primitives only)
// Alt: Iterator.SetState_FilterAll;                // no filters (pass everything)
// Alt: Iterator.AddFilter_AllLayers;               // shorthand for AllLayers filter
// Alt: Iterator.AddFilter_IPCB_LayerSet(LayerSet.AllLayers);  // or LayerSet.SignalLayers

Obj := Iterator.FirstPCBObject;
While Obj <> Nil Do Begin
    // process
    Obj := Iterator.NextPCBObject;
End;
Board.BoardIterator_Destroy(Iterator);
```
`MkSet()` creates TObjectSet or TLayerSet. `AllLayers` `AllObjects` `AllPrimitives` are predefined sets. `SignalLayers` `InternalPlanes` are predefined layer sets. `SetUnion(set1,set2)` combines sets. `InSet(layer, layerSet)` tests membership. `Include(objectSet, objectId)` adds to set.
IPCB_LayerSet object: `LayerSet.SignalLayers` `LayerSet.AllLayers` (class-level ready-made sets). `LSet.Contains(layer)` tests membership.

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
TheLayerStack := Board.LayerStack;        // or Board.LayerStack_V7 (for AD14+, returns IPCB_LayerStack_V7)
LayerObj := TheLayerStack.FirstLayer;
// LayerObj.NextLayer returns IPCB_LayerObject
// TheLayerStack.LayerObject(layer) returns IPCB_LayerObject
// TheLayerStack.LayerObject[layer] also works
// TheLayerStack.LayersInStackCount (total layers), .SignalLayerCount (signal layers only)
```
Mech layer extra (IPCB_MechanicalLayer): `LinkToSheet` `MechanicalLayerEnabled` `DisplayInSingleLayerMode`
V7 types: `IPCB_LayerStack_V7` `IPCB_LayerObject_V7` - used for typed variable declarations with V7 layer API.

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

### LayerSet Creation
```
LayerSet := LayerSet.CreateLayerSet;          // empty set
LayerSet.IncludeSignalLayers;                 // add all signal layers
LayerSet.Include(eTopLayer);                  // add specific layer
SetOfLayers := SetOfLayers.IncludeSignalLayers;  // variant syntax
SetOfLayers.Include(layer);
```

### ILayer Helpers
`ILayer.MechanicalLayer(i)` - get TLayer for mechanical layer index (1-32).
`ILayer.IsSignalLayer(layerID)` - Boolean test if layer is signal layer.
`Board.LayerStack.LayerObject_V7(layer)` - get IPCB_LayerObject_V7 for V7 layer API.
`LayerObj.V7_LayerID` - get V7 layer identifier from layer object.
`LayerObj.IsDisplayed[Board]` - get/set layer display state (Boolean).

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

### Rule Common Properties
`Rule.Name` `Rule.Comment` `Rule.UniqueId` `Rule.Enabled` `Rule.DRCEnabled` (Boolean)
`Rule.Scope1Expression` `Rule.Scope2Expression` (query expression strings)
`Rule.Scope1Includes(obj)` (Boolean) - test if an object matches Rule's Scope1 expression.
`Rule.ActualCheck(obj1, obj2)` - returns IPCB_Violation if rule violated, Nil if OK (obj2 can be Nil for unary rules).

### Width Constraint (IPCB_MaxMinWidthConstraint)
`MinWidth(layer)` `MaxWidth(layer)` `FavoredWidth(layer)` (layer is TLayer, use `(L)` not `[L]` in DelphiScript)

### Clearance (IPCB_ClearanceConstraint)
`Gap` (TCoord, minimum clearance distance)

### Component Clearance (IPCB_ComponentClearanceConstraint)
`Gap` (TCoord, horizontal clearance) `VerticalGap` (TCoord, vertical/height clearance)

### Via Style (IPCB_RoutingViaStyleRule)
`PreferedWidth` `MinWidth` `MaxWidth` (via diameter) `PreferedHoleWidth` `MinHoleWidth` `MaxHoleWidth` (drill size)

### Paste Mask Expansion (IPCB_PasteMaskExpansionRule)
`Expansion` (TCoord) `DRCEnabled` (Boolean)

### Power Plane Connect (IPCB_PowerPlaneConnectStyleRule)
`PlaneConnectStyle` (`ePlaneNoConnect` `ePlaneReliefConnect` `ePlaneDirectConnect`)

### Polygon Connect (IPCB_PolygonConnectStyleRule)
`ConnectStyle` (connection style for polygon pours)

### Short Circuit (IPCB_ShortCircuitConstraint)
`Allowed` (Boolean, whether short circuit is allowed)

### Differential Pairs Routing (IPCB_DifferentialPairsRoutingRule)
`PreferedGap(Layer)` (TCoord, preferred gap between diff pair traces on given layer)

### Confinement / Room (IPCB_ConfinementConstraint)
`BoundingRect` (TCoordRect) `ConstraintLayer` `Kind` (TConfinementStyle: `eConfineOut`)
`PointCount` `Segments[i]` (TPolySegment - vx, vy, Kind, cx, cy, Radius, Angle1, Angle2)
Room creation from polygon: use `PCB:ConvertSelected` with `Action='TO_POLYGON'`, then create room with matching contour.

### Rule Interfaces List
`IPCB_ClearanceConstraint` `IPCB_ParallelSegmentConstraint` `IPCB_MaxMinWidthConstraint` `IPCB_MaxMinLengthConstraint` `IPCB_MatchedNetLengthsConstraint` `IPCB_DaisyChainStubLengthConstraint` `IPCB_PowerPlaneConnectStyleRule` `IPCB_PolygonConnectStyleRule` `IPCB_RoutingTopologyRule` `IPCB_RoutingPriorityRule` `IPCB_RoutingLayersRule` `IPCB_RoutingCornerStyleRule` `IPCB_RoutingViaStyleRule` `IPCB_PowerPlaneClearanceRule` `IPCB_SolderMaskExpansionRule` `IPCB_PasteMaskExpansionRule` `IPCB_ShortCircuitConstraint` `IPCB_BrokenNetRule` `IPCB_ViasUnderSMDConstraint` `IPCB_MaximumViaCountRule` `IPCB_MinimumAnnularRing` `IPCB_AcuteAngle` `IPCB_ConfinementConstraint` `IPCB_ComponentClearanceConstraint` `IPCB_ComponentRotationsRule` `IPCB_PermittedLayersRule` `IPCB_SignalStimulus` `IPCB_MaxOvershootFall` `IPCB_MaxOvershootRise` `IPCB_MaxUndershootFall` `IPCB_MaxUndershootRise` `IPCB_RuleMaxMinImpedance` `IPCB_RuleMinSignalTopValue` `IPCB_RuleMaxSignalBaseValue` `IPCB_RuleFlightTime_RisingEdge` `IPCB_RuleFlightTime_FallingEdge` `IPCB_RuleMaxSlopeRisingEdge` `IPCB_RuleMaxSlopeFallingEdge` `IPCB_NetsToIgnoreRule` `IPCB_SMDToCornerConstraint` `IPCB_RuleSupplyNets` `IPCB_MaxMinHoleSizeConstraint` `IPCB_TestPointStyleRule` `IPCB_TestPointUsage` `IPCB_UnConnectedPinRule` `IPCB_SMDToPlaneConstraint` `IPCB_SMDNeckDownConstraint` `IPCB_LayerPairsRule` `IPCB_FanoutControlRule` `IPCB_MaxMinHeightConstraint` `IPCB_DifferentialPairsRoutingRule`

## CLASSES
Create: `NetClass := PCBServer.PCBClassFactoryByClassMember(eClassMemberKind_Net);`
Props: `NetClass.SuperClass := False;` `NetClass.Name := 'name';` `NetClass.AddMemberByName('GND');`
`Board.AddPCBObject(NetClass);`
Iterate members: `NetClass.MemberName[i]` (returns '' when done) `NetClass.MemberKind` `NetClass.IsMember(name)`
**TClassMemberKind**: `eClassMemberKind_Net` (0) `eClassMemberKind_Component` (1) `eClassMemberKind_FromTo` (2) `eClassMemberKind_Pad` (3) `eClassMemberKind_Layer` (4) `eClassMemberKind_DifferentialPair` (5)

## PCB LIBRARY OPERATIONS
```
CurrentLib := PCBServer.GetCurrentPCBLibrary;
// Create/load libraries:
// PCBServer.CreatePCBLibrary - create new empty PCB library
// PCBServer.LoadPCBLibraryByPath(path) - load existing PCB library by file path
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
// eEditAction_Select can also be used as 3rd param to GetObjectAtCursor

// Rectangle selection
Board.ChooseRectangleByCorners('First corner', 'Final corner', x1, y1, x2, y2)  // returns Boolean
```

## SYSTEM OPTIONS
```
PCBSystemOptions := PCBServer.SystemOptions;
PCBSystemOptions.BoardCursorType := eCurShapeCross90;  // or eCurShapeBigCross, eCurShapeCross45
PCBSystemOptions.DoOnlineDRC;                          // Boolean, online DRC state
PCBSystemOptions.RotationStep;                         // TAngle, current rotation angle step
PCBServer.SystemOptions.LayerColors[layer];            // get/set layer color (TColor)
```

## REFRESH/REDRAW/ZOOM
```
Client.SendMessage('PCB:Zoom', 'Action=Redraw', 255, Client.CurrentView);
Client.SendMessage('PCB:Zoom', 'Action=Selected', 255, Client.CurrentView);  // zoom to selected
// or
ResetParameters; AddStringParameter('Action','Redraw'); RunProcess('PCB:Zoom');
// or
ResetParameters; AddStringParameter('Action','All'); RunProcess('PCB:Zoom');
// or
Board.ViewManager_FullUpdate;
Board.GraphicalView_ZoomRedraw;
Board.GraphicalView_ZoomOnRect(x1, y1, x2, y2);  // zoom to bounding rectangle
Client.CommandLauncher.LaunchCommand('PCB:Zoom', 'Action=Redraw', 255, Client.CurrentView);
```
**Deselect all**: `Client.SendMessage('PCB:DeSelect', 'Scope=All', 255, Client.CurrentView);`
**Fullscreen**: `RunProcess('Client:FullScreen');`
**Post message**: `Client.PostMessage('ProcessName', 'Params', Length(Params), Client.CurrentView)` - async message to client.
**Launch command**: `Client.CommandLauncher.LaunchCommand('ProcessName', 'Params', 255, Client.CurrentView);`
**Client as IProcessLauncher**: `Client` implements `IProcessLauncher` interface.
**Unique IDs**: `GetWorkSpace.DM_GenerateUniqueID` - generate unique ID string. `GetHashID_ForString(str)` - convert string to hash integer.

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

### Progress Bar
```
InitStatus;                        // initialize progress bar
UpdateStatus('Processing...', i, total);  // update with message and progress (i of total)
FinishStatus;                      // close progress bar
```

### TIniFile (persistent settings storage)
```
IniFile := TIniFile.Create(ClientAPI_SpecialFolder_AltiumApplicationData + '\MyScript.ini');
Value := IniFile.ReadBool('Section', 'Key', DefaultValue);
IniFile.WriteBool('Section', 'Key', Value);
Value := IniFile.ReadInteger('Section', 'Key', DefaultValue);
IniFile.WriteInteger('Section', 'Key', Value);
Value := IniFile.ReadString('Section', 'Key', DefaultValue);
IniFile.WriteString('Section', 'Key', Value);
IniFile.Free;
```
`ClientAPI_SpecialFolder_AltiumApplicationData` - path to Altium app data folder.
`SpecialFolder_AltiumSystem` - path to Altium system directory (e.g. for `PrefFolder.ini`).

## VARIANT SYSTEM (DXP Workspace Manager)
```
WSM := GetWorkSpace;
Project := WSM.DM_FocusedProject;
Variant := Project.DM_CurrentProjectVariant;           // current variant
FlatDoc := Project.DM_DocumentFlattened;                // flattened schematic view
CompCount := FlatDoc.DM_ComponentCount;
Comp := FlatDoc.DM_Components(i);
Variation := Variant.DM_FindComponentVariationByUniqueId(Comp.DM_UniqueId);
If Variation <> Nil Then
    If Variation.DM_VariationType = eVariation_NotFitted Then ...;
```
**Variation types**: `eVariation_NotFitted` `eVariation_Alternate`
Additional project props: `Project.DM_ProjectVariantCount` `Project.DM_ProjectVariants(i)` (returns IProjectVariant) `Project.DM_ProjectFileName`
`IProjectVariant.DM_Description` - variant name/description.
`Component.DM_PhysicalDesignator` - physical refdes string (e.g. 'R1').
`CompVariation.DM_VariationKind` (alternative to `DM_VariationType`)
Compile project: `ResetParameters; AddStringParameter('Action','Compile'); AddStringParameter('ObjectKind','Project'); RunProcess('WorkspaceManager:Compile');`

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
SL.SaveToFile(fn);  SL.LoadFromFile(fn);
SL.Find(str, index)  // returns Boolean
SL.Delete(i)  SL.Insert(i, str)  SL.IndexOf(str)
SL.Sort  SL.Move(fromIdx, toIdx)  SL.InsertObject(idx, str, obj)
SL.Clear  SL.Free
// Dictionary pattern (Name=Value pairs):
SL.NameValueSeparator := '=';  // default
SL.IndexOfName('key')  SL.ValueFromIndex[i]  SL.Names[i]
SL.Values['key'] := 'value';  // set by key
SL.Put(i, 'newStr');  // replace string at index
SL.AddObject(str, obj);  SL.Objects[i];  // store/retrieve associated objects (lightweight key-value-object store)
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

### Selection/Query Operations
```
// Deselect all
ResetParameters; AddStringParameter('Scope','All'); RunProcess('PCB:DeSelect');
// or: Client.SendMessage('PCB:DeSelect', 'Scope=All', 255, Client.CurrentView);

// Delete selected objects
RunProcess('PCB:Clear');

// Convert selected to polygon
ResetParameters; AddStringParameter('Action','TO_POLYGON'); RunProcess('PCB:ConvertSelected');

// Run query filter (select objects matching expression)
ResetParameters; AddStringParameter('Index','0');
AddStringParameter('Expression','IsTrack And OnTopLayer');
RunProcess('PCB:RunQuery');

// Select objects by area/kind/layer
ResetParameters; AddStringParameter('Scope','InsideArea');
AddStringParameter('ObjectKind','Component'); RunProcess('PCB:Select');
// or: AddStringParameter('Scope','Layer'); RunProcess('PCB:Select');

// Select next topology object (e.g. diff pair partner)
ResetParameters; AddStringParameter('SelectTopologyObjects','TRUE');
RunProcess('PCB:SelectNext');
```

### Query Expressions (for PCB:RunQuery, rule scopes, filter panels)
**Object type**: `IsTrack` `IsArc` `IsVia` `IsPad` `IsText` `IsRegion` `IsFill` `IsRoom` `IsComponent` `IsPoly` `IsDimension` `IsCoordinate` `IsConnection` `IsSelected`
**Layer**: `OnTopLayer` `OnBottomLayer` `OnMultiLayer` `OnMid` `OnPlane` `OnMechanical` `OnSilkscreen` `OnSolderMask` `OnPaste` `OnSignal`
**Scope**: `InComponent('U1')` `InNet('GND')` `InRegion(x1,y1,x2,y2)`
**Other**: `IsBoardCutoutRegion`
**Logical**: `And` `Or` `Not` - combine predicates: `IsTrack And OnTopLayer And Not InComponent('*')`
**Comparison**: `Width > 10` `HoleSize = 20` (values in mils by default)
**Mask mode** (via Client.PostMessage): `Client.PostMessage('PCB:RunQuery', 'Apply=True|Expr=IsSelected|Mask=True', Length(params), Client.CurrentView)` - `Mask=True` applies as filter mask.

### Object Display Quality (Final/Draft/Hidden)
```
ResetParameters;
AddStringParameter('TrackQuality', 'Final');  // or 'Draft' or 'Hidden'
RunProcess('Pcb:SetupPreferences');
```
Object type parameters: `TrackQuality` `ArcQuality` `PadQuality` `ViaQuality` `SolidRegionQuality` `FillQuality` `StringQuality` `ComponentQuality` `PolygonQuality` `3DBodyQuality` `DimensionQuality` `RoomQuality` `CoordQuality`

### Unions
```
// Create union from selected objects
ResetParameters; AddStringParameter('Action','CreateUnion'); RunProcess('PCB:ManageUnions');
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
- Integer ops: `Inc(x)` `Trunc(real)` `Ord(enum)` `StrToInt64()` `Int()` (truncate float to int)
- Float: `FloatToStr()` `StrToInt()` `IntToStr()` `FloatToStrF(value, format, precision, digits)` `DecimalSeparator` (system locale char)
- String: `UpperCase()` `Copy()` `Length()` `Pos()` `Trim()` `StringReplace()`
- Math: `Sin()` `Cos()` `Sqrt()` `PI` `Degrees2Radians()` `Power(base, exp)` `ArcTan2(y, x)`
- Checks: `Assigned(obj)` (Boolean, nil test - safer than `<> Nil` for some objects)
- Timing: `GetTickCount` (milliseconds since boot, for performance measurement) `Sleep(ms)` (pause execution)
- Files: `ForceDirectories(path)` `FileExists(path)` `DirectoryExists(path)` `ExtractFileDir(path)` `ExtractFileExt(path)` `SetLength(str, len)`
- Math extra: `Sqr(x)` (x squared) `Exp(x)` `Ln(x)` `Floor(x)` `Round(x)`
- String extra: `AnsiPos(sub, str)` `AnsiCompareText(s1, s2)` (case-insensitive, 0=equal) `AnsiUpperCase(str)` `LastDelimiter(delims, str)` `Delete(str, start, count)` `VarToStr(variant)`
- Dialog: `MessageDlg(msg, mtType, buttons, helpCtx)` - types: `mtInformation` `mtWarning` `mtError` `mtConfirmation`
- FloatToStrF formats: `ffFixed` `ffGeneral`
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
