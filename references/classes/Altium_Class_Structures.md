# Altium Class Structures
Complete interface member listings from Altium Script IDE. Inherited members documented once in base class; derived classes list only unique additions.

---
# PCB CLASSES
---

## IPCB_Primitive
Base class for all PCB objects. Every IPCB_ object class inherits these members.

property  AllowGlobalEdit : Boolean
procedure BeginModify;
property  Board : IPCB_Board
function  BoundingRectangle : IDispatch;
function  BoundingRectangleChildren : IDispatch;
function  BoundingRectangleForPainting : IDispatch;
function  BoundingRectangleForSelection : IDispatch;
procedure CancelModify;
property  Component : IPCB_Component
property  Coordinate : IPCB_Coordinate
property  Descriptor : TPCBString
property  Detail : TPCBString
property  Dimension : IPCB_Dimension
property  DrawAsPreview : Boolean
property  DRCError : Boolean
property  Enabled : Boolean
property  EnableDraw : Boolean
property  Enabled_Direct : Boolean
property  Enabled_vComponent : Boolean
property  Enabled_vCoordinate : Boolean
property  Enabled_vDimension : Boolean
property  Enabled_vNet : Boolean
property  Enabled_vPolygon : Boolean
procedure EndModify;
procedure Export_ToParameters(AParams : PWideChar);
procedure FlipXY(Axis : Integer, MirrOp : TMirrorOperation);
procedure GraphicallyInvalidate;
property  Handle : TPCBString
property  Identifier : TPCBString
property  InBoard : Boolean
property  InComponent : Boolean
property  InCoordinate : Boolean
property  Index : Word
property  InDimension : Boolean
property  InNet : Boolean
property  InPolygon : Boolean
property  InSelectionMemory[Index : Integer] : Boolean
property  IsAssyTestpoint_Bottom : Boolean
property  IsAssyTestpoint_Top : Boolean
property  IsElectricalPrim : Boolean
function  IsFreePrimitive : Boolean;
function  IsHidden : Boolean;
property  IsKeepout : Boolean
property  IsPreRoute : Boolean
function  IsSaveable(AVer : TAdvPCBFileFormatVersion) : Boolean;
property  IsTenting : Boolean
property  IsTenting_Bottom : Boolean
property  IsTenting_Top : Boolean
property  IsTestpoint_Bottom : Boolean
property  IsTestpoint_Top : Boolean
function  I_ObjectAddress : Pointer;
property  Layer : TLayer
property  Layer_V6 : TV6_Layer
procedure Mirror(Axis : Integer, MirrOp : TMirrorOperation);
property  MiscFlag1 : Boolean
property  MiscFlag2 : Boolean
property  MiscFlag3 : Boolean
property  Moveable : Boolean
procedure MoveByXY(AX : Integer, AY : Integer);
procedure MoveToXY(AX : Integer, AY : Integer);
property  Net : IPCB_Net
property  ObjectId : TObjectId
property  ObjectIDString : TPCBString
property  PadCacheRobotFlag : Boolean
property  PasteMaskExpansion : TCoord
property  Polygon : IPCB_Polygon
property  PolygonOutline : Boolean
property  PowerPlaneClearance : TCoord
property  PowerPlaneConnectStyle : TPlaneConnectStyle
property  PowerPlaneReliefExpansion : TCoord
property  ReliefAirGap : TCoord
property  ReliefConductorWidth : TCoord
property  ReliefEntries : Integer
function  Replicate : IPCB_Primitive;
function  RequiredParameterSpace : Integer;
procedure RotateBy(Angle : Double);
property  Selected : Boolean
procedure SetState_Preview(Enable : Boolean, Color : Cardinal, Opacity : Single, z : Integer, Height : Integer, sx : Single, sy : Single, SZ : Single);
property  SolderMaskExpansion : TCoord
procedure SwapLayerPairs;
property  TearDrop : Boolean
property  UnionIndex : Integer
property  UniqueId : TPCBString
property  Used : Boolean
property  UserRouted : Boolean
property  ViewableObjectID : TViewableObjectID

## IPCB_Board
Inherits: IPCB_Primitive

procedure AddLayerPair(LowLayer : Integer, HighLayer : Integer);
function  AddMesh(MeshString : WideString) : Integer;
procedure AddObjectToHighlightObjectList(Primitive : IPCB_Primitive);
procedure AddPCBObject(PCBObject : IPCB_Primitive);
function  AddPolygonMesh(Shape : IPCB_Contour, z : Integer, Color : Cardinal) : Integer;
procedure AnalyzeNet(const ANet : IPCB_Net);
property  AutomaticSplitPlanes : Boolean
procedure BeginIgnoreChanges;
property  BigVisibleGridMultFactor : TReal
property  BigVisibleGridSize : TReal
property  BigVisibleGridUnit : TUnit
property  BoardID : Integer
function  BoardIterator_Create : IPCB_BoardIterator;
procedure BoardIterator_Destroy(var Iterator : IPCB_BoardIterator);
property  BoardLayerSetManager : IPCB_BoardLayerSetManager
property  BoardOutline : IPCB_BoardOutline
property  BoardVersion : Double
property  ChangeProcessor_SystemValid[AProcessorName : string] : Boolean
function  ChooseLocation(var x1 : Integer, var y1 : Integer, Prompt : WideString) : Boolean;
function  ChooseRectangleByCorners(Prompt1 : WideString, Prompt2 : WideString, var x1 : Integer, var y1 : Integer, var x2 : Integer, var y2 : Integer) : Boolean;
function  ClassNameIsUnique(AObjectClass : IPCB_ObjectClass, AName : WideString) : Boolean;
procedure CleanNet(const ANet : IPCB_Net);
procedure ClearMeshes;
procedure ClearUndoRedo;
property  ComponentGridSize : TDouble
property  ComponentGridSizeX : TDouble
property  ComponentGridSizeY : TDouble
procedure ConnectivelyValidateNets;
function  ContextMenuObjectCount(ObjectId : TObjectId) : Integer;
function  CreateBoardOutline : IPCB_BoardOutline;
property  CurrentLayer : TLayer
property  CurrentLayerV6 : TV6_Layer
function  DeleteMesh(Id : Integer) : Boolean;
function  DifferentialPairNameIsUnique(ADifferentialPair : IPCB_DifferentialPair, AName : WideString) : Boolean;
procedure DispatchMessage(Source : IPCB_Primitive, Destination : IPCB_Primitive, MessageID : Word, MessageData : IPCB_Primitive);
property  DisplayUnit : TUnit
procedure DoRedo;
procedure DoUndo;
property  DrawDotGrid : Boolean
property  DrawMode[Old : TObjectId] : TDrawMode
property  DrillLayerPairsCount : Integer
property  ECOOptions : IPCB_ECOOptions
function  ElectricalLayerIterator : IPCB_LayerObjectIterator;
function  ElectricalLayers : IPCB_LayerSet;
procedure EnableAllPrimitives(Enable : Boolean);
procedure EndIgnoreChanges;
procedure EndUndo;
property  FileName : TPCBString
function  FindDominantRuleForObject(APrimitive : IPCB_Primitive, ARuleKind : TRuleKind) : IPCB_Rule;
function  FindDominantRuleForObjectPair(APrimitive1 : IPCB_Primitive, APrimitive2 : IPCB_Primitive, ARuleKind : TRuleKind) : IPCB_Rule;
function  FindLinkedBoardLibrary(APrimitive : IPCB_Primitive) : IPCB_PadViaLibrary;
function  FindLinkedBoardTemplate(APrimitive : IPCB_Primitive) : IPCB_PadViaTemplate;
function  GenerateUniqueID : WideString;
property  GerberOptions : IPCB_GerberOptions
procedure GetFlexTransform(x : Integer, y : Integer, P : Pointer);
function  GetLastClickedObject(ObjectSet : TObjectSet, Action : TEditingAction) : IPCB_Primitive;
function  GetMeshPatchFromPoint(x : Integer, y : Integer, var MeshID : Integer, var PatchIndex0 : Integer, var PatchIndex1 : Integer, var PatchIndex2 : Integer, var IntersectionX : Integer, var IntersectionY : Integer, var IntersectionZ : Integer) : Boolean;
function  GetObjectAtCursor(ObjectSet : TObjectSet, LayerSet : TV6_LayerSet, StatusBarText : WideString) : IPCB_Primitive;
function  GetObjectAtXYAskUserIfAmbiguous(HitX : Integer, HitY : Integer, ObjectSet : TObjectSet, LayerSet : TV6_LayerSet, Action : TEditingAction) : IPCB_Primitive;
function  GetPadViaTemplateForPrimitive(const APrimitive : IPCB_Primitive) : IPCB_PadViaTemplate;
function  GetPcbComponentByRefDes(Value : WideString) : IPCB_Component;
function  GetPrimitiveCount(AObjSet : TObjectSet, LayerSet : TV6_LayerSet, AMethod : TIterationMethod) : Integer;
function  GetState_DesignatorDisplayMode : TDesignatorDisplayMode;
function  GetState_LayerPairByPair(LowLay : TV6_Layer, HighLay : TV6_Layer) : IPCB_DrillLayerPair;
function  GetState_MainGraphicalView : IPCB_GraphicalView;
function  GetState_MeshViewMode(Id : Integer) : TPCBMeshViewMode;
procedure GetState_SplitPlaneNets(NetList : TStringList);
function  GetState_SwitchOutputCapabilityMode : Boolean;
function  GetState_ViewConfigAsString(out ConfigType : WideString, out Config : WideString) : Boolean;
function  GetState_ViewConfigColor2D(Layer : Integer) : Cardinal;
function  GetState_ViewConfigColor3D(Layer : Integer) : Cardinal;
function  GetState_ViewConfigOpacity2D(Layer : Integer, ObjectId : TObjectId) : Single;
function  GetState_ViewConfigOpacity3D(Layer : Integer) : Single;
procedure GetState_ZTopBottom(out ZTop : Single, out ZBottom : Single);
function  GraphicalView_ViewportRect : IDispatch;
procedure GraphicalView_ZoomOnRect(x1 : Integer, y1 : Integer, x2 : Integer, y2 : Integer);
procedure GraphicalView_ZoomRedraw;
function  HasServerDocument : Boolean;
procedure HideHoleSymbols;
procedure HidePCBObject(const PCBObject : IPCB_Primitive);
property  InternalPlane1NetName : TPCBString
property  InternalPlane2NetName : TPCBString
property  InternalPlane3NetName : TPCBString
property  InternalPlane4NetName : TPCBString
function  InternalPlaneLayerIterator : IPCB_LayerObjectIterator;
property  InternalPlaneNetName[Index : Integer] : TPCBString
procedure InvalidatePlane(L : TV6_Layer);
procedure InvalidateScopeTester;
procedure InvertPCBObject(const PCBObject : IPCB_Primitive);
function  IsEmptyHoleToleranceValue(Value : Integer) : Boolean;
property  LayerColorD[TV6_Layer] : TColorRef
property  LayerIsDisplayed[L : Integer] : Boolean
property  LayerIsUsed[L : Integer] : Boolean
function  LayerIterator : IPCB_LayerObjectIterator;
function  LayerIterator_IncludeNonEditable : IPCB_LayerObjectIterator;
function  LayerName(L : Integer) : WideString;
property  LayerPair[L : Integer] : IPCB_DrillLayerPair
function  LayerPositionInSet(ALayerSet : TV6_LayerSet, ALayerObj : IPCB_LayerObject) : Integer;
property  LayerStack : TPCB_LayerStack
property  LayerStack_V7 : IPCB_LayerStack_V7
procedure LinkToTemplate(const APrimitive : IPCB_Primitive, const ATemplate : IPCB_PadViaTemplate);
function  LoadMeshFile(MeshFile : WideString) : Integer;
property  MasterLayerStack : IPCB_MasterLayerStack
function  MechanicalLayerIterator : IPCB_LayerObjectIterator;
function  MechanicalLayers : IPCB_LayerSet;
property  MechanicalPairs : IPCB_MechanicalLayerPairs
procedure Navigate_RedrawChangedObjectsInBoard;
function  NetNameIsUnique(ANet : IPCB_Net, AName : WideString) : Boolean;
procedure NewUndo;
property  OutputOptions : IPCB_OutputOptions
property  PadViaCache : IPCB_PadViaLibrary
property  PadViaLibrary : IPCB_PadViaLibrary
property  PCB3DMovieManager : IPCB_3DMovieManager
property  PCBSheet : IPCB_Sheet
property  PCBWindow : HWND
property  PinPairsManager : IPCB_PinPairsManager
property  PlacerOptions : IPCB_AdvancedPlacerOptions
property  PolygonNameTemplate : TPolygonNameTemplates
property  PrimitiveCounter : IPCB_PrimitiveCounter
function  PrimPrimDistance(APrimitive1 : IPCB_Primitive, APrimitive2 : IPCB_Primitive) : Integer;
property  PrinterOptions : IPCB_PrinterOptions
procedure RebuildBoardOutline(ADefiningLayer : Integer);
procedure RebuildPadCaches;
procedure RebuildSplitBoardRegions(FullRebuild : Boolean);
procedure RecreateHandles;
procedure ReDrawToDC(DC : NativeUInt, PrintKind : Integer, PrintWhat : Integer, const Layers : TV6_LayerSet);
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
property  RouteToolPathLayer : TLayer
property  RoutingOptions : IPCB_BoardRoutingOptions
function  RuleNameUnique(ARule : IPCB_Rule, AName : WideString) : Boolean;
function  RunBatchDesignRuleCheck(ReportFileName : WideString, DRCReportFormat : TDRCReportFileFormat, DisplayReportFile : LongBool, PublishToWeb : LongBool) : LongBool;
function  SelectObject[L : Integer] : IPCB_Primitive;
property  SelectedObjectCount : Integer
property  SelectedObjectsCount : Integer
procedure SelectedObjects_Add(P : IPCB_Primitive);
procedure SelectedObjects_BeginUpdate;
procedure SelectedObjects_Clear;
procedure SelectedObjects_EndUpdate;
function  SelectNewViewConfiguration(const CurConfigType : WideString, const CurConfig : WideString, out ConfigType : WideString, out Config : WideString) : Boolean;
procedure SetState_DesignatorDisplayMode(AMode : TDesignatorDisplayMode);
procedure SetState_DocumentHasChanged;
procedure SetState_MeshViewMode(Id : Integer, ViewMode : TPCBMeshViewMode);
procedure SetState_Navigate_HighlightObjectList(HighlightMethods : THighlightMethodSet, ClearExisting : Boolean);
procedure SetState_SaveCurrentStatusOfObjectsInBoard;
procedure SetState_SwitchOutputCapabilityMode(AOutputCapability : Boolean);
function  SetState_ViewConfigFromString(const ConfigType : WideString, const Config : WideString) : Boolean;
procedure SetState_ViewConfiging_ForceRebuild(const ConfigType : WideString, const Config : WideString);
procedure SetState_ViewManager_FilterChanging;
procedure ShowHoleSymbols(SymbolType : Integer, SymbolSize : Integer, LayerPairIndex : Integer);
procedure ShowPCBObject(const PCBObject : IPCB_Primitive);
function  SignalLayerIterator : IPCB_LayerObjectIterator;
property  SnapGridSize : TDouble
property  SnapGridSizeX : TDouble
property  SnapGridSizeY : TDouble
property  SnapGridUnit : TUnit
function  SpatialIterator_Create : IPCB_SpatialIterator;
procedure SpatialIterator_Destroy(var Iterator : IPCB_SpatialIterator);
property  TrackGridSize : TDouble
procedure UnlinkFromTemplate(const APrimitive : IPCB_Primitive);
procedure UpdateBoardOutline;
procedure UpdateCachedVCSRevisionNumberSpecialStrings;
procedure ValidateInvalidPlanes;
procedure ValidateScopeTester;
property  ViaGridSize : TDouble
property  ViewConfigDisplaySpecialStrings : Boolean
property  ViewConfigIs3D : Boolean
property  ViewConfigTopSolderMaskColor3D : TColor
procedure ViewManager_FullUpdate;
procedure ViewManager_GraphicallyInvalidatePrimitive(PCBObject : IPCB_Primitive);
procedure ViewManager_UpdateLayerTabs;
property  Viewport : IPCB_Viewport
property  VisibleGridMultFactor : TReal
property  VisibleGridSize : TReal
property  VisibleGridUnit : TUnit
function  VisibleLayers : IPCB_LayerSet;
function  WindowBoundingRectangle : IDispatch;
property  WorldXOrigin : TCoord
property  WorldYOrigin : TCoord
property  XCursor : TCoord
property  XOrigin : TCoord
property  YCursor : TCoord
property  YOrigin : TCoord

## IPCB_DifferentialPair
Inherits: IPCB_Primitive

property  GatherControl : Boolean
property  Name : TPCBString
property  NegativeNet : IPCB_Net
property  PositiveNet : IPCB_Net
procedure Reroute;

## IPCB_Rule
Inherits: IPCB_Primitive

function  ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function  CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function  CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property  Comment : TPCBString
property  DefinedByLogicalDocument : Boolean
property  DRCEnabled : Boolean
function  GetState_CollisionExpansion : Integer;
function  GetState_DataSummaryString : WideString;
function  GetState_ScopeDescriptorString : WideString;
function  GetState_ShortDescriptorString : WideString;
function  GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function  GetWhatsThisHelpString : WideString;
property  IsAdvanced : Boolean
function  IsUnary : Boolean;
function  IsValid : Boolean;
property  LayerKind : TRuleLayerKind
property  Name : TPCBString
property  NetScope : TNetScope
function  NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function  Priority : Word;
property  RuleKind : TRuleKind
property  Scope1Expression : TPCBString
function  Scope1Includes(P : IPCB_Primitive) : Boolean;
property  Scope2Expression : TPCBString
function  Scope2Includes(P : IPCB_Primitive) : Boolean;
function  ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_DifferentialPairsRoutingRule
Inherits: IPCB_Rule

property  FavoredImpedance : TDouble
function  GetState_MaxGapAtSubStack(const L : Integer, StackID : WideString) : Integer;
function  GetState_MaxWidthAtSubStack(const L : Integer, StackID : WideString) : Integer;
function  GetState_MinGapAtSubStack(const L : Integer, StackID : WideString) : Integer;
function  GetState_MinWidthAtSubStack(const L : Integer, StackID : WideString) : Integer;
function  GetState_PreferedGapAtSubStack(const L : Integer, StackID : WideString) : Integer;
function  GetState_PreferedWidthAtSubStack(const L : Integer, StackID : WideString) : Integer;
property  ImpedanceDriven : Boolean
property  ImpedanceProfileId : TPCBString
procedure Invalidate;
property  MaxGap[L : Integer] : TCoord
property  MaxImpedance : TDouble
property  MaxUncoupledLength : TCoord
property  MaxWidth[L : Integer] : TCoord
property  MinGap[L : Integer] : TCoord
property  MinImpedance : TDouble
property  MinWidth[L : Integer] : TCoord
property  PreferedGap[L : Integer] : TCoord
property  PreferedWidth[L : Integer] : TCoord
procedure SetState_MaxGapAtSubStack(const L : Integer, StackID : WideString, Value : Integer);
procedure SetState_MaxWidthAtSubStack(const L : Integer, StackID : WideString, Value : Integer);
procedure SetState_MinGapAtSubStack(const L : Integer, StackID : WideString, Value : Integer);
procedure SetState_MinWidthAtSubStack(const L : Integer, StackID : WideString, Value : Integer);
procedure SetState_PreferedGapAtSubStack(const L : Integer, StackID : WideString, Value : Integer);
procedure SetState_PreferedWidthAtSubStack(const L : Integer, StackID : WideString, Value : Integer);

---
# SCH CLASSES
---

(To be populated as class structures are gathered from the Altium Script IDE)

---
# GENERAL CLASSES
---

(To be populated as class structures are gathered from the Altium Script IDE)
