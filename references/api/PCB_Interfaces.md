# PCB Interfaces (IPCB_*)
Complete member listings for all PCB interfaces. Inherited IPCB_Primitive members documented once; derived interfaces list only unique additions.

## IPCB_Primitive (86 members) - BASE CLASS
All IPCB_ object interfaces inherit these members.
property InSelectionMemory[Index: Integer] : Boolean
property AllowGlobalEdit : Boolean
procedure BeginModify;
property Board : IPCB_Board
function BoundingRectangle : IDispatch;
function BoundingRectangleChildren : IDispatch;
function BoundingRectangleForPainting : IDispatch;
function BoundingRectangleForSelection : IDispatch;
procedure CancelModify;
property Component : IPCB_Component
property Coordinate : IPCB_Coordinate
property Descriptor : TPCBString
property Detail : TPCBString
property Dimension : IPCB_Dimension
property DrawAsPreview : Boolean
property DRCError : Boolean
property Enabled : Boolean
property Enabled_Direct : Boolean
property Enabled_vComponent : Boolean
property Enabled_vCoordinate : Boolean
property Enabled_vDimension : Boolean
property Enabled_vNet : Boolean
property Enabled_vPolygon : Boolean
property EnableDraw : Boolean
procedure EndModify;
procedure Export_ToParameters(AParams : PWideChar);
procedure FlipXY(Axis : Integer, MirrOp : TMirrorOperation);
procedure GraphicallyInvalidate;
property Handle : TPCBString
function I_ObjectAddress : Pointer;
property Identifier : TPCBString
property InBoard : Boolean
property InComponent : Boolean
property InCoordinate : Boolean
property Index : Word
property InDimension : Boolean
property InNet : Boolean
property InPolygon : Boolean
property IsAssyTestpoint_Bottom : Boolean
property IsAssyTestpoint_Top : Boolean
property IsElectricalPrim : Boolean
function IsFreePrimitive : Boolean;
function IsHidden : Boolean;
property IsKeepout : Boolean
property IsPreRoute : Boolean
function IsSaveable(AVer : TAdvPCBFileFormatVersion) : Boolean;
property IsTenting : Boolean
property IsTenting_Bottom : Boolean
property IsTenting_Top : Boolean
property IsTestpoint_Bottom : Boolean
property IsTestpoint_Top : Boolean
property Layer : TLayer
property Layer_V6 : TV6_Layer
procedure Mirror(Axis : Integer, MirrOp : TMirrorOperation);
property MiscFlag1 : Boolean
property MiscFlag2 : Boolean
property MiscFlag3 : Boolean
property Moveable : Boolean
procedure MoveByXY(AX : Integer, AY : Integer);
procedure MoveToXY(AX : Integer, AY : Integer);
property Net : IPCB_Net
property ObjectId : TObjectId
property ObjectIDString : TPCBString
property PadCacheRobotFlag : Boolean
property PasteMaskExpansion : TCoord
property Polygon : IPCB_Polygon
property PolygonOutline : Boolean
property PowerPlaneClearance : TCoord
property PowerPlaneConnectStyle : TPlaneConnectStyle
property PowerPlaneReliefExpansion : TCoord
property ReliefAirGap : TCoord
property ReliefConductorWidth : TCoord
property ReliefEntries : Integer
function Replicate : IPCB_Primitive;
function RequiredParamterSpace : Integer;
procedure RotateBy(Angle : Double);
property Selected : Boolean
procedure SetState_Preview(Enable : Boolean, Color : Cardinal, Opacity : Single, z : Integer, Height : Integer, sx : Single, sy : Single, SZ : Single);
property SolderMaskExpansion : TCoord
procedure SwapLayerPairs;
property TearDrop : Boolean
property UnionIndex : Integer
property UniqueId : TPCBString
property Used : Boolean
property UserRouted : Boolean
property ViewableObjectID : TViewableObjectID

## IPCB_3DBody (17 members)
procedure Assign(const ASource : IPCB_3DBody);
function Clone : IPCB_3DBody;
function FaceCount : Integer;
function FaceCountForPart(const APartIndex : Integer) : Integer;
function FindPart(const APartName : string) : Integer;
procedure GetAABB(out LowX : Single, out LowY : Single, out LowZ : Single, out HighX : Single, out HighY : Single, out HighZ : Single);
function GetFace(AIndex : Integer) : IPCB_3DBodyFace;
function GetFaceForPart(const APartIndex : Integer, AFaceIndex : Integer) : Integer;
function GetNameOfPart(const APartIndex : Integer) : string;
function GetPartIndex(AIndex : Integer) : Integer;
procedure GetPartTriangleRange(const APartIndex : Integer, out AStartTriangleIndex : Integer, out ATrinaglesCount : Integer);
procedure GetTriangleIndices(ATriangleIndex : Integer, out AVertex1Index : Integer, out AVertex2Index : Integer, out AVertex3Index : Integer);
procedure GetVertex(AIndex : Integer, out AX : Single, out AY : Single, out AZ : Single, out ANormalX : Byte, out ANormalY : Byte, out ANormalZ : Byte, out AColorR : Byte, out AColorG : Byte, out AColorB : Byte, out AColorA : Byte);
function PartsCount : Integer;
function RayCast(const ARayOriginX : Single, const ARayOriginY : Single, const ARayOriginZ : Single, const ARayDirX : Single, const ARayDirY : Single, const ARayDirZ : Single) : IPCB_3DBodyHitInfo;
function TriangleCount : Integer;
function VertexCount : Integer;

## IPCB_3DBodyFace (6 members)
function FaceIndex : Integer;
function GetTriangleIndex(const AIndex : Integer) : Integer;
procedure GetTriangleIndices(const AIndex : Integer, out AVertex1Index : Integer, out AVertex2Index : Integer, out AVertex3Index : Integer);
function PartIndex : Integer;
function StartTriangleIndex : Integer;
function TriangleCount : Integer;

## IPCB_3DBodyHitInfo (2 members)
function Count : Integer;
procedure GetHitInfo(AIndex : Integer, out ATriangleIndex : Integer, out AIntPtX : Single, out AIntPtY : Single, out AIntPtZ : Single);

## IPCB_AbstractIterator (10 members)
procedure AddFilter_AllLayers;
procedure AddFilter_Area(x1 : Integer, y1 : Integer, x2 : Integer, y2 : Integer);
procedure AddFilter_IPCB_LayerSet(ALayerSet : IPCB_LayerSet);
procedure AddFilter_LayerSet(ALayerSet : TV6_LayerSet);
procedure AddFilter_LayerSetA(ALayerSet : Integer);
procedure AddFilter_ObjectSet(AObjectSet : TObjectSet);
function FirstPCBObject : IPCB_Primitive;
function I_ObjectAddress : Pointer;
function NextPCBObject : IPCB_Primitive;
procedure SetState_FilterAll;

## IPCB_AbstractOptions (8 members)
procedure Export_ToParameters(Parameters : PWideChar);
procedure Export_ToParameters_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version4(Parameters : PWideChar);
function I_ObjectAddress : Pointer;
procedure Import_FromParameters(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, Parameters : PWideChar);
property OptionsObjectID : TOptionsObjectId

## IPCB_AccordinGraphicIterator (2 members)
function First : IPCB_Primitive;
function Next : IPCB_Primitive;

## IPCB_Accordion (10 unique + inherits IPCB_Primitive)
property AmplitudeIncrement : TCoord
property ConnecitonLength : TCoord
property EstimateLength : TCoord
property Gap : TCoord
property GapIncrement : TCoord
function GetState_Settings : IPCB_AccordionMakerSettings;
property MaxAmplitude : TCoord
function Rebuild : Boolean;
property Style : TAccordionStyle
procedure UpdateNetByPrimitive(const APrimitive : IPCB_Primitive);

## IPCB_AccordionDiffPairMakerSettings (8 members)
property DiffPairTunedTrack : IPCB_Primitive
function GetPinPairActualValue : Integer;
function GetState_DiffPair : IPCB_DifferentialPair;
function GetState_DiffPairOldLength : Integer;
property LastOtherPinPair : IPCB_PinPair
function LastState : IPCB_AccordionMakerSettings;
procedure SetState_DiffPairOldLength(ANewValue : Integer);
procedure UpdateDiffPairPinPairsNet(const ANet : IPCB_Net);

## IPCB_AccordionMakerSettings (102 members)
property MatchinglngthRuleRanges[I: Integer] : IPCB_MatchedLengthRange
property ActualMatchedLengthRule : IPCB_MatchedNetLengthsConstraint
property Amplitude : TCoord
property AmplitudeDirection : Integer
property AmplitudeIncrement : TCoord
function CalculateNetLength(ANet : IPCB_Net) : Int64;
function CalculatePinPairLength(APinPair : IPCB_PinPair) : Int64;
function ClampedMaxOf4(const a : Integer, const b : Integer, const C : Integer, const D : Integer) : Integer;
function ClampedMinOf4(const a : Integer, const b : Integer, const C : Integer, const D : Integer) : Integer;
procedure ClearLastState;
property ClipToTargetLength : Boolean
function Clone : IPCB_AccordionMakerSettings;
function ConvertDelayToLength(const ADelay : Double) : Integer;
function ConvertDelayToLength_PicoSeconds(const ADelay : Double) : Integer;
function ConvertLengthToDelay(const LengthVal : Integer) : Double;
function ConvertLengthToDelay_PicoSeconds(const LengthVal : Integer) : Double;
function CoordToString(const ACoord : Integer) : string;
procedure Deserialize(const AData : WideString);
function DiffPairClassifier_CategoriesCount : Integer;
function DiffPairClassifier_CategoryName(I : Integer) : WideString;
function DiffPairClassifier_CategoryObjects(I : Integer) : ISafeInterfaceList;
function DiffPairClassifier_Run(ADiffPair : IPCB_Primitive, ABoard : IPCB_Board) : Boolean;
procedure Export_ToParameters(const Parameters : IParameterList);
procedure ExportTo_SystemOptions;
property Gap : TCoord
property GapIncrement : TCoord
function GetState_AccordionMode : TAccordionMode;
function GetState_AccordionMode2 : TAccordionMode;
function GetState_Gauge : Pointer;
function GetState_MinAmplitude : Integer;
function GetState_RecentlyUsedDelays(const Index : Integer) : Double;
function GetState_RecentlyUsedDelaysCount : Integer;
function GetState_RecentlyUsedLengths(const Index : Integer) : Integer;
function GetState_RecentlyUsedLengthsCount : Integer;
function GetState_RotationSnapping : Boolean;
function GetState_SawtoothAngle : Double;
function GetState_SawtoothFixedSize : Boolean;
function GetState_SawtoothMinHeight : Integer;
function GetState_SawtoothMinJoint : Integer;
function GetState_SawtoothWidth : Integer;
function GetState_ShowLengthGauge : LongBool;
function GetState_SingleSide : Boolean;
procedure Import_FromParameters(const Parameters : IParameterList);
procedure ImportFrom_SystemOptions;
procedure InitilizeTargetRange;
property LastPinPair : IPCB_PinPair
property LastSourceDiffPair : IPCB_DifferentialPair
property LastSourceNet : IPCB_Net
function LastSourceRuleByUniqueID : IPCB_MatchedNetLengthsConstraint;
function LastState : IPCB_AccordionMakerSettings;
property LengthRule : IPCB_MaxMinLengthConstraint
property MatchedLengthRule : IPCB_MatchedNetLengthsConstraint
function MatchinglngthRuleRanges_Count : Integer;
property MaxLength : TCoord
property MaxValidLength : TCoord
property MinLength : TCoord
property MinValidLength : TCoord
property MitterRadiusRatio : Double
procedure ModeParameters_ExportTo_SystemOptions;
procedure ModeParameters_ImportFrom_SystemOptions;
property Net : IPCB_Net
function NetsClassifier_CategoriesCount : Integer;
function NetsClassifier_CategoryName(I : Integer) : WideString;
function NetsClassifier_CategoryObjects(I : Integer) : ISafeInterfaceList;
function NetsClassifier_Run(ANet : IPCB_Net, ABoard : IPCB_Board, const ANetClassificationSet : TNetClassificationSet) : Boolean;
procedure NextStyle;
property OldLength : TCoord
property OriginalNetLength : TCoord
property OutputTracesCount : Integer
procedure PopState;
procedure PreviousStyle;
procedure PushState;
property RangeIsValid : Boolean
procedure RecalculateTargetRange;
property RuleExist : Boolean
function Serialize : WideString;
procedure SetState_AccordionMode(const ANewValue : TAccordionMode);
procedure SetState_Default;
procedure SetState_Gauge(const AValue : Pointer);
procedure SetState_ImpExpPrefix(const APrefix : WideString);
procedure SetState_MinAmplitude(ANewValue : Integer);
procedure SetState_RotationSnapping(ANewValue : Boolean);
procedure SetState_SawtoothAngle(ANewValue : Double);
procedure SetState_SawtoothFixedSize(ANewValue : Boolean);
procedure SetState_SawtoothMinHeight(ANewValue : Integer);
procedure SetState_SawtoothMinJoint(ANewValue : Integer);
procedure SetState_SawtoothWidth(ANewValue : Integer);
procedure SetState_ShowLengthGauge(const ANewValue : LongBool);
procedure SetState_SingleSide(ANewValue : Boolean);
property Style : TAccordionStyle
property TargetDelay : Double
property TargetLength : TCoord
property TargetLengthMode : TTargetLengthMode
procedure ToggleAmplitudeDirection;
property Tolerance : TCoord
property TunedObject : IPCB_Primitive
procedure UpdatePinPairs(const APrimitive : IPCB_Primitive);
procedure UpdatePinPairsNet(const ANet : IPCB_Net);
procedure UpdatePrimitive(const APrimitive : IPCB_Primitive);
function UseBeforePlacing : Boolean;
property UseDelayUnits : Boolean
property UseTargetSource : Boolean

## IPCB_AcuteAngle (28 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property CheckTracksOnly : Boolean
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Minimum : TAngle
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_AcuteAngleViolation (20 unique + inherits IPCB_Primitive)
property AcuteAngle : TAngle
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
property HelperPrim : IPCB_Primitive
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Location : TCoordPoint
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_AdditionalObjectFactory (15 members)
function CreateBoardOutline : IPCB_BoardOutline;
function CreateClearanceRuleWrapper : IPCB_Primitive;
function CreateComponentAutoGeneratedClass(ACompSubSetKind : TAutoGeneratedClassKind) : IPCB_ObjectClass;
function CreateGroup : IPCB_Group;
function CreateLibrary(const ABoard : IPCB_Board, const AFileName : WideString) : IPCB_Library;
function CreateLibraryComponent(const ALibrary : IPCB_Library) : IPCB_LibComponent;
function CreatePCBPolygon(APolygonType : TPCBPolygonType) : IPCB_Primitive;
function CreatePCBRegion(ARegionType : TPCBRegionType) : IPCB_Primitive;
function CreateShapeEdge(AEdgeType : TPCB_ShapeEdgeType) : IPCB_ShapeEdge;
function CreateSmartUnion(AKind : TSmartUnionObjectType, const AOptions : IInterface) : IPCB_SmartUnionObject;
function CreateViaStructureManager : IPCB_ViaStructureManager;
function CreateWirebond : IPCB_Wirebond;
function GetModelCache : IPCB_ModelCache;
function GetPrimitiveParametersManager : IInterface;
function ObjectClassCluster(AKind : TClassMemberKind) : IPCB_ObjectClass;

## IPCB_AdvancedPlacerOptions (16 members)
procedure Export_ToParameters(Parameters : PWideChar);
procedure Export_ToParameters_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version4(Parameters : PWideChar);
function I_ObjectAddress : Pointer;
procedure Import_FromParameters(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, Parameters : PWideChar);
property OptionsObjectID : TOptionsObjectId
property PlaceByPassNet1 : TPCBString
property PlaceByPassNet2 : TPCBString
property PlaceLargeClear : TCoord
property PlaceSmallClear : TCoord
property PlaceUseAdvancedPlace : Boolean
property PlaceUseGrouping : Boolean
property PlaceUseLayerSwap : Boolean
property PlaceUseRotation : Boolean

## IPCB_AngularDimension (66 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
function Arc1 : IPCB_Arc;
function Arc2 : IPCB_Arc;
function Arrow1_Track1 : IPCB_Track;
function Arrow1_Track2 : IPCB_Track;
function Arrow2_Track1 : IPCB_Track;
function Arrow2_Track2 : IPCB_Track;
property ArrowLength : TCoord
property ArrowLineWidth : TCoord
property ArrowPosition : TDimensionArrowPosition
property ArrowSize : TCoord
property Bold : Boolean
property DimensionKind : TDimensionKind
function Extension1_Track : IPCB_Track;
function Extension2_Track : IPCB_Track;
property ExtensionLineWidth : TCoord
property ExtensionOffset : TCoord
property ExtensionPickGap : TCoord
function FastSetState_XSizeYSize : Boolean;
property FontName : TPCBString
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Italic : Boolean
property LineWidth : TCoord
procedure MoveTextByXY(AX : Integer, AY : Integer);
procedure MoveTextToXY(AX : Integer, AY : Integer);
property PrimitiveLock : Boolean
property Radius : TCoord
procedure References_Add(const r : IDispatch);
property References_Count : Integer
procedure References_Delete(Index : Integer);
procedure References_DeleteLast;
function References_IndexOf(P : IPCB_Primitive, Index : Integer) : Integer;
function References_Validate : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetPrefixIfNeeded;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Sector : Integer
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property Style : TUnitStyle
function Text : IPCB_Text;
property TextDimensionUnit : TDimensionUnit
property TextFont : TFontID
property TextFormat : TPCBString
property TextGap : TCoord
property TextHeight : TCoord
property TextLineWidth : TCoord
property TextPosition : TDimensionTextPosition
property TextPrecision : Integer
property TextPrefix : TPCBString
property TextSuffix : TPCBString
property TextValue : TReal
property TextWidth : TCoord
property TextX : TCoord
property TextY : TCoord
property UseTTFonts : Boolean
property x : TCoord
property X1Location : TCoord
property y : TCoord
property Y1Location : TCoord

## IPCB_Arc (12 unique + inherits IPCB_Primitive)
property EndAngle : TAngle
property EndX : TCoord
property EndY : TCoord
function GetState_StrictHitTest(HitX : Integer, HitY : Integer) : Boolean;
property LineWidth : TCoord
property Radius : TCoord
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property StartAngle : TAngle
property StartX : TCoord
property StartY : TCoord
property XCenter : TCoord
property YCenter : TCoord

## IPCB_ArcContourUtilities (4 members)
function CreateInterfaceList : ISafeInterfaceList;
function PolygonalShapesTouch(const AShapes1 : IPCB_PolygonalShapesWithHoles, const AShapes2 : IPCB_PolygonalShapesWithHoles) : Boolean;
function RebuildShape(const AShape : IPCB_PolygonalShapesWithHoles, out AResultPolygon : IPCB_PolygonalShapesWithHoles) : Boolean;
procedure UnionBatchSet(const APolygons : ISafeInterfaceList, out AResultPolygon : IPCB_PolygonalShapesWithHoles);

## IPCB_AreaCalculation (1 members)
property Area : Double

## IPCB_AreaCalculationBoard (5 members)
property Area : Double
property ComponentsArea : Double
property Density : Double
function GetState_CopperBodyList : IPCB_CopperBodyList;
function GetState_LayerArea(CopperBodyList : IPCB_CopperBodyList, Layer : Integer) : Double;

## IPCB_AreaCalculationManual (2 members)
property Area : Double
property AreaManualMode : Boolean

## IPCB_AuthorInfo (3 members)
property Id : TPCBString
property Source : TPCBString
property Title : TPCBString

## IPCB_AutoTestSupport (1 members)
function InTestMode : Boolean;

## IPCB_Axis (24 members)
procedure ClearGraphicalObjects;
procedure ConfigView(Parameters : WideString);
property DirectionX : Single
property DirectionY : Single
property DirectionZ : Single
function GetDummyBoard : IPCB_Board;
function GetIs3D : Boolean;
function GetIsItemNotFound : Boolean;
function I_ObjectAddress : Pointer;
procedure KeyDown(var Key : Word, Shift : TShiftState);
procedure MouseWheel(Sender : TObject, Shift : TShiftState, WheelDelta : Integer, const MousePos : IDispatch, var Handled : Boolean);
property Name : TPCBString
property Origin : TCoordPoint3D
procedure RefreshView;
procedure Register3DChangedHandler(Is3DChangedHandler : IPCB_ComponentPainter3DChangedHandler);
procedure RegisterGOMouseHoverHandler(GraphicalObjectMouseHoverHandler : IPCB_GOMouseHoverHandler);
procedure SetAllLayersVisibilityState(Visible : Boolean);
procedure SetCamera(LowX : Integer, LowY : Integer, HighX : Integer, HighY : Integer);
procedure SetCameraAngle(LookAtX : Double, LookAtY : Double, LookAtZ : Double, RotationX : Double, RotationY : Double, RotationZ : Double, RotationW : Double, ZoomMultiplier : Double);
procedure SetComponentByHandle(const AComponent : IPCB_Component);
procedure SetComponentByPath(APattern : WideString, ALibraryPath : WideString);
procedure SetDirectXMode;
procedure SetVariantOption(const AVariantOption : IVariantOption);
procedure SetViewRect(LowX : Integer, LowY : Integer, HighX : Integer, HighY : Integer);

## IPCB_BackDrilling (9 members)
property BackDrillSource : Boolean
property BottomBackDrillStopLayer : TV7_Layer
property BottomUnusedStub : TCoord
function GetState_IsBackDrillLayer(Layer : TV6_Layer) : Boolean;
property HoleOversize : TCoord
property IsBackdrill : Boolean
property SourceObject : IPCB_Primitive
property TopBackDrillStopLayer : TV7_Layer
property TopUnusedStub : TCoord

## IPCB_BackDrillingRule (38 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_BackDrillOverSize : Integer;
function GetState_BackDrillOverSizeNegativeTolerance : Integer;
function GetState_BackDrillOverSizePositiveTolerance : Integer;
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_MaxStubLength : Integer;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_UseBottomLayer : Boolean;
function GetState_UseTopLayer : Boolean;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetState_BackDrillOverSize(Value : Integer);
procedure SetState_BackDrillOverSizeNegativeTolerance(Value : Integer);
procedure SetState_BackDrillOverSizePositiveTolerance(Value : Integer);
procedure SetState_MaxStubLength(Value : Integer);
procedure SetState_UseBottomLayer(Value : Boolean);
procedure SetState_UseTopLayer(Value : Boolean);

## IPCB_BackDrillViolation (20 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property StubLength : TCoord
property TopOrBottom : Boolean
property ViolationArea : TCoordRect
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_BaselineDimension (71 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property Angle : TAngle
function Arrow1_Track1(I : Integer) : IPCB_Track;
function Arrow1_Track2(I : Integer) : IPCB_Track;
function Arrow2_Track1(I : Integer) : IPCB_Track;
function Arrow2_Track2(I : Integer) : IPCB_Track;
property ArrowLength : TCoord
property ArrowLineWidth : TCoord
property ArrowPosition : TDimensionArrowPosition
property ArrowSize : TCoord
property Bold : Boolean
property DimensionKind : TDimensionKind
function Extension1_Track(I : Integer) : IPCB_Track;
function Extension2_Track(I : Integer) : IPCB_Track;
property ExtensionLineWidth : TCoord
property ExtensionOffset : TCoord
property ExtensionPickGap : TCoord
function FastSetState_XSizeYSize : Boolean;
property FontName : TPCBString
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Italic : Boolean
function Line_Track1(I : Integer) : IPCB_Track;
function Line_Track2(I : Integer) : IPCB_Track;
property LineWidth : TCoord
procedure MoveTextByXY(AX : Integer, AY : Integer);
procedure MoveTextToXY(AX : Integer, AY : Integer);
property PrimitiveLock : Boolean
procedure References_Add(const r : IDispatch);
property References_Count : Integer
procedure References_Delete(Index : Integer);
procedure References_DeleteLast;
function References_IndexOf(P : IPCB_Primitive, Index : Integer) : Integer;
function References_Validate : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetPrefixIfNeeded;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property Style : TUnitStyle
function Text : IPCB_Text;
property TextDimensionUnit : TDimensionUnit
property TextFont : TFontID
property TextFormat : TPCBString
property TextGap : TCoord
property TextHeight : TCoord
property TextLineWidth : TCoord
procedure TextLocations_Add(const Point : IDispatch);
procedure TextLocations_Clear;
procedure TextLocations_Delete(Index : Integer);
procedure TextLocations_DeleteLast;
property TextLocationsCount : Integer
property TextPosition : TDimensionTextPosition
property TextPrecision : Integer
property TextPrefix : TPCBString
function Texts(I : Integer) : IPCB_Text;
property TextSuffix : TPCBString
property TextValue : TReal
property TextWidth : TCoord
property TextX : TCoord
property TextY : TCoord
property UseTTFonts : Boolean
property x : TCoord
property X1Location : TCoord
property y : TCoord
property Y1Location : TCoord

## IPCB_BendingLine (22 members)
procedure AddRegion(const ARegionName : WideString);
property Angle : TAngle
property BoardRegion : IPCB_BoardRegion
property FoldIndex : Integer
property FromPoint : TCoordPoint
function GetProperty_FromPoint : IDispatch;
function GetProperty_RegionName(AIndex : Integer) : WideString;
function GetProperty_RegionNamesCount : Integer;
function GetProperty_ToPoint : IDispatch;
function I_ObjectAddress : Pointer;
function IsAffectRegion(const ARegionName : WideString) : Boolean;
property Locked : Boolean
procedure MoveByXY(dX : Integer, dY : Integer);
property Name : WideString
property Radius : TCoord
procedure RemoveRegion(const ARegionName : WideString);
property Rotation : TAngle
property Selected : Boolean
procedure SetProperty_FromPoint(const AValue : IDispatch);
procedure SetProperty_ToPoint(const AValue : IDispatch);
procedure SetState_FromToPoints(const AFromPoint : IDispatch, const AToPoint : IDispatch);
property ToPoint : TCoordPoint

## IPCB_BinarySection (27 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage

## IPCB_Board (268 members)
property LayerColor[L: TV6_Layer] : TColorRef
property LayerIsDisplayed[L: Integer] : Boolean
property ChangeProcessor_SystemValid[AProcessorName: string] : Boolean
property DrawMode[OId: TObjectId] : TDrawMode
property LayerIsUsed[L: Integer] : Boolean
property InternalPlaneNetName[L: Integer] : TPCBString
property InSelectionMemory[Index: Integer] : Boolean
property LayerPair[I: Integer] : IPCB_DrillLayerPair
property SelectecObject[I: Integer] : IPCB_Primitive
procedure AddLayerPair(LowLayer : Integer, HighLayer : Integer);
function AddMesh(MeshString : WideString) : Integer;
procedure AddObjectToHighlightObjectList(iPrimitive : IPCB_Primitive);
procedure AddPCBObject(PCBObject : IPCB_Primitive);
function AddPolygonMesh(Shape : IPCB_Contour, z : Integer, Color : Cardinal) : Integer;
property AllowGlobalEdit : Boolean
procedure AnalyzeNet(const ANet : IPCB_Net);
property AutomaticSplitPlanes : Boolean
procedure BeginIgnoreChanges;
procedure BeginModify;
property BigVisibleGridMultFactor : TReal
property BigVisibleGridSize : TReal
property BigVisibleGridUnit : TUnit
property Board : IPCB_Board
property BoardID : Integer
function BoardIterator_Create : IPCB_BoardIterator;
procedure BoardIterator_Destroy(var AIterator : IPCB_BoardIterator);
property BoardLayerSetManager : IPCB_BoardLayerSetManager
property BoardOutline : IPCB_BoardOutline
property BoardVersion : Double
function BoundingRectangle : IDispatch;
function BoundingRectangleChildren : IDispatch;
function BoundingRectangleForPainting : IDispatch;
function BoundingRectangleForSelection : IDispatch;
procedure CancelModify;
function ChooseLocation(var x1 : Integer, var y1 : Integer, Prompt : WideString) : Boolean;
function ChooseRectangleByCorners(Prompt1 : WideString, Prompt2 : WideString, var x1 : Integer, var y1 : Integer, var x2 : Integer, var y2 : Integer) : Boolean;
function ClassNameIsUnique(AObjectClass : IPCB_ObjectClass, AName : WideString) : Boolean;
procedure CleanNet(const ANet : IPCB_Net);
procedure ClearMeshes;
procedure ClearUndoRedo;
property Component : IPCB_Component
property ComponentGridSize : TDouble
property ComponentGridSizeX : TDouble
property ComponentGridSizeY : TDouble
procedure ConnectivelyValidateNets;
function ContextMenuObjectCount(ObjectId : TObjectId) : Integer;
property Coordinate : IPCB_Coordinate
function CreateBoardOutline : IPCB_BoardOutline;
property CurrentLayer : TLayer
property CurrentLayerV6 : TV6_Layer
function DeleteMesh(Id : Integer) : Boolean;
property Descriptor : TPCBString
property Detail : TPCBString
function DifferentialPairNameIsUnique(ADifferentialPair : IPCB_DifferentialPair, AName : WideString) : Boolean;
property Dimension : IPCB_Dimension
procedure DispatchMessage(Source : IPCB_Primitive, Destination : IPCB_Primitive, MessageID : Word, MessageData : IPCB_Primitive);
property DisplayUnit : TUnit
procedure DoRedo;
procedure DoUndo;
property DrawAsPreview : Boolean
property DrawDotGrid : Boolean
property DRCError : Boolean
property DrillLayerPairsCount : Integer
property ECOOptions : IPCB_ECOOptions
function ElectricalLayerIterator : IPCB_LayerObjectIterator;
function ElectricalLayers : IPCB_LayerSet;
procedure EnableAllPrimitives(Enable : Boolean);
property Enabled : Boolean
property Enabled_Direct : Boolean
property Enabled_vComponent : Boolean
property Enabled_vCoordinate : Boolean
property Enabled_vDimension : Boolean
property Enabled_vNet : Boolean
property Enabled_vPolygon : Boolean
property EnableDraw : Boolean
procedure EndIgnoreChanges;
procedure EndModify;
procedure EndUndo;
procedure Export_ToParameters(AParams : PWideChar);
property FileName : TPCBString
function FindDominantRuleForObject(APrimitive : IPCB_Primitive, ARuleKind : TRuleKind) : IPCB_Rule;
function FindDominantRuleForObjectPair(APrimitive1 : IPCB_Primitive, APrimitive2 : IPCB_Primitive, ARuleKind : TRuleKind) : IPCB_Rule;
function FindLinkedBoardLibrary(APrimitive : IPCB_Primitive) : IPCB_PadViaLibrary;
function FindLinkedBoardTemplate(APrimitive : IPCB_Primitive) : IPCB_PadViaTemplate;
procedure FlipXY(Axis : Integer, MirrOp : TMirrorOperation);
function GenerateUniqueID : WideString;
property GerberOptions : IPCB_GerberOptions
procedure GetFlexTransform(x : Integer, y : Integer, P : Pointer);
function GetLastClickedObject(ObjectSet : TObjectSet, Action : TEditingAction) : IPCB_Primitive;
function GetMeshPatchFromPoint(x : Integer, y : Integer, var MeshID : Integer, var PatchIndex0 : Integer, var PatchIndex1 : Integer, var PatchIndex2 : Integer, var IntersectionX : Integer, var IntersectionY : Integer, var IntersectionZ : Integer) : Boolean;
function GetObjectAtCursor(ObjectSet : TObjectSet, LayerSet : TV6_LayerSet, StatusBarText : WideString) : IPCB_Primitive;
function GetObjectAtXYAskUserIfAmbiguous(HitX : Integer, HitY : Integer, ObjectSet : TObjectSet, LayerSet : TV6_LayerSet, Action : TEditingAction) : IPCB_Primitive;
function GetPadViaTemplateForPrimitive(const APrimitive : IPCB_Primitive) : IPCB_PadViaTemplate;
function GetPcbComponentByRefDes(Value : WideString) : IPCB_Component;
function GetPrimitiveCount(AObjSet : TObjectSet, LayerSet : TV6_LayerSet, AMethod : TIterationMethod) : Integer;
function GetState_DesignatorDisplayMode : TDesignatorDisplayMode;
function GetState_LayerPairByPair(LowLay : TV6_Layer, HighLay : TV6_Layer) : IPCB_DrillLayerPair;
function GetState_MainGraphicalView : IPCB_GraphicalView;
function GetState_MeshViewMode(Id : Integer) : TPCBMeshViewMode;
procedure GetState_SplitPlaneNets(NetsList : TStringList);
function GetState_SwitchOutputCapabilityMode : Boolean;
function GetState_ViewConfigAsString(out ConfigType : WideString, out Config : WideString) : Boolean;
function GetState_ViewConfigColor2D(Layer : Integer) : Cardinal;
function GetState_ViewConfigColor3D(Layer : Integer) : Cardinal;
function GetState_ViewConfigOpacity2D(Layer : Integer, ObjectId : TObjectId) : Single;
function GetState_ViewConfigOpacity3D(Layer : Integer) : Single;
procedure GetState_ZTopBottom(out ZTop : Single, out ZBottom : Single);
procedure GraphicallyInvalidate;
function GraphicalView_ViewportRect : IDispatch;
procedure GraphicalView_ZoomOnRect(x1 : Integer, y1 : Integer, x2 : Integer, y2 : Integer);
procedure GraphicalView_ZoomRedraw;
property Handle : TPCBString
function HasServerDocument : Boolean;
procedure HideHoleSymbols;
procedure HidePCBObject(const PCBObject : IPCB_Primitive);
function I_ObjectAddress : Pointer;
property Identifier : TPCBString
property InBoard : Boolean
property InComponent : Boolean
property InCoordinate : Boolean
property Index : Word
property InDimension : Boolean
property InNet : Boolean
property InPolygon : Boolean
property InternalPlane1NetName : TPCBString
property InternalPlane2NetName : TPCBString
property InternalPlane3NetName : TPCBString
property InternalPlane4NetName : TPCBString
function InternalPlaneLayerIterator : IPCB_LayerObjectIterator;
procedure InvalidatePlane(L : TV6_Layer);
procedure InvalidateScopeTester;
procedure InvertPCBObject(const PCBObject : IPCB_Primitive);
property IsAssyTestpoint_Bottom : Boolean
property IsAssyTestpoint_Top : Boolean
property IsElectricalPrim : Boolean
function IsEmptyHoleToleranceValue(Value : Integer) : Boolean;
function IsFreePrimitive : Boolean;
function IsHidden : Boolean;
property IsKeepout : Boolean
property IsPreRoute : Boolean
function IsSaveable(AVer : TAdvPCBFileFormatVersion) : Boolean;
property IsTenting : Boolean
property IsTenting_Bottom : Boolean
property IsTenting_Top : Boolean
property IsTestpoint_Bottom : Boolean
property IsTestpoint_Top : Boolean
property Layer : TLayer
property Layer_V6 : TV6_Layer
function LayerIterator : IPCB_LayerObjectIterator;
function LayerIterator_IncludeNonEditable : IPCB_LayerObjectIterator;
function LayerName(L : Integer) : WideString;
function LayerPositionInSet(ALayerSet : TV6_LayerSet, ALayerObj : IPCB_LayerObject) : Integer;
property LayerStack : IPCB_LayerStack
property LayerStack_V7 : IPCB_LayerStack_V7
procedure LinkToTemplate(const APrimitive : IPCB_Primitive, const ATemplate : IPCB_PadViaTemplate);
function LoadMeshFile(MeshFile : WideString) : Integer;
property MasterLayerStack : IPCB_MasterLayerStack
function MechanicalLayerIterator : IPCB_LayerObjectIterator;
function MechanicalLayers : IPCB_LayerSet;
property MechanicalPairs : IPCB_MechanicalLayerPairs
procedure Mirror(Axis : Integer, MirrOp : TMirrorOperation);
property MiscFlag1 : Boolean
property MiscFlag2 : Boolean
property MiscFlag3 : Boolean
property Moveable : Boolean
procedure MoveByXY(AX : Integer, AY : Integer);
procedure MoveToXY(AX : Integer, AY : Integer);
procedure Navigate_RedrawChangedObjectsInBoard;
property Net : IPCB_Net
function NetNameIsUnique(ANet : IPCB_Net, AName : WideString) : Boolean;
procedure NewUndo;
property ObjectId : TObjectId
property ObjectIDString : TPCBString
property OutputOptions : IPCB_OutputOptions
property PadCacheRobotFlag : Boolean
property PadViaCache : IPCB_PadViaLibrary
property PadViaLibrary : IPCB_PadViaLibrary
property PasteMaskExpansion : TCoord
property PCB3DMovieManager : IPCB_3DMovieManager
property PCBSheet : IPCB_Sheet
property PCBWindow : HWND
property PinPairsManager : IPCB_PinPairsManager
property PlacerOptions : IPCB_AdvancedPlacerOptions
property Polygon : IPCB_Polygon
property PolygonNameTemplate : TPolygonNameTemplates
property PolygonOutline : Boolean
property PowerPlaneClearance : TCoord
property PowerPlaneConnectStyle : TPlaneConnectStyle
property PowerPlaneReliefExpansion : TCoord
property PrimitiveCounter : IPCB_PrimitiveCounter
function PrimPrimDistance(APrimitive1 : IPCB_Primitive, APrimitive2 : IPCB_Primitive) : Integer;
property PrinterOptions : IPCB_PrinterOptions
procedure RebuildBoardOutline(ADefiningLayer : Integer);
procedure RebuildPadCaches;
procedure RebuildSplitBoardRegions(FullRebuild : Boolean);
procedure RecreateHandles;
procedure ReDrawToDC(DC : NativeUInt, PrintKind : Integer, PrintWhat : Integer, const Layers : TV6_LayerSet);
property ReliefAirGap : TCoord
property ReliefConductorWidth : TCoord
property ReliefEntries : Integer
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function Replicate : IPCB_Primitive;
function RequiredParamterSpace : Integer;
procedure RotateBy(Angle : Double);
property RouteToolPathLayer : TLayer
property RoutingOptions : IPCB_BoardRoutingOptions
function RuleNameUnique(ARule : IPCB_Rule, AName : WideString) : Boolean;
function RunBatchDesignRuleCheck(ReportFilename : WideString, DRCReportFormat : TDRCReportFileFormat, DisplayReportFile : LongBool, PublishToWeb : LongBool) : LongBool;
property SelectecObjectCount : Integer
property Selected : Boolean
procedure SelectedObjects_Add(P : IPCB_Primitive);
procedure SelectedObjects_BeginUpdate;
procedure SelectedObjects_Clear;
procedure SelectedObjects_EndUpdate;
function SelectedObjectsCount : Integer;
function SelectNewViewConfiguration(const CurConfigType : WideString, const CurConfig : WideString, out ConfigType : WideString, out Config : WideString) : Boolean;
procedure SetState_DesignatorDisplayMode(AMode : TDesignatorDisplayMode);
procedure SetState_DocumentHasChanged;
procedure SetState_MeshViewMode(Id : Integer, ViewMode : TPCBMeshViewMode);
procedure SetState_Navigate_HighlightObjectList(HighlightMethods : THighlightMethodSet, ClearExisting : Boolean);
procedure SetState_Preview(Enable : Boolean, Color : Cardinal, Opacity : Single, z : Integer, Height : Integer, sx : Single, sy : Single, SZ : Single);
procedure SetState_SaveCurrentStatusOfObjectsInBoard;
procedure SetState_SwitchOutputCapabilityMode(AOutputCapability : Boolean);
function SetState_ViewConfigFromString(const ConfigType : WideString, const Config : WideString) : Boolean;
function SetState_ViewConfigFromString_ForceRebuild(const ConfigType : WideString, const Config : WideString) : Boolean;
procedure SetState_ViewManager_FilterChanging;
procedure ShowHoleSymbols(SymbolType : Integer, SymbolSize : Integer, LayerPairIndex : Integer);
procedure ShowPCBObject(const PCBObject : IPCB_Primitive);
function SignalLayerIterator : IPCB_LayerObjectIterator;
property SnapGridSize : TDouble
property SnapGridSizeX : TDouble
property SnapGridSizeY : TDouble
property SnapGridUnit : TUnit
property SolderMaskExpansion : TCoord
function SpatialIterator_Create : IPCB_SpatialIterator;
procedure SpatialIterator_Destroy(var AIterator : IPCB_SpatialIterator);
procedure SwapLayerPairs;
property TearDrop : Boolean
property TrackGridSize : TDouble
property UnionIndex : Integer
property UniqueId : TPCBString
procedure UnlinkFromTemplate(const APrimitive : IPCB_Primitive);
procedure UpdateBoardOutline;
procedure UpdateCachedVCSRevisionNumberSpecialStrings;
property Used : Boolean
property UserRouted : Boolean
procedure ValidateInvalidPlanes;
procedure ValidateScopeTester;
property ViaGridSize : TDouble
property ViewableObjectID : TViewableObjectID
property ViewConfigDisplaySpecialStrings : Boolean
property ViewConfigIs3D : Boolean
property ViewConfigTopSolderMaskColor3D : TColor
procedure ViewManager_FullUpdate;
procedure ViewManager_GraphicallyInvalidatePrimitive(PCBObject : IPCB_Primitive);
procedure ViewManager_UpdateLayerTabs;
property Viewport : IPCB_Viewport
property VisibleGridMultFactor : TReal
property VisibleGridSize : TReal
property VisibleGridUnit : TUnit
function VisibleLayers : IPCB_LayerSet;
function WindowBoundingRectangle : IDispatch;
property WorldXOrigin : TCoord
property WorldYOrigin : TCoord
property XCursor : TCoord
property XOrigin : TCoord
property YCursor : TCoord
property YOrigin : TCoord

## IPCB_Board3D (279 members)
property LayerColor[L: TV6_Layer] : TColorRef
property LayerIsDisplayed[L: Integer] : Boolean
property ChangeProcessor_SystemValid[AProcessorName: string] : Boolean
property DrawMode[OId: TObjectId] : TDrawMode
property LayerIsUsed[L: Integer] : Boolean
property InternalPlaneNetName[L: Integer] : TPCBString
property InSelectionMemory[Index: Integer] : Boolean
property LayerPair[I: Integer] : IPCB_DrillLayerPair
property SelectecObject[I: Integer] : IPCB_Primitive
procedure AddLayerPair(LowLayer : Integer, HighLayer : Integer);
function AddMesh(MeshString : WideString) : Integer;
procedure AddObjectToHighlightObjectList(iPrimitive : IPCB_Primitive);
procedure AddPCBObject(PCBObject : IPCB_Primitive);
function AddPolygonMesh(Shape : IPCB_Contour, z : Integer, Color : Cardinal) : Integer;
property AllowGlobalEdit : Boolean
procedure AnalyzeNet(const ANet : IPCB_Net);
property AutomaticSplitPlanes : Boolean
procedure BeginIgnoreChanges;
procedure BeginModify;
property BigVisibleGridMultFactor : TReal
property BigVisibleGridSize : TReal
property BigVisibleGridUnit : TUnit
property Board : IPCB_Board
property BoardID : Integer
function BoardIterator_Create : IPCB_BoardIterator;
procedure BoardIterator_Destroy(var AIterator : IPCB_BoardIterator);
property BoardLayerSetManager : IPCB_BoardLayerSetManager
property BoardOutline : IPCB_BoardOutline
property BoardVersion : Double
function BoundingRectangle : IDispatch;
function BoundingRectangleChildren : IDispatch;
function BoundingRectangleForPainting : IDispatch;
function BoundingRectangleForSelection : IDispatch;
property C3DVersion : Cardinal
procedure CancelModify;
function ChooseLocation(var x1 : Integer, var y1 : Integer, Prompt : WideString) : Boolean;
function ChooseRectangleByCorners(Prompt1 : WideString, Prompt2 : WideString, var x1 : Integer, var y1 : Integer, var x2 : Integer, var y2 : Integer) : Boolean;
function ClassNameIsUnique(AObjectClass : IPCB_ObjectClass, AName : WideString) : Boolean;
procedure CleanNet(const ANet : IPCB_Net);
procedure ClearMeshes;
procedure ClearUndoRedo;
property Component : IPCB_Component
property ComponentGridSize : TDouble
property ComponentGridSizeX : TDouble
property ComponentGridSizeY : TDouble
procedure ConnectivelyValidateNets;
function ContextMenuObjectCount(ObjectId : TObjectId) : Integer;
property Coordinate : IPCB_Coordinate
function CreateBoardOutline : IPCB_BoardOutline;
property CurrentLayer : TLayer
property CurrentLayerV6 : TV6_Layer
function DeleteMesh(Id : Integer) : Boolean;
property Descriptor : TPCBString
property Detail : TPCBString
function DifferentialPairNameIsUnique(ADifferentialPair : IPCB_DifferentialPair, AName : WideString) : Boolean;
property Dimension : IPCB_Dimension
procedure DispatchMessage(Source : IPCB_Primitive, Destination : IPCB_Primitive, MessageID : Word, MessageData : IPCB_Primitive);
property DisplayUnit : TUnit
procedure DoRedo;
procedure DoUndo;
property DrawAsPreview : Boolean
property DrawDotGrid : Boolean
property DRCError : Boolean
property DrillLayerPairsCount : Integer
property ECOOptions : IPCB_ECOOptions
function ElectricalLayerIterator : IPCB_LayerObjectIterator;
function ElectricalLayers : IPCB_LayerSet;
procedure EnableAllPrimitives(Enable : Boolean);
property Enabled : Boolean
property Enabled_Direct : Boolean
property Enabled_vComponent : Boolean
property Enabled_vCoordinate : Boolean
property Enabled_vDimension : Boolean
property Enabled_vNet : Boolean
property Enabled_vPolygon : Boolean
property EnableDraw : Boolean
procedure EndIgnoreChanges;
procedure EndModify;
procedure EndUndo;
procedure Export_ToParameters(AParams : PWideChar);
property FileName : TPCBString
function FindDominantRuleForObject(APrimitive : IPCB_Primitive, ARuleKind : TRuleKind) : IPCB_Rule;
function FindDominantRuleForObjectPair(APrimitive1 : IPCB_Primitive, APrimitive2 : IPCB_Primitive, ARuleKind : TRuleKind) : IPCB_Rule;
function FindLinkedBoardLibrary(APrimitive : IPCB_Primitive) : IPCB_PadViaLibrary;
function FindLinkedBoardTemplate(APrimitive : IPCB_Primitive) : IPCB_PadViaTemplate;
procedure FlipXY(Axis : Integer, MirrOp : TMirrorOperation);
function GenerateUniqueID : WideString;
property GerberOptions : IPCB_GerberOptions
function GetDistance(APrimitive1 : IPCB_Primitive, APrimitive2 : IPCB_Primitive) : Double;
procedure GetFlexTransform(x : Integer, y : Integer, P : Pointer);
function GetLastClickedObject(ObjectSet : TObjectSet, Action : TEditingAction) : IPCB_Primitive;
function GetMeshPatchFromPoint(x : Integer, y : Integer, var MeshID : Integer, var PatchIndex0 : Integer, var PatchIndex1 : Integer, var PatchIndex2 : Integer, var IntersectionX : Integer, var IntersectionY : Integer, var IntersectionZ : Integer) : Boolean;
function GetObjectAtCursor(ObjectSet : TObjectSet, LayerSet : TV6_LayerSet, StatusBarText : WideString) : IPCB_Primitive;
function GetObjectAtXYAskUserIfAmbiguous(HitX : Integer, HitY : Integer, ObjectSet : TObjectSet, LayerSet : TV6_LayerSet, Action : TEditingAction) : IPCB_Primitive;
function GetPadViaTemplateForPrimitive(const APrimitive : IPCB_Primitive) : IPCB_PadViaTemplate;
function GetPcbComponentByRefDes(Value : WideString) : IPCB_Component;
function GetPrimitiveCount(AObjSet : TObjectSet, LayerSet : TV6_LayerSet, AMethod : TIterationMethod) : Integer;
function GetState_DesignatorDisplayMode : TDesignatorDisplayMode;
function GetState_LayerPairByPair(LowLay : TV6_Layer, HighLay : TV6_Layer) : IPCB_DrillLayerPair;
function GetState_MainGraphicalView : IPCB_GraphicalView;
function GetState_MeshViewMode(Id : Integer) : TPCBMeshViewMode;
function GetState_SketchesGridManager : IPCB_SketchesGridManager;
procedure GetState_SplitPlaneNets(NetsList : TStringList);
function GetState_SwitchOutputCapabilityMode : Boolean;
function GetState_ViewConfigAsString(out ConfigType : WideString, out Config : WideString) : Boolean;
function GetState_ViewConfigColor2D(Layer : Integer) : Cardinal;
function GetState_ViewConfigColor3D(Layer : Integer) : Cardinal;
function GetState_ViewConfigOpacity2D(Layer : Integer, ObjectId : TObjectId) : Single;
function GetState_ViewConfigOpacity3D(Layer : Integer) : Single;
procedure GetState_ZTopBottom(out ZTop : Single, out ZBottom : Single);
procedure GraphicallyInvalidate;
function GraphicalView_ViewportRect : IDispatch;
procedure GraphicalView_ZoomOnRect(x1 : Integer, y1 : Integer, x2 : Integer, y2 : Integer);
procedure GraphicalView_ZoomRedraw;
property Handle : TPCBString
function HasServerDocument : Boolean;
function HaveClearanceRuleViolation(const APrimitive1 : IPCB_Primitive, const APrimitive2 : IPCB_Primitive, const AMinClearance : Double) : Boolean;
procedure HideHoleSymbols;
procedure HidePCBObject(const PCBObject : IPCB_Primitive);
function I_ObjectAddress : Pointer;
property Identifier : TPCBString
property InBoard : Boolean
property InComponent : Boolean
property InCoordinate : Boolean
property Index : Word
property InDimension : Boolean
property InNet : Boolean
property InPolygon : Boolean
property InternalPlane1NetName : TPCBString
property InternalPlane2NetName : TPCBString
property InternalPlane3NetName : TPCBString
property InternalPlane4NetName : TPCBString
function InternalPlaneLayerIterator : IPCB_LayerObjectIterator;
procedure InvalidatePlane(L : TV6_Layer);
procedure InvalidateScopeTester;
procedure InvertPCBObject(const PCBObject : IPCB_Primitive);
function Is3DRouted : Boolean;
property IsAssyTestpoint_Bottom : Boolean
property IsAssyTestpoint_Top : Boolean
property IsElectricalPrim : Boolean
function IsEmptyHoleToleranceValue(Value : Integer) : Boolean;
function IsFreePrimitive : Boolean;
function IsHidden : Boolean;
property IsKeepout : Boolean
property IsPreRoute : Boolean
function IsSaveable(AVer : TAdvPCBFileFormatVersion) : Boolean;
property IsTenting : Boolean
property IsTenting_Bottom : Boolean
property IsTenting_Top : Boolean
property IsTestpoint_Bottom : Boolean
property IsTestpoint_Top : Boolean
property Layer : TLayer
property Layer_V6 : TV6_Layer
function LayerIterator : IPCB_LayerObjectIterator;
function LayerIterator_IncludeNonEditable : IPCB_LayerObjectIterator;
function LayerName(L : Integer) : WideString;
function LayerPositionInSet(ALayerSet : TV6_LayerSet, ALayerObj : IPCB_LayerObject) : Integer;
property LayerStack : IPCB_LayerStack
property LayerStack_V7 : IPCB_LayerStack_V7
procedure LinkToTemplate(const APrimitive : IPCB_Primitive, const ATemplate : IPCB_PadViaTemplate);
function LoadMeshFile(MeshFile : WideString) : Integer;
property MasterLayerStack : IPCB_MasterLayerStack
function MechanicalLayerIterator : IPCB_LayerObjectIterator;
function MechanicalLayers : IPCB_LayerSet;
property MechanicalPairs : IPCB_MechanicalLayerPairs
procedure Mirror(Axis : Integer, MirrOp : TMirrorOperation);
property MiscFlag1 : Boolean
property MiscFlag2 : Boolean
property MiscFlag3 : Boolean
property Moveable : Boolean
procedure MoveByXY(AX : Integer, AY : Integer);
procedure MoveToXY(AX : Integer, AY : Integer);
procedure Navigate_RedrawChangedObjectsInBoard;
property Net : IPCB_Net
function NetNameIsUnique(ANet : IPCB_Net, AName : WideString) : Boolean;
procedure NewUndo;
property ObjectId : TObjectId
property ObjectIDString : TPCBString
property OutputOptions : IPCB_OutputOptions
property PadCacheRobotFlag : Boolean
property PadViaCache : IPCB_PadViaLibrary
property PadViaLibrary : IPCB_PadViaLibrary
property PasteMaskExpansion : TCoord
property PCB3DMovieManager : IPCB_3DMovieManager
property PCBSheet : IPCB_Sheet
property PCBWindow : HWND
property PinPairsManager : IPCB_PinPairsManager
property PlacerOptions : IPCB_AdvancedPlacerOptions
property Polygon : IPCB_Polygon
property PolygonNameTemplate : TPolygonNameTemplates
property PolygonOutline : Boolean
property PowerPlaneClearance : TCoord
property PowerPlaneConnectStyle : TPlaneConnectStyle
property PowerPlaneReliefExpansion : TCoord
property PrimitiveCounter : IPCB_PrimitiveCounter
function PrimPrimDistance(APrimitive1 : IPCB_Primitive, APrimitive2 : IPCB_Primitive) : Integer;
property PrinterOptions : IPCB_PrinterOptions
procedure RebuildBoardOutline(ADefiningLayer : Integer);
procedure RebuildPadCaches;
procedure RebuildSplitBoardRegions(FullRebuild : Boolean);
procedure RecreateHandles;
procedure ReDrawToDC(DC : NativeUInt, PrintKind : Integer, PrintWhat : Integer, const Layers : TV6_LayerSet);
property ReliefAirGap : TCoord
property ReliefConductorWidth : TCoord
property ReliefEntries : Integer
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function Replicate : IPCB_Primitive;
function RequiredParamterSpace : Integer;
procedure RotateBy(Angle : Double);
property RouteBody : IUnknown
procedure RouteBody_GetSurfaceSource(var AType : Boolean, const AStream : IStream, const ACasheStream : IStream, var AC3DVersion : Cardinal);
procedure RouteBody_SetSurfaceSource(const AType : Boolean, const AStream : IStream, const ACasheStream : IStream, const AC3DVersion : Cardinal);
function RouteBodyPlacementBox : IDispatch;
property RouteCore : IUnknown
property RouteToolPathLayer : TLayer
property RoutingOptions : IPCB_BoardRoutingOptions
function RuleNameUnique(ARule : IPCB_Rule, AName : WideString) : Boolean;
function RunBatchDesignRuleCheck(ReportFilename : WideString, DRCReportFormat : TDRCReportFileFormat, DisplayReportFile : LongBool, PublishToWeb : LongBool) : LongBool;
property SelectecObjectCount : Integer
property Selected : Boolean
procedure SelectedObjects_Add(P : IPCB_Primitive);
procedure SelectedObjects_BeginUpdate;
procedure SelectedObjects_Clear;
procedure SelectedObjects_EndUpdate;
function SelectedObjectsCount : Integer;
function SelectNewViewConfiguration(const CurConfigType : WideString, const CurConfig : WideString, out ConfigType : WideString, out Config : WideString) : Boolean;
procedure SetState_DesignatorDisplayMode(AMode : TDesignatorDisplayMode);
procedure SetState_DocumentHasChanged;
procedure SetState_MeshViewMode(Id : Integer, ViewMode : TPCBMeshViewMode);
procedure SetState_Navigate_HighlightObjectList(HighlightMethods : THighlightMethodSet, ClearExisting : Boolean);
procedure SetState_Preview(Enable : Boolean, Color : Cardinal, Opacity : Single, z : Integer, Height : Integer, sx : Single, sy : Single, SZ : Single);
procedure SetState_SaveCurrentStatusOfObjectsInBoard;
procedure SetState_SwitchOutputCapabilityMode(AOutputCapability : Boolean);
function SetState_ViewConfigFromString(const ConfigType : WideString, const Config : WideString) : Boolean;
function SetState_ViewConfigFromString_ForceRebuild(const ConfigType : WideString, const Config : WideString) : Boolean;
procedure SetState_ViewManager_FilterChanging;
procedure ShowHoleSymbols(SymbolType : Integer, SymbolSize : Integer, LayerPairIndex : Integer);
procedure ShowPCBObject(const PCBObject : IPCB_Primitive);
function SignalLayerIterator : IPCB_LayerObjectIterator;
property SnapGridSize : TDouble
property SnapGridSizeX : TDouble
property SnapGridSizeY : TDouble
property SnapGridUnit : TUnit
property SolderMaskExpansion : TCoord
function SpatialIterator_Create : IPCB_SpatialIterator;
procedure SpatialIterator_Destroy(var AIterator : IPCB_SpatialIterator);
property SubstrateFileName : TPCBString
procedure SwapLayerPairs;
property TearDrop : Boolean
property TrackGridSize : TDouble
property UnionIndex : Integer
property UniqueId : TPCBString
procedure UnlinkFromTemplate(const APrimitive : IPCB_Primitive);
procedure UpdateBoardOutline;
procedure UpdateCachedVCSRevisionNumberSpecialStrings;
property Used : Boolean
property UserRouted : Boolean
procedure ValidateInvalidPlanes;
procedure ValidateScopeTester;
property ViaGridSize : TDouble
property ViewableObjectID : TViewableObjectID
property ViewConfigDisplaySpecialStrings : Boolean
property ViewConfigIs3D : Boolean
property ViewConfigTopSolderMaskColor3D : TColor
procedure ViewManager_FullUpdate;
procedure ViewManager_GraphicallyInvalidatePrimitive(PCBObject : IPCB_Primitive);
procedure ViewManager_UpdateLayerTabs;
property Viewport : IPCB_Viewport
property VisibleGridMultFactor : TReal
property VisibleGridSize : TReal
property VisibleGridUnit : TUnit
function VisibleLayers : IPCB_LayerSet;
function WindowBoundingRectangle : IDispatch;
property WorldXOrigin : TCoord
property WorldYOrigin : TCoord
property XCursor : TCoord
property XOrigin : TCoord
property YCursor : TCoord
property YOrigin : TCoord

## IPCB_Board3DModelExporter (34 members)
procedure ExportBoard3DModel(const FileName : string, Format : TBoard3DModelExportFormat, Board : IPCB_Board, Project : IProject);
procedure ExportBoard3DModelToOCCDoc(OccDoc : IOCCDocument, Board : IPCB_Board, Project : IProject);
function GetCopperBodyList(Board : IPCB_Board, Options : Integer, MaxVertexPerBody : Integer) : IPCB_CopperBodyList;
function GetCopperBodyList2(Board : IPCB_Board, Options : Integer) : IPCB_CopperBodyList;
function GetState_CanSelectPrimitives : Boolean;
function GetState_ComponentSuffix : string;
function GetState_ComponentSuffixType : TBoard3DModelExportComponentSuffix;
function GetState_ExportComponentOptions : TBoard3DModelExportComponentOptions;
function GetState_ExportCopperLayer : Integer;
function GetState_ExportCopperOption : TBoard3DModelExportCopperOptions;
function GetState_ExportFoldedBoard : Boolean;
function GetState_ExportFoldedBoardRate : Integer;
function GetState_ExportHolesOption : TBoard3DModelExportHolesOptions;
function GetState_ExportModelsOption : TBoard3DModelExportModelsOptions;
function GetState_ExportPadAndViaBarrelsOnly : Boolean;
function GetState_IncludeCoverLayer : Boolean;
function GetState_IncludeElectricalPadHoles : Boolean;
function GetState_IncludeFreePadHoles : Boolean;
function GetState_IncludeMechanicalPadHoles : Boolean;
procedure SetState_CanSelectPrimitives(Value : Boolean);
procedure SetState_ComponentSuffix(Value : string);
procedure SetState_ComponentSuffixType(Value : TBoard3DModelExportComponentSuffix);
procedure SetState_ExportComponentOptions(Value : TBoard3DModelExportComponentOptions);
procedure SetState_ExportCopperLayer(Value : Integer);
procedure SetState_ExportCopperOption(Value : TBoard3DModelExportCopperOptions);
procedure SetState_ExportFoldedBoard(Value : Boolean);
procedure SetState_ExportFoldedBoardRate(Value : Integer);
procedure SetState_ExportHolesOption(Value : TBoard3DModelExportHolesOptions);
procedure SetState_ExportModelsOption(Value : TBoard3DModelExportModelsOptions);
procedure SetState_ExportPadAndViaBarrelsOnly(Value : Boolean);
procedure SetState_IncludeCoverLayer(Value : Boolean);
procedure SetState_IncludeElectricalPadHoles(Value : Boolean);
procedure SetState_IncludeFreePadHoles(Value : Boolean);
procedure SetState_IncludeMechanicalPadHoles(Value : Boolean);

## IPCB_BoardBinarySection (28 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function Found_ManualSplitPlanes : Boolean;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage

## IPCB_BoardCollection (5 members)
property Boards[AIndex: Integer] : IPCB_Board
procedure AddBoard(Board : IPCB_Board);
procedure Clear;
property Count : Integer
procedure RemoveBoard(Board : IPCB_Board);

## IPCB_BoardConstraintManager (4 members)
procedure AddConstraintManagerExtraData(const ASerializedData : WideString);
procedure ClearConstraintManagerExtraDatas;
function GetState_ConstraintManagerExtraData(const AIndex : Integer) : WideString;
function GetState_ConstraintManagerExtraDataCount : Integer;

## IPCB_BoardEx (61 members)
function AddLayerPairEx2(ALowLayer : Integer, AHighLayer : Integer, ADrillLayerPairType : TDrillLayerPairType, const ACounterHoleParams : IPCB_CounterHoleParams) : Integer;
function AddMeshToLayer(MeshString : WideString, Layer : Integer) : Integer;
function AddPolygonMeshToLayer(Shape : IPCB_Contour, z : Integer, Color : Cardinal, Layer : Integer) : Integer;
function BeginReadOnlyMode : Boolean;
property DesignVariants : IPCB_DesignVariants
function Drillmanager_GetDrillSymbolIndex(APrimitive : IPCB_Primitive) : Integer;
function Drillmanager_GetUseFields : TClassificationFieldSet;
function EndReadOnlyMode : Boolean;
procedure ExportToFile(const AFileName : WideString, const AFormat : WideString);
property FullComponents : IPCB_FullComponents
function GetDialogsManager : IPCB_DialogsManager;
function GetExpressionManager : IPCB_ExpressionManager;
function GetSignalDelayForPrim(APrimitive : IPCB_Primitive) : Double;
function GetSignalDelayPerMeter(APrimitive : IPCB_Primitive) : Double;
function GetState_AutoTraceTuningOptions : IPCB_AccordionMakerSettings;
function GetState_BoardRegionManager : IPCB_BoardRegionsManager;
function GetState_ConstraintManagerData : WideString;
function GetState_CounterHoleParamsPresetList : IPCB_CounterHoleParamsPresetList;
function GetState_GridManager : IPCB_GridManager;
function GetState_StateId : Cardinal;
function GetState_TeardropOptions : ITeardropOptions;
function GetState_UseConstraintManager : Boolean;
function GetViewConfigurationByTypeAsString(AType : WideString, out Config : WideString) : Boolean;
function GetVoidsOnPlaneLayer(ALayer : Integer) : IPCB_Polygon;
function HasClearanceMatrix : Boolean;
property InSingleLayerMode : Boolean
procedure InvalidatePadCaches;
property IsLocked : Boolean
function IsPlaneLayerIsPoured(ALayer : Integer) : Boolean;
function IsReadOnly : Boolean;
procedure LoadFromASCIIFile(AFileName : WideString);
procedure LoadFromCMPCBFile(AFileName : WideString);
procedure LoadFromCSPCBFile(AFileName : WideString);
procedure LoadFromJSONFile(AFileName : WideString);
procedure LoadFromPCBFile(AFileName : WideString);
procedure LoadFromPCBLibraryFile(AFileName : WideString, ArrangeComponents : Boolean);
function LoadRulesFromFile(AFileName : WideString) : TRuleSet;
function PlaceAssemblyDesignators(UpdateExisting : Boolean) : Integer;
procedure PlaceViaStructureFeaturesGeometry;
procedure RemoveAllLayerPairs;
procedure RemoveNonExistedCoverlayOutlines;
procedure RemoveViaStructureFeaturesGeometry;
function RenderToPNG(const OutputFileName : WideString, DPI : Integer, top : Boolean, const ConfigType : WideString, const Config : WideString) : HRESULT;
procedure ResetDelaysCalculator;
function SaveRulesToFile(AFileName : WideString) : Boolean;
procedure SaveToASCIIFile(AFileName : WideString);
procedure SaveToCMPCBFile(AFileName : WideString);
procedure SaveToCSPCBFile(AFileName : WideString);
procedure SaveToJSONFile(AFileName : WideString);
procedure SaveToPCBFile(AFileName : WideString);
procedure SaveToPCBLibraryFile(AFileName : WideString);
property SelectedObjects_FilterDisabled : Boolean
procedure SetState_ConstraintManagerData(Value : WideString);
procedure SetState_MechanicalLayerKindMapping(const Value : TArray<RT_PCB.TMechanicalLayerToKindItem>);
procedure SetState_Navigate_HighlightObjectListEx(HighlightMethods : THighlightMethodSet, ClearExisting : Boolean, HighBoardOutline : Boolean, ClearExistingHighlights : Boolean, FullUpdate : Boolean);
procedure SetState_UseConstraintManager(AValue : Boolean);
property SingleLayer : TLayer
procedure SortRulesByPriority;
property ViaManager : IPCB_ViaManager
property ViaStructureManager : IPCB_ViaStructureManager
property ZoomOnViolations : Boolean

## IPCB_BoardEx2 (29 members)
procedure AutoCreateLayerPairsFromPrimitives;
procedure ClearPullBackPrimitives;
function CollectZAxisClearanceSupposedPrimitives(const ALayer : Integer) : IPCB_PrimitiveList;
property CustomShapeCompatibilityMode : Boolean
procedure DisableAllProcessing;
procedure DowngradeRF20;
property DrillLayerPairManager : IPCB_DrillLayerPairManager
procedure EnableAllProcessing(AUpdateAll : Boolean);
function FileName_Display : WideString;
function GetBoardRegionAtPoint(AX : Integer, AY : Integer) : IPCB_BoardRegion;
function GetBoardRegionForPrimitive(APrimitive : IPCB_Primitive) : IPCB_BoardRegion;
function GetHealthCheckManager : IPCB_HealthCheckManager;
function GetLayerStackAtPoint(AX : Integer, AY : Integer) : IPCB_LayerStack;
function GetLayerStackForPrimitive(APrimitive : IPCB_Primitive) : IPCB_LayerStack;
function GetMeshPatchFromPointWithLayer(x : Integer, y : Integer, var MeshID : Integer, var PatchIndex0 : Integer, var PatchIndex1 : Integer, var PatchIndex2 : Integer, var IntersectionX : Integer, var IntersectionY : Integer, var IntersectionZ : Integer, ALayer : Integer) : Boolean;
function GetZAxisClearanceGeometry(const APrimitive : IPCB_Primitive, const ALayer : Integer) : IPCB_GeometricPolygon;
function HasShelvedOrModifiedPolygons : Boolean;
procedure InitializeHealthCheckManager;
function IsRigidFlex : Boolean;
function IsSimpleRigidFlexCompatible : Boolean;
function ManualRoute_LastViaStyle : IPCB_ViaStyleParams;
procedure RepourAllPolygons;
property RigidFlexAdvanced : Boolean
property SeparateComponentLayers : Boolean
procedure SetState_ExportFullGeometry(AValue : Boolean);
property SilkscreenClipperSettings : IPCB_SilkscreenClipperSettings
function TempUseSubstackRules(AValue : Boolean) : IInterface;
procedure ViewManager_Disable;
procedure ViewManager_Enable(AUpdateAll : Boolean);

## IPCB_BoardEx3 (15 members)
function AddMeshObject(const MeshObject : IPCB_MeshObject) : Integer;
function AddMeshObjectToLayer(const MeshObject : IPCB_MeshObject, Layer : Integer) : Integer;
function CreateNewConnectivityGraph : IPCB_ConnectivityGraph;
function GetBaseVCSBoard : IPCB_Board;
function GetBoardIsBeingMerged : Boolean;
function GetCurrentConnectivityGraph : IPCB_ConnectivityGraph;
function GetLastRemoteBoard : IPCB_Board;
function GetLastRemoteBoardRevisionInfo : IDispatch;
function GetRemoteBoardRevisionInfo(const Revision : WideString) : IDispatch;
function GetState_SystemValid2(const AProcessorName : WideString) : Boolean;
function GuidsLoadedFromFile : Boolean;
procedure InitializeBoard;
procedure SetBoardIsBeingMerged(Value : Boolean);
procedure SetSkipRebuldingSplitPlanesAfterLoad(Value : Boolean);
procedure SetState_SystemValid2(const AProcessorName : WideString, AValid : Boolean);

## IPCB_BoardIterator (12 members)
procedure AddFilter_AllLayers;
procedure AddFilter_Area(x1 : Integer, y1 : Integer, x2 : Integer, y2 : Integer);
procedure AddFilter_IPCB_LayerSet(ALayerSet : IPCB_LayerSet);
procedure AddFilter_LayerSet(ALayerSet : TV6_LayerSet);
procedure AddFilter_LayerSetA(ALayerSet : Integer);
procedure AddFilter_Method(AMethod : TIterationMethod);
procedure AddFilter_ObjectSet(AObjectSet : TObjectSet);
procedure AddFilter_ProcessSpecialLayers;
function FirstPCBObject : IPCB_Primitive;
function I_ObjectAddress : Pointer;
function NextPCBObject : IPCB_Primitive;
procedure SetState_FilterAll;

## IPCB_BoardLayerSet (2 members)
property Layers : IPCB_LayerSet
property Name : WideString

## IPCB_BoardLayerSetManager (4 members)
property BoardLayerSetByName[ASetName: WideString] : IPCB_BoardLayerSet
property BoardLayerSetByIndex[AIndex: Integer] : IPCB_BoardLayerSet
property AllSetsCount : Integer
function MakeCurrent(const APos : Integer) : Integer;

## IPCB_BoardOutline (173 members)
property LayerUsed[L: TV6_Layer] : Boolean
property Segments[I: Integer] : TPolySegment
property InSelectionMemory[Index: Integer] : Boolean
function AcceptsLayer(Layer : TV6_Layer) : Boolean;
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property AllowGlobalEdit : Boolean
property ArcApproximation : TCoord
property ArcPourMode : Boolean
property AreaSize : Double
property AutoGenerateName : Boolean
property AvoidObsticles : Boolean
procedure BeginModify;
property Board : IPCB_Board
function BoardOutline_GeometricPolygon : IPCB_GeometricPolygon;
property BorderWidth : TCoord
function BoundingRectangle : IDispatch;
function BoundingRectangleChildren : IDispatch;
function BoundingRectangleForPainting : IDispatch;
function BoundingRectangleForSelection : IDispatch;
function BuildFromObjects_ReturnGeometricPolygon(ALayer : Integer) : IPCB_GeometricPolygon;
procedure CancelModify;
property ClipAcuteCorners : Boolean
function ClipWithPolyRegShapes(AUseHolesFromViaPad : Boolean, AUseEmbedded : Boolean) : IPCB_PolyRegShapesClipResult;
property Component : IPCB_Component
property Coordinate : IPCB_Coordinate
procedure CopperPourValidate;
function CreateBendingLine(const AFromPoint : IDispatch, const AToPoint : IDispatch, AFoldIndex : Integer, ARadius : Integer, AAngle : Double) : IPCB_BendingLine;
function CreateSplitLine(const AFromPoint : IDispatch, const AToPoint : IDispatch) : IPCB_SplitBoardRegionLine;
procedure DeleteBendingLine(ABendingLine : IPCB_BendingLine);
procedure DeleteSplitLine(ASplitLine : IPCB_SplitBoardRegionLine);
property Descriptor : TPCBString
property Detail : TPCBString
property Dimension : IPCB_Dimension
property DrawAsPreview : Boolean
property DrawDeadCopper : Boolean
property DrawRemovedIslands : Boolean
property DrawRemovedNecks : Boolean
property DRCError : Boolean
property Enabled : Boolean
property Enabled_Direct : Boolean
property Enabled_vComponent : Boolean
property Enabled_vCoordinate : Boolean
property Enabled_vDimension : Boolean
property Enabled_vNet : Boolean
property Enabled_vPolygon : Boolean
property EnableDraw : Boolean
procedure EndModify;
property ExpandOutline : Boolean
procedure Export_ToParameters(AParams : PWideChar);
function FastSetState_XSizeYSize : Boolean;
procedure FindIntersectedRegions(ABendingLine : IPCB_BendingLine);
procedure FlipXY(Axis : Integer, MirrOp : TMirrorOperation);
procedure FreePrimitives;
function GetDefaultName : WideString;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GetState_BendingLine(AIndex : Integer) : IPCB_BendingLine;
function GetState_BendingLinesCount : Integer;
function GetState_CopperPourInvalid : Boolean;
function GetState_DrawSplitLines : Boolean;
function GetState_HitPrimitive(APrimitive : IPCB_Primitive) : Boolean;
function GetState_InRepour : Boolean;
function GetState_IntersectedRegionName(AIndex : Integer) : WideString;
function GetState_SelectedBendingLine : IPCB_BendingLine;
function GetState_SplitLine(AIndex : Integer) : IPCB_SplitBoardRegionLine;
function GetState_SplitLineCount : Integer;
function GetState_StrictHitTest(HitX : Integer, HitY : Integer) : Boolean;
procedure GraphicallyInvalidate;
property Grid : TCoord
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
procedure GrowPolyshape(ADist : Integer);
property Handle : TPCBString
function I_ObjectAddress : Pointer;
property Identifier : TPCBString
property IgnoreViolations : Boolean
property InBoard : Boolean
property InComponent : Boolean
property InCoordinate : Boolean
property Index : Word
property InDimension : Boolean
property InNet : Boolean
property InPolygon : Boolean
function IntersectedRegionsCount : Integer;
procedure Invalidate;
procedure InvalidateBoardRegions;
procedure InvalidatePlane(Layer : TV6_Layer);
property IsAssyTestpoint_Bottom : Boolean
property IsAssyTestpoint_Top : Boolean
property IsElectricalPrim : Boolean
function IsFreePrimitive : Boolean;
function IsHidden : Boolean;
property IsKeepout : Boolean
property IslandAreaThreshold : Double
property IsPreRoute : Boolean
function IsSaveable(AVer : TAdvPCBFileFormatVersion) : Boolean;
property IsTenting : Boolean
property IsTenting_Bottom : Boolean
property IsTenting_Top : Boolean
property IsTestpoint_Bottom : Boolean
property IsTestpoint_Top : Boolean
property Layer : TLayer
property Layer_V6 : TV6_Layer
property MinTrack : TCoord
procedure Mirror(Axis : Integer, MirrOp : TMirrorOperation);
property MiscFlag1 : Boolean
property MiscFlag2 : Boolean
property MiscFlag3 : Boolean
property MitreCorners : Boolean
property Moveable : Boolean
procedure MoveByXY(AX : Integer, AY : Integer);
procedure MoveToXY(AX : Integer, AY : Integer);
property Name : TPCBString
property NeckWidthThreshold : TCoord
property Net : IPCB_Net
property ObeyPolygonCutout : Boolean
property ObjectId : TObjectId
property ObjectIDString : TPCBString
property OptimalVoidRotation : Boolean
property PadCacheRobotFlag : Boolean
property PasteMaskExpansion : TCoord
property PointCount : Integer
function PointInPolygon(HitX : Integer, HitY : Integer) : Boolean;
property Polygon : IPCB_Polygon
property PolygonOutline : Boolean
property PolygonType : TPolygonType
function PolygonWithHoles_GeometricPolygon(AObjectSet : TObjectSet) : IPCB_GeometricPolygon;
property PolyHatchStyle : TPolyHatchStyle
property Poured : Boolean
property PourIndex : Integer
property PourOver : TPolygonPourOver
property PowerPlaneClearance : TCoord
property PowerPlaneConnectStyle : TPlaneConnectStyle
property PowerPlaneReliefExpansion : TCoord
function PrimitiveInsidePoly(APrimitive : IPCB_Primitive) : Boolean;
property PrimitiveLock : Boolean
procedure Rebuild;
procedure RebuildRegion(UseCutouts : Boolean, UseEmbeddedBoardCutouts : Boolean, UseRouteToolLayer : Boolean);
property ReliefAirGap : TCoord
property ReliefConductorWidth : TCoord
property ReliefEntries : Integer
property RemoveDead : Boolean
property RemoveIslandsByArea : Boolean
property RemoveNarrowNecks : Boolean
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function Replicate : IPCB_Primitive;
function ReplicateWithChildren : IPCB_Primitive;
function RequiredParamterSpace : Integer;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure RotateBy(Angle : Double);
property Selected : Boolean
procedure Set3DLock(AValue : Boolean, const APrefferedRegion : IPCB_BoardRegion);
procedure SetState_AutoNameInvalidate;
procedure SetState_CopperPourInvalid;
procedure SetState_CopperPourValid;
procedure SetState_LayersUsedArray;
procedure SetState_Preview(Enable : Boolean, Color : Cardinal, Opacity : Single, z : Integer, Height : Integer, sx : Single, sy : Single, SZ : Single);
procedure SetState_SelectedBendingLine(const AValue : IPCB_BendingLine);
function SetState_XSizeYSize : Boolean;
property SolderMaskExpansion : TCoord
procedure SwapLayerPairs;
property TearDrop : Boolean
property TrackSize : TCoord
property UnionIndex : Integer
property UniqueId : TPCBString
property Used : Boolean
property UseOctagons : Boolean
property UserRouted : Boolean
procedure Validate;
property ViewableObjectID : TViewableObjectID
property x : TCoord
function xBoundingRectangle : IDispatch;
property y : TCoord

## IPCB_BoardOutlineClearanceConstraint (30 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property Gap : TCoord
function GetClearance(const Obj1 : TObjectClearanceId, const Obj2 : TObjectClearanceId) : Integer;
function GetObstacleTracks(const APrimitive : IPCB_Primitive) : IPCB_Group;
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetClearance(const Obj1 : TObjectClearanceId, const Obj2 : TObjectClearanceId, Value : Integer);

## IPCB_BoardOutlineClearanceViolation (21 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property PrimitiveID1 : TObjectClearanceId
property PrimitiveID2 : TObjectClearanceId
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property ViolationPt1 : TCoordPoint
property ViolationPt2 : TCoordPoint
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_BoardRegion (25 unique + inherits IPCB_Primitive)
function AddBendingLine(const AFromPoint : IDispatch, const AToPoint : IDispatch, AFoldIndex : Integer, ARadius : Integer, AAngle : Double) : IPCB_BendingLine;
procedure AddCoverlayRegions;
property Area : Int64
property BendingLinesCount : Integer
property CavityHeight : TCoord
function CreateBendingLine(const AFromPoint : IDispatch, const AToPoint : IDispatch, AFoldIndex : Integer, ARadius : Integer, AAngle : Double) : IPCB_BendingLine;
property CustomCoverlays : Boolean
procedure DeleteBendingLine(ABendingLine : IPCB_BendingLine);
property GeometricPolygon : IPCB_GeometricPolygon
function GetBendingZoneShape : IPCB_PolygonalShapesWithHoles;
function GetShapeWithHoles : IPCB_PolygonalShapesWithHoles;
property HoleCount : Integer
function IsAddCoverlayRegionsAvailable : Boolean;
function IsRemoveCoverlayRegionsAvailable : Boolean;
function IsSimpleRegion : Boolean;
property Kind : TRegionKind
property LayerStack : IPCB_LayerStack
property LayerStackID : TPCBString
property Locked3D : Boolean
property MainContour : IPCB_Contour
property Name : TPCBString
property Priority : Integer
procedure RemoveCoverlayRegions;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetOutlineContour(Contour : IPCB_Contour);

## IPCB_BoardRegionsManager (6 members)
property BoardRegion[AIndex: Integer] : IPCB_BoardRegion
property BoardRegionCount : Integer
procedure CleanAll;
function CreateBoardRegion : IPCB_BoardRegion;
function GenerateNameOfBoardRegion : WideString;
function GetProperty_BoardRegionByName(AName : WideString) : IPCB_BoardRegion;

## IPCB_BoardRegionsSection (28 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
function NeedsToProcess : Boolean;
procedure OffsetIndexForSave(Offset : Integer);
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage

## IPCB_BoardRoutingOptions (4 members)
property UseLayer[Id: Cardinal] : Boolean
property Values[Key: WideString] : TPCBString
procedure Clear;
property ShowSignalLayersOnly : Boolean

## IPCB_BoardState (1 members)
function GetState_Timestamp : Cardinal;

## IPCB_BoardUnionManager (16 members)
procedure AddPrimitiveToUnion(AUnionIndex : Integer, APrimitive : IPCB_Primitive);
function CreateSmartUnion(ASmartUnionObjectType : TSmartUnionObjectType) : IPCB_SmartUnionObject;
procedure DefineNameForUnion(AUnionIndex : Integer, const AName : WideString);
procedure DirectAddPrimitiveToUnion(AUnionIndex : Integer, APrimitive : IPCB_Primitive);
procedure DirectAddPrimitiveToUnion2(AUnionIndex : Integer, APrimitive : IPCB_Primitive, AUnionType : TSmartUnionObjectType);
function FindUnusedUnionIndex : Integer;
function GetSmartUnionByIndex(const UnionIndex : Integer) : IPCB_SmartUnionObject;
function GetState_UnionCount : Integer;
function GetState_Unions(AIndex : Integer) : IPCB_Union;
function GetState_UnionsByUnionIndex(AUnionIndex : Integer) : IPCB_Union;
function GetUnusedUnionIndexForSmartUnion(const AUnionID : TSmartUnionObjectType) : Integer;
function IsSimpleUnion(AUnionIndex : Integer) : Boolean;
procedure RemoveSmartUnion(const ASmartUnion : IPCB_SmartUnionObject);
procedure SetUnionFeatureBooleanValue(AUnionIndex : Integer, AFeature : TUnionFeatures, AValue : Boolean);
procedure SetUnionFeatureIntegerValue(AUnionIndex : Integer, AFeature : TUnionFeatures, AValue : Integer);
procedure SetUnionFeatureStringValue(AUnionIndex : Integer, AFeature : TUnionFeatures, const AValue : WideString);

## IPCB_BoardUnionManager2 (23 members)
procedure AddPrimitiveToUnion(AUnionIndex : Integer, APrimitive : IPCB_Primitive);
procedure CreateEmptyUnion(AUnionType : TSmartUnionObjectType, AUnionIndex : Integer, const AName : WideString);
function CreateSmartUnion(ASmartUnionObjectType : TSmartUnionObjectType) : IPCB_SmartUnionObject;
procedure DefineNameForUnion(AUnionIndex : Integer, const AName : WideString);
procedure DirectAddPrimitiveToUnion(AUnionIndex : Integer, APrimitive : IPCB_Primitive);
procedure DirectAddPrimitiveToUnion2(AUnionIndex : Integer, APrimitive : IPCB_Primitive, AUnionType : TSmartUnionObjectType);
function FindUnusedUnionIndex : Integer;
function GetAllObjectsInUnion(AUnionIndex : Integer) : IInterfaces;
function GetAllUnions : IPCB_UnionList;
function GetRelationsEnumerator : IPCB_RelationEnumerator;
function GetSmartUnionByIndex(const UnionIndex : Integer) : IPCB_SmartUnionObject;
function GetState_UnionCount : Integer;
function GetState_Unions(AIndex : Integer) : IPCB_Union;
function GetState_UnionsByUnionIndex(AUnionIndex : Integer) : IPCB_Union;
function GetUnusedUnionIndexForSmartUnion(const AUnionID : TSmartUnionObjectType) : Integer;
function IsSimpleUnion(AUnionIndex : Integer) : Boolean;
procedure RemoveSmartUnion(const ASmartUnion : IPCB_SmartUnionObject);
procedure RemoveUnion(AUnionIndex : Integer);
procedure RenameUnion(AUnionIndex : Integer, const ANewName : WideString);
procedure SetRelation(AParentID : Integer, AChildID : Integer);
procedure SetUnionFeatureBooleanValue(AUnionIndex : Integer, AFeature : TUnionFeatures, AValue : Boolean);
procedure SetUnionFeatureIntegerValue(AUnionIndex : Integer, AFeature : TUnionFeatures, AValue : Integer);
procedure SetUnionFeatureStringValue(AUnionIndex : Integer, AFeature : TUnionFeatures, const AValue : WideString);

## IPCB_BrokenNetRule (28 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property CheckBadConnections : Boolean
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property HighlightPolygons : Boolean
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_Canceler (1 members)
function IsCancelled : Boolean;

## IPCB_CapabilitiesFactory (1 members)
function GetSupportedTextureFileFormats : IStrings;

## IPCB_CartesianGrid (23 members)
property ValidQuadrant[QuadrantIdx_1Based: Cardinal] : Boolean
property Color : TColor
property ColorLarge : TColor
property ComponentGrid : Boolean
property DisplayUnit : TUnit
property DrawMode : TDrawGridMode
property DrawModeLarge : TDrawGridMode
property DrawMultiplier : Integer
property DrawMultiplierLarge : Integer
property Enabled : Boolean
function GetOwnerBoard : IPCB_Board;
property GridStepX : TDouble
property GridStepY : TDouble
function I_ObjectAddress : Pointer;
property IsDefault : Boolean
property IsMCADSource : Boolean
property Name : WideString
property Origin : TCoordPoint
property Priority : Cardinal
property QuadrantSizeX : TCoord
property QuadrantSizeY : TCoord
property Rotation : TAngle
property ShowOrigin : Boolean

## IPCB_CenterDimension (58 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property Angle : TAngle
property ArrowLength : TCoord
property ArrowLineWidth : TCoord
property ArrowPosition : TDimensionArrowPosition
property ArrowSize : TCoord
property Bold : Boolean
function Cross_Horizontal_Track : IPCB_Track;
function Cross_Vertical_Track : IPCB_Track;
property DimensionKind : TDimensionKind
property ExtensionLineWidth : TCoord
property ExtensionOffset : TCoord
property ExtensionPickGap : TCoord
function FastSetState_XSizeYSize : Boolean;
property FontName : TPCBString
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Italic : Boolean
property LineWidth : TCoord
procedure MoveTextByXY(AX : Integer, AY : Integer);
procedure MoveTextToXY(AX : Integer, AY : Integer);
property PrimitiveLock : Boolean
procedure References_Add(const r : IDispatch);
property References_Count : Integer
procedure References_Delete(Index : Integer);
procedure References_DeleteLast;
function References_IndexOf(P : IPCB_Primitive, Index : Integer) : Integer;
function References_Validate : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetPrefixIfNeeded;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property Style : TUnitStyle
property TextDimensionUnit : TDimensionUnit
property TextFont : TFontID
property TextFormat : TPCBString
property TextGap : TCoord
property TextHeight : TCoord
property TextLineWidth : TCoord
property TextPosition : TDimensionTextPosition
property TextPrecision : Integer
property TextPrefix : TPCBString
property TextSuffix : TPCBString
property TextValue : TReal
property TextWidth : TCoord
property TextX : TCoord
property TextY : TCoord
property UseTTFonts : Boolean
property x : TCoord
property X1Location : TCoord
property y : TCoord
property Y1Location : TCoord

## IPCB_CheckNetAntennaeRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetAntennaeTolerance : TCoord
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_ClearanceConstraint (35 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property Gap : TCoord
function GetClearance(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Integer;
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_IgnorePadToPad : Boolean;
function GetState_IsMatrix : Boolean;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Mode : TClearanceConstraintMode
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function PrimitivesViolate(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetClearance(P1 : IPCB_Primitive, P2 : IPCB_Primitive, Value : Integer);
procedure SetState_IgnorePadToPad(Value : Boolean);
procedure SetState_IsMatrix(const AValue : Boolean);

## IPCB_ClearanceGapByLayerConstraint (39 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
procedure ClearItems;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property Gap : TCoord
function GetClearance(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Integer;
function GetClearanceIDPrimOnLayer(AClearanceId : TObjectClearanceId, const APrimitive : IPCB_Primitive, ALayer : Integer) : Integer;
function GetClearancePrimPrimOnLayer(const APrimitive1 : IPCB_Primitive, const APrimitive2 : IPCB_Primitive, ALayer : Integer) : Integer;
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_IgnorePadToPad : Boolean;
function GetState_IsMatrix : Boolean;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
function LayerRulesIsPresent : Boolean;
property Mode : TClearanceConstraintMode
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function PrimitivesViolate(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetClearance(P1 : IPCB_Primitive, P2 : IPCB_Primitive, Value : Integer);
procedure SetState_IgnorePadToPad(Value : Boolean);
procedure SetState_IsMatrix(const AValue : Boolean);

## IPCB_ClearanceGapByLayerConstraint2 (2 members)
function GetItems : IPCB_ClearanceGapByLayerConstraintItems;
procedure RemoveItem(const AKey : IDispatch);

## IPCB_ClearanceGapByLayerConstraintItems (3 members)
function GetCount : Integer;
function GetKey(AIndex : Integer) : IDispatch;
function GetValue(AIndex : Integer) : IPCB_ClearanceConstraint;

## IPCB_ClearanceMatrixConstraint (45 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
procedure Clear;
property ClearanceRules : IPCB_ClearanceMatrixInfrastructure
procedure ClearItems;
property Comment : TPCBString
property Data : TPCBString
property DefaultSameClearanceRule : IPCB_ClearanceConstraint
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property Gap : TCoord
function GetClearance(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Integer;
function GetClearanceIDPrimOnLayer(AClearanceId : TObjectClearanceId, const APrimitive : IPCB_Primitive, ALayer : Integer) : Integer;
function GetClearancePrimPrimOnLayer(const APrimitive1 : IPCB_Primitive, const APrimitive2 : IPCB_Primitive, ALayer : Integer) : Integer;
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_IgnorePadToPad : Boolean;
function GetState_IsMatrix : Boolean;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsEmpty : Boolean;
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
function LayerRulesIsPresent : Boolean;
property Mode : TClearanceConstraintMode
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function PrimitivesViolate(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property SameClearanceRules : IPCB_ClearanceMatrixInfrastructure
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetClearance(P1 : IPCB_Primitive, P2 : IPCB_Primitive, Value : Integer);
procedure SetState_IgnorePadToPad(Value : Boolean);
procedure SetState_IsMatrix(const AValue : Boolean);

## IPCB_ClearanceMatrixInfrastructure (6 members)
procedure AddMatrixItem(const AName : WideString, AType : TMatrixItemType);
function GetCellRule(const ARowName : WideString, ARowType : TMatrixItemType, const AColName : WideString, AColType : TMatrixItemType) : IPCB_ClearanceConstraint;
function GetMatrixItemsEnumerator : IPCB_MatrixItemEnumerator;
procedure RemoveAllMatrixItems;
procedure RemoveMatrixItem(const AName : WideString, AType : TMatrixItemType);
procedure SetCellRule(const ARowName : WideString, ARowType : TMatrixItemType, const AColName : WideString, AColType : TMatrixItemType, const AValue : IPCB_ClearanceConstraint);

## IPCB_ClearanceViolation (22 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
property IsHoleClearanceViolation : Boolean
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
property RuleValue : TCoord
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property ValueIsIntit : Boolean
property ViolationPt1 : TCoordPoint
property ViolationPt2 : TCoordPoint
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_ClearanceViolationMatrixSupports (5 members)
property IsSameNet : Boolean
property ItemName1 : TPCBString
property ItemName2 : TPCBString
property ItemType1 : TMatrixItemType
property ItemType2 : TMatrixItemType

## IPCB_ClipBoard (1 members)
function GetPrimitiveCount(AObjSet : TObjectSet) : Integer;

## IPCB_ColorID (7 members)
function Bordered : Boolean;
function Diffuse : IDispatch;
function Hatched : Boolean;
function HatchStyle : TMaterialHatchStyle;
function Offset2D : ShortInt;
function OverrideColor : IDispatch;
function TexCoord : IDispatch;

## IPCB_ColorOverrideOptions (6 members)
property ActualTexture : WideString
property ColorOverrideActive : Boolean
property Pattern : TColorOverridePattern
procedure SetState_ActualTexture;
procedure SetState_Default;
property Zoom : TColorOverrideZoom

## IPCB_Component (78 unique + inherits IPCB_Primitive)
function AddAxis : IPCB_Axis;
procedure AddPCBObject(PCBObject : IPCB_Primitive);
procedure AutoPosition_NameComment;
procedure AutoPosition_NameComment_APILike;
property AxisCount : Integer
function BoundingRectangleNoNameComment : IDispatch;
function BoundingRectangleNoNameCommentForSignals : IDispatch;
procedure ChangeAutopositionNameComment;
function ChangeCommentAutoposition(Value : TTextAutoposition) : Boolean;
function ChangeNameAutoposition(Value : TTextAutoposition) : Boolean;
property ChannelOffset : TChannelOffset
procedure ClearAxes;
property Comment : IPCB_Text
property CommentAutoPosition : TTextAutoposition
property CommentOn : Boolean
property ComponentKind : TComponentKind
property DefaultPCB3DModel : TPCBString
procedure Displace(const Displacement : Pointer);
property EnablePartSwapping : Boolean
property EnablePinSwapping : Boolean
function FastSetState_XSizeYSize : Boolean;
procedure FlipComponent;
property FlippedOnLayer : Boolean
property FootprintConfigurableParameters_Encoded : TPCBString
property FootprintConfiguratorName : TPCBString
property FootprintDescription : TPCBString
property FPGADisplayMode : TFPGADisplayMode
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function Getstate_PadByName(S : WideString) : IPCB_Primitive;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property GroupNum : Integer
property Height : TCoord
property IsBGA : Boolean
function IsConfigurableFootprint : Boolean;
function IsFitted : Boolean;
function IsPackageEqual(const AComp : IPCB_Component) : Boolean;
function IsPackageEqualEx(const AComp : IPCB_Component, AOptions : TPackageCompareOptionSet) : Boolean;
property ItemGUID : TPCBString
property ItemRevisionGUID : TPCBString
property JumpersVisible : Boolean
function LoadCompFromLibrary : Boolean;
function LoadFromLibrary(AParams : PWideChar) : Boolean;
property LockStrings : Boolean
property ModelHash : TPCBString
property Name : IPCB_Text
property NameAutoPosition : TTextAutoposition
property NameOn : Boolean
property PackageSpecificHash : TPCBString
property Pattern : TPCBString
property PrimitiveLock : Boolean
procedure Rebuild;
function ReferencePointOutsideArea : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetDisplacement;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
function SaveModelToFile(FullPath : WideString) : Boolean;
function SaveModelToFileAsPart(FullPath : WideString) : Boolean;
function SaveModelToOccDoc(OccDoc : IOCCDocument) : Boolean;
procedure SetComponentPositionFrom(ASource : IPCB_Component);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
procedure ShowLibraryInExplorer;
property SourceCompDesignItemID : TPCBString
property SourceComponentLibrary : TPCBString
property SourceDescription : TPCBString
property SourceDesignator : TPCBString
property SourceFootprintLibrary : TPCBString
property SourceHierarchicalPath : TPCBString
property SourceLibReference : TPCBString
property SourceUniqueId : TPCBString
property VaultGUID : TPCBString
property x : TCoord
property y : TCoord

## IPCB_Component3D (79 unique + inherits IPCB_Primitive)
function AddAxis : IPCB_Axis;
procedure AddPCBObject(PCBObject : IPCB_Primitive);
procedure AutoPosition_NameComment;
procedure AutoPosition_NameComment_APILike;
property AxisCount : Integer
function BoundingRectangleNoNameComment : IDispatch;
function BoundingRectangleNoNameCommentForSignals : IDispatch;
procedure ChangeAutopositionNameComment;
function ChangeCommentAutoposition(Value : TTextAutoposition) : Boolean;
function ChangeNameAutoposition(Value : TTextAutoposition) : Boolean;
property ChannelOffset : TChannelOffset
procedure ClearAxes;
property Comment : IPCB_Text
property CommentAutoPosition : TTextAutoposition
property CommentOn : Boolean
property ComponentKind : TComponentKind
property DefaultPCB3DModel : TPCBString
procedure Displace(const Displacement : Pointer);
property EnablePartSwapping : Boolean
property EnablePinSwapping : Boolean
function FastSetState_XSizeYSize : Boolean;
procedure FlipComponent;
property FlippedOnLayer : Boolean
property FootprintConfigurableParameters_Encoded : TPCBString
property FootprintConfiguratorName : TPCBString
property FootprintDescription : TPCBString
property FPGADisplayMode : TFPGADisplayMode
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function Getstate_PadByName(S : WideString) : IPCB_Primitive;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property GroupNum : Integer
property Height : TCoord
property IsBGA : Boolean
function IsConfigurableFootprint : Boolean;
function IsFitted : Boolean;
function IsPackageEqual(const AComp : IPCB_Component) : Boolean;
function IsPackageEqualEx(const AComp : IPCB_Component, AOptions : TPackageCompareOptionSet) : Boolean;
property ItemGUID : TPCBString
property ItemRevisionGUID : TPCBString
property JumpersVisible : Boolean
function LoadCompFromLibrary : Boolean;
function LoadFromLibrary(AParams : PWideChar) : Boolean;
property LockStrings : Boolean
property ModelHash : TPCBString
property Name : IPCB_Text
property NameAutoPosition : TTextAutoposition
property NameOn : Boolean
property PackageSpecificHash : TPCBString
property Pattern : TPCBString
property PrimitiveLock : Boolean
procedure Rebuild;
function ReferencePointOutsideArea : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetDisplacement;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
function SaveModelToFile(FullPath : WideString) : Boolean;
function SaveModelToFileAsPart(FullPath : WideString) : Boolean;
function SaveModelToOccDoc(OccDoc : IOCCDocument) : Boolean;
procedure SetComponentPositionFrom(ASource : IPCB_Component);
procedure SetState_FacePosition(AFaceIdx : Integer, AU : Integer, AV : Integer, ARot : Double);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
procedure ShowLibraryInExplorer;
property SourceCompDesignItemID : TPCBString
property SourceComponentLibrary : TPCBString
property SourceDescription : TPCBString
property SourceDesignator : TPCBString
property SourceFootprintLibrary : TPCBString
property SourceHierarchicalPath : TPCBString
property SourceLibReference : TPCBString
property SourceUniqueId : TPCBString
property VaultGUID : TPCBString
property x : TCoord
property y : TCoord

## IPCB_ComponentBody (58 unique + inherits IPCB_Primitive)
function AddAxis : IPCB_Axis;
property Area : Int64
function AxisCount : Integer;
property BodyColor3D : TColor
property BodyOpacity3D : Single
property BodyProjection : TBoardSide
property CavityHeight : TCoord
function ChooseFile(var AFileName : WideString) : LongBool;
function ChooseModel(var AFileName : WideString) : LongBool;
procedure ClearAxes;
procedure Displace(const Displacement : Pointer);
procedure Fade(Value : Single);
property GeometricPolygon : IPCB_GeometricPolygon
function GetState_ModelType : T3DModelType;
function GetState_SnapCount : Integer;
function GetState_SnapPoint(Index : Integer) : IDispatch;
procedure GetTransform_ModelToComponent(P : Pointer);
property HoleCount : Integer
function IsSimpleRegion : Boolean;
property Kind : TRegionKind
procedure LoadGenericModelFromFile(const AFileName : WideString, const AMakeEmbeded : LongBool);
property MainContour : IPCB_Contour
property Model : IPCB_Model
function ModelFactory_Create(const ModelType : T3DModelType) : IPCB_Model;
function ModelFactory_CreateCylinder(const Radius : Integer, const Height : Integer, const Color : Cardinal) : IPCB_Model;
function ModelFactory_CreateExtruded(const MinZ : Integer, const MaxZ : Integer, const Color : Cardinal) : IPCB_Model;
function ModelFactory_CreateSphere(const Radius : Integer, const Color : Cardinal) : IPCB_Model;
procedure ModelFactory_Destroy(var Value : IPCB_Model);
function ModelFactory_FromFilename(FileName : WideString, WatchDirectory : Boolean) : IPCB_Model;
function ModelFactory_FromVault(const ATitle : WideString, const AVaultGUID : WideString, const AItemGUID : WideString, const AItemRevisionGUID : WideString) : IPCB_Model;
procedure ModelFactory_Replace(const ModelType : T3DModelType, var Value : IPCB_Model);
function ModelFactory_UpdateModel(const Radius : Integer, const Height : Integer, const ModelType : T3DModelType) : Boolean;
property ModelHasChanged : Boolean
property Name : TPCBString
property OverallHeight : TCoord
property OverrideColor : Boolean
procedure RecreateModel;
procedure ResetDisplacement;
procedure ResetFade;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
function SaveModelToFile(FullPath : WideString) : Boolean;
procedure SetOutlineContour(Contour : IPCB_Contour);
procedure SetState_FromModel;
procedure SetState_Identifier(const Value : WideString);
procedure SetState_ModelType(const Value : T3DModelType);
procedure SetState_SnapCount(Count : Integer);
procedure SetState_SnapPoint(Index : Integer, const Point : IDispatch);
property SnapPointX : TCoord
property SnapPointY : TCoord
property StandoffHeight : TCoord
property Texture : TPCBString
property TextureCenter : TCoordPoint
property TextureRotation : TAngle
property TextureSize : TCoordPoint
function UniqueName : WideString;
procedure UpdateModelFromDisk;
procedure UpdateModelToLatestRevision;
procedure ValidateMesh;

## IPCB_ComponentClearanceConstraint (33 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property CheckComponentBoundary : Boolean
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property CollisionCheckMode : TComponentCollisionCheckMode
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DoNotCheckWithout3DBody : Boolean
property DRCEnabled : Boolean
property Gap : TCoord
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property HorizontalGap : TCoord
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property ShowDistances : Boolean
property VerticalGap : TCoord

## IPCB_ComponentClearanceViolation (24 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
property IsHoleClearanceViolation : Boolean
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Point1 : TDoublePoint3D
property Point2 : TDoublePoint3D
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
property RuleValue : TCoord
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property ValueIsIntit : Boolean
property ViolationPt1 : TCoordPoint
property ViolationPt2 : TCoordPoint
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_ComponentPainter3DChangedHandler (1 members)
procedure Handle3DChangedEvent(Value : Boolean);

## IPCB_ComponentPainterView (24 members)
procedure ClearGraphicalObjects;
procedure ConfigView(Parameters : WideString);
property DirectionX : Single
property DirectionY : Single
property DirectionZ : Single
function GetDummyBoard : IPCB_Board;
function GetIs3D : Boolean;
function GetIsItemNotFound : Boolean;
function I_ObjectAddress : Pointer;
procedure KeyDown(var Key : Word, Shift : TShiftState);
procedure MouseWheel(Sender : TObject, Shift : TShiftState, WheelDelta : Integer, const MousePos : IDispatch, var Handled : Boolean);
property Name : TPCBString
property Origin : TCoordPoint3D
procedure RefreshView;
procedure Register3DChangedHandler(Is3DChangedHandler : IPCB_ComponentPainter3DChangedHandler);
procedure RegisterGOMouseHoverHandler(GraphicalObjectMouseHoverHandler : IPCB_GOMouseHoverHandler);
procedure SetAllLayersVisibilityState(Visible : Boolean);
procedure SetCamera(LowX : Integer, LowY : Integer, HighX : Integer, HighY : Integer);
procedure SetCameraAngle(LookAtX : Double, LookAtY : Double, LookAtZ : Double, RotationX : Double, RotationY : Double, RotationZ : Double, RotationW : Double, ZoomMultiplier : Double);
procedure SetComponentByHandle(const AComponent : IPCB_Component);
procedure SetComponentByPath(APattern : WideString, ALibraryPath : WideString);
procedure SetDirectXMode;
procedure SetVariantOption(const AVariantOption : IVariantOption);
procedure SetViewRect(LowX : Integer, LowY : Integer, HighX : Integer, HighY : Integer);

## IPCB_ComponentRotationsRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property AllowedRotations : Integer
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_ComponentUpdateOptions (1 members)
function Import_FromUser_Execute(const AMousePos : IDispatch) : Boolean;

## IPCB_ConfinementConstraint (37 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function ArrangeComponents : Boolean;
property BoundingRect : TCoordRect
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property ConstraintLayer : TV6_Layer
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetConfinedComponents(AComponents : IInterfaceList) : Boolean;
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property Kind : TConfinementStyle
property LayerKind : TRuleLayerKind
property LockComponents : Boolean
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property PointCount : Integer
function Priority : Word;
procedure RedefineShape(const ABoard : IPCB_Board, const AGraphicalView : IPCB_GraphicalView);
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property x : TCoord
property y : TCoord

## IPCB_Connection (9 unique + inherits IPCB_Primitive)
function IsRedundant : Boolean;
property Layer1 : TV6_Layer
property Layer2 : TV6_Layer
property Mode : TConnectionMode
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property x1 : TCoord
property x2 : TCoord
property y1 : TCoord
property y2 : TCoord

## IPCB_Connection3D (15 unique + inherits IPCB_Primitive)
property FaceIdx1 : Integer
property FaceIdx2 : Integer
property FaceU1 : Integer
property FaceU2 : Integer
property FaceV1 : Integer
property FaceV2 : Integer
function IsRedundant : Boolean;
property Layer1 : TV6_Layer
property Layer2 : TV6_Layer
property Mode : TConnectionMode
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property x1 : TCoord
property x2 : TCoord
property y1 : TCoord
property y2 : TCoord

## IPCB_ConnectivityGraph (9 members)
function FindShortestPath(const FromPrimitive : IPCB_Primitive, const ToPrimitive : IPCB_Primitive) : IPCB_PrimitiveList;
function FindShortestPath2(const ForPrimitives : IPCB_PrimitiveList) : IPCB_PrimitiveList;
function GetConnectedPrimitives : IPCB_PrimitiveGroups;
function GetMaxPinsCount : Integer;
function GetMaxPrimsInNet : Integer;
procedure Rebuild;
procedure RebuildNet(const Net : IPCB_Net);
procedure SetMaxPinsCount(Value : Integer);
procedure SetMaxPrimsInNet(Value : Integer);

## IPCB_Contour (16 members)
property x[I: Integer] : TCoord
property y[I: Integer] : TCoord
procedure AddContour(const C : IPCB_Contour, const StartIndex : Integer, const EndIndex : Integer);
procedure AddPoint(x : Integer, y : Integer);
property Area : Double
procedure Clear;
property Count : Integer
procedure DeletePoint(Index : Integer);
procedure EnsureCapacity(Value : Integer);
procedure InsertPoint(Index : Integer, x : Integer, y : Integer);
function IsCW : Boolean;
function Replicate : IPCB_Contour;
procedure Rotate(AngleInDegrees : Double);
procedure RotateAboutPoint(AngleInDegrees : Double, x : Integer, y : Integer);
procedure Translate(x : Integer, y : Integer);
property VertexList : Pointer

## IPCB_ContourMaker (3 members)
procedure AddArcToContour(AContour : IPCB_Contour, StartAngle : Double, EndAngle : Double, cx : Integer, cy : Integer, Radius : Integer, AClockwise : Boolean);
property ArcResolution : TCoord
function MakeContour(APrim : IPCB_Primitive, AExpansion : Integer, ALayer : TV6_Layer) : IPCB_GeometricPolygon;

## IPCB_ContourMaker2 (3 members)
procedure AddArcToContour(AContour : IPCB_Contour, StartAngle : Double, EndAngle : Double, cx : Integer, cy : Integer, Radius : Integer, AClockwise : Boolean);
property ArcResolution : TCoord
function MakeContour(APrim : IPCB_Primitive, AExpansion : Integer, ALayer : TV6_Layer) : IPCB_GeometricPolygon;

## IPCB_ContourUtilities (12 members)
procedure ClipContourContour(SetOperation : TSetOperation, AContour : IPCB_Contour, BContour : IPCB_Contour, ResultPolygon : IPCB_GeometricPolygon);
procedure ClipSetContour(SetOperation : TSetOperation, AGeometricPolygon : IPCB_GeometricPolygon, AContour : IPCB_Contour, ResultPolygon : IPCB_GeometricPolygon);
procedure ClipSetSet(SetOperation : TSetOperation, AGeometricPolygon : IPCB_GeometricPolygon, BGeometricPolygon : IPCB_GeometricPolygon, ResultPolygon : IPCB_GeometricPolygon);
function CombinePolygons(const APolygon : IPCB_Polygon, const BPolygon : IPCB_Polygon) : IPCB_Polygon;
function ContourArea(AContour : IPCB_Contour) : Double;
function ContourIsCW(AContour : IPCB_Contour) : Boolean;
function CreateInterfaceList : IInterfaceList;
function GeometricPolygonsTouch(AGeometricPolygon : IPCB_GeometricPolygon, BGeometricPolygon : IPCB_GeometricPolygon) : Boolean;
function PointInContour(AContour : IPCB_Contour, x : Integer, y : Integer) : Boolean;
procedure SplitIntoConnectedPolygons(AGeometricPolygon : IPCB_GeometricPolygon, ConnectedPolygons : IInterfaceList);
procedure UnionBatchContour(Contours : IInterfaceList, ResultPolygon : IPCB_GeometricPolygon);
procedure UnionBatchSet(Polygons : IInterfaceList, ResultPolygon : IPCB_GeometricPolygon);

## IPCB_Coordinate (30 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property Bold : Boolean
function FastSetState_XSizeYSize : Boolean;
property FontName : TPCBString
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GetState_StrictHitTest(HitX : Integer, HitY : Integer) : Boolean;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Italic : Boolean
property LineWidth : TCoord
property PrimitiveLock : Boolean
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property Style : TUnitStyle
function Text : IPCB_Primitive;
property TextFont : TFontID
property TextHeight : TCoord
property TextWidth : TCoord
function Track1 : IPCB_Primitive;
function Track2 : IPCB_Primitive;
property UseTTFonts : Boolean
property x : TCoord
property y : TCoord

## IPCB_CopperBody (12 members)
property Shape[Index: Integer] : IPCB_CopperBodyShape
procedure ExportToFile(FileName : WideString);
function ExportToString : WideString;
function GetReferenceBody : IPCB_CopperBody;
function GetState_Hash : WideString;
function GetState_Suffix : WideString;
function GetXOffset : Integer;
function GetYOffset : Integer;
property Layer : TLayer
property Net : IPCB_Net
procedure SaveToSVGFile(FileName : WideString);
property ShapeCount : Integer

## IPCB_CopperBodyList (3 members)
property CopperBody[I: Integer] : IPCB_CopperBody
property Count : Integer
function ExportToString : WideString;

## IPCB_CopperBodyShape (5 members)
property RegionData[Index: Integer] : WideString
property Region[Index: Integer] : IPCB_RegionShape2
property IsHole[Index: Integer] : Boolean
property RegionCount : Integer
procedure SaveToSVGFile(FileName : WideString);

## IPCB_CopperPolyArc (3 members)
function GetSegment(Index : Integer) : IDispatch;
function OriginPt : IDispatch;
function SegmentsCount : Integer;

## IPCB_CopperPolygon (8 members)
function BorderVertexCount : Integer;
function CapIndexCount : Integer;
procedure GetBorderVertex(const AIndex : Integer, out ACoordX : Single, out ACoordY : Single, out ANormalX : Byte, out ANormalY : Byte, out ANormalZ : Byte);
function GetCapIndex(const Index : Integer) : Integer;
function GetLineIndex(const Index : Integer) : Integer;
procedure GetVertex(const Index : Integer, out CoordX : Single, out CoordY : Single);
function LineIndexCount : Integer;
function VertexCount : Integer;

## IPCB_CounterHoleDiameterOnDepthList (4 members)
procedure Clear;
procedure Delete(Index : Integer);
function Get(Index : Integer) : IDispatch;
function GetCount : Integer;

## IPCB_CounterHoleFactory (4 members)
function CreateCounterHoleParams : IPCB_CounterHoleParams;
function CreateCounterHoleParamsList : IPCB_CounterHoleParamsList;
function CreateCounterHoleParamsPreset : IPCB_CounterHoleParamsPreset;
function CreateCounterHoleParamsPresetList : IPCB_CounterHoleParamsPresetList;

## IPCB_CounterHoleParams (13 members)
property Angle : TAngle
procedure CopyFrom(OtherParams : IPCB_CounterHoleParams);
property Depth : TCoord
procedure Deserialize(ParamStr : WideString);
property Diameter : TCoord
property Direction : TCounterHoleDirection
function GetCounterHoleType : TCounterHoleType;
function GetDepthForDiameter(ADiameter : Integer) : Integer;
function GetDiameterOnDepth(ADepth : Integer) : Integer;
function IsEqual(OtherParams : IPCB_CounterHoleParams) : Boolean;
function IsEqualWithoutMaterial(OtherParams : IPCB_CounterHoleParams) : Boolean;
property Material : TCounterHoleMaterial
function Serialize : WideString;

## IPCB_CounterHoleParamsList (9 members)
property Params[Index: Integer] : IPCB_CounterHoleParams
function AddNew : IPCB_CounterHoleParams;
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);
procedure Deserialize(ParamStr : WideString);
function IsEqual(OtherParamList : IPCB_CounterHoleParamsList) : Boolean;
function Replicate : IPCB_CounterHoleParamsList;
function Serialize : WideString;

## IPCB_CounterHoleParamsPreset (3 members)
property Description : TPCBString
property Name : TPCBString
property ParamList : IPCB_CounterHoleParamsList

## IPCB_CounterHoleParamsPresetList (5 members)
property Presets[Index: Integer] : IPCB_CounterHoleParamsPreset
function AddNew : IPCB_CounterHoleParamsPreset;
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);

## IPCB_CreepageRule (31 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property CheckDistance : TCoord
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_ApplyToPolygonPour : Boolean;
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_IgnoreInternalLayers : Boolean;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetState_ApplyToPolygonPour(Value : Boolean);
procedure SetState_IgnoreInternalLayers(Value : Boolean);

## IPCB_CreepageViolation (21 unique + inherits IPCB_Primitive)
property ActualDistance : TCoord
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
procedure AddPoint(const APoint : IDispatch);
procedure Clear;
function Count : Integer;
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_CustomInteractiveRoutingProcess (48 members)
property RouteModeEnabled[AMode: TAdvancedRouteMode] : Boolean
property AllowViaPushing : Boolean
property AutoNecking : Boolean
property AutoRemoveAntennas : Boolean
property AutoRemoveLoops : Boolean
property AutoTerminateRouting : Boolean
property CornerRounding : Boolean
property CurrentLayer : TLayer
property DisplayClearanceBounds : Boolean
procedure EditRoutingViaStyleRule;
property FollowMouseTrail : Boolean
function GetRoutingOptions : IPCB_RoutingOptionsPage;
function GetState_Board : IPCB_Board;
function GetState_FollowMode : Boolean;
function GetState_NeighborGlossEffort : TGlossEffort;
property GlossEffort : TGlossEffort
property HoleSize : Integer
property HuggingStyle : THuggingStyle
property LegacyRouter : Boolean
property MinimumArcSize : Double
property MiterSize : Double
property Net : IPCB_Net
property NetList : IPCB_NetList
property NextLayer : TLayer
function NextRoutingWidthMode : TRoutingWidthMode;
function NextViaLayerPair : Integer;
function NextViaSizeMode : TRoutingWidthMode;
function NextViaTemplate : IPCB_PadViaTemplate;
property PadEntryStability : TCoord
property PickupWidthFromExistingRoutes : Boolean
property PinSwapping : Boolean
property ReduceClearanceDisplayArea : Boolean
property RestrictTo9045 : Boolean
property RouteMode : TAdvancedRouteMode
property RoutingCornerStyle : TRoutingCornerStyle
property RoutingPoint : TCoordPoint
property RoutingViaStyleRule : IPCB_RoutingViaStyleRule
property RoutingWidthMode : TRoutingWidthMode
procedure SetState_NeighborGlossEffort(ANewValue : TGlossEffort);
procedure SetState_NextLayer(AValue : Integer);
property SubnetJumperLength : Integer
property ViaCombinationManager : IPCB_ViaCombinationManagerInterface
property ViaDiameter : Integer
property ViaLayerPair : Integer
property ViaSizeMode : TRoutingWidthMode
property ViaTemplate : IPCB_PadViaTemplate
property ViaTemplateChanged : Boolean
property Width : Integer

## IPCB_CustomPadShape (10 members)
property CustomShapeInfo[ALayer: Integer] : IPCB_CustomShapeInfo
property CustomShapeKind[ALayer: Integer] : TShapeSubKind
property CustomShape[ALayer: Integer] : IPCB_Primitive
function ConstructCustomPadShape(const ALayer : IDispatch, const AInvolvedPrimitives : ISafeInterfaceList) : IPCB_GeometricPolygon;
procedure EditShapeOnLayer(ALayer : Integer);
function GetState_ExtractedPrimitiveOnLayer(ALayer : Integer) : IPCB_Primitive;
function GetState_RegionShapeOnLayer(ALayer : Integer) : IPCB_Region;
procedure ResetMaskShapes;
procedure SetCustomShapeDefaultsOnLayer(ALayer : Integer);
procedure SetProperty_CustomPolyShape(const ALayer : IDispatch, const AValue : IPCB_RegionShape);

## IPCB_CustomShapeDonutParameters (2 members)
property OuterDiameter : TCoord
property Width : TCoord

## IPCB_CustomShapeInfo (4 members)
procedure CopyTo(const ADest : IPCB_CustomShapeInfo);
property CustomShapeParameters : IUnknown
function I_ObjectAddress : Pointer;
property ShapeKind : TShapeSubKind

## IPCB_CustomShapeRectParameters (1 members)
property CornerEnabled[ACorner: TRectCorner] : Boolean

## IPCB_CustomShapeStorage (3 members)
property CustomShape[AIndex: Integer] : TPCBObjectHandle
procedure CollectCustomShapes;
property CustomShapeCount : Integer

## IPCB_CustomThermalRelief (9 members)
procedure AddCustomRelief(const ALayer : Integer, const AEdgeIndex : Integer, const AParameter : Double);
procedure AddCustomReliefAt(const ALayer : Integer, const AShape : IPCB_RegionShape, const ALocation : IDispatch);
procedure ClearCustomRelief(const ALayer : Integer);
procedure ExportCustomReliefToParameters(const AParameters : IWideParameterList);
function GetCustomThermalReliefInfo(const ALayer : Integer) : IPCB_CustomThermalReliefInfo;
function GetShapeForCustomRelief(const ALayer : Integer) : IPCB_RegionShape;
procedure ImportCustomReliefFromParameters(const AParameters : IWideParameterList);
procedure RemoveCustomRelief(const ALayer : Integer, const AEdgeIndex : Integer, const AParameter : Double);
procedure RemoveCustomReliefAt(const ALayer : Integer, const AShape : IPCB_RegionShape, const ALocation : IDispatch);

## IPCB_CustomThermalReliefInfo (2 members)
function GetState_ThermalRelieafLocation(AIndex : Integer) : IDispatch;
function ThermalRelieafsCount : Integer;

## IPCB_DaisyChainStubLengthConstraint (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Limit : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_DatumDimension (59 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property Angle : TAngle
property ArrowLength : TCoord
property ArrowLineWidth : TCoord
property ArrowPosition : TDimensionArrowPosition
property ArrowSize : TCoord
property Bold : Boolean
property DimensionKind : TDimensionKind
function Extension_Track(I : Integer) : IPCB_Track;
property ExtensionLineWidth : TCoord
property ExtensionOffset : TCoord
property ExtensionPickGap : TCoord
function FastSetState_XSizeYSize : Boolean;
property FontName : TPCBString
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Italic : Boolean
property LineWidth : TCoord
procedure MoveTextByXY(AX : Integer, AY : Integer);
procedure MoveTextToXY(AX : Integer, AY : Integer);
property PrimitiveLock : Boolean
procedure References_Add(const r : IDispatch);
property References_Count : Integer
procedure References_Delete(Index : Integer);
procedure References_DeleteLast;
function References_IndexOf(P : IPCB_Primitive, Index : Integer) : Integer;
function References_Validate : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetPrefixIfNeeded;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property Style : TUnitStyle
function Text : IPCB_Text;
property TextDimensionUnit : TDimensionUnit
property TextFont : TFontID
property TextFormat : TPCBString
property TextGap : TCoord
property TextHeight : TCoord
property TextLineWidth : TCoord
property TextPosition : TDimensionTextPosition
property TextPrecision : Integer
property TextPrefix : TPCBString
function Texts(I : Integer) : IPCB_Text;
property TextSuffix : TPCBString
property TextValue : TReal
property TextWidth : TCoord
property TextX : TCoord
property TextY : TCoord
property UseTTFonts : Boolean
property x : TCoord
property X1Location : TCoord
property y : TCoord
property Y1Location : TCoord

## IPCB_DesignRuleCheckerOptions (25 members)
property CheckExternalNetList : Boolean
property DoMakeDRCErrorList : Boolean
property DoMakeDRCFile : Boolean
property DoSubNetDetails : Boolean
procedure Export_ToParameters(Parameters : PWideChar);
procedure Export_ToParameters_GeneralOptions(Parameters : PWideChar);
procedure Export_ToParameters_RulesToCheck(Parameters : PWideChar);
procedure Export_ToParameters_RulesToCheck_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version4(Parameters : PWideChar);
property ExternalNetListFileName : TPCBString
function I_ObjectAddress : Pointer;
procedure Import_FromParameters(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_GeneralOptions(Parameters : PWideChar);
procedure Import_FromParameters_RulesToCheck(Parameters : PWideChar);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, Parameters : PWideChar);
property IncludePCBHealth : Boolean
property InternalPlaneWarnings : Boolean
property MaxViolationCount : Integer
property OnLineRuleSetToCheck : TRuleSet
property OptionsObjectID : TOptionsObjectId
property ReportFilename : TPCBString
property RuleSetToCheck : TRuleSet
property VerifyShortingCopper : Boolean

## IPCB_DesignVariant (2 members)
property Name : TPCBString
property VariantID : TPCBString

## IPCB_DesignVariants (5 members)
property DesignVariant[AIndex: Integer] : IPCB_DesignVariant
property Count : Integer
property Current : IPCB_DesignVariant
function GetDesignVariantByID(const AVariantID : WideString) : IPCB_DesignVariant;
function GetDesignVariantByName(const AVariantName : WideString) : IPCB_DesignVariant;

## IPCB_DialogsManager (8 members)
function ShowBoardStackReportPropertiesDialog(const Settings : IBoardStackReportSettings) : Boolean;
function ShowFontsSubstitutionDialog(const AUnavailableFonts : IPCB_WideStrings, const AFontsToReplace : IPCB_WideStrings, const AAllFonts : IPCB_WideStrings, var AApplyToAll : Boolean) : Boolean;
function ShowGerberPropertiesDialog(Settings : IGerberSettingsInfoBase) : Boolean;
function ShowHealthCheckIssuesDialog(Board : IPCB_Board, Settings : IHealthCheckIssuesSettings) : Boolean;
function ShowPrintOutPropertiesDialog(Settings : IPrintSettings) : Boolean;
function ShowPrintPreviewDialog(Settings : IPrintSettings) : Boolean;
function ShowReuseTopologyDialog(const ABoard : IPCB_Board) : Boolean;
function ShowSilkScreenDialog(const ABoard : IPCB_Board, const ASettings : IPCB_SilkscreenClipperSettings) : Boolean;

## IPCB_DialogsManagerEntry (8 members)
function ShowBoardStackReportPropertiesDialog(const Settings : IBoardStackReportSettings) : Boolean;
function ShowFontsSubstitutionDialog(const AUnavailableFonts : IPCB_WideStrings, const AFontsToReplace : IPCB_WideStrings, const AAllFonts : IPCB_WideStrings, var AApplyToAll : Boolean) : Boolean;
function ShowGerberPropertiesDialog(Settings : IGerberSettingsInfoBase) : Boolean;
function ShowHealthCheckIssuesDialog(Board : IPCB_Board, Settings : IHealthCheckIssuesSettings) : Boolean;
function ShowPrintOutPropertiesDialog(Settings : IPrintSettings) : Boolean;
function ShowPrintPreviewDialog(Settings : IPrintSettings) : Boolean;
function ShowReuseTopologyDialog(const ABoard : IPCB_Board) : Boolean;
function ShowSilkScreenDialog(const ABoard : IPCB_Board, const ASettings : IPCB_SilkscreenClipperSettings) : Boolean;

## IPCB_DielectricLayer (14 members)
property DielectricConstant : TDouble
property DielectricHeight : TCoord
property DielectricLossTangent : TDouble
property DielectricMaterial : TPCBString
property DielectricType : TDielectricType
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
property IsStiffener : Boolean
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_DielectricObject (14 members)
property DielectricConstant : TDouble
property DielectricHeight : TCoord
property DielectricLossTangent : TDouble
property DielectricMaterial : TPCBString
property DielectricType : TDielectricType
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
property IsStiffener : Boolean
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_DiePadBondInfo (0 unique + inherits IPCB_Primitive)

## IPCB_DifferentialPair (5 unique + inherits IPCB_Primitive)
property GatherControl : Boolean
property Name : TPCBString
property NegativeNet : IPCB_Net
property PositiveNet : IPCB_Net
procedure Reroute;

## IPCB_DifferentialPair2 (6 unique + inherits IPCB_Primitive)
property GatherControl : Boolean
property Name : TPCBString
property NegativeNet : IPCB_Net
property PairAverageLength : TCoord
property PositiveNet : IPCB_Net
procedure Reroute;

## IPCB_DifferentialPairsRoutingRule (45 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property FavoredImpedance : TDouble
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_MaxGapAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_MaxWidthAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_MinGapAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_MinWidthAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_PreferedGapAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_PreferedWidthAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property ImpedanceDriven : Boolean
property ImpedanceProfileId : TPCBString
procedure Invalidate;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxImpedance : TDouble
property MaxUncoupledLength : TCoord
property MinImpedance : TDouble
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetState_MaxGapAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_MaxWidthAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_MinGapAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_MinWidthAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_PreferedGapAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_PreferedWidthAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);

## IPCB_DifferentialPairsRoutingRule2 (46 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property FavoredImpedance : TDouble
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_MaxGapAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_MaxWidthAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_MinGapAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_MinWidthAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_PreferedGapAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_PreferedWidthAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property ImpedanceDriven : Boolean
property ImpedanceProfileId : TPCBString
procedure Invalidate;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxImpedance : TDouble
property MaxUncoupledLength : TCoord
property MinImpedance : TDouble
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetState_MaxGapAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_MaxUncoupledLength(Value : Integer);
procedure SetState_MaxWidthAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_MinGapAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_MinWidthAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_PreferedGapAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_PreferedWidthAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);

## IPCB_DifferentialPairsRoutingRule3 (56 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property FavoredImpedance : TDouble
property FilterLayerStackID : WideString
function FindImpedanceProfileForRule(Impedance : Double) : IPCB_ImpedanceProfile;
function GetImpedanceProfile : IPCB_ImpedanceProfile;
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_MaxGapAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_MaxWidthAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_MinGapAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_MinWidthAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_PreferedGapAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_PreferedWidthAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property ImpedanceDriven : Boolean
property ImpedanceProfileId : TPCBString
procedure Invalidate;
property IsAdvanced : Boolean
function IsLayerDefined(ALayer : Integer, const ALayerStackID : WideString) : Boolean;
function IsUnary : Boolean;
function IsUniformMaxWidth(const LSID : WideString, out Width : Integer) : Boolean;
function IsUniformMinWidth(const LSID : WideString, out Width : Integer) : Boolean;
function IsUniformPreferredWidth(const LSID : WideString, out Width : Integer) : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxImpedance : TDouble
property MaxLimit : TCoord
property MaxUncoupledLength : TCoord
property MinImpedance : TDouble
property MinLimit : TCoord
property MostFrequentGap : TCoord
property MostFrequentWidth : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetState_MaxGapAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_MaxWidthAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_MinGapAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_MinWidthAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_PreferedGapAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);
procedure SetState_PreferedWidthAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);

## IPCB_DiffPairsViolation (20 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
procedure Clear;
function Count : Integer;
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
function LayerIterator : IPCB_LayerIterator;
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_Dimension (55 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property ArrowLength : TCoord
property ArrowLineWidth : TCoord
property ArrowPosition : TDimensionArrowPosition
property ArrowSize : TCoord
property Bold : Boolean
property DimensionKind : TDimensionKind
property ExtensionLineWidth : TCoord
property ExtensionOffset : TCoord
property ExtensionPickGap : TCoord
function FastSetState_XSizeYSize : Boolean;
property FontName : TPCBString
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Italic : Boolean
property LineWidth : TCoord
procedure MoveTextByXY(AX : Integer, AY : Integer);
procedure MoveTextToXY(AX : Integer, AY : Integer);
property PrimitiveLock : Boolean
procedure References_Add(const r : IDispatch);
property References_Count : Integer
procedure References_Delete(Index : Integer);
procedure References_DeleteLast;
function References_IndexOf(P : IPCB_Primitive, Index : Integer) : Integer;
function References_Validate : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetPrefixIfNeeded;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property Style : TUnitStyle
property TextDimensionUnit : TDimensionUnit
property TextFont : TFontID
property TextFormat : TPCBString
property TextGap : TCoord
property TextHeight : TCoord
property TextLineWidth : TCoord
property TextPosition : TDimensionTextPosition
property TextPrecision : Integer
property TextPrefix : TPCBString
property TextSuffix : TPCBString
property TextValue : TReal
property TextWidth : TCoord
property TextX : TCoord
property TextY : TCoord
property UseTTFonts : Boolean
property x : TCoord
property X1Location : TCoord
property y : TCoord
property Y1Location : TCoord

## IPCB_DimensionsSection (29 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
function References_Invalid : Boolean;
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage
procedure UpdateDimensions;

## IPCB_DisconnectedSubnetsViolation (19 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property ViolationPt1 : TCoordPoint
property ViolationPt2 : TCoordPoint
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_DocumentPainterListener (10 members)
function OnBeginDrag(const Prim : IPCB_Primitive, DegreeOfFreedom : TDegreeOfFreedom) : Double;
procedure OnCalculateDragDisplacement(const Prim : IPCB_Primitive, DegreeOfFreedom : TDegreeOfFreedom, P : Pointer);
procedure OnClick(const Prim : IPCB_Primitive, DegreeOfFreedom : TDegreeOfFreedom);
procedure OnDegreeOfFreedomChanged(DegreeOfFreedom : TDegreeOfFreedom);
procedure OnDragging(const Prim : IPCB_Primitive, DegreeOfFreedom : TDegreeOfFreedom, Dist : Double);
procedure OnEndDrag(const Prim : IPCB_Primitive);
procedure OnPan(LookAtX : Double, LookAtY : Double, LookAtZ : Double);
procedure OnPrimitivesMeshed;
procedure OnRotate(RotationX : Double, RotationY : Double, RotationZ : Double, RotationW : Double);
procedure OnZoom(ZoomMultiplier : Double);

## IPCB_DocumentPainterView (19 members)
procedure AddOrUpdatePrim(const Prim : IPCB_Primitive);
procedure ClearSelection;
function ClientRect : IDispatch;
function FocusedPrimitive : IPCB_Primitive;
procedure FocusPrimitive(const Prim : IPCB_Primitive);
function GetState_ViewConfigAsString(out ConfigType : WideString, out Config : WideString) : Boolean;
procedure KeyDown(var Key : Word, Shift : TShiftState);
function RunLayerConfigurationDialog : Boolean;
procedure SelectPrimitive(const Prim : IPCB_Primitive);
procedure SetBoard(const ABoard : IPCB_Board);
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetCameraAngle(LookAtX : Double, LookAtY : Double, LookAtZ : Double, RotationX : Double, RotationY : Double, RotationZ : Double, RotationW : Double, ZoomMultiplier : Double);
procedure SetDegreeOfFreedom(DegreeOfFreedom : TDegreeOfFreedom);
procedure SetDocumentPainterListener(const ACameraMoveListener : IPCB_DocumentPainterListener);
procedure SetInteractive(Value : LongBool);
function SetState_ViewConfigFromString(const ConfigType : WideString, const Config : WideString) : Boolean;
procedure SetVariant(Variant : IProjectVariant);
procedure ShowFloorShadow(Enabled : LongBool);
procedure Zoom(Delta : Integer);

## IPCB_DRCBinaryResult (9 members)
property CheckResult : Integer
function GetState_ScopeObjectKind : TObjectId;
function GetState_ScopeObjectName : WideString;
property IsBinary : Boolean
property Prim1 : IPCB_Primitive
property Prim2 : IPCB_Primitive
property Rule : IPCB_Rule
property ScopeObjectID : WideString
property Violation : IPCB_Violation

## IPCB_DRCResult (8 members)
property CheckResult : Integer
function GetState_ScopeObjectKind : TObjectId;
function GetState_ScopeObjectName : WideString;
property IsBinary : Boolean
property Prim1 : IPCB_Primitive
property Rule : IPCB_Rule
property ScopeObjectID : WideString
property Violation : IPCB_Violation

## IPCB_DRCResultAggregator (5 members)
procedure BeginUpdate;
procedure ClearBinaryResults;
procedure EndUpdate;
procedure RegisterCheckNotificationHandler(const Handler : IRuleCheckNotificationHandler);
procedure UnregisterCheckNotificationHandler(const Handler : IRuleCheckNotificationHandler);

## IPCB_DRCResultSingleValue (9 members)
property CheckResult : Integer
function GetState_ScopeObjectKind : TObjectId;
function GetState_ScopeObjectName : WideString;
property IsBinary : Boolean
property Prim1 : IPCB_Primitive
property Rule : IPCB_Rule
property ScopeObjectID : WideString
property Value : Integer
property Violation : IPCB_Violation

## IPCB_DrillLayerPair (28 members)
procedure AddToSubstack(const StackID : WideString);
property Board : IPCB_Board
procedure CopyTo(const ADrillLayerPair : IPCB_DrillLayerPair);
property CounterHoleParams : IPCB_CounterHoleParams
procedure DeleteFromAllSubstacks;
procedure DeleteFromSubstack(const StackID : WideString);
property Description : TPCBString
property DrillLayerPairType : TDrillLayerPairType
property HighLayer : TV6_Layer
function I_ObjectAddress : Pointer;
property Inverted : Boolean
property IsBackdrill : Boolean
function IsCounterHole : Boolean;
function IsDefinedIn(const StackID : WideString) : Boolean;
function IsSimilarTo(ADLP : IPCB_DrillLayerPair) : Boolean;
property LowLayer : TV6_Layer
property Name : TPCBString
procedure OrderLayers;
property PlotDrillDrawing : Boolean
property PlotDrillGuide : Boolean
procedure Stacks_Add(const AID : WideString);
procedure Stacks_Clear;
function Stacks_Count : Integer;
function Stacks_Item(AIndex : Integer) : WideString;
property StartLayer : IPCB_LayerObject
property StopLayer : IPCB_LayerObject
procedure Substacks_FromString(const Src : WideString);
function Substacks_ToString : WideString;

## IPCB_DrillLayerPairManager (5 members)
property Items[AIndex: Integer] : IPCB_DrillLayerPair
function Count : Integer;
procedure Delete(AIndex : Integer);
procedure DisposeAllLayerPairs;
function HasMicroViaTypes : Boolean;

## IPCB_DrillTable (25 unique + inherits IPCB_Primitive)
property DrillTableUnits : TUnit
property Font : TFontID
function GetDrillTableGraphicIterator : IPCB_DrillTableGraphicIterator;
property IncludeFooter : Boolean
property IncludeNonplatedPads : Boolean
property IncludeNonslottedPads : Boolean
property IncludePlatedPads : Boolean
property IncludeSlottedPads : Boolean
property IncludeTitle : Boolean
property IncludeTitleDrillLayerPair : Boolean
property IncludeTitleIncludedHoles : Boolean
property IncludeTitlePlatingThickness : Boolean
property IncludeVias : Boolean
property LayerPair : IPCB_DrillLayerPair
property LineWidth : TCoord
property PlatingThickness : TCoord
property SeparatePadsVias : Boolean
property ShowColumnComment : Boolean
property ShowColumnObjType : Boolean
property ShowColumnTolerance : Boolean
property ShowSecondaryUnits : Boolean
property Size : TCoord
property Width : TCoord
property x : TCoord
property y : TCoord

## IPCB_DrillTableGraphicIterator (2 members)
function First : IPCB_Primitive;
function Next : IPCB_Primitive;

## IPCB_DrillTableIterator (2 members)
function First : IPCB_DrillTable;
function Next : IPCB_DrillTable;

## IPCB_ECOOptions (10 members)
property ECOFileName : TPCBString
property ECOIsActive : Boolean
procedure Export_ToParameters(Parameters : PWideChar);
procedure Export_ToParameters_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version4(Parameters : PWideChar);
function I_ObjectAddress : Pointer;
procedure Import_FromParameters(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, Parameters : PWideChar);
property OptionsObjectID : TOptionsObjectId

## IPCB_ElectricalCalculation (11 members)
function CalculateImpedanceAtCrossSection(ALayer : Integer, const ACheckPoint : IDispatch, const ATraceDirection : IDispatch, ATraceWidth : Integer, ADiffPairGap : Integer) : Double;
function CanCalculateSignalDelayForPrimitive(const APrimitive : IPCB_Primitive) : Boolean;
function GetPrimitiveCurrent(const APrimitive : IPCB_Primitive) : Double;
function GetPrimitiveResistance(const APrimitive : IPCB_Primitive) : Double;
function GetSignalDelayForPrim(const APrimitive : IPCB_Primitive) : Double;
function GetSignalDelayPerMeter(const APrimitive : IPCB_Primitive) : Double;
procedure ResetDelaysCalculator;
procedure SaveSimbeorProjectForPrimitive(const APrimitive : IPCB_Primitive, const SaveFolder : WideString);
procedure SignalDelayExportToParamters(const AParameters : IWideParameterList);
procedure SignalDelayImportFromParameters(const AParameters : IWideParameterList);
procedure SignalDelayUpdateAfterLoad;

## IPCB_ElectricalLayer (9 members)
property CopperThickness : TCoord
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_ElectricalLayer2 (10 members)
property CopperOrientation : TCopperOrientation
property Dielectric : IPCB_DielectricLayer
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_ElectricalLayerMapping (5 members)
procedure FixPrimitiveLayerIfNeeded(const Primitive : IPCB_Primitive);
function GetDestLayerStack : IPCB_LayerStackBase;
function GetSourceLayerStack : IPCB_LayerStackBase;
function IsMappingNeeded : Boolean;
function TryMapLayerByPosition(const SourceLayer : Integer, out DestLayer : Integer) : Boolean;

## IPCB_ElectricalParameters (2 members)
property Current : Double
property Resistance : Double

## IPCB_Embedded (2 unique + inherits IPCB_Primitive)
property Description : TPCBString
property Name : TPCBString

## IPCB_EmbeddedBoard (53 unique + inherits IPCB_Primitive)
procedure ApplyFilterToIterator(const AIterator : IPCB_AbstractIterator);
function AreLayerStacksCompatible : LongBool;
function AreTransmitSettingsEqual(const AEmbeddedBoard : IPCB_EmbeddedBoard) : Boolean;
function BoardIterator_CreateFiltered : IPCB_BoardIterator;
procedure BoardIterator_Destroy(var AIterator : IPCB_BoardIterator);
property ChildBoard : IPCB_Board
property ColCount : Integer
procedure CollectTransmitParameters;
property ColSpacing : TCoord
function CreareTransmitTextCacheIterator(AOnlyText : Boolean) : IPCB_EmbeddedBoardTransmitTextCacheIterator;
procedure DefineViewportRectGraphically;
property DocumentPath : TPCBString
function GetForbiddenParameterList : IPCB_ParameterList;
function GetState_ColMargin : Integer;
function GetState_RelativeDocumentPath : WideString;
function GetState_RowMargin : Integer;
function GetState_StateId : Cardinal;
function IsRedundant : Boolean;
property IsViewport : Boolean
property MirrorFlag : Boolean
property OriginMode : TEmbeddedBoardOriginMode
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
property RowCount : Integer
property RowSpacing : TCoord
property Scale : Double
procedure SetState_ColMargin(Value : Integer);
procedure SetState_RowMargin(Value : Integer);
procedure SetState_VisibleLayers(const ALayers : IPCB_LayerSet);
function SetState_XSizeYSize : Boolean;
function SpatialIterator_CreateFiltered : IPCB_SpatialIterator;
procedure SpatialIterator_Destroy(var AIterator : IPCB_SpatialIterator);
property TitleFontColor : TColor
property TitleFontName : TPCBString
property TitleFontSize : Integer
property TitleObject : Int64
property TransmitBoardShape : Boolean
property TransmitDimensions : Boolean
property TransmitDrillTable : Boolean
property TransmitLayerStackTable : Boolean
property TransmitParametersCount : Integer
property ViewConfig : TPCBString
property ViewConfigType : TPCBString
property ViewportRect : TCoordRect
property ViewportTitle : TPCBString
property ViewportVisible : Boolean
property VisibleLayers : IPCB_LayerSet
property X1Location : TCoord
property X2Location : TCoord
property XLocation : TCoord
property Y1Location : TCoord
property Y2Location : TCoord
property YLocation : TCoord

## IPCB_EmbeddedBoardTransmitTextCacheIterator (2 members)
function First : IPCB_Primitive;
function Next : IPCB_Primitive;

## IPCB_EventBroadcaster (2 members)
procedure Subscribe(const AListener : IInterface, const APriority : Integer);
procedure UnSubscribe(const AListener : IInterface);

## IPCB_ExpressionManager (6 members)
function ExecRuleExpression(const Expression : WideString, Board : IPCB_Board, const RuleKind : TRuleKind, out AffectedObjects : Integer) : Boolean;
function HighlightByExpression(Expression : WideString, Board : IPCB_Board, HighlightMethods : THighlightMethodSet) : Boolean;
function IsExpressionValid(const Expression : WideString, const Board : IPCB_Board, out ErrLine : Integer, out ErrChar : Integer, out ErrMessage : WideString) : Boolean;
function ShowExpressionBuilder(Board : IPCB_Board, out ResExpression : WideString) : Boolean;
function ShowExpressionHelper(Expression : WideString, Board : IPCB_Board, out ResExpression : WideString) : Boolean;
procedure ShowSmartEdit(SpecialString : WideString, EditedAtributeId : Integer, BoardCollection : IPCB_BoardCollection);

## IPCB_ExternalQueryExpressionForm (4 members)
function GetState_QueryExpression : WideString;
function GetState_ReadOnly : Boolean;
procedure SetState_QueryExpression(AExpressin : WideString);
procedure SetState_ReadOnly(AValue : Boolean);

## IPCB_ExternalRuleForm (2 members)
procedure ApplyRuleChanges;
procedure UpdateRuleState;

## IPCB_ExternalRuleHost (2 members)
function GetRuleExternalForm(const ARule : IPCB_Rule) : IExternalForm;
function GetRuleQueryExpressionForm(const ABoard : IPCB_Board) : IExternalForm;

## IPCB_Factory (4 members)
function AllLayers : IPCB_LayerSet;
function CreateElectricalLayerMapping(const SourceLayerStack : IPCB_LayerStackBase, const DestLayerStack : IPCB_LayerStackBase) : IPCB_ElectricalLayerMapping;
function CreateLayerSet : IPCB_LayerSet;
function SignalLayers : IPCB_LayerSet;

## IPCB_FanoutControlRule (31 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property BGAFanoutDirection : TBGAFanoutDirection
property BGAFanoutViaMode : TBGAFanoutViaMode
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property FanoutDirection : TFanoutDirection
property FanoutStyle : TFanoutStyle
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property ViaGrid : TCoord

## IPCB_Fill (18 unique + inherits IPCB_Primitive)
function GetState_Length : Integer;
function GetState_LocationX : Integer;
function GetState_LocationY : Integer;
function GetState_Width : Integer;
function IsRedundant : Boolean;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
procedure SetState_Length(const ANewValue : Integer);
procedure SetState_LocationX(const ANewValue : Integer);
procedure SetState_LocationY(const ANewValue : Integer);
procedure SetState_Width(const ANewValue : Integer);
function SetState_XSizeYSize : Boolean;
property X1Location : TCoord
property X2Location : TCoord
property XLocation : TCoord
property Y1Location : TCoord
property Y2Location : TCoord
property YLocation : TCoord

## IPCB_FontInfoRec (4 members)
procedure Export_ToStream(const AStream : IStream);
function I_ObjectAddress : Pointer;
procedure Import_FromStream(const AStream : IStream);
property LettersCount : Integer

## IPCB_FromTo (7 unique + inherits IPCB_Primitive)
property FromPad : TPCBString
function GetFromPad : IPCB_Pad;
function GetNet : IPCB_Net;
function GetState_RoutedLength : Integer;
function GetToPad : IPCB_Pad;
property NetName : TPCBString
property ToPad : TPCBString

## IPCB_FullComponent (14 members)
property Comment : TPCBString
property ComponentID : TPCBString
property Description : TPCBString
property Designator : TPCBString
property DesignVariant : IPCB_DesignVariant
property Footprint : IPCB_Component
property ItemGUID : TPCBString
property Kind : TComponentKind
property LibraryItemID : TPCBString
property LibraryName : TPCBString
property Parameters : IPCB_ParameterList
property RevisionGUID : TPCBString
property SystemParameters : IPCB_ParameterList
property VaultGUID : TPCBString

## IPCB_FullComponentList (2 members)
property Items[AIndex: Integer] : IPCB_FullComponent
property Count : Integer

## IPCB_FullComponents (3 members)
function GetComponents(const ADesignVariant : IPCB_DesignVariant) : IPCB_FullComponentList;
function GetComponentsForAllVariants : IPCB_FullComponentList;
function GetComponentsForCurrentVariant : IPCB_FullComponentList;

## IPCB_FullComponentsManager (5 members)
function GetDesignVariants : IPCB_DesignVariants;
function GetFullComponents : IPCB_FullComponents;
procedure SetBoard(const ABoard : IPCB_Board);
procedure SetCurrentVariant(const AVariantID : WideString);
procedure UpdateVariantsFromProject;

## IPCB_GeometricPolygon (11 members)
property IsHole[I: Integer] : Boolean
property Contour[I: Integer] : IPCB_Contour
function AddContour(AContour : IPCB_Contour) : IPCB_Contour;
function AddContourIsHole(AContour : IPCB_Contour, IsHole : Boolean) : IPCB_Contour;
function AddEmptyContour : IPCB_Contour;
property Area : Double
procedure ArrangeContours;
property Count : Integer
procedure FixupSelfIntersections;
property Polygon : Pointer
function Replicate : IPCB_GeometricPolygon;

## IPCB_GeometryItem (2 members)
procedure GetAABB(out LowX : Single, out LowY : Single, out LowZ : Single, out HighX : Single, out HighY : Single, out HighZ : Single);
function GetLayerData(Layer : Integer, GType : TGeometryLayerType) : IPCB_GeometryLayerData;

## IPCB_GeometryItem_LayerIterator (1 members)
function Next(out Layer : Integer, out GType : TGeometryLayerType) : Boolean;

## IPCB_GeometryItems (2 members)
function Count : Integer;
function Item(Index : Integer) : IPCB_GeometryItem;

## IPCB_GeometryLayerData (8 members)
procedure Arc(IsCutout : Boolean, Index : Integer, out CenterX : Single, out CenterY : Single, out AngleStart : Single, out AngleEnd : Single, out Radius : Single, out Width : Single, out LowZ : Integer, out HighZ : Integer, out ColorID : IPCB_ColorID);
function ArcCount(IsCutout : Boolean) : Integer;
procedure Mesh(AIndex : Integer, out SrcBody : IPCB_3DBody, out Texture : IPCB_Texture, out m00 : Single, out m01 : Single, out m02 : Single, out m03 : Single, out m10 : Single, out m11 : Single, out m12 : Single, out m13 : Single, out m20 : Single, out m21 : Single, out m22 : Single, out m23 : Single, out m30 : Single, out m31 : Single, out m32 : Single, out m33 : Single);
function MeshCount : Integer;
procedure Poly(IsCutout : Boolean, Index : Integer, out CopperPoly : IPCB_CopperPolygon, out IsCore : Boolean, out Outline : Boolean, out m00 : Single, out m01 : Single, out m02 : Single, out m10 : Single, out m11 : Single, out m12 : Single, out m20 : Single, out m21 : Single, out m22 : Single, out LowZ : Integer, out HighZ : Integer, out ColorID : IPCB_ColorID);
function PolyCount(IsCutout : Boolean) : Integer;
procedure Uni(IsCutout : Boolean, Index : Integer, out PosX : Single, out PosY : Single, out DirX : Single, out DirY : Single, out SizeX : Single, out SizeY : Single, out Radius : Single, out LowZ : Integer, out HighZ : Integer, out ColorID : IPCB_ColorID);
function UniCount(IsCutout : Boolean) : Integer;

## IPCB_GeometryLayerData2 (14 members)
procedure Arc(GType : TGeometryType, Index : Integer, out CenterX : Single, out CenterY : Single, out AngleStart : Single, out AngleEnd : Single, out Radius : Single, out Width : Single, out LowZ : Integer, out HighZ : Integer, out ColorID : IPCB_ColorID);
function ArcCount(GType : TGeometryType) : Integer;
procedure Glyph(Index : Integer, out ScenePosX : Single, out ScenePosY : Single, out ScenePosZ : Single, out ZIndex : Integer, out BoardAreaX : Single, out BoardAreaY : Single, out TextBoundsX : Single, out TextBoundsY : Single, out HideScale1 : Single, out HideScale2 : Single, out NoZoom : Boolean, out Sprite : IInterface, out Sprite_PosX : Single, out Sprite_PosY : Single, out Sprite_SizeX : Single, out Sprite_SizeY : Single, out Sprite_DirX : Single, out Sprite_DirY : Single, out Sprite_TexX1 : Single, out Sprite_TexY1 : Single, out Sprite_TexX2 : Single, out Sprite_TexY2 : Single, out ColorID : IPCB_ColorID);
function GlyphsCount : Integer;
procedure Line(Index : Integer, out Pos1X : Single, out Pos1Y : Single, out Pos2X : Single, out Pos2Y : Single, out LowZ : Integer, out HighZ : Integer, out ZOffset1 : Single, out ZOffset2 : Single, out Width : Single, out Dash : Single, out DashOffset : Single, out ColorID1 : IPCB_ColorID, out ColorID2 : IPCB_ColorID);
function LinesCount : Integer;
procedure Mesh(AIndex : Integer, out SrcBody : IPCB_3DBody, out Texture : IPCB_Texture, out m00 : Single, out m01 : Single, out m02 : Single, out m03 : Single, out m10 : Single, out m11 : Single, out m12 : Single, out m13 : Single, out m20 : Single, out m21 : Single, out m22 : Single, out m23 : Single, out m30 : Single, out m31 : Single, out m32 : Single, out m33 : Single, out TexTrans0X : Single, out TexTrans0Y : Single, out TexTrans0Z : Single, out TexTrans1X : Single, out TexTrans1Y : Single, out TexTrans1Z : Single, out ZIndex : Integer, out IndRangeStart : Integer, out IndRangeEnd : Integer, out ColorID : IPCB_ColorID, out HasTransparentParts : Boolean, out PrimType : Integer, out LightModel : Integer);
function MeshCount : Integer;
procedure Point(Index : Integer, out ScenePosX : Single, out ScenePosY : Single, out ZIndex : Integer, out Size : Single, out Sprite_TexX1 : Single, out Sprite_TexY1 : Single, out Sprite_TexX2 : Single, out Sprite_TexY2 : Single, out Sprite : IInterface, out ColorID : IPCB_ColorID);
function PointsCount : Integer;
procedure Poly(GType : TGeometryType, Index : Integer, out CopperPoly : IPCB_CopperPolygon, out IsCore : Boolean, out Outline : Boolean, out m00 : Single, out m01 : Single, out m02 : Single, out m10 : Single, out m11 : Single, out m12 : Single, out m20 : Single, out m21 : Single, out m22 : Single, out LowZ : Integer, out HighZ : Integer, out ColorID : IPCB_ColorID);
function PolyCount(GType : TGeometryType) : Integer;
procedure Uni(GType : TGeometryType, Index : Integer, out PosX : Single, out PosY : Single, out DirX : Single, out DirY : Single, out SizeX : Single, out SizeY : Single, out Radius : Single, out LowZ : Integer, out HighZ : Integer, out ClipQuadrantX : Single, out ClipQuadrantY : Single, out ColorID : IPCB_ColorID);
function UniCount(GType : TGeometryType) : Integer;

## IPCB_GeometryMaker (3 members)
function BuildGeometry(const APrim : IPCB_Primitive) : IPCB_GeometryItems;
property LayerMap : IPCB_GeometryMakerLayerMap
property MaterialMap : IPCB_GeometryMakerMaterialMap

## IPCB_GeometryMakerLayerFilterLogic (1 members)
function DoFilter(const Layer : Integer, GType : TGeometryLayerType) : Boolean;

## IPCB_GeometryMakerLayerMap (5 members)
property Count : Integer
function GetLayerInfo(AIndex : Integer, out ALayer : Integer, out AGeometryLayerType : TGeometryLayerType) : Boolean;
function GetLayerZBottom(ALayer : Integer) : Integer;
function GetLayerZTop(ALayer : Integer) : Integer;
function GetZCoord(AZIndex : Integer) : Integer;

## IPCB_GeometryMakerMaterialMap (3 members)
function GetColorID(const Layer : Integer, GType : TGeometryLayerType, ObjectId : TObjectId, Hatching : TMaterialHatchStyle, Bordered : Boolean, ADRCState : TDRCState, ColorOverrideR : Byte, ColorOverrideG : Byte, ColorOverrideB : Byte, ColorOverrideA : Byte, const FilterLogic : IPCB_GeometryMakerLayerFilterLogic) : IPCB_ColorID;
function GetState_ViewConfiguration : IPCB_GM_SimpleViewConfiguration;
procedure SetState_ViewConfiguration(const AValue : IPCB_GM_SimpleViewConfiguration);

## IPCB_GerberOptions (26 members)
property AptTable : TPCBString
property BorderSize : TCoord
property CenterPhotoPlots : Boolean
property EmbedApertures : Boolean
procedure Export_ToParameters(Parameters : PWideChar);
procedure Export_ToParameters_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version4(Parameters : PWideChar);
property FilmSizeX : TCoord
property FilmSizeY : TCoord
property FlashAllFills : Boolean
property G54 : Boolean
property GerberDecs : Integer
property GerberUnits : Integer
function I_ObjectAddress : Pointer;
procedure Import_FromParameters(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, Parameters : PWideChar);
property MaxAperSize : TCoord
property MinusTol : TCoord
property OptionsObjectID : TOptionsObjectId
property PadsFlashOnly : Boolean
property Panelize : Boolean
property PlusTol : TCoord
property ReliefShapesAllowed : Boolean
property SortOutput : Boolean
property UseSoftwareArcs : Boolean

## IPCB_GM_3DBodyVertices (1 members)
procedure GetItem(const AIndex : Integer, out x : Single, out y : Single, out z : Single, out NX : Byte, out NY : Byte, out NZ : Byte, out NW : Byte, out r : Byte, out g : Byte, out b : Byte, out a : Byte);

## IPCB_GM_3DSimpleMesh (5 members)
function AxisCount : Integer;
procedure GetColor(out r : Single, out g : Single, out b : Single, out a : Single);
procedure GetFaceAxes(AIndex : Integer, out AxisX1 : Single, out AxisY1 : Single, out AxisZ1 : Single, out AxisX2 : Single, out AxisY2 : Single, out AxisZ2 : Single);
function GetState_Count : Integer;
procedure GetVertex(APos : Integer, out x : Single, out y : Single, out z : Single, out NX : Single, out NY : Single, out NZ : Single);

## IPCB_GM_AtlasMap (5 members)
function GetCommentMark(const Style : TCommentMarkType) : IPCB_GM_AtlasSprites;
function GetComponentOrigin : IPCB_GM_AtlasSprites;
function GetFilled : IPCB_GM_AtlasSprites;
function GetGlyphs(FontName : PAnsiChar, FontSize : Integer, Bold : Boolean, Italic : Boolean, const Text : WideString) : IPCB_GM_AtlasSprites;
function GetHandle(const Hollow : Boolean) : IPCB_GM_AtlasSprites;

## IPCB_GM_AtlasSprites (6 members)
procedure GetAreaSize(out XSize : Single, out YSize : Single);
function Glyphs_Count : Integer;
procedure Glyphs_GetXXX(GlyphIdx : Integer, out x1 : Single, out x2 : Single, out x3 : Single);
procedure Glyphs_GetYYYY(GlyphIdx : Integer, out y1 : Single, out y2 : Single, out y3 : Single, out y4 : Single);
procedure Glyphs_ImgRectF(GlyphIdx : Integer, out x1 : Single, out y1 : Single, out x2 : Single, out y2 : Single);
procedure Glyphs_Offset(GlyphIdx : Integer, out x : Single, out y : Single);

## IPCB_GM_AxisPoints (2 members)
function Count : Integer;
function GetItem(const AIndex : Integer) : IDispatch;

## IPCB_GM_Bytes (2 members)
function Data : Pointer;
function Size : Integer;

## IPCB_GM_ComponentBody (1 members)
function GetPartOpacity(const AMeshPartName : string) : Single;

## IPCB_GM_ContourAdapter (2 members)
procedure Vertex(Idx : Integer, out x : Integer, out y : Integer);
function VertexCount : Integer;

## IPCB_GM_Indices (1 members)
function GetItem(const AIndex : Integer) : Integer;

## IPCB_GM_LayerIndices (2 members)
function Count : Integer;
function GetItem(const AIndex : Integer) : Integer;

## IPCB_GM_LayerList (2 members)
function Count : Integer;
function GetItem(const AIndex : Integer) : IDispatch;

## IPCB_GM_LayerMap2 (13 members)
function Count : Integer;
function ElectricalLayersIndices : IPCB_GM_LayerIndices;
function Get_IBoard : IPCB_Board;
function GetBottomPaste(const ALayer : IDispatch) : IPCB_GM_LayerList;
function GetBottomSolders(const ALayer : IDispatch) : IPCB_GM_LayerList;
function GetLayer(Index : Integer) : IDispatch;
function GetLayer_ZIndex(ALayerIndex : Integer, AType : TLayerZIndexType) : Integer;
function GetTopPaste(const ALayer : IDispatch) : IPCB_GM_LayerList;
function GetTopSolders(const ALayer : IDispatch) : IPCB_GM_LayerList;
function IndexOfLayer(const ALayer : IDispatch) : Integer;
function PhysicalLayerIndices : IPCB_GM_LayerIndices;
function ZIndex_ToCoord(AZIndex : Integer) : Integer;
function ZIndex_ToLayer(AZIndex : Integer, const ALayer : IDispatch, out AZIndType : TLayerZIndexType) : Boolean;

## IPCB_GM_MeshFaceIterator (2 members)
function First : IPCB_GM_3DSimpleMesh;
function Next : IPCB_GM_3DSimpleMesh;

## IPCB_GM_MeshPart (2 members)
function FaceIterator : IPCB_GM_MeshFaceIterator;
function GetState_Name : WideString;

## IPCB_GM_MeshPartIterator (2 members)
function FirstPart : IPCB_GM_MeshPart;
function NextPart : IPCB_GM_MeshPart;

## IPCB_GM_Poly (9 members)
function BorderVertexCount : Integer;
function CapIndexCount : Integer;
procedure GetBorderVertex(const AIndex : Integer, out ACoordX : Single, out ACoordY : Single, out ANormalX : Byte, out ANormalY : Byte, out ANormalZ : Byte);
function GetCapIndex(const Index : Integer) : Integer;
function GetLineIndex(const Index : Integer) : Integer;
procedure GetVertex(const Index : Integer, out CoordX : Single, out CoordY : Single);
procedure GetVertexNormal(const Index : Integer, out ANormalX : Byte, out ANormalY : Byte, out ANormalZ : Byte);
function LineIndexCount : Integer;
function VertexCount : Integer;

## IPCB_GM_PolygonMap (5 members)
procedure BeginMTTriangulation;
procedure EndMTTriangulation;
function ObtainPoly(const AKey : IPCB_GM_Bytes, gpcPoly : Pointer, const UnTransform : IDispatch) : IPCB_GM_Poly;
function ObtainPoly_Triangulated(const AKey : IPCB_GM_Bytes, const APoly : IPCB_GM_TriangulatedPolyAdapter, const UnTransform : IDispatch) : IPCB_GM_Poly;
function TryGetPoly(const AKey : IPCB_GM_Bytes) : IPCB_GM_Poly;

## IPCB_GM_PolyTrisAdapter (6 members)
function Cap_Index(Idx : Integer) : Integer;
function Cap_IndexCount : Integer;
function Outline_Index(Idx : Integer) : Integer;
function Outline_IndexCount : Integer;
procedure Vertex(Idx : Integer, out x : Integer, out y : Integer);
function VertexCount : Integer;

## IPCB_GM_PrimitiveList (2 members)
function Count : Integer;
function GetItem(const AIndex : Integer) : IPCB_Primitive;

## IPCB_GM_SimpleViewConfiguration (20 members)
function BoardThicknessScaling : Double;
function CurrentLayer : Integer;
function GetSectionViewAxisColor(Axis : Integer) : IDispatch;
function GetSingleLayerMode : TSingleLayerMode;
procedure GetSpecialMaterialInfo(const Layer : IDispatch, SpecID : TSpecialMaterials, DRC : TDRCState, ForceBordered : Boolean, AIsKeepout : Boolean, AInDimension : Boolean, const InOverrideColor : IDispatch, const Diffuse : IDispatch, const DRCColor : IDispatch, const OverrideColor : IDispatch, out Bordered : Boolean, out Hatched : TMaterialHatchStyle, out Offset2D : Integer, out NoClip : Integer);
procedure GetStackMaterialInfo(const Layer : IDispatch, ObjectId : TObjectId, DRC : TDRCState, ForceBordered : Boolean, AIsKeepout : Boolean, AInDimension : Boolean, const InOverrideColor : IDispatch, const Diffuse : IDispatch, const DRCColor : IDispatch, const OverrideColor : IDispatch, out Bordered : Boolean, out Hatched : TMaterialHatchStyle, out Offset2D : Integer);
function GetState_PrimDrawMode(AOId : TObjectId) : TDrawModeEx;
function GetState_SectionViewMode : TSectionViewMode;
function GetState_ShowComponentBodies : Boolean;
function GetState_ShowComponentStepModels : Boolean;
function GetState_ShowOriginMarker : Boolean;
function GetState_ToggleLayers(ALayer : Integer) : Boolean;
function GetState_WorkspaceBeginColor : IDispatch;
function GetState_WorkspaceEndColor : IDispatch;
function Is3D : Boolean;
function Is3D_ColoredByLayer : Boolean;
function IsLayerInSingleLayerMode(const ALayer : IDispatch) : Boolean;
function IsPerspective : Boolean;
function UseSysColorsFor3D : Boolean;
function VisibleLayers : IPCB_LayerSet;

## IPCB_GM_SimpleViewState (1 members)
property BoardFlipped : Boolean

## IPCB_GM_TriangulatedPolyAdapter (3 members)
function Contour(Idx : Integer) : IPCB_GM_ContourAdapter;
function CountourCount : Integer;
function Tris : IPCB_GM_PolyTrisAdapter;

## IPCB_GM_Vec2Arr (2 members)
function Count : Integer;
procedure GetItem(const AIndex : Integer, out x : Single, out y : Single);

## IPCB_GM_Vec4Arr (2 members)
function Count : Integer;
procedure GetItem(const AIndex : Integer, out x : Single, out y : Single, out z : Single, out W : Single);

## IPCB_GOMouseHoverHandler (1 members)
procedure HandleMouseHoverEvent(GraphicalObject : Pointer);

## IPCB_GraphicalView (31 members)
procedure ClientToPCBLocation(const x : Integer, const y : Integer, out PX : Integer, out PY : Integer);
procedure CloseState_TemporaryWindow;
function GetExtents_Camera(out LookAtX : Single, out LookAtY : Single, out LookAtZ : Single, out Zoom : Double, out Width : Integer, out Height : Integer, const BoardFlipped : Boolean) : Boolean;
function GetExtents_CameraIncludeComponents(out LookAtX : Single, out LookAtY : Single, out LookAtZ : Single, out Zoom : Double, out Width : Integer, out Height : Integer, const BoardFlipped : Boolean) : Boolean;
function GetExtents_CameraIncludeComponents3dBox(out LookAtX : Single, out LookAtY : Single, out LookAtZ : Single, out XSize : Integer, out YSize : Integer, out ZSize : Integer, const AllLayers : Boolean, const SelectedObjects : Boolean) : Boolean;
function GetExtents_CameraIncludeComponentsExt(out LookAtX : Single, out LookAtY : Single, out LookAtZ : Single, out Zoom : Double, out Width : Integer, out Height : Integer, const BoardFlipped : Boolean, const AllLayers : Boolean, const SelectedObjects : Boolean) : Boolean;
function GetState_AspectRatio : Single;
function GetState_Camera(out LookAtX : Single, out LookAtY : Single, out LookAtZ : Single, out QuatX : Single, out QuatY : Single, out QuatZ : Single, out QuatW : Single, out Zoom : Double) : Boolean;
function GetState_CameraFov(out Fov : Single) : Boolean;
function GetState_CameraUpVector(out UpX : Single, out UpY : Single, out UpZ : Single) : Boolean;
function GetState_FoldingRate : Single;
function GetState_ViewMode : TPCBViewMode;
function GetState_ViewPortMils(out Width : Integer, out Height : Integer) : Boolean;
function GetState_WindowSize(out Width : Integer, out Height : Integer) : Boolean;
function HasPausedProcess : Boolean;
function HasRunningProcess : Boolean;
function InRoutingProcess : Boolean;
function Is3D : Boolean;
procedure PCBLocationToClient(const x : Integer, const y : Integer, out PX : Integer, out PY : Integer);
procedure RenderToDC(DC : NativeUInt, const ResX : Integer, const ResY : Integer, const DestRect : IDispatch, const SrcRect : IDispatch);
procedure RenderToDCTransparent(DC : NativeUInt, const ResX : Integer, const ResY : Integer, const DestRect : IDispatch, const SrcRect : IDispatch, const Transparent : Boolean);
procedure SetIs3D(AValue : Boolean);
function SetState_Camera(const LookAtX : Single, const LookAtY : Single, const LookAtZ : Single, const QuatX : Single, const QuatY : Single, const QuatZ : Single, const QuatW : Single, const Zoom : Double) : Boolean;
function SetState_CameraFov(const Fov : Single) : Boolean;
function SetState_CameraUpVector(const UpX : Single, const UpY : Single, const UpZ : Single) : Boolean;
procedure SetState_FoldingRate(Value : Single);
procedure SetState_FoldingRateWithAnimation(Value : Single);
function SetState_TemporaryWindow(Width : Integer, Height : Integer) : Boolean;
procedure SetState_ViewMode(Value : TPCBViewMode);
function SetState_ViewPortMils(const Width : Integer, const Height : Integer) : Boolean;
procedure ZoomBoard;

## IPCB_GraphicalView3D (1 members)
procedure ClientToRay(x : Integer, y : Integer, out OrigX : Single, out OrigY : Single, out OrigZ : Single, out DirX : Single, out DirY : Single, out DirZ : Single);

## IPCB_GraphicCodeGenerator (3 members)
function GetDataMatrixDataString(const ADataToDataMatrix : WideString, out ADataStringWidth : Integer) : WideString;
function GetQrDataString(const ADataToQr : WideString, out ADataStringWidth : Integer) : WideString;
function IsValidDataMatrixString(const ADataToDataMatrix : WideString) : Boolean;

## IPCB_GridManager (22 members)
function AddCartesianGrid : IPCB_CartesianGrid;
function AddMCADCartesianGrid : IPCB_CartesianGrid;
function AddMCADPolarGrid : IPCB_PolarGrid;
function AddPolarGrid : IPCB_PolarGrid;
procedure BeginUpdate;
function CanDecrementGridPriority(const AGrid : IPCB_PlacementGrid) : Boolean;
function CanIncrementGridPriority(const AGrid : IPCB_PlacementGrid) : Boolean;
function CreatePlacementGridIterator : IPCB_PlacementGridIterator;
function CreateRealPlacementGuideIterator : IPCB_RealPlacementGuideIterator;
function DecrementGridPriority(const AGrid : IPCB_PlacementGrid) : Boolean;
procedure DeleteAllGrids;
procedure DeleteAllGuides;
procedure DeleteAllMCADGrids;
function DeleteGrid(const AGrid : IPCB_PlacementGrid) : Boolean;
function DeleteGuide(const AGuide : IPCB_PlacementGuide) : Boolean;
procedure EndUpdate;
function FindApplicableGrid(APrimitive : IPCB_Primitive) : IPCB_PlacementGrid;
function FindApplicableGridByXY(AX : Integer, AY : Integer) : IPCB_PlacementGrid;
function IncrementGridPriority(const AGrid : IPCB_PlacementGrid) : Boolean;
procedure NextStateID;
procedure ResolveGridPriorities;
function RunGridEditor(const ABoard : IPCB_Board, const AGrid : IPCB_PlacementGrid) : Boolean;

## IPCB_GridManagerEx (1 members)
function GetState_ComponentActionMode : Boolean;

## IPCB_GridManagerPcbLib (24 members)
function AddCartesianGrid : IPCB_CartesianGrid;
function AddMCADCartesianGrid : IPCB_CartesianGrid;
function AddMCADPolarGrid : IPCB_PolarGrid;
function AddPolarGrid : IPCB_PolarGrid;
procedure BeginUpdate;
function CanDecrementGridPriority(const AGrid : IPCB_PlacementGrid) : Boolean;
function CanIncrementGridPriority(const AGrid : IPCB_PlacementGrid) : Boolean;
function CreatePlacementGridIterator : IPCB_PlacementGridIterator;
function CreateRealPlacementGuideIterator : IPCB_RealPlacementGuideIterator;
function DecrementGridPriority(const AGrid : IPCB_PlacementGrid) : Boolean;
procedure DeleteAllGrids;
procedure DeleteAllGuides;
procedure DeleteAllMCADGrids;
function DeleteGrid(const AGrid : IPCB_PlacementGrid) : Boolean;
function DeleteGuide(const AGuide : IPCB_PlacementGuide) : Boolean;
procedure EndUpdate;
function FindApplicableGrid(APrimitive : IPCB_Primitive) : IPCB_PlacementGrid;
function FindApplicableGridByXY(AX : Integer, AY : Integer) : IPCB_PlacementGrid;
function GetIsLibComponentGridnGuide(const AGrid : IPCB_PlacementGuide) : Boolean;
function IncrementGridPriority(const AGrid : IPCB_PlacementGrid) : Boolean;
procedure NextStateID;
procedure ResolveGridPriorities;
function RunGridEditor(const ABoard : IPCB_Board, const AGrid : IPCB_PlacementGrid) : Boolean;
procedure SetIsLibComponentGridnGuide(const AGrid : IPCB_PlacementGuide, AValue : Boolean);

## IPCB_Group (14 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
function FastSetState_XSizeYSize : Boolean;
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property PrimitiveLock : Boolean
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property x : TCoord
property y : TCoord

## IPCB_Group3D (15 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
function FastSetState_XSizeYSize : Boolean;
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property PrimitiveLock : Boolean
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
function TryProjectPointToSurface(AX : Integer, AY : Integer, out AU : Integer, out AV : Integer, out AFaceIdx : Integer) : Boolean;
property x : TCoord
property y : TCoord

## IPCB_GroupComparisionResult (19 members)
function GetAffectedFootprintParameters : IInterfaceList;
function GetFootprintParameterDifference(Index : Integer) : WideString;
function GetFootprintParameterDifferenceCount : Integer;
function GetPrimitiveBoundingRectangleForLayer(Layer : Integer, PrimIndex : Integer, var LowX : Integer, var LowY : Integer, var HighX : Integer, var HighY : Integer) : Boolean;
function GetPrimitiveCountForGraphicalObject(GraphicalObject : Pointer) : Integer;
function GetPrimitiveCountForLayer(Layer : Integer) : Integer;
function GetPrimitiveCountForLayerOnlyVisual(Layer : Integer) : Integer;
function GetPrimitiveDescriptorForGraphicalObject(GraphicalObject : Pointer, PrimIndex : Integer) : string;
function GetPrimitiveDescriptorForLayer(Layer : Integer, PrimIndex : Integer) : string;
function GetPrimitiveForGraphicalObject(GraphicalObject : Pointer, PrimIndex : Integer) : IPCB_Primitive;
function GetPrimitiveForLayer(Layer : Integer, PrimIndex : Integer) : IPCB_Primitive;
function GetPrimitiveHasDiffsForLayer(Layer : Integer, PrimIndex : Integer) : Boolean;
function GetTotalLayerSet : IPCB_LayerSet;
property GroupFootprintsMatch : Boolean
property HasAttributeDifferencesAllLayers : Boolean
function LayerContainsDifferences(Layer : Integer) : Boolean;
property NumberOfCells : Integer
procedure SetGroupHighlightLayer(Layer : Integer);
procedure SetInView;

## IPCB_GroupEx (20 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
procedure CancelGroupWarehouseRegistration(const APrimitive : IPCB_Primitive);
function FastSetState_XSizeYSize : Boolean;
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property PrimitiveLock : Boolean
procedure RegisterWithGroupWarehouse(const APrimitive : IPCB_Primitive);
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure SetState_hx(AValue : Integer);
procedure SetState_hy(AValue : Integer);
procedure SetState_LayersUsedArray;
procedure SetState_lx(AValue : Integer);
procedure SetState_ly(AValue : Integer);
function SetState_XSizeYSize : Boolean;
property x : TCoord
property y : TCoord

## IPCB_GroupIterator (10 members)
procedure AddFilter_AllLayers;
procedure AddFilter_Area(x1 : Integer, y1 : Integer, x2 : Integer, y2 : Integer);
procedure AddFilter_IPCB_LayerSet(ALayerSet : IPCB_LayerSet);
procedure AddFilter_LayerSet(ALayerSet : TV6_LayerSet);
procedure AddFilter_LayerSetA(ALayerSet : Integer);
procedure AddFilter_ObjectSet(AObjectSet : TObjectSet);
function FirstPCBObject : IPCB_Primitive;
function I_ObjectAddress : Pointer;
function NextPCBObject : IPCB_Primitive;
procedure SetState_FilterAll;

## IPCB_HealthCheckAbsentTTFontsRecord (4 members)
function GetCheckId : THealthCheckId;
function GetCount : Integer;
function GetFontName(APos : Integer) : WideString;
function GetViolationsCount : Integer;

## IPCB_HealthCheckFromToRecord (4 members)
function GetCheckId : THealthCheckId;
function GetIdentifier : WideString;
function GetPrimitive : IPCB_Primitive;
function GetViolationsCount : Integer;

## IPCB_HealthCheckManager (5 members)
procedure AddObserver(const AHealthCheckManagerObserver : IPCB_HealthCheckManagerObserver);
function GetHealthChecksStorage : IPCB_HealthChecksStorage;
function GetHealthCheckTypeTrait(AHealthCheckId : THealthCheckId) : IPCB_HealthCheckTypeTrait;
procedure RemoveObserver(const AHealthCheckManagerObserver : IPCB_HealthCheckManagerObserver);
procedure ResendLastResults(AHealthCheckId : THealthCheckId);

## IPCB_HealthCheckManagerFactory (2 members)
function GetHealthCheckManager : IPCB_HealthCheckManager;
procedure SetBoard(ABoard : IPCB_Primitive);

## IPCB_HealthCheckManagerObservable (2 members)
procedure AddObserver(const AHealthCheckManagerObserver : IPCB_HealthCheckManagerObserver);
procedure RemoveObserver(const AHealthCheckManagerObserver : IPCB_HealthCheckManagerObserver);

## IPCB_HealthCheckManagerObserver (5 members)
procedure OnAddRecord(const AHealthCheckRecord : IPCB_HealthCheckRecord);
procedure OnCancelled(AHealthCheckId : THealthCheckId);
procedure OnDone(AHealthCheckId : THealthCheckId);
procedure OnReportProgress(AHealthCheckId : THealthCheckId, ACurrentCount : Integer, ATotalCount : Integer);
procedure OnStart(AHealthCheckId : THealthCheckId);

## IPCB_HealthCheckMicrosegmentsRecord (5 members)
function GetCheckId : THealthCheckId;
function GetCount : Integer;
function GetPrimitive : IPCB_Primitive;
function GetSegment(APos : Integer) : IDispatch;
function GetViolationsCount : Integer;

## IPCB_HealthCheckPinPairRecord (4 members)
function GetCheckId : THealthCheckId;
function GetDescription : WideString;
function GetPrimitive : IPCB_Primitive;
function GetViolationsCount : Integer;

## IPCB_HealthCheckPrimitiveRecord (3 members)
function GetCheckId : THealthCheckId;
function GetPrimitive : IPCB_Primitive;
function GetViolationsCount : Integer;

## IPCB_HealthCheckRecord (2 members)
function GetCheckId : THealthCheckId;
function GetViolationsCount : Integer;

## IPCB_HealthCheckRecordFixer (2 members)
function Fix : Boolean;
function IsUndoRedoHandledByImpl : Boolean;

## IPCB_HealthCheckRecordRepresentation (3 members)
function GetHealthCheckRecord : IPCB_HealthCheckRecord;
function GetViolationCoordPoint(Index : Integer, const Coord : IDispatch) : Boolean;
function GetViolationDescription(Index : Integer) : WideString;

## IPCB_HealthCheckRuleRecord (4 members)
function GetCheckId : THealthCheckId;
function GetPrimitive : IPCB_Primitive;
function GetRule : IPCB_Rule;
function GetViolationsCount : Integer;

## IPCB_HealthCheckSelfIntersectionsRecord (5 members)
function GetCheckId : THealthCheckId;
function GetCount : Integer;
function GetPoint(APos : Integer) : IDispatch;
function GetPrimitive : IPCB_Primitive;
function GetViolationsCount : Integer;

## IPCB_HealthChecksStorage (5 members)
procedure Deserialize(ASerializedStr : WideString);
function GetHealthCheckEnabled(AID : THealthCheckId) : Boolean;
function IsDefault : Boolean;
function Serialize : WideString;
procedure SetHealthCheckEnabled(AID : THealthCheckId, AEnabled : Boolean);

## IPCB_HealthCheckTypeTrait (6 members)
function GetHealthCheckDescription : WideString;
function GetHealthCheckRecordRepresentation(const AHealthCheckRecord : IPCB_HealthCheckRecord) : IPCB_HealthCheckRecordRepresentation;
function IsFixable : Boolean;
function IsHealthCheckActive : Boolean;
function IsNavigatable : Boolean;
procedure NavigateTo(const ARecord : IPCB_HealthCheckRecord, APos : Integer);

## IPCB_HighlightManager (4 members)
function Highlight_AllPrims : IPCB_HighlightManager_PrimIterator;
function Highlight_GetMode : TPrimitiveHighlightMode;
function Highlight_InteractiveEditing : Boolean;
function Highlight_StateID : Integer;

## IPCB_HighlightManager_PrimIterator (1 members)
function Next : IPCB_Primitive;

## IPCB_HoleToHoleClearanceRule (28 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property AllowStackedMicroVias : Boolean
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property Gap : TCoord
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_ImpedanceProfile (15 members)
procedure AssignID(const Id : WideString);
function CreateTraceImpedance(Substack : IPCB_LayerStack, Layer : Integer) : IPCB_TraceImpedance;
property DisplayName : TPCBString
function GetTraceImpedanceByIndex(Index : Integer) : IPCB_TraceImpedance;
function GetTraceImpedanceCount : Integer;
function GetTraceImpedanceForLayer(Substack : IPCB_LayerStack, Layer : Integer) : IPCB_TraceImpedance;
function I_ObjectAddress : Pointer;
property Id : TPCBString
property Impedance : TDouble
property ImpedanceTolerance : TDouble
property IsCoplanar : Boolean
property IsDiffPair : Boolean
property MasterLayerStack : IPCB_MasterLayerStack
property Name : TPCBString
function RemoveTraceImpedance(TraceImpedance : IPCB_TraceImpedance) : Boolean;

## IPCB_IndexForSaveIndexer (3 members)
procedure Clear;
function GetIndex(AObjectId : TObjectId) : Integer;
procedure SetIndex(AObjectId : TObjectId, AValue : Integer);

## IPCB_InteractiveDiffPairRoutingProcess (55 members)
property RouteModeEnabled[AMode: TAdvancedRouteMode] : Boolean
property AllowViaPushing : Boolean
property AutoNecking : Boolean
property AutoRemoveAntennas : Boolean
property AutoRemoveLoops : Boolean
property AutoTerminateRouting : Boolean
property CornerRounding : Boolean
property CurrentLayer : TLayer
property DifferentialPair : IPCB_DifferentialPair
property DisplayClearanceBounds : Boolean
procedure EditRoutingViaStyleRule;
property FollowMouseTrail : Boolean
property GapMode : TRoutingDiffPairGapMode
function GetRoutingOptions : IPCB_RoutingOptionsPage;
function GetState_Board : IPCB_Board;
function GetState_DiffPairRule : IPCB_DifferentialPairsRoutingRule;
function GetState_FollowMode : Boolean;
function GetState_NeighborGlossEffort : TGlossEffort;
function GetState_ShowLengthGauge : Boolean;
property GlossEffort : TGlossEffort
property HoleSize : Integer
property HuggingStyle : THuggingStyle
property LegacyRouter : Boolean
property MinimumArcSize : Double
property MiterSize : Double
property Net : IPCB_Net
property NetList : IPCB_NetList
function NextGapMode : TRoutingDiffPairGapMode;
property NextLayer : TLayer
function NextRoutingWidthMode : TRoutingWidthMode;
function NextViaLayerPair : Integer;
function NextViaSizeMode : TRoutingWidthMode;
function NextViaTemplate : IPCB_PadViaTemplate;
property PadEntryStability : TCoord
property PickupWidthFromExistingRoutes : Boolean
property PinSwapping : Boolean
function ProjectAvailableForPinSwap(out AErrorMessage : WideString) : Boolean;
property ReduceClearanceDisplayArea : Boolean
property RestrictTo9045 : Boolean
property RouteMode : TAdvancedRouteMode
property RoutingCornerStyle : TRoutingCornerStyle
property RoutingPoint : TCoordPoint
property RoutingViaStyleRule : IPCB_RoutingViaStyleRule
property RoutingWidthMode : TRoutingWidthMode
procedure SetState_NeighborGlossEffort(ANewValue : TGlossEffort);
procedure SetState_NextLayer(AValue : Integer);
procedure SetState_ShowLengthGauge(AValue : Boolean);
property SubnetJumperLength : Integer
property ViaCombinationManager : IPCB_ViaCombinationManagerInterface
property ViaDiameter : Integer
property ViaLayerPair : Integer
property ViaSizeMode : TRoutingWidthMode
property ViaTemplate : IPCB_PadViaTemplate
property ViaTemplateChanged : Boolean
property Width : Integer

## IPCB_InteractiveLineRoutingProcess (4 members)
property CurrentLayer : TLayer
function GetState_Board : IPCB_Board;
property LineWidth : Integer
property PlacingKeepOuts : Boolean

## IPCB_InteractiveMultiRoutingProcess (53 members)
property RouteModeEnabled[AMode: TAdvancedRouteMode] : Boolean
property AllowViaPushing : Boolean
property AutoNecking : Boolean
property AutoRemoveAntennas : Boolean
property AutoRemoveLoops : Boolean
property AutoTerminateRouting : Boolean
property CornerRounding : Boolean
property CurrentLayer : TLayer
property DisplayClearanceBounds : Boolean
procedure EditMaxMinWidthRule;
procedure EditRoutingViaStyleRule;
property FollowMouseTrail : Boolean
function GetRoutingOptions : IPCB_RoutingOptionsPage;
function GetState_Board : IPCB_Board;
function GetState_BusSpacing : Integer;
function GetState_FollowMode : Boolean;
function GetState_GetMinClearanceFromRule : Integer;
function GetState_NeighborGlossEffort : TGlossEffort;
function GetState_WidthRule : IPCB_MaxMinWidthConstraint;
property GlossEffort : TGlossEffort
property HoleSize : Integer
property HuggingStyle : THuggingStyle
property LegacyRouter : Boolean
property MinimumArcSize : Double
property MiterSize : Double
property Net : IPCB_Net
property NetList : IPCB_NetList
property NextLayer : TLayer
function NextRoutingWidthMode : TRoutingWidthMode;
function NextViaLayerPair : Integer;
function NextViaSizeMode : TRoutingWidthMode;
function NextViaTemplate : IPCB_PadViaTemplate;
property PadEntryStability : TCoord
property PickupWidthFromExistingRoutes : Boolean
property PinSwapping : Boolean
property ReduceClearanceDisplayArea : Boolean
property RestrictTo9045 : Boolean
property RouteMode : TAdvancedRouteMode
property RoutingCornerStyle : TRoutingCornerStyle
property RoutingPoint : TCoordPoint
property RoutingViaStyleRule : IPCB_RoutingViaStyleRule
property RoutingWidthMode : TRoutingWidthMode
procedure SetState_BusSpacing(const ANewValue : Integer);
procedure SetState_NeighborGlossEffort(ANewValue : TGlossEffort);
procedure SetState_NextLayer(AValue : Integer);
property SubnetJumperLength : Integer
property ViaCombinationManager : IPCB_ViaCombinationManagerInterface
property ViaDiameter : Integer
property ViaLayerPair : Integer
property ViaSizeMode : TRoutingWidthMode
property ViaTemplate : IPCB_PadViaTemplate
property ViaTemplateChanged : Boolean
property Width : Integer

## IPCB_InteractiveProcess (1 members)
function GetState_Board : IPCB_Board;

## IPCB_InteractiveRoutingOptions (36 members)
property Beginx : TCoord
property Beginy : TCoord
property EndLineX : TCoord
property EndLineY : TCoord
procedure Export_ToParameters(Parameters : PWideChar);
procedure Export_ToParameters_GeneralOptions(Parameters : PWideChar);
procedure Export_ToParameters_LayerOptions(Parameters : PWideChar);
procedure Export_ToParameters_LayerOptions_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version4(Parameters : PWideChar);
function I_ObjectAddress : Pointer;
procedure Import_FromParameters(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, Parameters : PWideChar);
property Midx : TCoord
property MidY : TCoord
property OldCx : TCoord
property OldCy : TCoord
property OldMidx : TCoord
property OldMidy : TCoord
property OldTrackArcAngle1 : TCoord
property OldTrackArcAngle2 : TCoord
property OldTrackArcRadius : TCoord
property OldTrackArcX : TCoord
property OldTrackArcY : TCoord
property OldTrackDrawLayer : TV6_Layer
property OldTrackDrawSize : TCoord
property OptionsObjectID : TOptionsObjectId
property PlaceTrackMode : TPlaceTrackMode
property StartX : TCoord
property StartY : TCoord
property TrackArcAngle1 : TCoord
property TrackArcAngle2 : TCoord
property TrackArcRadius : TCoord
property TrackArcX : TCoord
property TrackArcY : TCoord

## IPCB_InteractiveRoutingProcess (55 members)
property RouteModeEnabled[AMode: TAdvancedRouteMode] : Boolean
property AllowViaPushing : Boolean
property AutoNecking : Boolean
property AutoRemoveAntennas : Boolean
property AutoRemoveLoops : Boolean
property AutoTerminateRouting : Boolean
property CornerRounding : Boolean
property CurrentLayer : TLayer
property DisplayClearanceBounds : Boolean
procedure EditMaxMinWidthRule;
procedure EditRoutingViaStyleRule;
property FollowMouseTrail : Boolean
function GetRoutingOptions : IPCB_RoutingOptionsPage;
function GetState_Board : IPCB_Board;
function GetState_DifferentialPair : IPCB_DifferentialPair;
function GetState_DiffPairRule : IPCB_DifferentialPairsRoutingRule;
function GetState_FollowMode : Boolean;
function GetState_NeighborGlossEffort : TGlossEffort;
function GetState_WidthRule : IPCB_MaxMinWidthConstraint;
property GlossEffort : TGlossEffort
property HoleSize : Integer
property HuggingStyle : THuggingStyle
property Impedance : Double
property LegacyRouter : Boolean
property MinimumArcSize : Double
property MiterSize : Double
property Net : IPCB_Net
property NetList : IPCB_NetList
property NextLayer : TLayer
function NextRoutingWidthMode : TRoutingWidthMode;
function NextViaLayerPair : Integer;
function NextViaSizeMode : TRoutingWidthMode;
function NextViaTemplate : IPCB_PadViaTemplate;
property PadEntryStability : TCoord
property PickupWidthFromExistingRoutes : Boolean
property PinSwapping : Boolean
function ProjectAvailableForPinSwap(out AErrorMessage : WideString) : Boolean;
property ReduceClearanceDisplayArea : Boolean
property RestrictTo9045 : Boolean
property RouteMode : TAdvancedRouteMode
property RoutingCornerStyle : TRoutingCornerStyle
property RoutingPoint : TCoordPoint
property RoutingViaStyleRule : IPCB_RoutingViaStyleRule
property RoutingWidthMode : TRoutingWidthMode
procedure SetState_NeighborGlossEffort(ANewValue : TGlossEffort);
procedure SetState_NextLayer(AValue : Integer);
property ShowLengthGauge : Boolean
property SubnetJumperLength : Integer
property ViaCombinationManager : IPCB_ViaCombinationManagerInterface
property ViaDiameter : Integer
property ViaLayerPair : Integer
property ViaSizeMode : TRoutingWidthMode
property ViaTemplate : IPCB_PadViaTemplate
property ViaTemplateChanged : Boolean
property Width : Integer

## IPCB_InternalPlane (11 members)
property CopperThickness : TCoord
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property NetName : TPCBString
property PullBackDistance : TCoord
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_InternalPlane_V7 (11 members)
property CopperThickness : TCoord
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property NetName : TPCBString
property PullBackDistance : TCoord
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_KeepoutRestrictions (9 members)
function GetState_KeepoutEnabled : Boolean;
property IsKeepoutForCopper : Boolean
property IsKeepoutForSMDPad : Boolean
property IsKeepoutForTHPad : Boolean
property IsKeepoutForTrack : Boolean
property IsKeepoutForVia : Boolean
function IsPrimitiveInKeepoutRestriction(APrimitive : IPCB_Primitive) : Boolean;
property KeepoutRestrictions : TKeepoutRestrictionsSet
procedure SetKeepoutPrimDefaultValues(const ARestrictions : TKeepoutRestrictionsSet);

## IPCB_LayerIterator (10 members)
function AddFilter_ElectricalLayers : IPCB_LayerIterator;
function AddFilter_InternalPlaneLayers : IPCB_LayerIterator;
function AddFilter_LayerSet(ALayerSet : IPCB_LayerSet) : IPCB_LayerIterator;
function AddFilter_MechanicalLayers : IPCB_LayerIterator;
function AddFilter_MiscLayers : IPCB_LayerIterator;
function AddFilter_SignalLayers : IPCB_LayerIterator;
function First : Boolean;
function Layer : Integer;
function Next : Boolean;
procedure SetBeforeFirst;

## IPCB_LayerKindMappingSection (30 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
procedure ExportLayerKindMapping_ToFile(Storage : Pointer);
function ExtendedIndexCount : Integer;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
procedure ImportLayerKindMapping_FromFile(Storage : Pointer);
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
property LayerKindMapping : IMechanicalLayerKindMap
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage

## IPCB_LayerListIterator (12 members)
function AddFilter_ElectricalLayers : IPCB_LayerIterator;
function AddFilter_InternalPlaneLayers : IPCB_LayerIterator;
function AddFilter_LayerSet(ALayerSet : IPCB_LayerSet) : IPCB_LayerIterator;
function AddFilter_MechanicalLayers : IPCB_LayerIterator;
function AddFilter_MiscLayers : IPCB_LayerIterator;
function AddFilter_SignalLayers : IPCB_LayerIterator;
function First : Boolean;
property Forward : Boolean
property Index : Integer
function Layer : Integer;
function Next : Boolean;
procedure SetBeforeFirst;

## IPCB_LayerObject (8 members)
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_LayerObject_V7 (13 members)
property IsDisplayed[Board: IPCB_Board] : Boolean
property CopperThickness : TCoord
function Dielectric : IPCB_DielectricObject;
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function GetState_LayerOriginalDispalayName : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
function LayerID : TV6_Layer;
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_LayerObject2 (13 members)
procedure CopyTo(const ALayerObject : IPCB_LayerObject);
function GetState_DisplayInSingleLayerMode : Boolean;
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function Id : WideString;
function IsInLayerStack : Boolean;
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
procedure SetID(const AValue : WideString);
procedure SetState_DisplayInSingleLayerMode(Value : Boolean);
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_LayerObjectIterator (11 members)
function AddFilter_ElectricalLayers : IPCB_LayerIterator;
function AddFilter_InternalPlaneLayers : IPCB_LayerIterator;
function AddFilter_LayerSet(ALayerSet : IPCB_LayerSet) : IPCB_LayerIterator;
function AddFilter_MechanicalLayers : IPCB_LayerIterator;
function AddFilter_MiscLayers : IPCB_LayerIterator;
function AddFilter_SignalLayers : IPCB_LayerIterator;
function First : Boolean;
function Layer : Integer;
function LayerObject : IPCB_LayerObject;
function Next : Boolean;
procedure SetBeforeFirst;

## IPCB_LayerObjectIterator_LayerUsage (11 members)
function AddFilter_ElectricalLayers : IPCB_LayerIterator;
function AddFilter_InternalPlaneLayers : IPCB_LayerIterator;
function AddFilter_LayerSet(ALayerSet : IPCB_LayerSet) : IPCB_LayerIterator;
function AddFilter_MechanicalLayers : IPCB_LayerIterator;
function AddFilter_MiscLayers : IPCB_LayerIterator;
function AddFilter_SignalLayers : IPCB_LayerIterator;
function First : Boolean;
function Layer : Integer;
function Next : Boolean;
procedure SetBeforeFirst;
property UseInSingleLayerMode : Boolean

## IPCB_LayerPairsRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property EnforceLayerPairs : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_LayerSet (30 members)
function Complement : IPCB_LayerSet;
function Contains(L : Integer) : Boolean;
function ContainsInternalPlaneLayers : Boolean;
function EqualTo(const ALayerSet : IPCB_LayerSet) : Boolean;
function Exclude(L : Integer) : IPCB_LayerSet;
function ExcludeA(L : Integer) : IPCB_LayerSet;
function ExcludeAllLayers : IPCB_LayerSet;
function ExcludeInternalPlaneLayers : IPCB_LayerSet;
function ExcludeMechanicalLayers : IPCB_LayerSet;
function ExcludeSignalLayers : IPCB_LayerSet;
function GetFirstLayer : Integer;
function GetPartition(AType : TLayerSetPartitionType) : IPCB_LayerSetPartition;
function Include(L : Integer) : IPCB_LayerSet;
function IncludeA(L : Integer) : IPCB_LayerSet;
function IncludeAllLayers : IPCB_LayerSet;
function IncludeDielectricLayers : IPCB_LayerSet;
function IncludeInternalPlaneLayers : IPCB_LayerSet;
function IncludeMechanicalLayers : IPCB_LayerSet;
function IncludeMiscLayers : IPCB_LayerSet;
function IncludeSignalLayers : IPCB_LayerSet;
function IncludeStandardLayers : IPCB_LayerSet;
function Intersection(const LayerSet : IPCB_LayerSet) : IPCB_LayerSet;
function IsAllLayers : Boolean;
function IsEmpty : Boolean;
function IsFinite : Boolean;
function LayerIterator : IPCB_LayerIterator;
function Replicate : IPCB_LayerSet;
function SerializeToString : string;
function ToString : string;
function Union(const LayerSet : IPCB_LayerSet) : IPCB_LayerSet;

## IPCB_LayerSetPartition (7 members)
function GetExcluded : ILayerValueIterator;
function GetIncluded : ILayerValueIterator;
function HasExcluded : Boolean;
function HasExcludedLayer(const ALayer : IDispatch) : Boolean;
function HasIncluded : Boolean;
function HasIncludedLayer(const ALayer : IDispatch) : Boolean;
function IsAll : Boolean;

## IPCB_LayerSetUtils (17 members)
function AllLayers : IPCB_LayerSet;
function AreDisjoint(const SetA : IPCB_LayerSet, const SetB : IPCB_LayerSet) : Boolean;
function Complement(const SetA : IPCB_LayerSet) : IPCB_LayerSet;
function CreateLayerSet : IPCB_LayerSet;
function EmptySet : IPCB_LayerSet;
function Equal(const SetA : IPCB_LayerSet, const SetB : IPCB_LayerSet) : Boolean;
function Factory(L : Integer) : IPCB_LayerSet;
function FactoryA(Ls : Integer) : IPCB_LayerSet;
function InternalPlaneLayers : IPCB_LayerSet;
function Intersection(const SetA : IPCB_LayerSet, const SetB : IPCB_LayerSet) : IPCB_LayerSet;
function MechanicalLayers : IPCB_LayerSet;
function NonEditableLayers : IPCB_LayerSet;
function SerializeFromString(const Str : WideString) : IPCB_LayerSet;
function SerializeToString(const ALayerSet : IPCB_LayerSet) : WideString;
function SignalLayers : IPCB_LayerSet;
function StandardLayers : IPCB_LayerSet;
function Union(const SetA : IPCB_LayerSet, const SetB : IPCB_LayerSet) : IPCB_LayerSet;

## IPCB_LayerStack (27 members)
property DisplayName[DisplayMode: TLayerNameDisplayMode] : TPCBString
function Board : IPCB_Board;
property BottomSignalLayer : TLayer
property Color : Cardinal
function Count : Integer;
function DielectricBottom : IPCB_SolderMaskLayer;
function DielectricTop : IPCB_SolderMaskLayer;
function First(T : TLayerClassID) : IPCB_LayerObject;
function Get_ZBottom(Layer : IPCB_LayerObject) : Integer;
function Get_ZTop(Layer : IPCB_LayerObject) : Integer;
function I_ObjectAddress : Pointer;
function Id : WideString;
property IsFlex : Boolean
property IsService : Boolean
function Iterator : IPCB_LayerObjectIterator;
function Last(T : TLayerClassID) : IPCB_LayerObject;
function LayerNumberInStack(const ALayer : Integer) : Integer;
function LayerObject(ALayer : TV6_Layer) : IPCB_LayerObject;
property LayerStackType : TLayerStackType
property Name : TPCBString
function Next(T : TLayerClassID, ARefLayer : IPCB_LayerObject) : IPCB_LayerObject;
function Previous(T : TLayerClassID, ARefLayer : IPCB_LayerObject) : IPCB_LayerObject;
property ShowDielectricBottom : Boolean
property ShowDielectricTop : Boolean
function StateID : Integer;
property TopSignalLayer : TLayer
property UsedByPrims : Boolean

## IPCB_LayerStack_V7 (22 members)
property LayerObject_V7[L: Integer] : IPCB_LayerObject_V7
property LayerObject[L: TV6_Layer] : IPCB_LayerObject_V7
property Board : IPCB_Board
property DielectricBottom : IPCB_DielectricObject
property DielectricTop : IPCB_DielectricObject
function FirstAvailableInternalPlane : IPCB_InternalPlane_V7;
function FirstAvailableSignalLayer : IPCB_LayerObject_V7;
function FirstLayer : IPCB_LayerObject_V7;
function GetState_LayerStackStyle : TLayerStackStyle;
procedure InsertInStackAbove(RefL : IPCB_LayerObject_V7, L : IPCB_LayerObject_V7);
procedure InsertInStackBelow(RefL : IPCB_LayerObject_V7, L : IPCB_LayerObject_V7);
procedure InsertLayer(L : TV6_Layer);
function LastInternalPlane : IPCB_InternalPlane_V7;
function LastLayer : IPCB_LayerObject_V7;
function LayersInStackCount : Integer;
function NextLayer(L : IPCB_LayerObject_V7) : IPCB_LayerObject_V7;
function PreviousLayer(L : IPCB_LayerObject_V7) : IPCB_LayerObject_V7;
procedure RemoveFromStack(L : IPCB_LayerObject_V7);
procedure SetState_LayerStackStyle(SS : TLayerStackStyle);
property ShowDielectricBottom : Boolean
property ShowDielectricTop : Boolean
function SignalLayerCount : Integer;

## IPCB_LayerStackBase (15 members)
property DisplayName[DisplayMode: TLayerNameDisplayMode] : TPCBString
function Count : Integer;
function First(T : TLayerClassID) : IPCB_LayerObject;
function Get_ZBottom(Layer : IPCB_LayerObject) : Integer;
function Get_ZTop(Layer : IPCB_LayerObject) : Integer;
function I_ObjectAddress : Pointer;
function Id : WideString;
property IsFlex : Boolean
function Iterator : IPCB_LayerObjectIterator;
function Last(T : TLayerClassID) : IPCB_LayerObject;
function LayerNumberInStack(const ALayer : Integer) : Integer;
property Name : TPCBString
function Next(T : TLayerClassID, ARefLayer : IPCB_LayerObject) : IPCB_LayerObject;
function Previous(T : TLayerClassID, ARefLayer : IPCB_LayerObject) : IPCB_LayerObject;
function StateID : Integer;

## IPCB_LayerStackEx (11 members)
procedure Clear;
procedure ClearStackLayers;
property Color : TColor
function GetElectricalLayer(PositionInStack : Integer, LayerPartition : TLayerPartition) : IPCB_LayerObject;
function GetElectricalLayerPosInStack(const Layer : Integer) : Integer;
function IsLayerInLayerStack(const ALayer : IDispatch) : Boolean;
function LayerEnabled(const ALayerObject : IPCB_LayerObject) : Boolean;
function LayerUsedByPrims(const ALayerObject : IPCB_LayerObject) : Boolean;
procedure SetStackID(const AValue : WideString);
property ShowDielectricBottom : Boolean
property ShowDielectricTop : Boolean

## IPCB_LayerStackupDocumentPainterView (2 members)
procedure Refresh;
procedure SetState_DocumentToPaint(const ADocument : IServerDocument);

## IPCB_LayerToColor (9 members)
property Data[AKey: IDispatch] : TColor
procedure Clear;
procedure CopyTo(const ARight : IPCB_LayerToColor);
function Count : Integer;
function EqualTo(const Other : IPCB_LayerToColor) : Boolean;
function Exists(const ALayer : IDispatch) : Boolean;
function I_ObjectAddress : Pointer;
function LayerIterator : ILayerValueIterator;
procedure ReplicateTo(const ARight : IPCB_LayerToColor);

## IPCB_LayerToCoord (9 members)
property Data[AKey: IDispatch] : TCoord
procedure Clear;
procedure CopyTo(const ARight : IPCB_LayerToCoord);
function Count : Integer;
function EqualTo(const Other : IPCB_LayerToCoord) : Boolean;
function Exists(const ALayer : IDispatch) : Boolean;
function I_ObjectAddress : Pointer;
function LayerIterator : ILayerValueIterator;
procedure ReplicateTo(const ARight : IPCB_LayerToCoord);

## IPCB_LayerUtils (13 members)
function AsShortDisplayString(L : Integer) : WideString;
function AsString(L : Integer) : WideString;
function FirstLayerInRange(LayerType : TLayerPartition, UnAvaiableLayers : IPCB_LayerSet) : Integer;
function FromShortDisplayString(S : WideString) : Integer;
function FromString(S : WideString) : Integer;
function IsElectricalLayer(L : Integer) : Boolean;
function IsInternalPlaneLayer(L : Integer) : Boolean;
function IsMechanicalLayer(L : Integer) : Boolean;
function IsMidLayer(L : Integer) : Boolean;
function IsSignalLayer(L : Integer) : Boolean;
function LayerIterator_PossibleLayers : IPCB_LayerListIterator;
function LayerIterator_PossibleSummer09Layers : IPCB_LayerListIterator;
function MechanicalLayer(I : Cardinal) : Integer;

## IPCB_LeaderDimension (68 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
function Arrow_Track1 : IPCB_Track;
function Arrow_Track2 : IPCB_Track;
property ArrowLength : TCoord
property ArrowLineWidth : TCoord
property ArrowPosition : TDimensionArrowPosition
property ArrowSize : TCoord
property Bold : Boolean
function Circle_Arc : IPCB_Arc;
property DimensionKind : TDimensionKind
property Dot : Boolean
function Dot_Arc : IPCB_Arc;
property DotSize : TCoord
property ExtensionLineWidth : TCoord
property ExtensionOffset : TCoord
property ExtensionPickGap : TCoord
function FastSetState_XSizeYSize : Boolean;
property FontName : TPCBString
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Italic : Boolean
function Line_Track(I : Integer) : IPCB_Track;
property LineWidth : TCoord
procedure MoveTextByXY(AX : Integer, AY : Integer);
procedure MoveTextToXY(AX : Integer, AY : Integer);
property PrimitiveLock : Boolean
procedure References_Add(const r : IDispatch);
property References_Count : Integer
procedure References_Delete(Index : Integer);
procedure References_DeleteLast;
function References_IndexOf(P : IPCB_Primitive, Index : Integer) : Integer;
function References_Validate : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetPrefixIfNeeded;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property Shape : TShape
property Size : TCoord
function Square_Track1 : IPCB_Track;
function Square_Track2 : IPCB_Track;
function Square_Track3 : IPCB_Track;
function Square_Track4 : IPCB_Track;
property Style : TUnitStyle
function Text : IPCB_Text;
property TextDimensionUnit : TDimensionUnit
property TextFont : TFontID
property TextFormat : TPCBString
property TextGap : TCoord
property TextHeight : TCoord
property TextLineWidth : TCoord
property TextPosition : TDimensionTextPosition
property TextPrecision : Integer
property TextPrefix : TPCBString
property TextSuffix : TPCBString
property TextValue : TReal
property TextWidth : TCoord
property TextX : TCoord
property TextY : TCoord
property UseTTFonts : Boolean
property x : TCoord
property X1Location : TCoord
property y : TCoord
property Y1Location : TCoord

## IPCB_LettersCache (0 unique + inherits IPCB_Primitive)

## IPCB_LibBinaryStorage (26 members)
property Features[AFeature: TStorageFeature] : Boolean
procedure AddTextsForSaveList(const APrimitive : IPCB_Primitive);
procedure AddWSForLoadList(AIndex : Integer, const AText : WideString);
property Board : IPCB_Board
property ComponentPrimitiveAtPosition : IPCB_PrimitiveAtPosition
function CreateNestedSection(const ASectionName : WideString) : IPCB_StructuredStorage;
function CreateNestedStream(const AStreamName : WideString) : IStream;
function CreateSection(const AName : WideString) : IPCB_BinarySection;
property FileName : WideString
function GetSectionCount : Integer;
function GetState_Section(AIndex : Integer) : IPCB_BinarySection;
function GetState_SectionByName(const AName : WideString) : IPCB_BinarySection;
function IsSectionToIgnore(const ASectionName : WideString) : Boolean;
function LoadComponentFromLibrary5File(const Pattern : WideString) : IPCB_LibComponent;
function OpenNestedSection(const ASectionName : WideString) : IPCB_StructuredStorage;
function OpenNestedStream(const AStreamName : WideString) : IStream;
property PadViaLibrary : IPCB_PadViaLibrary
function PCBFileFormatVersion : TAdvPCBFileFormatVersion;
property PCBLibrary : IPCB_Library
function RecognizeFile : Boolean;
procedure RegisterAllSectionsForExporting;
procedure RegisterWithBoard;
function SectionExists(const ASectionName : WideString) : Boolean;
function StreamExists(const AStreamName : WideString) : Boolean;
function TextsForSaveListCount : Integer;
function TextsForSaveListItems(AIndex : Integer) : IPCB_Primitive;

## IPCB_LibBinaryV6Storage (28 members)
property Features[AFeature: TStorageFeature] : Boolean
procedure AddTextsForSaveList(const APrimitive : IPCB_Primitive);
procedure AddWSForLoadList(AIndex : Integer, const AText : WideString);
property Board : IPCB_Board
property ComponentPrimitiveAtPosition : IPCB_PrimitiveAtPosition
function CreateNestedSection(const ASectionName : WideString) : IPCB_StructuredStorage;
function CreateNestedStream(const AStreamName : WideString) : IStream;
function CreateSection(const AName : WideString) : IPCB_BinarySection;
property FileName : WideString
function GetSectionCount : Integer;
function GetState_Section(AIndex : Integer) : IPCB_BinarySection;
function GetState_SectionByName(const AName : WideString) : IPCB_BinarySection;
function IsSectionToIgnore(const ASectionName : WideString) : Boolean;
function LoadComponentFromLibrary5File(const Pattern : WideString) : IPCB_LibComponent;
function OpenNestedSection(const ASectionName : WideString) : IPCB_StructuredStorage;
function OpenNestedStream(const AStreamName : WideString) : IStream;
property PadViaLibrary : IPCB_PadViaLibrary
function PCBFileFormatVersion : TAdvPCBFileFormatVersion;
property PCBLibrary : IPCB_Library
function ReadComponentParamsTOC : WideString;
function ReadLayerKindMapping : IMechanicalLayerKindMap;
function RecognizeFile : Boolean;
procedure RegisterAllSectionsForExporting;
procedure RegisterWithBoard;
function SectionExists(const ASectionName : WideString) : Boolean;
function StreamExists(const AStreamName : WideString) : Boolean;
function TextsForSaveListCount : Integer;
function TextsForSaveListItems(AIndex : Integer) : IPCB_Primitive;

## IPCB_LibComponent (32 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property Area : Double
property ComponentKind : TComponentKind
procedure CopyTo(const P : IPCB_LibComponent, CopyMode : TCopyMode);
property Description : TPCBString
function FastSetState_XSizeYSize : Boolean;
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GetState_VaultGUID : WideString;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Height : TCoord
property ItemGUID : TPCBString
property ItemRevisionGUID : TPCBString
property LayerKindMap : IMechanicalLayerKindMap
property LayerToLayerMapping : ILayersMap
property Name : TPCBString
property PadViaLibrary : IPCB_PadViaLibrary
property PrimitiveLock : Boolean
function ReleasableInterface : IInterface;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
function SaveModelToFile(const AFileName : WideString, ASaveAsPart : Boolean) : Boolean;
procedure SaveToFile(VFSAddress : WideString);
procedure SetState_LayersUsedArray;
procedure SetState_VaultGUID(const Value : WideString);
function SetState_XSizeYSize : Boolean;
procedure TransferAllPrimitivesBackFromBoard;
procedure TransferAllPrimitivesOntoBoard;
property x : TCoord
property y : TCoord

## IPCB_LibComponent_BatchRelease (2 members)
property Component : IPCB_LibComponent
property ComponentLibrary : IPCB_Library

## IPCB_LibComponentSection (32 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
property Component : IPCB_LibComponent
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
property LoadModels : Boolean
function MissingComponentBodyModelsComponent(AIndex : Integer) : IPCB_ComponentBody;
function MissingComponentBodyModelsCount : Integer;
function MissingComponentBodyModelsName(AIndex : Integer) : WideString;
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage

## IPCB_Library (37 members)
function AddComponent(const Name : WideString) : IPCB_LibComponent;
property Board : IPCB_Board
function ComponentCount : Integer;
function CreateNewComponent : IPCB_LibComponent;
property CurrentComponent : IPCB_LibComponent
function DeRegisterComponent(Component : IPCB_LibComponent) : Boolean;
property FileName : TPCBString
property FolderGUID : TPCBString
function GetComponent(I : Integer) : IPCB_LibComponent;
function GetComponentByName(const CompName : WideString) : IPCB_LibComponent;
function GetUniqueCompName(const ATestCompName : WideString) : WideString;
function GlobalComponentUpdateOptions : IPCB_ComponentUpdateOptions;
property GridNGuides : TPCBString
function HasServerDocument : Boolean;
function I_ObjectAddress : Pointer;
property IsSimpleDesignMode : Boolean
property IsSingleComponentMode : Boolean
property LibraryID : Integer
function LibraryIterator_Create : IPCB_LibraryIterator;
procedure LibraryIterator_Destroy(var AIterator : IPCB_LibraryIterator);
function LibraryLoaderSaver_Create : IPCB_LibraryLoaderSaver;
procedure LibraryLoaderSaver_Destroy(var ALoaderSaver : IPCB_LibraryLoaderSaver);
property LifeCycleDefinitionGUID : TPCBString
function LinkDocumentToReleaseVault(Parameters : WideString, var ErrorMsg : WideString) : Boolean;
procedure Navigate_Component(ComponentName : WideString);
procedure Navigate_FirstComponent;
property PaViaLibrary : IPCB_PadViaLibrary
procedure RefreshView;
function RegisterComponent(Component : IPCB_LibComponent) : Boolean;
function ReleaseDocument(Parameters : WideString, var ErrorMsg : WideString) : Boolean;
procedure RemoveComponent(var AComponent : IPCB_LibComponent);
property RevisionNamingSchemeGUID : TPCBString
function SaveComponentWithLibrary(ComponentName : WideString, FileName : WideString) : Boolean;
function SaveEmptyLibrary(FileName : WideString) : Boolean;
function SetBoardToComponentByName(const ACompName : WideString) : Boolean;
procedure SetCurrentComponentReference(AX : Integer, AY : Integer);
property VaultGUID : TPCBString

## IPCB_LibraryIterator (10 members)
procedure AddFilter_AllLayers;
procedure AddFilter_Area(x1 : Integer, y1 : Integer, x2 : Integer, y2 : Integer);
procedure AddFilter_IPCB_LayerSet(ALayerSet : IPCB_LayerSet);
procedure AddFilter_LayerSet(ALayerSet : TV6_LayerSet);
procedure AddFilter_LayerSetA(ALayerSet : Integer);
procedure AddFilter_ObjectSet(AObjectSet : TObjectSet);
function FirstPCBObject : IPCB_Primitive;
function I_ObjectAddress : Pointer;
function NextPCBObject : IPCB_Primitive;
procedure SetState_FilterAll;

## IPCB_LibraryLoaderSaver (2 members)
function LoadFromFile(APCBLibrary : IPCB_Library, const AFileName : WideString) : Boolean;
function SaveToFile(APCBLibrary : IPCB_Library, const AFileName : WideString) : Boolean;

## IPCB_LibrarySection (28 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
function Import_FromFile_LoadComponent : Boolean;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage

## IPCB_LinearDiameterDimension (65 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property Angle : TAngle
function Arrow1_Track1 : IPCB_Track;
function Arrow1_Track2 : IPCB_Track;
function Arrow2_Track1 : IPCB_Track;
function Arrow2_Track2 : IPCB_Track;
property ArrowLength : TCoord
property ArrowLineWidth : TCoord
property ArrowPosition : TDimensionArrowPosition
property ArrowSize : TCoord
property Bold : Boolean
property DimensionKind : TDimensionKind
function Extension1_Track : IPCB_Track;
function Extension2_Track : IPCB_Track;
property ExtensionLineWidth : TCoord
property ExtensionOffset : TCoord
property ExtensionPickGap : TCoord
function FastSetState_XSizeYSize : Boolean;
property FontName : TPCBString
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Italic : Boolean
function Line_Track1 : IPCB_Track;
function Line_Track2 : IPCB_Track;
property LineWidth : TCoord
procedure MoveTextByXY(AX : Integer, AY : Integer);
procedure MoveTextToXY(AX : Integer, AY : Integer);
property PrimitiveLock : Boolean
procedure References_Add(const r : IDispatch);
property References_Count : Integer
procedure References_Delete(Index : Integer);
procedure References_DeleteLast;
function References_IndexOf(P : IPCB_Primitive, Index : Integer) : Integer;
function References_Validate : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetPrefixIfNeeded;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property Style : TUnitStyle
function Text : IPCB_Text;
property TextDimensionUnit : TDimensionUnit
property TextFont : TFontID
property TextFormat : TPCBString
property TextGap : TCoord
property TextHeight : TCoord
property TextLineWidth : TCoord
property TextPosition : TDimensionTextPosition
property TextPrecision : Integer
property TextPrefix : TPCBString
property TextSuffix : TPCBString
property TextValue : TReal
property TextWidth : TCoord
property TextX : TCoord
property TextY : TCoord
property UseTTFonts : Boolean
property x : TCoord
property X1Location : TCoord
property y : TCoord
property Y1Location : TCoord

## IPCB_LinearDimension (65 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property Angle : TAngle
function Arrow1_Track1 : IPCB_Track;
function Arrow1_Track2 : IPCB_Track;
function Arrow2_Track1 : IPCB_Track;
function Arrow2_Track2 : IPCB_Track;
property ArrowLength : TCoord
property ArrowLineWidth : TCoord
property ArrowPosition : TDimensionArrowPosition
property ArrowSize : TCoord
property Bold : Boolean
property DimensionKind : TDimensionKind
function Extension1_Track : IPCB_Track;
function Extension2_Track : IPCB_Track;
property ExtensionLineWidth : TCoord
property ExtensionOffset : TCoord
property ExtensionPickGap : TCoord
function FastSetState_XSizeYSize : Boolean;
property FontName : TPCBString
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Italic : Boolean
function Line_Track1 : IPCB_Track;
function Line_Track2 : IPCB_Track;
property LineWidth : TCoord
procedure MoveTextByXY(AX : Integer, AY : Integer);
procedure MoveTextToXY(AX : Integer, AY : Integer);
property PrimitiveLock : Boolean
procedure References_Add(const r : IDispatch);
property References_Count : Integer
procedure References_Delete(Index : Integer);
procedure References_DeleteLast;
function References_IndexOf(P : IPCB_Primitive, Index : Integer) : Integer;
function References_Validate : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetPrefixIfNeeded;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property Style : TUnitStyle
function Text : IPCB_Text;
property TextDimensionUnit : TDimensionUnit
property TextFont : TFontID
property TextFormat : TPCBString
property TextGap : TCoord
property TextHeight : TCoord
property TextLineWidth : TCoord
property TextPosition : TDimensionTextPosition
property TextPrecision : Integer
property TextPrefix : TPCBString
property TextSuffix : TPCBString
property TextValue : TReal
property TextWidth : TCoord
property TextX : TCoord
property TextY : TCoord
property UseTTFonts : Boolean
property x : TCoord
property X1Location : TCoord
property y : TCoord
property Y1Location : TCoord

## IPCB_LiveHandleContainer (1 members)
function GetHandle : NativeUInt;

## IPCB_LivePrimitiveChanges (6 members)
procedure AddDynamicPrimitive(const APrimitive : IPCB_Primitive);
procedure ClearDynamicPrimitives;
procedure Notify_AddPrimitive(const APrimitive : IPCB_Primitive);
procedure Notify_DeletePrimitive(const APrimitive : IPCB_Primitive);
procedure Notify_ModifyPrimitive(const APrimitive : IPCB_Primitive);
procedure RemoveDynamicPrimitive(const APrimitive : IPCB_Primitive);

## IPCB_MasterLayerStack (32 members)
property DisplayName[DisplayMode: TLayerNameDisplayMode] : TPCBString
property Substacks[Index: Integer] : IPCB_LayerStack
function Board : IPCB_Board;
function Count : Integer;
function CreateLayer(const ALayer : IDispatch) : IPCB_LayerObject;
function CreateSubstack : IPCB_LayerStack;
procedure DisableLayer(ASubstack : IPCB_LayerStack, ALayer : IPCB_LayerObject);
procedure EnableLayer(ASubstack : IPCB_LayerStack, ALayer : IPCB_LayerObject);
procedure Export_ToParameters(Params : PWideChar);
function First(T : TLayerClassID) : IPCB_LayerObject;
function Get_ZBottom(Layer : IPCB_LayerObject) : Integer;
function Get_ZTop(Layer : IPCB_LayerObject) : Integer;
function GetSubstack(ASubstackID : WideString) : IPCB_LayerStack;
function I_ObjectAddress : Pointer;
function Id : WideString;
procedure Import_FromParameters(Params : PWideChar);
function InsertAbove(ARefLayer : IPCB_LayerObject, ALayer : IPCB_LayerObject) : IPCB_LayerObject;
function InsertBelow(ARefLayer : IPCB_LayerObject, ALayer : IPCB_LayerObject) : IPCB_LayerObject;
function InsertOnBottom(ALayer : IPCB_LayerObject) : IPCB_LayerObject;
function InsertOnTop(ALayer : IPCB_LayerObject) : IPCB_LayerObject;
property IsFlex : Boolean
function Iterator : IPCB_LayerObjectIterator;
function Last(T : TLayerClassID) : IPCB_LayerObject;
function LayerNumberInStack(const ALayer : Integer) : Integer;
property LayerStackStyle : TLayerStackStyle
property Name : TPCBString
function Next(T : TLayerClassID, ARefLayer : IPCB_LayerObject) : IPCB_LayerObject;
function Previous(T : TLayerClassID, ARefLayer : IPCB_LayerObject) : IPCB_LayerObject;
function RemoveLayer(Layer : IPCB_LayerObject) : Boolean;
function RemoveSubstack(Substack : IPCB_LayerStack) : Boolean;
function StateID : Integer;
function SubstackCount : Integer;

## IPCB_MasterLayerStack2 (71 members)
property Substacks[Index: Integer] : IPCB_LayerStack
property DisplayName[DisplayMode: TLayerNameDisplayMode] : TPCBString
function AddMechanicalLayer : IPCB_MechanicalLayer;
function Board : IPCB_Board;
procedure ChangeMechanicalLayerKind(const ALayerObject : IPCB_MechanicalLayer, ALayerKind : TMechanicalLayerKind);
procedure ChangeSubStackId(ASubstack : IPCB_LayerStack, NewID : WideString);
procedure Clear;
procedure ClearAllPhysicalLayers;
procedure ClearStackLayers;
procedure ClearSubstacks;
function Count : Integer;
function CreateImpedanceProfile : IPCB_ImpedanceProfile;
function CreateImpedanceProfileWithId(Id : WideString) : IPCB_ImpedanceProfile;
function CreateLayer(const ALayer : IDispatch) : IPCB_LayerObject;
function CreateLayer(const ALayer : IDispatch, const ALayerID : WideString) : IPCB_LayerObject;
function CreateLayerPairByKind(AKind : TMechanicalLayerPairKind) : Boolean;
function CreateLayerWithId(const ALayer : IDispatch, const LayerID : WideString) : IPCB_LayerObject;
function CreateSubstack : IPCB_LayerStack;
function CreateSubstackWithId(Id : WideString) : IPCB_LayerStack;
function DeleteLayer(const ALayer : IPCB_LayerObject) : Boolean;
procedure DisableLayer(ASubstack : IPCB_LayerStack, ALayer : IPCB_LayerObject);
procedure EnableLayer(ASubstack : IPCB_LayerStack, ALayer : IPCB_LayerObject);
procedure Export_ToLayerStackManagerParameters(Params : PWideChar);
procedure Export_ToParameters(Params : PWideChar);
function FindLayerByKind(ALayerKind : TMechanicalLayerKind) : IPCB_MechanicalLayer;
function First(T : TLayerClassID) : IPCB_LayerObject;
function Get_ZBottom(Layer : IPCB_LayerObject) : Integer;
function Get_ZTop(Layer : IPCB_LayerObject) : Integer;
function GetAllAvailableLayers : IPCB_LayerObjectIterator;
function GetImpedanceProfileById(Id : WideString) : IPCB_ImpedanceProfile;
function GetImpedanceProfileByIndex(Index : Integer) : IPCB_ImpedanceProfile;
function GetImpedanceProfileCount : Integer;
function GetMechanicalLayer(AIndexInMechanicalFamily : Integer) : IPCB_MechanicalLayer;
function GetState_CustomData : WideString;
function GetState_RoughnessFactor : Double;
function GetState_RoughnessModelType : TRoughnessModelType;
function GetState_SingleLayerPreffered : Boolean;
function GetState_SurfaceRoughness : Double;
function GetSubstack(ASubstackID : WideString) : IPCB_LayerStack;
function HasMicroVias : Boolean;
function HasPrintedElectronicLayers : Boolean;
function I_ObjectAddress : Pointer;
function Id : WideString;
procedure Import_FromLayerStackManagerParameters(Params : PWideChar);
procedure Import_FromParameters(Params : PWideChar);
function InsertAbove(ARefLayer : IPCB_LayerObject, ALayer : IPCB_LayerObject) : IPCB_LayerObject;
function InsertBelow(ARefLayer : IPCB_LayerObject, ALayer : IPCB_LayerObject) : IPCB_LayerObject;
function InsertOnBottom(ALayer : IPCB_LayerObject) : IPCB_LayerObject;
function InsertOnTop(ALayer : IPCB_LayerObject) : IPCB_LayerObject;
property IsFlex : Boolean
function Iterator : IPCB_LayerObjectIterator;
function Last(T : TLayerClassID) : IPCB_LayerObject;
property LayerKindMap : IMechanicalLayerKindMap
function LayerNumberInStack(const ALayer : Integer) : Integer;
property LayerStackStyle : TLayerStackStyle
function MeasureLayerDistance(const StartLayer : IPCB_LayerObject, const EndLayer : IPCB_LayerObject) : Integer;
procedure Merge_FromLayerStackManagerParameters(Params : PWideChar, Actions : PWideChar);
property Name : TPCBString
function Next(T : TLayerClassID, ARefLayer : IPCB_LayerObject) : IPCB_LayerObject;
function Previous(T : TLayerClassID, ARefLayer : IPCB_LayerObject) : IPCB_LayerObject;
function RemoveImpedanceProfile(ImpedanceProfile : IPCB_ImpedanceProfile) : Boolean;
function RemoveLayer(Layer : IPCB_LayerObject) : Boolean;
function RemoveSubstack(Substack : IPCB_LayerStack) : Boolean;
procedure SetState_CustomData(Value : WideString);
procedure SetState_RoughnessFactor(ARoughnessFactor : Double);
procedure SetState_RoughnessModelType(ARoughnessModelType : TRoughnessModelType);
procedure SetState_SingleLayerPreffered(AValue : Boolean);
procedure SetState_SurfaceRoughness(ASurfaceRoughness : Double);
function StateID : Integer;
function SubstackCount : Integer;
procedure SwapSubstacks(ALayerStack1 : Integer, ALayerStack2 : Integer);

## IPCB_MasterLayerStack3 (1 members)
function FindSubStackIndex(const ASubstack : IPCB_LayerStack) : Integer;

## IPCB_MatchedLengthRange (6 members)
property ClippedTargetRangeStart : TCoord
property ClippedTargetRangeStop : TCoord
property DriverRule : IPCB_MatchedNetLengthsConstraint
function DriverRule_Name : WideString;
property RangeValid : Boolean
property UseTargetSource : Boolean

## IPCB_MatchedNetLengthsConstraint (43 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property Amplitude : TCoord
property CheckBetweenXSignals : Boolean
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property CheckDiffPairVsDiffPair : Boolean
property CheckNetsInDiffPair : Boolean
property CheckOtherElectricalObjects : Boolean
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DelayTolerance : Double
property DRCEnabled : Boolean
property Gap : TCoord
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
function MatchLengthForFromTo(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function MatchLengthForNet(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property PhaseDelayTolerance : Double
property PhaseDistance : TCoord
property PhaseMatching : Boolean
property PhaseTolerance : TCoord
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property Style : TLengthenerStyle
property TargetSourceName : TPCBString
property Tolerance : TCoord
property UseDelayUnits : Boolean

## IPCB_MatchedNetLengthsViolation (22 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
procedure Clear;
function Count : Integer;
function CreatePhaseMatchingViolatedArea : IPCB_PhaseMatchingViolatedArea;
property Description : TPCBString
function GetItem(AIndex : Integer) : IPCB_PhaseMatchingViolatedArea;
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
procedure Remove(AIndex : Integer);
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_MatrixItemEnumerator (3 members)
function ItemName : WideString;
function ItemType : TMatrixItemType;
function Next : Boolean;

## IPCB_MaximumViaCountRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Limit : Integer
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_MaxMinHeightConstraint (29 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxHeight : TCoord
property MinHeight : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property PreferedHeight : TCoord
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_MaxMinHoleSizeConstraint (31 unique + inherits IPCB_Primitive)
property AbsoluteValues : Boolean
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxLimit : TCoord
property MaxPercent : TReal
property MinLimit : TCoord
property MinPercent : TReal
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_MaxMinLengthConstraint (31 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxDelay : Double
property MaxLimit : TCoord
property MinDelay : Double
property MinLimit : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property UseDelayUnits : Boolean

## IPCB_MaxMinLengthViolation (19 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property ViolDelay : Double
property ViolLength : TCoord
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_MaxMinWidthConstraint (45 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property CheckConnectedCopper : Boolean
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property FavoredImpedance : TDouble
function FindImpedanceProfileForRule(Impedance : Double) : IPCB_ImpedanceProfile;
function GetImpedanceProfile : IPCB_ImpedanceProfile;
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_FavoredWidthAtSubStack(const L : Integer, const StackID : WideString) : Integer;
function GetState_IsLayerDefined(const L : Integer, const StackID : WideString) : Boolean;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property ImpedanceDriven : Boolean
property ImpedanceProfileId : TPCBString
procedure Invalidate;
property IsAdvanced : Boolean
function IsLayerDefined(ALayer : Integer, const ALayerStackID : WideString) : Boolean;
function IsUnary : Boolean;
function IsUniformMaxWidth(const LSID : WideString, out Width : Integer) : Boolean;
function IsUniformMinWidth(const LSID : WideString, out Width : Integer) : Boolean;
function IsUniformPreferredWidth(const LSID : WideString, out Width : Integer) : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxImpedance : TDouble
property MaxLimit : TCoord
property MinImpedance : TDouble
property MinLimit : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property PreferedWidth : TCoord
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetState_FavoredWidthAtSubStack(const L : Integer, const StackID : WideString, Value : Integer);

## IPCB_MaxOvershootFall (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Maximum : Double
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_MaxOvershootRise (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Maximum : Double
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_MaxUndershootFall (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Maximum : Double
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_MaxUndershootRise (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Maximum : Double
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_MechanicalLayer (12 members)
property DisplayInSingleLayerMode : Boolean
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
property Kind : TMechanicalLayerKind
function LayerStack : IPCB_LayerStackBase;
property LinkToSheet : Boolean
property MechanicalLayerEnabled : Boolean
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_MechanicalLayerPairs (16 members)
property LayerPairLayerStackID[I: Integer] : WideString
property LayerPairKind[I: Integer] : TMechanicalLayerPairKind
property LayerPair[I: Integer] : TMechanicalLayerPair
function AddPair(Layer1 : Integer, Layer2 : Integer) : Integer;
function AddPairByStackID(const LayerStack : WideString, Layer1 : Integer, Layer2 : Integer) : Integer;
function AddPairToStack(LayerStack : IPCB_LayerStack, Layer1 : Integer, Layer2 : Integer) : Integer;
procedure Clear;
function Count : Integer;
function CreatePairByKind(AKind : TMechanicalLayerPairKind) : Integer;
procedure Export_ToParameters(Params : PWideChar);
function FlipLayer(var L : TV6_Layer) : Boolean;
function FlipLayerV7(var L : Integer) : Boolean;
procedure Import_FromParameters(Params : PWideChar);
function LayerUsed(Layer : Integer) : Boolean;
function PairDefined(Layer1 : Integer, Layer2 : Integer) : Boolean;
function RemovePair(Layer1 : Integer, Layer2 : Integer) : Boolean;

## IPCB_MeshColorList (5 members)
procedure Clear;
procedure Delete(AIndex : Integer);
function Get(AIndex : Integer) : Cardinal;
function GetAsString : WideString;
function GetCount : Integer;

## IPCB_MeshItem (7 members)
function GetColorList : IPCB_MeshColorList;
function GetLayerName : WideString;
function GetName : WideString;
function GetTriangleList : IPCB_MeshTriangleList;
function GetVertexList : IPCB_MeshVertexList;
procedure SetLayerName(const AValue : WideString);
procedure SetName(const AValue : WideString);

## IPCB_MeshItemList (4 members)
procedure Clear;
procedure Delete(AIndex : Integer);
function Get(AIndex : Integer) : IPCB_MeshItem;
function GetCount : Integer;

## IPCB_MeshObject (1 members)
function GetMeshItems : IPCB_MeshItemList;

## IPCB_MeshTriangleList (5 members)
procedure Clear;
procedure Delete(AIndex : Integer);
function Get(AIndex : Integer) : IDispatch;
function GetAsString : WideString;
function GetCount : Integer;

## IPCB_MeshVertexList (5 members)
procedure Clear;
procedure Delete(AIndex : Integer);
function Get(AIndex : Integer) : IDispatch;
function GetAsString : WideString;
function GetCount : Integer;

## IPCB_MinimumAnnularRing (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Minimum : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_MinimumSolderMaskSliverRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MinSolderMaskSliver : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_MinWidthStubViolation_Base (18 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
property HelperPrim : IPCB_Primitive
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_MinWidthViolation (19 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
property HelperPrim : IPCB_Primitive
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property ViolationArea : TCoordRect
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_Model (26 members)
procedure AddTo(const ViewWrapper : IOccWrapper, const ITransformation : IPCB3D_Transformation, const Name : WideString);
procedure AddToAssembly(const ViewWrapper : IOccWrapper, const AssemblyIndex : Integer, const ITransformation : IPCB3D_Transformation, const Name : WideString);
procedure AddToAssembly2(const ViewWrapper : IOccWrapper, const AssemblyIndex : Integer, const ITransformation : IPCB3D_Transformation, const Name : WideString, const Color : Cardinal);
property CheckSum : Cardinal
property DataSize : Int64
property Embed : Boolean
procedure ExportToStep(const FileName : WideString);
property FileName : TPCBString
function ForceCheck_IsStale : Boolean;
function GetDataHash(const AHashType : WideString) : WideString;
procedure GetState(out RotX : Double, out RotY : Double, out RotZ : Double, out Dz : Integer);
function I_ObjectAddress : Pointer;
function I_Replicate : IPCB_Model;
function I_ReplicateToGeneric : IPCB_Model;
property Id : TPCBString
function IsEmpty : Boolean;
function IsStale : Boolean;
property ItemGUID : TPCBString
property ItemRevisionGUID : TPCBString
property ModelSource : TModelSource
property ModelType : T3DModelType
property Name : TPCBString
property Origin : TCoordPoint
property Rotation : TAngle
procedure SetState(RotX : Double, RotY : Double, RotZ : Double, Dz : Integer);
property VaultGUID : TPCBString

## IPCB_ModelCache (12 members)
function CreateCylinderModel(const Radius : Integer, const Height : Integer, const Color : Cardinal) : IPCB_Model;
function CreateExtrudedModel(const Polygon : IPCB_GeometricPolygon, const PolyArea : Int64, const RefPt : IDispatch, MinZ : Integer, MaxZ : Integer, const Color : Cardinal) : IPCB_Model;
function CreateModelByVault(const AVaultGUID : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString) : IPCB_Model;
function CreateRealModelFromParameters(const AParameters : IParameterList) : IPCB_RealModel;
function CreateSphereModel(const Radius : Integer, const Color : Cardinal) : IPCB_Model;
function FactoryCreateModelByModelType(const ModelType : T3DModelType) : IPCB_Model;
function ImportModel(const ARealModel : IPCB_RealModel, const Stream_NotCompressed : IStream) : IPCB_RealModel;
function ImportModel_FromFile(const ARealModel : IPCB_RealModel, const AFileName : WideString) : IPCB_RealModel;
function ImportModel_FromFiles(const ARealModel : IPCB_RealModel, const SearchPath : IPCB_WideStrings) : IPCB_RealModel;
function ImportModel_FromVault(const ARealModel : IPCB_RealModel, const AVaultGUID : WideString, const ARevisionGUID : WideString) : IPCB_RealModel;
function IsStale(const ARealModel : IPCB_RealModel) : Boolean;
procedure Reset_IDsToChecksum;

## IPCB_ModelOptions (3 members)
procedure GetSearchPaths(Project : IProject, AbsoluteSearchPaths : IPCB_WideStrings, UnusedPaths : IPCB_WideStrings);
function GetState_MeshDirectory : WideString;
procedure SetState_MeshDirectory(const AValue : WideString);

## IPCB_ModelProperties_Cylinder (2 members)
property Height : TCoord
property Radius : TCoord

## IPCB_ModelProperties_Extruded (2 members)
property MaxZ : TCoord
property MinZ : TCoord

## IPCB_ModelProperties_Sphere (1 members)
property Radius : TCoord

## IPCB_ModelsNoEmbedSection (29 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
function InvalidChecksumModelsCount : Integer;
function InvalidChecksumModelsText : WideString;
property ItemsCount : Integer
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage

## IPCB_ModelsSection (27 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage

## IPCB_ModifiedPolygonRule (28 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property AllowModified : Boolean
property AllowShelved : Boolean
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_MultilineText (15 unique + inherits IPCB_Primitive)
procedure CreateTextObject;
function IsRedundant : Boolean;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
function SetState_XSizeYSize : Boolean;
property Text : IPCB_Text
property TextSize : TCoordPoint
property x : TCoord
property X1Location : TCoord
property X2Location : TCoord
property XLocation : TCoord
property y : TCoord
property Y1Location : TCoord
property Y2Location : TCoord
property YLocation : TCoord

## IPCB_Net (38 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
procedure CancelGroupWarehouseRegistration(iPad : IPCB_Pad);
property Color : TColor
property ConnectivelyInvalid : Boolean
procedure ConnectivelyInValidate;
property ConnectsVisible : Boolean
property DifferentialPair : Pointer
function FastSetState_XSizeYSize : Boolean;
procedure FreePrimitives;
function GetLogicalNet : IPCB_Group;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GetSubnets : IPCB_Group;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
procedure HideNetConnects;
property InDifferentialPair : Boolean
property IsHighlighted : Boolean
property JumpersVisible : Boolean
property LiveHighlightMode : TLiveHighlightMode
property LoopRemoval : Boolean
property Name : TPCBString
property OverrideColorForDraw : Boolean
property PinCount : Integer
property PrimitiveLock : Boolean
procedure Rebuild;
procedure RegisterWithGroupWarehouse(iPad : IPCB_Pad);
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
property RoutedLength : TCoord
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
procedure ShowNetConnects;
procedure SubnetIndices_Reset;
procedure SubnetIndices_Set;
property ViaCount : Integer
property x : TCoord
property y : TCoord

## IPCB_Net2 (50 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
procedure CancelGroupWarehouseRegistration(iPad : IPCB_Pad);
property Color : TColor
property ConnectivelyInvalid : Boolean
procedure ConnectivelyInValidate;
property ConnectsVisible : Boolean
property DifferentialPair : Pointer
function FastSetState_XSizeYSize : Boolean;
procedure FreePrimitives;
function GetLogicalNet : IPCB_Group;
function GetPCBDifferentialPair : IPCB_DifferentialPair2;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GetState_Calculated_Topology : TNetTopology;
function GetState_DelayTotal : Double;
function GetState_EstimatedLength : Int64;
function GetState_ManhattanLength : Int64;
function GetState_RoutedLength64 : Int64;
function GetState_SignalDelay : Double;
function GetState_SignalLength : Int64;
function GetSubnets : IPCB_Group;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
procedure HideNetConnects;
property InDifferentialPair : Boolean
property IsDisabledLength : Boolean
property IsHighlighted : Boolean
property JumpersVisible : Boolean
property LiveHighlightMode : TLiveHighlightMode
property LoopRemoval : Boolean
function ManualRoutingViaStyle : IPCB_ViaStyleParams;
property Name : TPCBString
property OverrideColorForDraw : Boolean
property PinCount : Integer
property PrimitiveLock : Boolean
procedure Rebuild;
procedure RegisterWithGroupWarehouse(iPad : IPCB_Pad);
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
property RoutedLength : TCoord
procedure SetSelection_PrimitivesInNet(ASelected : Boolean);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
procedure ShowNetConnects;
procedure SubnetIndices_Reset;
procedure SubnetIndices_Set;
property TargetLength : TCoord
property ViaCount : Integer
property x : TCoord
property y : TCoord

## IPCB_NetAntennaeViolation (19 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property CircleRadius : TCoord
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Location : TCoordPoint
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_NetList (2 members)
property NetByIndex[AIndex: Integer] : IPCB_Net
property Count : Integer

## IPCB_NetsToIgnoreRule (26 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_ObjectClass (12 unique + inherits IPCB_Primitive)
procedure AddLayerMember(L : TV6_Layer);
procedure AddMember(P : IPCB_Primitive);
procedure AddMemberByName(AName : WideString);
function IsLayerMember(L : TV6_Layer) : Boolean;
function IsMember(S : WideString) : Boolean;
function IsValidObjectKind(P : IPCB_Primitive) : Boolean;
property MemberKind : TClassMemberKind
property Name : TPCBString
procedure RemoveAllMembers;
procedure RemoveLayerMember(L : TV6_Layer);
procedure RemoveMember(P : IPCB_Primitive);
property SuperClass : Boolean

## IPCB_ObjectClass1 (15 unique + inherits IPCB_Primitive)
procedure AddLayerMember(L : TV6_Layer);
procedure AddMember(P : IPCB_Primitive);
procedure AddMemberByName(AName : WideString);
property DisplayName : TPCBString
function IsLayerMember(L : TV6_Layer) : Boolean;
function IsMember(S : WideString) : Boolean;
function IsMember(P : IPCB_Primitive) : Boolean;
function IsValidObjectKind(P : IPCB_Primitive) : Boolean;
property MemberKind : TClassMemberKind
property MembersCount : Integer
property Name : TPCBString
procedure RemoveAllMembers;
procedure RemoveLayerMember(L : TV6_Layer);
procedure RemoveMember(P : IPCB_Primitive);
property SuperClass : Boolean

## IPCB_ObjectClass2 (15 unique + inherits IPCB_Primitive)
procedure AddLayerMember(L : TV6_Layer);
procedure AddMember(P : IPCB_Primitive);
procedure AddMemberByName(AName : WideString);
property DisplayName : TPCBString
function IsLayerMember(L : TV6_Layer) : Boolean;
function IsMember(P : IPCB_Primitive) : Boolean;
function IsMember(S : WideString) : Boolean;
function IsValidObjectKind(P : IPCB_Primitive) : Boolean;
property MemberKind : TClassMemberKind
property MembersCount : Integer
property Name : TPCBString
procedure RemoveAllMembers;
procedure RemoveLayerMember(L : TV6_Layer);
procedure RemoveMember(P : IPCB_Primitive);
property SuperClass : Boolean

## IPCB_ObjectClassBase (10 unique + inherits IPCB_Primitive)
procedure AddMember(P : IPCB_Primitive);
property DisplayName : TPCBString
function IsMember(P : IPCB_Primitive) : Boolean;
function IsValidObjectKind(P : IPCB_Primitive) : Boolean;
property MemberKind : TClassMemberKind
property MembersCount : Integer
property Name : TPCBString
procedure RemoveAllMembers;
procedure RemoveMember(P : IPCB_Primitive);
property SuperClass : Boolean

## IPCB_ObjectClassV7 (3 members)
procedure AddLayerMember(const L : IDispatch);
function IsLayerMember(const L : IDispatch) : Boolean;
procedure RemoveLayerMember(const L : IDispatch);

## IPCB_OLEMetadata (24 unique + inherits IPCB_Primitive)
procedure CloseOLEEditor(const SaveChanges : LongBool);
function GetState_ContentData : WideString;
function GetState_EMFData : string;
function GetState_Height : Integer;
function GetState_LocationX : Integer;
function GetState_LocationY : Integer;
function GetState_OLEData : string;
function GetState_OrigXSize : Integer;
function GetState_OrigYSize : Integer;
function GetState_Rotation : Double;
function GetState_Width : Integer;
procedure Invalidate;
procedure RebuildAfterUpdate;
procedure SetState_ContentData(const ANewValue : WideString);
procedure SetState_EMFData(const AValue : WideString);
procedure SetState_Height(const ANewValue : Integer);
procedure SetState_LocationX(const ANewValue : Integer);
procedure SetState_LocationY(const ANewValue : Integer);
procedure SetState_OLEData(const AValue : WideString);
procedure SetState_OrigXSize(const AValue : Integer);
procedure SetState_OrigYSize(const AValue : Integer);
procedure SetState_Rotation(const ANewValue : Double);
procedure SetState_Width(const ANewValue : Integer);
procedure ShowOLEEditor;

## IPCB_OnIdleNotification (2 members)
procedure RegisterHandlerNotification(const AHandler : INotificationHandler);
procedure UnRegisterHandlerNotification(const AHandler : INotificationHandler);

## IPCB_OptionsList (4 members)
procedure Delete(Options : IPCB_AbstractOptions);
function GetState_OptionSet(ObjectId : TOptionsObjectId) : IPCB_AbstractOptions;
procedure Insert(Options : IPCB_AbstractOptions);
function MemoryUsed : Integer;

## IPCB_OriginalDimension (64 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property ArrowLength : TCoord
property ArrowLineWidth : TCoord
property ArrowPosition : TDimensionArrowPosition
property ArrowSize : TCoord
property Bold : Boolean
property DimensionKind : TDimensionKind
property ExtensionLineWidth : TCoord
property ExtensionOffset : TCoord
property ExtensionPickGap : TCoord
function FastSetState_XSizeYSize : Boolean;
property FontName : TPCBString
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Italic : Boolean
property LineWidth : TCoord
procedure MoveTextByXY(AX : Integer, AY : Integer);
procedure MoveTextToXY(AX : Integer, AY : Integer);
property PrimitiveLock : Boolean
procedure References_Add(const r : IDispatch);
property References_Count : Integer
procedure References_Delete(Index : Integer);
procedure References_DeleteLast;
function References_IndexOf(P : IPCB_Primitive, Index : Integer) : Integer;
function References_Validate : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetPrefixIfNeeded;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property Style : TUnitStyle
function Text : IPCB_Text;
property TextDimensionUnit : TDimensionUnit
property TextFont : TFontID
property TextFormat : TPCBString
property TextGap : TCoord
property TextHeight : TCoord
property TextLineWidth : TCoord
property TextPosition : TDimensionTextPosition
property TextPrecision : Integer
property TextPrefix : TPCBString
property TextSuffix : TPCBString
property TextValue : TReal
property TextWidth : TCoord
property TextX : TCoord
property TextY : TCoord
function Track1 : IPCB_Primitive;
function Track2 : IPCB_Primitive;
function Track3 : IPCB_Primitive;
function Track4 : IPCB_Primitive;
function Track5 : IPCB_Primitive;
function Track6 : IPCB_Primitive;
function Track7 : IPCB_Primitive;
function Track8 : IPCB_Primitive;
property UseTTFonts : Boolean
property x : TCoord
property X1Location : TCoord
property y : TCoord
property Y1Location : TCoord

## IPCB_OutputConverter (3 members)
function Convert(const AText : IPCB_Text, out AConvertedString : WideString) : Boolean;
function StringDimensions(const aString : WideString, Size : Integer, Font : SmallInt, Mirror : Boolean, out Width : Integer, out Height : Integer) : Boolean;
property SubstituteFonts : Boolean

## IPCB_OutputOptions (24 members)
property PlotLayer[PL: TV6_PlotLayer] : Boolean
property FlipLayer[PL: TV6_PlotLayer] : Boolean
property BottomLayerOnPadMaster : Boolean
property DrillDrawSymbolSize : TCoord
property DrillGuideHoleSize : TCoord
property DrillSymbolKind : TDrillSymbol
procedure Export_ToParameters(Parameters : PWideChar);
procedure Export_ToParameters_GeneralOptions(Parameters : PWideChar);
procedure Export_ToParameters_LayerOptions(Parameters : PWideChar);
procedure Export_ToParameters_LayerOptions_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version4(Parameters : PWideChar);
function I_ObjectAddress : Pointer;
procedure Import_FromParameters(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_GeneralOptions(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_LayerOptions(Parameters : PWideChar);
procedure Import_FromParameters_LayerOptions_Version3(Parameters : PWideChar);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, Parameters : PWideChar);
property IncludeUnconnectedPads : Boolean
property IncludeViasInSolderMask : Boolean
property MultiLayerOnPadMaster : Boolean
property OptionsObjectID : TOptionsObjectId
property TopLayerOnPadMaster : Boolean

## IPCB_OverlayLayer (8 members)
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_Pad (45 unique + inherits IPCB_Primitive)
property BotShape : TShape
property BotXSize : TCoord
property BotYSize : TCoord
function BoundingRectangleOnLayer(ALayer : TV6_Layer) : IDispatch;
property Cache : TPadCache
procedure ClearStackSizeAndShapes;
function DefinitionLayerIterator : IPCB_LayerIterator;
property DrillType : TExtendedDrillType
property HoleNegativeTolerance : TCoord
property HolePositiveTolerance : TCoord
property HoleRotation : TAngle
property HoleSize : TCoord
property HoleType : TExtendedHoleType
property HoleWidth : TCoord
procedure InvalidateCache;
procedure InvalidateSizeShape;
function IsPadStack : Boolean;
function IsSurfaceMount : Boolean;
function IsVirtualPin : Boolean;
property JumperID : Integer
property MidShape : TShape
property MidXSize : TCoord
property MidYSize : TCoord
property Mode : TPadMode
property Name : TPCBString
property OwnerPart_ID : Integer
property PinDescriptor : TPCBString
function PlaneConnectionStyleForLayer(ALayer : TV6_Layer) : TPlaneConnectionStyle;
property Plated : Boolean
procedure ReValidateSizeShape;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
property SolderMaskExpansionFromHoleEdge : Boolean
function SolderMaskExpansionFromHoleEdgeWithRule : Boolean;
property SwapID_Pad : TPCBString
property SwapID_Part : TPCBString
property SwappedPadName : TPCBString
property TemplateLink : IPCB_PadViaTemplateLink
property TopShape : TShape
property TopXSize : TCoord
property TopYSize : TCoord
procedure UpdateCache;
procedure ValidateSizeShape;
property x : TCoord
property y : TCoord

## IPCB_Pad2 (46 unique + inherits IPCB_Primitive)
property BotShape : TShape
property BotXSize : TCoord
property BotYSize : TCoord
function BoundingRectangleOnLayer(ALayer : TV6_Layer) : IDispatch;
property Cache : TPadCache
procedure ClearStackSizeAndShapes;
function DefinitionLayerIterator : IPCB_LayerIterator;
property DrillType : TExtendedDrillType
property HoleNegativeTolerance : TCoord
property HolePositiveTolerance : TCoord
property HoleRotation : TAngle
property HoleSize : TCoord
property HoleType : TExtendedHoleType
property HoleWidth : TCoord
procedure InvalidateCache;
procedure InvalidateSizeShape;
function IsPadStack : Boolean;
function IsSurfaceMount : Boolean;
function IsVirtualPin : Boolean;
property JumperID : Integer
property MidShape : TShape
property MidXSize : TCoord
property MidYSize : TCoord
property Mode : TPadMode
property Name : TPCBString
property OwnerPart_ID : Integer
property PinDescriptor : TPCBString
property PinPackageLength : TCoord
function PlaneConnectionStyleForLayer(ALayer : TV6_Layer) : TPlaneConnectionStyle;
property Plated : Boolean
procedure ReValidateSizeShape;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
property SolderMaskExpansionFromHoleEdge : Boolean
function SolderMaskExpansionFromHoleEdgeWithRule : Boolean;
property SwapID_Pad : TPCBString
property SwapID_Part : TPCBString
property SwappedPadName : TPCBString
property TemplateLink : IPCB_PadViaTemplateLink
property TopShape : TShape
property TopXSize : TCoord
property TopYSize : TCoord
procedure UpdateCache;
procedure ValidateSizeShape;
property x : TCoord
property y : TCoord

## IPCB_Pad3 (179 members)
property ShapeOnLayer[L: Integer] : TShape
property IsPadRemoved[ALayer: Integer] : Boolean
property SplitPlanes[IntPlaneLayer: IDispatch] : IPCB_SplitPlane
property StackCRPctOnLayer[L: Integer] : Byte
property StackCRPctExOnLayer[ALayer: Integer] : Double
property IsConnectedToPlane[Layer: TV6_Layer] : Boolean
property InSelectionMemory[Index: Integer] : Boolean
property CRPercentage[L: Integer] : Byte
property CornerRadius[L: Integer] : TCoord
property IsHoleStraddling[ALayer: IDispatch] : Boolean
property StackCRSizeOnLayer[ALayer: Integer] : TCoord
property XStackSizeOnLayer[L: Integer] : TCoord
property XSizeOnLayer[L: Integer] : TCoord
property YPadOffset[L: TV6_Layer] : TCoord
property YStackSizeOnLayer[L: Integer] : TCoord
property YSizeOnLayer[L: Integer] : TCoord
property XPadOffset[L: TV6_Layer] : TCoord
property StackCRUsePercentOnLayer[ALayer: Integer] : Boolean
property StackShapeOnLayer[L: Integer] : TShape
property Width[L: TV6_Layer] : TCoord
property WidthOnLayer[L: TV6_Layer] : TCoord
property AllowGlobalEdit : Boolean
procedure BeginModify;
property Board : IPCB_Board
property BoardRegion : IPCB_BoardRegion
property BotShape : TShape
property BotXSize : TCoord
property BotYSize : TCoord
function BoundingRectangle : IDispatch;
function BoundingRectangleChildren : IDispatch;
function BoundingRectangleForPainting : IDispatch;
function BoundingRectangleForSelection : IDispatch;
function BoundingRectangleOnLayer(ALayer : TV6_Layer) : IDispatch;
property Cache : TPadCache
procedure CancelModify;
procedure ClearStackSizeAndShapes;
property Component : IPCB_Component
property Coordinate : IPCB_Coordinate
property CounterHoles : IPCB_CounterHoleParamsList
property DaisyChainStyle : TDaisyChainStyle
function DefinitionLayerIterator : IPCB_LayerIterator;
property Descriptor : TPCBString
property Detail : TPCBString
property Dimension : IPCB_Dimension
property DrawAsPreview : Boolean
property DRCError : Boolean
property DrillType : TExtendedDrillType
procedure EditShapeOnLayer(ALayer : Integer);
property Enabled : Boolean
property Enabled_Direct : Boolean
property Enabled_vComponent : Boolean
property Enabled_vCoordinate : Boolean
property Enabled_vDimension : Boolean
property Enabled_vNet : Boolean
property Enabled_vPolygon : Boolean
property EnableDraw : Boolean
procedure EndModify;
procedure Export_ToParameters(AParams : PWideChar);
procedure FlipXY(Axis : Integer, MirrOp : TMirrorOperation);
function GetCounterHoleDiameters : IPCB_CounterHoleDiameterOnDepthList;
function GetFirstBottomCounterHole : IPCB_CounterHoleParams;
function GetFirstTopCounterHole : IPCB_CounterHoleParams;
function GetHoleXSize : Integer;
function GetHoleYSize : Integer;
function GetState_HoleString : WideString;
function GetState_SwapID_Gate : WideString;
procedure GraphicallyInvalidate;
property Handle : TPCBString
function HasRoundedRectangularShapes : Boolean;
property HoleNegativeTolerance : TCoord
property HolePositiveTolerance : TCoord
property HoleRotation : TAngle
property HoleSize : TCoord
property HoleType : TExtendedHoleType
property HoleWidth : TCoord
function I_ObjectAddress : Pointer;
property Identifier : TPCBString
property InBoard : Boolean
property InComponent : Boolean
property InCoordinate : Boolean
property Index : Word
property InDimension : Boolean
property InNet : Boolean
property InPolygon : Boolean
procedure InvalidateCache;
procedure InvalidateSizeShape;
property IsAssyTestpoint_Bottom : Boolean
property IsAssyTestpoint_Top : Boolean
function IsCopperInsideHole(ALayer : Integer) : Boolean;
function IsCounterHole : Boolean;
property IsElectricalPrim : Boolean
function IsFreePrimitive : Boolean;
function IsHidden : Boolean;
function IsHoleSizeValid : Boolean;
property IsKeepout : Boolean
function IsPadStack : Boolean;
property IsPreRoute : Boolean
function IsSaveable(AVer : TAdvPCBFileFormatVersion) : Boolean;
function IsSurfaceMount : Boolean;
property IsTenting : Boolean
property IsTenting_Bottom : Boolean
property IsTenting_Top : Boolean
property IsTestpoint_Bottom : Boolean
property IsTestpoint_Top : Boolean
function IsVirtualPin : Boolean;
property JumperID : Integer
property Layer : TLayer
property Layer_V6 : TV6_Layer
property MaxXSignalLayers : TCoord
property MaxYSignalLayers : TCoord
property MidShape : TShape
property MidXSize : TCoord
property MidYSize : TCoord
procedure Mirror(Axis : Integer, MirrOp : TMirrorOperation);
property MiscFlag1 : Boolean
property MiscFlag2 : Boolean
property MiscFlag3 : Boolean
property Mode : TPadMode
property Moveable : Boolean
procedure MoveByXY(AX : Integer, AY : Integer);
procedure MoveToXY(AX : Integer, AY : Integer);
property MultiLayerHighBits : Word
property Name : TPCBString
property Net : IPCB_Net
property ObjectId : TObjectId
property ObjectIDString : TPCBString
property OwnerPart_ID : Integer
property PadCacheRobotFlag : Boolean
property PadHasOffsetOnAny : Boolean
property PasteMaskExpansion : TCoord
property PinDescriptor : TPCBString
property PinPackageLength : TCoord
function PlaneConnectionStyleForLayer(ALayer : TV6_Layer) : TPlaneConnectionStyle;
property Plated : Boolean
property Polygon : IPCB_Polygon
property PolygonOutline : Boolean
property PowerPlaneClearance : TCoord
property PowerPlaneConnectStyle : TPlaneConnectStyle
property PowerPlaneReliefExpansion : TCoord
property ReliefAirGap : TCoord
property ReliefConductorWidth : TCoord
property ReliefEntries : Integer
property RemovedPads : IPCB_SafeLayerToBoolean
procedure RemoveUnusedPads(PreserveStartEnd : Boolean);
function Replicate : IPCB_Primitive;
function RequiredParamterSpace : Integer;
procedure RestoreUnusedPads;
procedure ReValidateSizeShape;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure RotateBy(Angle : Double);
property Rotation : TAngle
property Selected : Boolean
procedure SetState_Preview(Enable : Boolean, Color : Cardinal, Opacity : Single, z : Integer, Height : Integer, sx : Single, sy : Single, SZ : Single);
procedure SetState_SwapID_Gate(const AValue : WideString);
property SolderMaskExpansion : TCoord
property SolderMaskExpansionFromHoleEdge : Boolean
function SolderMaskExpansionFromHoleEdgeWithRule : Boolean;
property SwapID_Pad : TPCBString
property SwapID_Part : TPCBString
procedure SwapLayerPairs;
property SwappedPadName : TPCBString
property TearDrop : Boolean
property TemplateLink : IPCB_PadViaTemplateLink
property TopShape : TShape
property TopXSize : TCoord
property TopYSize : TCoord
property UnionIndex : Integer
property UniqueId : TPCBString
procedure UntieCounterHoles;
procedure UpdateCache;
procedure UpdateCounterHoles;
property Used : Boolean
property UserRouted : Boolean
procedure ValidateSizeShape;
property ViewableObjectID : TViewableObjectID
property x : TCoord
property XPadOffsetAll : TCoord
property y : TCoord
property YPadOffsetAll : TCoord

## IPCB_Pad4 (197 members)
property ShapeOnLayer[L: Integer] : TShape
property IsPadRemoved[ALayer: Integer] : Boolean
property SplitPlanes[IntPlaneLayer: IDispatch] : IPCB_SplitPlane
property StackCRPctOnLayer[L: Integer] : Byte
property StackCRPctExOnLayer[ALayer: Integer] : Double
property CornerRadius[L: Integer] : TCoord
property InSelectionMemory[Index: Integer] : Boolean
property HoleSizeOnLayer[ALayer: Integer] : TCoord
property IsConnectedToPlane[Layer: TV6_Layer] : Boolean
property IsHoleStraddling[ALayer: IDispatch] : Boolean
property CRPercentage[L: Integer] : Byte
property XStackSizeOnLayer[L: Integer] : TCoord
property XSizeOnLayer[L: Integer] : TCoord
property XPadOffset[L: TV6_Layer] : TCoord
property YStackSizeOnLayer[L: Integer] : TCoord
property YSizeOnLayer[L: Integer] : TCoord
property YPadOffset[L: TV6_Layer] : TCoord
property StackShapeOnLayer[L: Integer] : TShape
property StackCRUsePercentOnLayer[ALayer: Integer] : Boolean
property StackCRSizeOnLayer[ALayer: Integer] : TCoord
property WidthOnLayer[L: TV6_Layer] : TCoord
property Width[L: TV6_Layer] : TCoord
property AllowGlobalEdit : Boolean
procedure BeginModify;
property Board : IPCB_Board
property BoardRegion : IPCB_BoardRegion
property BotShape : TShape
property BotXSize : TCoord
property BotYSize : TCoord
function BoundingRectangle : IDispatch;
function BoundingRectangleChildren : IDispatch;
function BoundingRectangleForPainting : IDispatch;
function BoundingRectangleForSelection : IDispatch;
function BoundingRectangleOnLayer(ALayer : TV6_Layer) : IDispatch;
property Cache : TPadCache
procedure CancelModify;
procedure ClearStackSizeAndShapes;
property Component : IPCB_Component
property Coordinate : IPCB_Coordinate
property CounterHoles : IPCB_CounterHoleParamsList
property DaisyChainStyle : TDaisyChainStyle
function DefinitionLayerIterator : IPCB_LayerIterator;
property Descriptor : TPCBString
property Detail : TPCBString
property Dimension : IPCB_Dimension
property DrawAsPreview : Boolean
property DRCError : Boolean
property DrillType : TExtendedDrillType
procedure EditShapeOnLayer(ALayer : Integer);
property Enabled : Boolean
property Enabled_Direct : Boolean
property Enabled_vComponent : Boolean
property Enabled_vCoordinate : Boolean
property Enabled_vDimension : Boolean
property Enabled_vNet : Boolean
property Enabled_vPolygon : Boolean
property EnableDraw : Boolean
procedure EndModify;
procedure Export_ToParameters(AParams : PWideChar);
procedure FlipXY(Axis : Integer, MirrOp : TMirrorOperation);
function GetCounterHoleDiameters : IPCB_CounterHoleDiameterOnDepthList;
function GetFirstBottomCounterHole : IPCB_CounterHoleParams;
function GetFirstTopCounterHole : IPCB_CounterHoleParams;
function GetHoleXSize : Integer;
function GetHoleYSize : Integer;
function GetSourceLayerAndExpansion(const ALayer : Integer, var ASourceLayer : Integer, var AExpansion : Integer) : Boolean;
function GetState_BottomLayer : Integer;
function GetState_HoleString : WideString;
function GetState_SwapID_Gate : WideString;
function GetState_TopLayer : Integer;
procedure GraphicallyInvalidate;
property Handle : TPCBString
function HasCornerRadiusChamfer : Boolean;
function HasCustomChamferedRectangle : Boolean;
function HasCustomDonut : Boolean;
function HasCustomMaskDonutShapes : Boolean;
function HasCustomMaskShapes : Boolean;
function HasCustomRoundedRectangle : Boolean;
function HasCustomShapes : Boolean;
function HasRoundedRectangularShapes : Boolean;
property HoleNegativeTolerance : TCoord
property HolePositiveTolerance : TCoord
property HoleRotation : TAngle
property HoleSize : TCoord
property HoleType : TExtendedHoleType
property HoleWidth : TCoord
function I_ObjectAddress : Pointer;
property Identifier : TPCBString
property InBoard : Boolean
property InComponent : Boolean
property InCoordinate : Boolean
property Index : Word
property InDimension : Boolean
property InNet : Boolean
property InPolygon : Boolean
procedure InvalidateCache;
procedure InvalidateSizeShape;
property IsAssyTestpoint_Bottom : Boolean
property IsAssyTestpoint_Top : Boolean
property IsBottomPasteEnabled : Boolean
function IsCopperInsideHole(ALayer : Integer) : Boolean;
function IsCounterHole : Boolean;
property IsElectricalPrim : Boolean
function IsFreePrimitive : Boolean;
function IsHidden : Boolean;
function IsHoleSizeValid : Boolean;
property IsKeepout : Boolean
function IsPadStack : Boolean;
property IsPreRoute : Boolean
function IsSaveable(AVer : TAdvPCBFileFormatVersion) : Boolean;
function IsSurfaceMount : Boolean;
property IsTenting : Boolean
property IsTenting_Bottom : Boolean
property IsTenting_Top : Boolean
property IsTestpoint_Bottom : Boolean
property IsTestpoint_Top : Boolean
property IsTopPasteEnabled : Boolean
function IsVirtualPin : Boolean;
property JumperID : Integer
property Layer : TLayer
property Layer_V6 : TV6_Layer
procedure LinkCustomShape(const APrimitive : IPCB_Primitive);
property MaxXSignalLayers : TCoord
property MaxYSignalLayers : TCoord
property MidShape : TShape
property MidXSize : TCoord
property MidYSize : TCoord
procedure Mirror(Axis : Integer, MirrOp : TMirrorOperation);
property MiscFlag1 : Boolean
property MiscFlag2 : Boolean
property MiscFlag3 : Boolean
property Mode : TPadMode
property Moveable : Boolean
procedure MoveByXY(AX : Integer, AY : Integer);
procedure MoveToXY(AX : Integer, AY : Integer);
property MultiLayerHighBits : Word
property Name : TPCBString
property Net : IPCB_Net
property ObjectId : TObjectId
property ObjectIDString : TPCBString
property OwnerPart_ID : Integer
property PadCacheRobotFlag : Boolean
property PadHasOffsetOnAny : Boolean
property PasteMaskExpansion : TCoord
property PinDescriptor : TPCBString
property PinPackageLength : TCoord
function PlaneConnectionStyleForLayer(ALayer : TV6_Layer) : TPlaneConnectionStyle;
property Plated : Boolean
property Polygon : IPCB_Polygon
property PolygonOutline : Boolean
property PowerPlaneClearance : TCoord
property PowerPlaneConnectStyle : TPlaneConnectStyle
property PowerPlaneReliefExpansion : TCoord
property ReliefAirGap : TCoord
property ReliefConductorWidth : TCoord
property ReliefEntries : Integer
property RemovedPads : IPCB_SafeLayerToBoolean
procedure RemoveUnusedPads(PreserveStartEnd : Boolean);
function Replicate : IPCB_Primitive;
function RequiredParamterSpace : Integer;
procedure RestoreUnusedPads;
procedure ReValidateSizeShape;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure RotateBy(Angle : Double);
property Rotation : TAngle
property Selected : Boolean
procedure SetState_Preview(Enable : Boolean, Color : Cardinal, Opacity : Single, z : Integer, Height : Integer, sx : Single, sy : Single, SZ : Single);
procedure SetState_SwapID_Gate(const AValue : WideString);
property SolderMaskExpansion : TCoord
property SolderMaskExpansionFromHoleEdge : Boolean
function SolderMaskExpansionFromHoleEdgeWithRule : Boolean;
property SwapID_Pad : TPCBString
property SwapID_Part : TPCBString
procedure SwapLayerPairs;
procedure SwapMaskLayersIfNeeded;
property SwappedPadName : TPCBString
property TearDrop : Boolean
property TemplateLink : IPCB_PadViaTemplateLink
property TopShape : TShape
property TopXSize : TCoord
property TopYSize : TCoord
procedure TransformFingerToCorner(ALayer : Integer);
property UnionIndex : Integer
property UniqueId : TPCBString
procedure UntieCounterHoles;
procedure UpdateCache;
procedure UpdateCounterHoles;
procedure UpdatePadStructureOnLayer(ALayer : Integer);
procedure UpdateSizeForRoundedAndChamferedShapes(ALayer : Integer);
property Used : Boolean
property UserRouted : Boolean
procedure ValidateSizeShape;
property ViewableObjectID : TViewableObjectID
property x : TCoord
property XPadOffsetAll : TCoord
property y : TCoord
property YPadOffsetAll : TCoord

## IPCB_PadTemplate (53 members)
property StackData[AIndex: Integer] : IPCB_PadTemplateStackData
function AddStackData(const AValue : IPCB_PadTemplateStackData) : Integer;
procedure ClearStackData;
procedure CopyTo(ADest : IPCB_PadViaTemplate, ACopyMode : TCopyMode);
function CreateDefaultStackData : IPCB_PadTemplateStackData;
function CreatePrimitive : IPCB_Primitive;
function CreateTemplateLink : IPCB_PadViaTemplateLink;
procedure DecreasePrimLinkCounter;
property DynamicName : Boolean
property ExternalLink : IPCB_PadViaTemplateLink
function GetFullTemplateID : WideString;
function GetHashVersion : WideString;
property Hash : WideString
function HasLocalChanges(APrimitive : IPCB_Primitive) : Boolean;
property HoleNegativeTolerance : TCoord
property HolePositiveTolerance : TCoord
property HoleRotation : TAngle
property HoleSize : TCoord
property HoleType : TExtendedHoleType
property HoleWidth : TCoord
function I_ObjectAddress : Pointer;
procedure IncreasePrimLinkCounter;
property Internal : Boolean
property IsBackdrill : Boolean
property IsMultiLayer : Boolean
property IsTenting_Bottom : Boolean
property IsTenting_Top : Boolean
property LibraryID : WideString
property ManualPasteMask : Boolean
property ManualSolderMask : Boolean
property Mode : TPadMode
property ObjectId : TObjectId
property ObjectIDString : WideString
property OffsetX : TCoord
property OffsetY : TCoord
property PadClass : WideString
property PasteMaskExpansion : TCoord
property PasteMaskPercent : Double
property PasteMaskUsePercent : Boolean
property Plated : Boolean
property PrimLinkCount : Integer
property RemoveUnused : Boolean
property RevisionID : WideString
property SolderMaskBottomExpansion : TCoord
property SolderMaskExpansion : TCoord
property SolderMaskHoleEdge : Boolean
function StackDataCount : Integer;
property TemplateDescription : WideString
property TemplateID : WideString
property TemplateName : WideString
procedure UpdateHash;
property UsePaste : Boolean
property UseSeparateExpansions : Boolean

## IPCB_PadTemplateStackData (15 members)
property CustomShape[AIndex: Integer] : TPolySegment
procedure AddSegment(const ASegment : IDispatch);
property CRPct : Byte
property CRPctEx : Double
property CRSize : TCoord
property CustomShapeInfo : IPCB_CustomShapeInfo
function I_ObjectAddress : Pointer;
property Layer : TLayer
property SegmentsCount : Integer
property Shape : TShape
property ShapeSubKind : TShapeSubKind
property SizeX : TCoord
property SizeY : TCoord
property ThermalRelief : TPadViaThermalReliefData
property UseCRPct : Boolean

## IPCB_PadUnderSMDViolation (18 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
property HelperPrim : IPCB_Primitive
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_PadViaLibrary (19 members)
property Templates[AIndex: Integer] : IPCB_PadViaTemplate
property Activated : Boolean
function AddExternalTemplate(const ATemplate : IPCB_PadViaTemplate) : IPCB_PadViaTemplate;
procedure AddTemplate(const APrimitive : IPCB_Primitive);
function AddTemplateByPrimitive(const APrimitive : IPCB_Primitive) : IPCB_PadViaTemplate;
function CheckDublicate(const ATemplate : IPCB_PadViaTemplate) : Boolean;
procedure Clear;
procedure CopyTo(const ADest : IPCB_PadViaLibrary);
property Count : Integer
procedure DeleteTemplate(AIndex : Integer);
property DisplayUnits : TUnit
function FindTemplate(const ATemplate : WideString) : IPCB_PadViaTemplate;
function I_ObjectAddress : Pointer;
property LibraryID : WideString
property LibraryName : WideString
property LibraryPath : WideString
function RemoveTemplate(const ATemplate : IPCB_PadViaTemplate) : Boolean;
procedure SetState_LibraryID(const AValue : WideString);
procedure SetState_LibraryName(const AValue : WideString);

## IPCB_PadViaLibraryDocument (44 members)
property View[Index: Integer] : IServerDocumentView
procedure AcquireDataFileHandle;
procedure AcquireFileOwnership;
procedure AddView(const AView : IServerDocumentView);
property BeingClosed : LongBool
property CanClose : LongBool
function CanCreateSnippet(const AView : IServerDocumentView, AMode : TSnippetCreationMode, AContextSensitive : Boolean) : Boolean;
function CanPlaceSnippet(const ASnippetPath : WideString) : Boolean;
function CompareWithShadow(AShadowDoc : IServerDocument, ACompareView : IServerView) : LongBool;
property Count : Integer
function CreateSnippetFile(const AView : IServerDocumentView, ASnippetFilePath : WideString, AMode : TSnippetCreationMode, AContextSensitive : Boolean) : Boolean;
property CurrentTemplate : IPCB_PadViaTemplate
property DisplayUnits : TUnit
procedure DocumentDirectoryChanged;
property DocumentModifiedDate : TDateTime
function DoFileLoad : LongBool;
function DoFileSave(const AKind : WideString) : LongBool;
function DoSafeChangeFileNameAndSave(const ANewFileName : WideString, const AKind : WideString) : LongBool;
function DoSafeFileSave(const AKind : WideString) : LongBool;
property FileName : WideString
procedure Focus;
function GetContextHelpTopicName : WideString;
function GetExternalFiles(ACheckForExistence : Boolean) : IExternalFiles;
function GetFileModifiedDate : TDateTime;
function GetSnippetView : IServerDocumentView;
function GetViewByName(const ViewName : WideString) : IServerDocumentView;
property IsShown : LongBool
property Kind : WideString
property Modified : LongBool
procedure NavigateFirst;
procedure NotifyViews(ANotification : INotification);
function OwnsFile : Boolean;
property PadViaLibrary : IPCB_PadViaLibrary
procedure PlaceSnippet(ASnippetAddress : WideString, const AView : IServerDocumentView);
procedure ReleaseDataFileHandle;
procedure ReleaseFileOwnership;
property ServerModule : IServerModule
procedure SetFileModifiedDate(const AValue : TDateTime);
function SetFileName(const AFileName : WideString) : WideString;
property SupportsOwnSave : LongBool
function SupportsReload : LongBool;
procedure UpdateModifiedDate;
function WarnIfOwnedByOther(AWarningLevel : TFileOwnershipWarningLevel) : LongBool;
procedure ZoomSnippetContents;

## IPCB_PadViaLibraryManager (19 members)
function AddRemoveLibraries(const ABoard : IPCB_Board) : WideString;
function CreateTemplate(AObjectId : TObjectId) : IPCB_PadViaTemplate;
function CreateTemplateLink : IPCB_PadViaTemplateLink;
procedure ExchangeTemplatesOnPrimitives(ABoard : IPCB_Primitive, AOldTemplate : IPCB_PadViaTemplate, ANewTemplate : IPCB_PadViaTemplate, ANeedUpdate : Boolean);
function FindLibrary(const ABoard : IPCB_Board, const ALibraryID : WideString) : IPCB_PadViaLibrary;
function GetInstalledLibrary(I : Integer) : IPCB_PadViaLibrary;
function GetInstalledLibraryCount : Integer;
function GetLibraryName(const APrimitive : IPCB_Primitive) : WideString;
function GetLinkedToLibrary(const APrimitive : IPCB_Primitive) : WordBool;
function GetTemplateNameWithDynamicName(ATemplate : IPCB_PadViaTemplate) : WideString;
procedure InstallLibrary(const APath : WideString);
procedure LibrariesModified;
procedure LockUpdates;
property NeedUpdate : Boolean
procedure PlaceTemplate(const ABoard : IPCB_Primitive, const ATemplate : IPCB_PadViaTemplate);
procedure PlaceTemplateFromParameters(const ABoard : IPCB_Primitive, const Parameters : IParameterList);
procedure UninstallLibrary(APvLib : IPCB_PadViaLibrary);
procedure UnlockUpdates;
procedure UpdateViews;

## IPCB_PadViaPainterView (17 members)
procedure ClearGraphicalObjects;
procedure ConfigView(Parameters : WideString);
function GetDummyBoard : IPCB_Board;
function GetIs3D : Boolean;
procedure GetState_BkColor(out r : Byte, out g : Byte, out b : Byte);
function GetState_SelectedLayer : Integer;
procedure KeyDown(var Key : Word, Shift : TShiftState);
procedure MouseWheel(Sender : TObject, Shift : TShiftState, WheelDelta : Integer, const MousePos : IDispatch, var Handled : Boolean);
procedure RefreshView;
procedure RegisterGOMouseHoverHandler(GraphicalObjectMouseHoverHandler : IPCB_GOMouseHoverHandler);
procedure SetAllLayersVisibilityState(Visible : Boolean);
procedure SetCamera(LowX : Integer, LowY : Integer, HighX : Integer, HighY : Integer);
procedure SetDirectXMode;
procedure SetPadViaByHandle(const APad : IPCB_Primitive);
procedure SetState_BkColor(r : Byte, g : Byte, b : Byte);
procedure SetViewRect(LowX : Integer, LowY : Integer, HighX : Integer, HighY : Integer);
procedure UpdatePrimitive;

## IPCB_PadViaTemplate (26 members)
procedure CopyTo(ADest : IPCB_PadViaTemplate, ACopyMode : TCopyMode);
function CreatePrimitive : IPCB_Primitive;
function CreateTemplateLink : IPCB_PadViaTemplateLink;
procedure DecreasePrimLinkCounter;
property DynamicName : Boolean
property ExternalLink : IPCB_PadViaTemplateLink
function GetFullTemplateID : WideString;
function GetHashVersion : WideString;
property Hash : WideString
function HasLocalChanges(APrimitive : IPCB_Primitive) : Boolean;
property HoleNegativeTolerance : TCoord
property HolePositiveTolerance : TCoord
function I_ObjectAddress : Pointer;
procedure IncreasePrimLinkCounter;
property Internal : Boolean
property IsBackdrill : Boolean
property LibraryID : WideString
property ObjectId : TObjectId
property ObjectIDString : WideString
property PrimLinkCount : Integer
property RemoveUnused : Boolean
property RevisionID : WideString
property TemplateDescription : WideString
property TemplateID : WideString
property TemplateName : WideString
procedure UpdateHash;

## IPCB_PadViaTemplateLink (6 members)
procedure Clear;
procedure CopyTo(ADest : IPCB_PadViaTemplateLink);
function GetFullTemplateID : WideString;
property LibraryID : WideString
property RevisionID : WideString
property TemplateID : WideString

## IPCB_ParallelSegmentConstraint (28 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property Gap : TCoord
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Limit : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_Parameter (4 members)
property Attributes : IPCB_ParameterAttributes
property IsInherited : Boolean
property Name : TPCBString
property Value : TPCBString

## IPCB_ParameterAttributes (4 members)
property Attribute[AName: WideString] : TPCBString
function HasAttribute(const AName : WideString) : Boolean;
procedure ResetAllAttributes;
procedure ResetAttribute(const AName : WideString);

## IPCB_ParameterList (8 members)
property ByName[AName: WideString] : IPCB_Parameter
property ByIndex[AIndex: Integer] : IPCB_Parameter
procedure Clear;
property Count : Integer
function FindByName(const AName : WideString) : IPCB_Parameter;
procedure RemoveByIndex(AIndex : Integer);
procedure RemoveByName(const AName : WideString);
function TryRemoveByName(const AName : WideString) : Boolean;

## IPCB_ParametersFactory (3 members)
function CreateParameterList : IPCB_ParameterList;
function CreateParameterNameValue(const AName : WideString, const AValue : WideString) : IPCB_Parameter;
function CreatePrimitiveParametersOfVariant(const APrimitive : IPCB_Primitive, const AVariantName : WideString) : IPCB_PrimitiveParameters;

## IPCB_ParametersFactory2 (1 members)
function CreatePrimitiveParametersWithoutVariant(const APrimitive : IPCB_Primitive) : IPCB_PrimitiveParameters;

## IPCB_ParametersSerialize (6 members)
procedure Export_ToParameters(const AParameters : IWideParameterList);
procedure Export_ToParameters_Version3(const AParameters : IWideParameterList);
procedure Export_ToParameters_Version4(const AParameters : IWideParameterList);
procedure Import_FromParameters(DisplayUnit : TUnit, const AParameters : IWideParameterList);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, const AParameters : IWideParameterList);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, const AParameters : IWideParameterList);

## IPCB_PasteMaskExpansionRule (32 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property Expansion : TCoord
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property Percent : Double
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property THPadUseBottomPaste : Boolean
property THPadUseTopPaste : Boolean
property UsePaste : Boolean
property UsePercent : Boolean

## IPCB_PasteMaskLayer (8 members)
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_PermittedLayersRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property PermittedLayers : TV6_LayerSet
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_PhaseMatchingViolatedArea (8 members)
property Segments[AIndex: Integer] : TPolySegment
procedure Clear;
function Count : Integer;
function I_ObjectAddress : Pointer;
property Layer : TLayer
property Length : Double
property LongerSide : TCoord
procedure Remove(AIndex : Integer);

## IPCB_PhaseViolationCollector (6 members)
procedure AddSegmentToLastViolation(const Segment : IDispatch);
procedure AddViolation(Length : Double, LongerSide : Integer, Layer : Integer);
function GetDiffPair : IPCB_DifferentialPair;
function GetMaxLength : Double;
function GetTolerance : Double;
function UseDelayUnits : Boolean;

## IPCB_PhysicalLayer (8 members)
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_PhysicalLayer2 (10 members)
property ElectricalResistivity : Double
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
property IsAdditiveLayer : Boolean
function IsInLayerStack : Boolean;
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_PinPair (21 members)
property Primitives[Index: Integer] : IPCB_Primitive
function CastToPrimitive : IPCB_Primitive;
property Color : TColor
property DelayTotal : Double
function GetPinPairItemDisplayName(Prim : IPCB_Primitive) : WideString;
function GetState_IsBroken : Boolean;
function GetState_PinDescriptorString(Index : Integer) : WideString;
function GetState_PinsCount : Integer;
function GetState_PinUniqueId(Index : Integer) : WideString;
function I_ObjectAddress : Pointer;
property Length : Int64
property Name : WideString
property NodeCount : Integer
property OverrideColorForDraw : Boolean
property PinPackageLength : Int64
function PinsToString(AUseUniqueIDinsteadOfDescriptor : Boolean) : WideString;
property PrimitivesCount : Integer
procedure Rebuild;
property RoutedLength : Int64
function UniqueIDsExist : Boolean;
property UnroutedLength : Int64

## IPCB_PinPairsManager (16 members)
property PinPairs[Index: Integer] : IPCB_PinPair
procedure AssignPinPairClass(APinPairs : IInterfaceList, AClassName : WideString);
function CanCreateTiePoints(APinPairs : IInterfaceList) : Boolean;
procedure Clear;
function CreateFromPins(const APins : IInterfaceList) : IPCB_PinPair;
function CreateFromPinsDescriptors(const APins : WideString) : IPCB_PinPair;
function CreateFromPinsUniqueIDs(const APins : WideString) : IPCB_PinPair;
function CreatePinPairsFromComponent(const Src : IPCB_Component, const SrcNets : IInterfaceList, const Dst : IInterfaceList, const APinPairClassName : WideString, const AProgressListener : IInterface, Depth : Integer) : IInterfaceList;
function CreatePinPairsFromConnectedNets(const ASourceComponents : IInterfaceList, const ASourceNets : IInterfaceList, const APinPairClassName : WideString, const AProgressListener : IInterface) : IInterfaceList;
function CreateTiePoints(APinPairs : IInterfaceList) : IInterfaceList;
procedure Delete(const APinPair : IPCB_PinPair);
function GetPinPairOf(const APrimitive : IPCB_Primitive) : IPCB_PinPair;
procedure InvalidateAll;
property PinPairsCount : Integer
function StateID : Int64;
function SwapPins(const PinA : IPCB_Primitive, const PinB : IPCB_Primitive, const OldNetA : IPCB_Net, const OldNetB : IPCB_Net) : IInterfaceList;

## IPCB_PinPairTiePoint (2 members)
property PinPairs : IInterfaceListEx
property TiePointPad : IPCB_Pad2

## IPCB_PinSwapOptions (8 members)
procedure Export_ToParameters(Parameters : PWideChar);
procedure Export_ToParameters_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version4(Parameters : PWideChar);
function I_ObjectAddress : Pointer;
procedure Import_FromParameters(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, Parameters : PWideChar);
property OptionsObjectID : TOptionsObjectId

## IPCB_PlacementGrid (17 members)
property Color : TColor
property ColorLarge : TColor
property ComponentGrid : Boolean
property DisplayUnit : TUnit
property DrawMode : TDrawGridMode
property DrawModeLarge : TDrawGridMode
property DrawMultiplier : Integer
property DrawMultiplierLarge : Integer
property Enabled : Boolean
function GetOwnerBoard : IPCB_Board;
function I_ObjectAddress : Pointer;
property IsDefault : Boolean
property IsMCADSource : Boolean
property Name : WideString
property Origin : TCoordPoint
property Priority : Cardinal
property ShowOrigin : Boolean

## IPCB_PlacementGridIterator (5 members)
function First : IPCB_PlacementGrid;
function Next : IPCB_PlacementGrid;
procedure SetFilter_IncludeDynamicGuides(AValue : Boolean);
procedure SetFilter_IncludeGrids(AValue : Boolean);
procedure SetFilter_IncludeStaticGuides(AValue : Boolean);

## IPCB_PlacementGuide (4 members)
property Color : TColor
function GetOwnerBoard : IPCB_Board;
function I_ObjectAddress : Pointer;
property IsMCADSource : Boolean

## IPCB_PlacementGuideLine (14 members)
property Color : TColor
property Enabled : Boolean
function GetOwnerBoard : IPCB_Board;
function I_ObjectAddress : Pointer;
function IsHorizontal : Boolean;
property IsMCADSource : Boolean
function IsMinus45Degrees : Boolean;
function IsPlus45Degrees : Boolean;
function IsVertical : Boolean;
procedure MoveOriginTo(const AX : Integer, const AY : Integer);
procedure SetOrigin(const x : Integer, const y : Integer);
property SourceObject : IPCB_Primitive
property x : Integer
property y : Integer

## IPCB_PlacementGuideSnapPoint (8 members)
property Color : TColor
property Enabled : Boolean
function GetOwnerBoard : IPCB_Board;
function I_ObjectAddress : Pointer;
property IsMCADSource : Boolean
property SourceObject : IPCB_Primitive
property x : Integer
property y : Integer

## IPCB_PlacementIterator (3 members)
procedure SetFilter_IncludeDynamicGuides(AValue : Boolean);
procedure SetFilter_IncludeGrids(AValue : Boolean);
procedure SetFilter_IncludeStaticGuides(AValue : Boolean);

## IPCB_PolarGrid (26 members)
procedure AngleRadiusToCoord(const Angle : Double, const Radius : Integer, out OutX : Integer, out OutY : Integer);
property AngularStep : TAngle
property Color : TColor
property ColorLarge : TColor
property ComponentGrid : Boolean
function CoordToAngle(const x : Integer, const y : Integer) : Double;
function CoordToRadius(const x : Integer, const y : Integer) : Integer;
property DisplayUnit : TUnit
property DrawMode : TDrawGridMode
property DrawModeLarge : TDrawGridMode
property DrawMultiplier : Integer
property DrawMultiplierLarge : Integer
property Enabled : Boolean
property EndAngle : TAngle
function GetOwnerBoard : IPCB_Board;
function I_ObjectAddress : Pointer;
property IsDefault : Boolean
property IsMCADSource : Boolean
property MaxRadius : TDouble
property MinRadius : TDouble
property Name : WideString
property Origin : TCoordPoint
property Priority : Cardinal
property RadialStep : TDouble
property ShowOrigin : Boolean
property StartAngle : TAngle

## IPCB_PolarGridCoordinates (8 members)
function GetState_PolarCoordAngle : Double;
function GetState_PolarCoordAvailable : Boolean;
function GetState_PolarCoordRadius : Integer;
function GetState_PolarCoordRotation : Double;
function GetState_PolarGridName : WideString;
procedure SetState_PolarCoordAngle(const AValue : Double);
procedure SetState_PolarCoordRadius(const AValue : Integer);
procedure SetState_PolarCoordRotation(const AValue : Double);

## IPCB_Polygon (61 unique + inherits IPCB_Primitive)
function AcceptsLayer(Layer : TV6_Layer) : Boolean;
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property ArcApproximation : TCoord
property ArcPourMode : Boolean
property AreaSize : Double
property AutoGenerateName : Boolean
property AvoidObsticles : Boolean
property BorderWidth : TCoord
property ClipAcuteCorners : Boolean
procedure CopperPourValidate;
property DrawDeadCopper : Boolean
property DrawRemovedIslands : Boolean
property DrawRemovedNecks : Boolean
property ExpandOutline : Boolean
function FastSetState_XSizeYSize : Boolean;
procedure FreePrimitives;
function GetDefaultName : WideString;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GetState_CopperPourInvalid : Boolean;
function GetState_HitPrimitive(APrimitive : IPCB_Primitive) : Boolean;
function GetState_InRepour : Boolean;
function GetState_StrictHitTest(HitX : Integer, HitY : Integer) : Boolean;
property Grid : TCoord
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
procedure GrowPolyshape(ADist : Integer);
property IgnoreViolations : Boolean
property IslandAreaThreshold : Double
property MinTrack : TCoord
property MitreCorners : Boolean
property Name : TPCBString
property NeckWidthThreshold : TCoord
property ObeyPolygonCutout : Boolean
property OptimalVoidRotation : Boolean
property PointCount : Integer
function PointInPolygon(HitX : Integer, HitY : Integer) : Boolean;
property PolygonType : TPolygonType
property PolyHatchStyle : TPolyHatchStyle
property Poured : Boolean
property PourIndex : Integer
property PourOver : TPolygonPourOver
function PrimitiveInsidePoly(APrimitive : IPCB_Primitive) : Boolean;
property PrimitiveLock : Boolean
procedure Rebuild;
property RemoveDead : Boolean
property RemoveIslandsByArea : Boolean
property RemoveNarrowNecks : Boolean
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_AutoNameInvalidate;
procedure SetState_CopperPourInvalid;
procedure SetState_CopperPourValid;
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property TrackSize : TCoord
property UseOctagons : Boolean
property x : TCoord
function xBoundingRectangle : IDispatch;
property y : TCoord

## IPCB_PolygonalShape (10 members)
property ShapeSegments[I: Integer] : TPolySegment
function BoundingRectangle(const Rect : IDispatch) : Boolean;
procedure CloseLastPoint;
procedure DecrementPointCount;
procedure DeleteSegmentAt(const Index : Integer);
procedure IncrementPointCount;
function InsertSegmentAt(const Index : Integer) : IDispatch;
function IsClockWise : Boolean;
procedure SetState_PointCount(NewPointCount : Integer);
property ShapeSegmentCount : Integer

## IPCB_PolygonalShapesWithHoles (3 members)
property ShapeIsHole[I: Integer] : Boolean
property Shape[I: Integer] : IPCB_PolygonalShape
property ShapeCount : Integer

## IPCB_PolygonConnectStyleRule (49 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property ConnectStyle : TPlaneConnectStyle
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property EnableMinDistance : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_ConductorByPadEdge : Boolean;
function GetState_ConductorByPadEdgeByType(PrimitiveType : TPolygonConnectPrimitiveType) : Boolean;
function GetState_ConnectStyleByType(PrimitiveType : TPolygonConnectPrimitiveType) : TPlaneConnectStyle;
function GetState_DataSummaryString : WideString;
function GetState_EnableMinDistanceByType(PrimitiveType : TPolygonConnectPrimitiveType) : Boolean;
function GetState_MinDistanceByType(PrimitiveType : TPolygonConnectPrimitiveType) : Integer;
function GetState_PolygonReliefAngleByType(PrimitiveType : TPolygonConnectPrimitiveType) : TPolygonReliefAngle;
function GetState_ReliefAirGapByType(PrimitiveType : TPolygonConnectPrimitiveType) : Integer;
function GetState_ReliefConductorWidthByType(PrimitiveType : TPolygonConnectPrimitiveType) : Integer;
function GetState_ReliefEntriesByType(PrimitiveType : TPolygonConnectPrimitiveType) : Integer;
function GetState_SamePadAndViaParams : Boolean;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MinDistance : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property PolygonReliefAngle : TPolygonReliefAngle
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetState_ConductorByPadEdge(Value : Boolean);
procedure SetState_ConductorByPadEdgeByType(PrimitiveType : TPolygonConnectPrimitiveType, Value : Boolean);
procedure SetState_ConnectStyleByType(PrimitiveType : TPolygonConnectPrimitiveType, Value : TPlaneConnectStyle);
procedure SetState_EnableMinDistanceByType(PrimitiveType : TPolygonConnectPrimitiveType, Value : Boolean);
procedure SetState_MinDistanceByType(PrimitiveType : TPolygonConnectPrimitiveType, Value : Integer);
procedure SetState_PolygonReliefAngleByType(PrimitiveType : TPolygonConnectPrimitiveType, Value : TPolygonReliefAngle);
procedure SetState_ReliefAirGapByType(PrimitiveType : TPolygonConnectPrimitiveType, Value : Integer);
procedure SetState_ReliefConductorWidthByType(PrimitiveType : TPolygonConnectPrimitiveType, Value : Integer);
procedure SetState_ReliefEntriesByType(PrimitiveType : TPolygonConnectPrimitiveType, Value : Integer);

## IPCB_PolygonsBinarySection (28 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function FoundSplitPlanes : Boolean;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage

## IPCB_PolygonThermalRelief (8 members)
property ThermalReliefDataType[ADataForLayer: IDispatch] : TPadViaThermalReliefDataType
property ThermalReliefData[ADataForLayer: IDispatch] : TPadViaThermalReliefData
procedure EditCustomReliefOnLayer(const ALayer : Integer);
function EditThermalReliefData(const ADataForLayer : IDispatch, const AData : IDispatch) : Boolean;
property ManualThermalReliefsCount : Integer
procedure RemoveThermalRelief(const ADataForLayer : IDispatch);
procedure SetAllThermalReliefsToRule;
property ThermalReliefsIterator : IStackObjectThermalReliefIterator

## IPCB_PolyRegShapesClipResult (3 members)
property Cutouts : IPCB_Shapes
property InoperablePrims : IPCB_Shapes
property NewPrims : IPCB_Shapes

## IPCB_PowerPlaneClearanceRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Clearance : TCoord
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_PowerPlaneConnectStyleRule (39 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_PlaneConnectStyleByType(Value : TPlaneConnectPrimitiveType) : TPlaneConnectStyle;
function GetState_ReliefAirGapByType(Value : TPlaneConnectPrimitiveType) : Integer;
function GetState_ReliefConductorWidthByType(Value : TPlaneConnectPrimitiveType) : Integer;
function GetState_ReliefEntriesByType(Value : TPlaneConnectPrimitiveType) : Integer;
function GetState_ReliefExpansionByType(Value : TPlaneConnectPrimitiveType) : Integer;
function GetState_SamePadAndViaParams : Boolean;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property PlaneConnectStyle : TPlaneConnectStyle
function Priority : Word;
property ReliefExpansion : TCoord
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetState_PlaneConnectStyleByType(PrimitiveType : TPlaneConnectPrimitiveType, Value : TPlaneConnectStyle);
procedure SetState_ReliefAirGapByType(PrimitiveType : TPlaneConnectPrimitiveType, Value : Integer);
procedure SetState_ReliefConductorWidthByType(PrimitiveType : TPlaneConnectPrimitiveType, Value : Integer);
procedure SetState_ReliefEntriesByType(PrimitiveType : TPlaneConnectPrimitiveType, Value : Integer);
procedure SetState_ReliefExpansionByType(PrimitiveType : TPlaneConnectPrimitiveType, Value : Integer);

## IPCB_PrimDelay (2 members)
function CanEdit : Boolean;
property PropagationDelay : Double

## IPCB_Primitive2 (21 members)
procedure CreateSharedUnion;
function GetID : Cardinal;
function HasMaskExpansion(MaskLayer : Integer) : Boolean;
procedure Import_FromUser_PostProcess;
procedure Import_FromUser_PreProcess;
property IsEmbeddedComponentCavity : Boolean
function MaskExpansion(MaskLayer : Integer) : Integer;
property PasteMaskEnabled : Boolean
property PasteMaskExpansion : TCoord
property PasteMaskExpansionMode : TMaskExpansionMode
property PasteMaskManualEnabled : Boolean
property PasteMaskManualPercent : Double
property PasteMaskPercent : Double
property PasteMaskUsePercent : Boolean
property RoutingMinWidth : TCoord
property RoutingViaWidth : TCoord
property SharedUnion : IPCB_SharedUnion
property SolderMaskExpansion : TCoord
property SolderMaskExpansionMode : TMaskExpansionMode
procedure SwapMaskLayersIfNeeded;
procedure SwitchOnManualExpansionMode(ALayer : Integer);

## IPCB_Primitive3D (5 unique + inherits IPCB_Primitive)
property FaceIdx : Integer
property FaceRotation : Double
property FaceU : Integer
property FaceV : Integer
procedure GetOrientationVector(out AX : Double, out AY : Double, out AZ : Double);

## IPCB_PrimitiveAtPosition (2 members)
function GetPrimitiveAtPosition(ObjectId : TObjectId, Position : Integer) : IPCB_Primitive;
procedure SetPrimitiveAtPosition(ObjectId : TObjectId, Position : Integer, const APrimitive : IPCB_Primitive);

## IPCB_PrimitiveCounter (4 members)
property HoleCount[HoleType: TExtendedHoleType] : Cardinal
function GetCount(ObjectSet : TObjectSet) : Cardinal;
function GetObjectCount(ObjectId : TObjectId) : Cardinal;
property StringCount : Cardinal

## IPCB_PrimitiveGroups (4 members)
procedure ClearAll;
procedure Delete(Index : Integer);
function Get(Index : Integer) : IPCB_PrimitiveList;
function GetCount : Integer;

## IPCB_PrimitiveList (6 members)
property Items[Index: Integer] : IPCB_Primitive
procedure ClearAll;
function Contains(const APrimitive : IPCB_Primitive) : Boolean;
property Count : Integer
procedure Delete(Index : Integer);
procedure Remove(const APrimitive : IPCB_Primitive);

## IPCB_PrimitiveParameters (37 members)
property ParameterByIndex[AIndex: Integer] : IPCB_Parameter
property ParameterByName[AName: WideString] : IPCB_Parameter
property ValueByName[AName: WideString] : TPCBString
procedure AddOrSetParameter(const AParameter : IPCB_Parameter);
procedure AddParameter(const AParameter : IPCB_Parameter);
property Appurtenance : TParameterAppurtenance
function Count : Integer;
function ExportToList : IPCB_ParameterList;
function FindParameterByName(const AName : WideString) : IPCB_Parameter;
procedure ImportFromList(const AParameters : IPCB_ParameterList);
property IsCurrentVariant : Boolean
property IsDefaultVariant : Boolean
property IsFullyInherited : Boolean
property IsFullyInheritedAllVariants : Boolean
procedure NewValueByName(const AName : WideString, const AValue : WideString);
procedure RemoveAllParameters;
procedure RemoveAllParametersAndVariants;
procedure RemoveByIndex(AIndex : Integer);
procedure RemoveByName(const AName : WideString);
procedure SetOrNewValueByName(const AName : WideString, const AValue : WideString);
procedure SetParameter(const AParameter : IPCB_Parameter);
procedure SwitchAppurtenance(AValue : TParameterAppurtenance);
procedure SwitchToCurrentVariant;
procedure SwitchToDefaultVariant;
procedure SwitchToVariantByIndex(AIndex : Integer);
procedure SwitchToVariantByName(const AVariantName : WideString);
procedure SwitchToVariantByUniqueID(const AUniqueID : WideString);
function TryGetValueByName(const AName : WideString, out AValue : WideString) : Boolean;
function TryNewValueByName(const AName : WideString, const AValue : WideString) : Boolean;
function TryRemoveByName(const AName : WideString) : Boolean;
function TrySetValueByName(const AName : WideString, const AValue : WideString) : Boolean;
function TrySwitchToNextVariant : Boolean;
property ValueByNameDef : TPCBString
property VariantCount : Integer
property VariantIndex : Integer
property VariantName : TPCBString
property VariantUniqueID : TPCBString

## IPCB_PrimitiveSerialize (2 members)
procedure ExportToParameters(AParameters : IWideParameterList);
procedure ImportFromParameters(AParameters : IWideParameterList);

## IPCB_PrimPrim (5 members)
function ArePrimsConnectedByCopper(const APrimitive1 : IPCB_Primitive, const APrimitive2 : IPCB_Primitive) : Boolean;
function GetCopperPrimsBetweenPad(const AStartPad : IPCB_Pad, const AEndPad : IPCB_Pad) : IPCB_Group;
function GetDifferentNetTouchedPrimitives(const APrimitive1 : IPCB_Primitive, const APrimitive2 : IPCB_Primitive, out AConnectorPrim1 : IPCB_Primitive, out AConnectedPrim1 : IPCB_Primitive, out AConnectorPrim2 : IPCB_Primitive, out AConnectedPrim2 : IPCB_Primitive, out AConnectionLayer1 : Integer, out AConnectionLayer2 : Integer) : Boolean;
function GetPrimsConnectedByCopper(const APrimitive : IPCB_Primitive) : IPCB_Group;
function PrimPrimDistance_IgnoreLayer(const APrimitive1 : IPCB_Primitive, const APrimitive2 : IPCB_Primitive) : Integer;

## IPCB_PrintedElectronics (2 members)
function GetPrintedElectronics : IPrintedElectronics;
function IsPrintedElectronics : Boolean;

## IPCB_PrinterOptions (46 members)
property CompositePlotLayers[L: TV6_Layer] : Boolean
property CompositePlotMonoLayers[L: TV6_Layer] : TColor
property CompositePlotPens[L: TV6_Layer] : Integer
property PlotMode[OId: TObjectId] : TDrawMode
property PlotterPens[Pen: Integer] : TPlotterPen
property CompositePlotColorLayers[L: TV6_Layer] : TColor
property BatchType : TPrinterBatch
property cBorderSize : TCoord
property CompositeType : TPrinterComposite
property Device : TPCBString
property Driver : TPCBString
procedure Export_ToParameters(Parameters : PWideChar);
procedure Export_ToParameters_GeneralOptions(Parameters : PWideChar);
procedure Export_ToParameters_LayerOptions(Parameters : PWideChar);
procedure Export_ToParameters_LayerOptions_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version4(Parameters : PWideChar);
function I_ObjectAddress : Pointer;
procedure Import_FromParameters(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_GeneralOptions(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_LayerOptions(Parameters : PWideChar);
procedure Import_FromParameters_LayerOptions_Version3(Parameters : PWideChar);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, Parameters : PWideChar);
property OptionsObjectID : TOptionsObjectId
property OutPut : TPCBString
property OutputDriverType : TOutputDriverType
property PlotPadNets : Boolean
property PlotPadNumbers : Boolean
property PlotterLanguage : TPlotterLanguage
property PlotterOutputPort : TOutputPort
property PlotterScale : TGeometry
property PlotterShowHoles : Boolean
property PlotterUseSoftwareArcs : Boolean
property PlotterWaitBetweenSheets : Boolean
property PlotterXCorrect : TGeometry
property PlotterXOffset : TCoord
property PlotterYCorrect : TGeometry
property PlotterYOffset : TCoord
property Scale : TGeometry
property ScaleToFitPage : Boolean
property ShowHoles : Boolean
property UsePrinterFonts : Boolean
property UseSoftwareArcs : Boolean
property XCorrect : TGeometry
property YCorrect : TGeometry

## IPCB_ProcessControl (4 members)
procedure PostBatchProcess(const AContext : IInterface, AParameters : PWideChar);
procedure PostProcess_Clustered(const AContext : IInterface, AParameters : PWideChar);
procedure PreBatchProcess(const AContext : IInterface, AParameters : PWideChar);
procedure PreProcess_Clustered(const AContext : IInterface, AParameters : PWideChar);

## IPCB_RadialDiameterDimension (64 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property AngleStep : TAngle
function Arrow_Track1 : IPCB_Track;
function Arrow_Track2 : IPCB_Track;
function Arrow2_Track1 : IPCB_Track;
function Arrow2_Track2 : IPCB_Track;
property ArrowLength : TCoord
property ArrowLineWidth : TCoord
property ArrowPosition : TDimensionArrowPosition
property ArrowSize : TCoord
property Bold : Boolean
property DimensionKind : TDimensionKind
property ExtensionLineWidth : TCoord
property ExtensionOffset : TCoord
property ExtensionPickGap : TCoord
function FastSetState_XSizeYSize : Boolean;
property FontName : TPCBString
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Italic : Boolean
function Line1_Track : IPCB_Track;
function Line2_Track : IPCB_Track;
function Line3_Track : IPCB_Track;
property LineWidth : TCoord
procedure MoveTextByXY(AX : Integer, AY : Integer);
procedure MoveTextToXY(AX : Integer, AY : Integer);
property PrimitiveLock : Boolean
procedure References_Add(const r : IDispatch);
property References_Count : Integer
procedure References_Delete(Index : Integer);
procedure References_DeleteLast;
function References_IndexOf(P : IPCB_Primitive, Index : Integer) : Integer;
function References_Validate : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetPrefixIfNeeded;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property Style : TUnitStyle
function Text : IPCB_Text;
property TextDimensionUnit : TDimensionUnit
property TextFont : TFontID
property TextFormat : TPCBString
property TextGap : TCoord
property TextHeight : TCoord
property TextLineWidth : TCoord
property TextPosition : TDimensionTextPosition
property TextPrecision : Integer
property TextPrefix : TPCBString
property TextSuffix : TPCBString
property TextValue : TReal
property TextWidth : TCoord
property TextX : TCoord
property TextY : TCoord
property UseTTFonts : Boolean
property x : TCoord
property X1Location : TCoord
property y : TCoord
property Y1Location : TCoord

## IPCB_RadialDimension (61 unique + inherits IPCB_Primitive)
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property AngleStep : TAngle
function Arrow_Track1 : IPCB_Track;
function Arrow_Track2 : IPCB_Track;
property ArrowLength : TCoord
property ArrowLineWidth : TCoord
property ArrowPosition : TDimensionArrowPosition
property ArrowSize : TCoord
property Bold : Boolean
property DimensionKind : TDimensionKind
property ExtensionLineWidth : TCoord
property ExtensionOffset : TCoord
property ExtensionPickGap : TCoord
function FastSetState_XSizeYSize : Boolean;
property FontName : TPCBString
procedure FreePrimitives;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
property Italic : Boolean
function Line1_Track : IPCB_Track;
function Line2_Track : IPCB_Track;
property LineWidth : TCoord
procedure MoveTextByXY(AX : Integer, AY : Integer);
procedure MoveTextToXY(AX : Integer, AY : Integer);
property PrimitiveLock : Boolean
procedure References_Add(const r : IDispatch);
property References_Count : Integer
procedure References_Delete(Index : Integer);
procedure References_DeleteLast;
function References_IndexOf(P : IPCB_Primitive, Index : Integer) : Integer;
function References_Validate : Boolean;
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
function ReplicateWithChildren : IPCB_Primitive;
procedure ResetPrefixIfNeeded;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property Style : TUnitStyle
function Text : IPCB_Text;
property TextDimensionUnit : TDimensionUnit
property TextFont : TFontID
property TextFormat : TPCBString
property TextGap : TCoord
property TextHeight : TCoord
property TextLineWidth : TCoord
property TextPosition : TDimensionTextPosition
property TextPrecision : Integer
property TextPrefix : TPCBString
property TextSuffix : TPCBString
property TextValue : TReal
property TextWidth : TCoord
property TextX : TCoord
property TextY : TCoord
property UseTTFonts : Boolean
property x : TCoord
property X1Location : TCoord
property y : TCoord
property Y1Location : TCoord

## IPCB_ReadOnlyUnionList (2 members)
function Count : Integer;
function GetState_Unions(AIndex : Integer) : IPCB_Union;

## IPCB_RealModel (8 members)
property CheckSum : Cardinal
property Dz : TCoord
property FileName : WideString
function I_ObjectAddress : Pointer;
property Id : WideString
property RotX : TAngle
property RotY : TAngle
property RotZ : TAngle

## IPCB_RealPlacementGuide (6 members)
property Color : TColor
property Enabled : Boolean
function GetOwnerBoard : IPCB_Board;
function I_ObjectAddress : Pointer;
property IsMCADSource : Boolean
property SourceObject : IPCB_Primitive

## IPCB_RealPlacementGuideIterator (5 members)
function First : IPCB_RealPlacementGuide;
function Next : IPCB_RealPlacementGuide;
procedure SetFilter_IncludeDynamicGuides(AValue : Boolean);
procedure SetFilter_IncludeGrids(AValue : Boolean);
procedure SetFilter_IncludeStaticGuides(AValue : Boolean);

## IPCB_RectangleTool (11 unique + inherits IPCB_Primitive)
property ChamferFilletSize : TCoord
property CornerMode : TPlaceRectangleCornerMode
function GetNearestPrimitive(const APoint : IDispatch) : IPCB_Primitive;
property Height : TCoord
property HoldAspectRatio : Boolean
procedure Invalidate;
property LineWidth : TCoord
property Rotation : TAngle
property Width : TCoord
property XCenter : TCoord
property YCenter : TCoord

## IPCB_RectangularPrimitive (10 unique + inherits IPCB_Primitive)
function IsRedundant : Boolean;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
function SetState_XSizeYSize : Boolean;
property X1Location : TCoord
property X2Location : TCoord
property XLocation : TCoord
property Y1Location : TCoord
property Y2Location : TCoord
property YLocation : TCoord

## IPCB_Region (10 unique + inherits IPCB_Primitive)
property Area : Int64
property CavityHeight : TCoord
property GeometricPolygon : IPCB_GeometricPolygon
property HoleCount : Integer
function IsSimpleRegion : Boolean;
property Kind : TRegionKind
property MainContour : IPCB_Contour
property Name : TPCBString
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetOutlineContour(Contour : IPCB_Contour);

## IPCB_Region2 (29 unique + inherits IPCB_Primitive)
procedure AddHoleContour(const Contour : IPCB_Contour);
procedure AddSnapPoint(const APoint : IDispatch);
property ArcApproximation : TCoord
property Area : Int64
procedure BeginContoursBatch(ContoursCount : Integer);
property CavityHeight : TCoord
procedure CheckNonCopper;
procedure DeleteAllSnapPoints;
procedure DeleteSnapPoint(AIndex : Integer);
procedure EndContoursBatch;
property GeometricPolygon : IPCB_GeometricPolygon
function GetState_SelfIntersectionPoint(APos : Integer) : IDispatch;
function GetState_SelfIntersectionsCount : Integer;
function GetState_SnapCount : Integer;
function GetState_SnapPoint(AIndex : Integer) : IDispatch;
function GetTrisArea : Int64;
property HoleCount : Integer
function IsShapeBased : Boolean;
function IsSimpleRegion : Boolean;
property Kind : TRegionKind
property MainContour : IPCB_Contour
property Name : TPCBString
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetOutlineContour(Contour : IPCB_Contour);
procedure SetState_SnapPoint(AIndex : Integer, const APoint : IDispatch);
property TotalVertexCount : Integer
property VirtualCutout : Boolean
property x : TCoord
property y : TCoord

## IPCB_Region3D (14 unique + inherits IPCB_Primitive)
property Area : Int64
procedure Boundary_AddPoint(const APoint : IDispatch, AFaceIdx : Integer);
procedure Boundary_Clear;
procedure Boundary_GetPoint(AIdx : Integer, const Point : IDispatch, out FaceIdx : Integer);
function Boundary_PointsCount : Integer;
property CavityHeight : TCoord
property GeometricPolygon : IPCB_GeometricPolygon
property HoleCount : Integer
function IsSimpleRegion : Boolean;
property Kind : TRegionKind
property MainContour : IPCB_Contour
property Name : TPCBString
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetOutlineContour(Contour : IPCB_Contour);

## IPCB_RegionShape (6 members)
property ShapeSegments[I: Integer] : TPolySegment
procedure DeleteSegmentAt(const Index : Integer);
function InsertSegmentAt(const Index : Integer) : IDispatch;
property ShapeSegmentCount : Integer
procedure UpdateContourFromShape(ConserveExistingHoles : Boolean);
procedure UpdateShapeFromContour;

## IPCB_RegionShape_Utils (3 members)
procedure CleanUp(ATolerance : Integer);
function GetSmallSegments(ATolerance : Integer) : ICoordPointPairList;
procedure RemoveRedundantVertices;

## IPCB_RegionShape2 (6 members)
property Edge[I: Integer] : IPCB_ShapeEdge
procedure ClearEdges;
procedure Delete(Index : Integer);
property EdgeCount : Integer
function Insert(Index : Integer, const AType : TPCB_ShapeEdgeType) : IPCB_ShapeEdge;
procedure UpdateContourFromShape(ConserveExistingHoles : Boolean);

## IPCB_RelationEnumerator (3 members)
function ChildID : Integer;
function Next : Boolean;
function ParentID : Integer;

## IPCB_RequiredBinarySection (28 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
function SectionRequired : Boolean;
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage

## IPCB_ReturnPathRule (33 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property GapLimit : TCoord
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property ImpedanceProfileId : TPCBString
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxStitchViaDistance : TCoord
property MaxStitchViaDistanceEnabled : Boolean
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property ReferenceNet : TPCBString
property ReferenceNetKind : TReferenceNetKind
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property UseAntiPads : Boolean

## IPCB_ReuseBlock (72 unique + inherits IPCB_Primitive)
function AddArc(ACX : Integer, ACY : Integer, ARadius : Integer, ALineWidth : Integer, AAngle1 : Double, AAngle2 : Double) : IPCB_Arc;
property Alignment : TSmartUnionAlignmentType
function AllowSelectPrimsInUnion : Boolean;
property BasePoint : TCoordPoint
procedure CancelGroupWarehouseRegistration(APrimitive : IPCB_Primitive);
procedure DeleteObjectsFromUnion;
procedure Dissolve;
procedure DoDraw(ABoard : IPCB_Board);
function EditingHandlesEnabled : Boolean;
property ExpansionEnabled : Boolean
procedure ExplodeToPrimitives;
procedure FreePrimitives;
procedure FromString(aString : string);
function GetBlockName : WideString;
function GetBlockVault : IVaultLink;
function GetDescription : WideString;
function GetDesignator : WideString;
function GetDesignItemID : WideString;
function GetDissolved : Boolean;
function GetPCBLayout : WideString;
function GetPCBVault : IVaultLink;
function GetSourceUniqueID : WideString;
function GetState_Primitive(AIndex : Integer) : IPCB_Primitive;
function GetState_PrimitivesCount : Integer;
function GetUnionIDList : IIntegers;
procedure HandleBeforeClear;
procedure Invalidate;
function IsAccessible(AAction : TEditingAction) : Boolean;
function IsPrimitiveValidForUnion(APrimitive : IPCB_Primitive) : Boolean;
function IsRedundant : Boolean;
property IsValid : Boolean
property MaxHeight : TCoord
procedure MoveByPlaceHolder;
procedure NotifyPrimitiveMove(AX : Integer, AY : Integer, APrimitive : IPCB_Primitive);
property Placeholder : IPCB_Primitive
property PlaceholderLocation : TCoordPoint
property Primitives : IInterfaceListEx
property PrimitivesLocked : Boolean
procedure RebuildAfterLoad;
procedure RecollectObjectsToUnionFromBoard;
procedure Refresh;
procedure RegisterOnBoard(ABoard : IPCB_Board);
procedure RegisterWithGroupWarehouse(APrimitive : IPCB_Primitive);
procedure Remove;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
property RotationCenter : TCoordPoint
property RotationHandle : TCoordPoint
property RotationHandleEnabled : Boolean
property RotationHandleOffset : TCoord
procedure SetBlockName(const ABlockName : WideString);
procedure SetDescription(const ADescription : WideString);
procedure SetDesignator(const ADesignator : WideString);
procedure SetDesignItemID(const ADesignItemID : WideString);
procedure SetPCBLayout(const APCBLayout : WideString);
procedure SetSourceUniqueID(const ASourceUniqueID : WideString);
procedure SetState_AutoDeregisterable(AValue : Boolean);
function SetState_XSizeYSize : Boolean;
property ShowUnionShape : Boolean
property SilentRotate : Boolean
property Size : TCoordPoint
function ToGroup : IPCB_GroupEx;
property UnionType : TSmartUnionObjectType
procedure UnRegisterFromBoard(ABoard : IPCB_Board);
procedure UpdateToLatest;
property UseMiddleHandles : Boolean
property X1Location : TCoord
property X2Location : TCoord
property XLocation : TCoord
property Y1Location : TCoord
property Y2Location : TCoord
property YLocation : TCoord

## IPCB_ReuseBlockList (4 members)
function Count : Integer;
function FindReuseBlockByUnionID(AUnionID : Integer) : IPCB_ReuseBlock;
function GetReuseBlockByIndex(AIndex : Integer) : IPCB_ReuseBlock;
function GetReuseBlockByUnionID(AUnionID : Integer) : IPCB_ReuseBlock;

## IPCB_RoutingCornerStyleRule (29 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxSetBack : TCoord
property MinSetBack : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property Style : TCornerStyle

## IPCB_RoutingLayersRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
procedure ResetRoutingLayers;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_RoutingNeckDownRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxLength : IPCB_LayerToCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_RoutingNeckDownViolation (19 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property BoundPolygon : IPCB_GeometricPolygon
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property NeckDownLength : TCoord
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_RoutingOptionsPage (86 members)
function GetState_AllowViaPushing : Boolean;
function GetState_AutoNecking : Boolean;
function GetState_AutoRemoveAntennas : Boolean;
function GetState_AutoRemoveLoops : Boolean;
function GetState_AutoRemoveViaLoops : Boolean;
function GetState_AutoTerminateRouting : Boolean;
function GetState_AvoidPolygons : Boolean;
function GetState_AvoidRooms : Boolean;
function GetState_ComponentMoveRelevantRouting : Boolean;
function GetState_ComponentMoveRelevantRoutingPinsLimit : Integer;
function GetState_ComponentNetLineMode : TNetLineMode;
function GetState_ComponentPushing : TPushMode;
function GetState_ComponentReroute : Boolean;
function GetState_ConflictMode : TAdvancedRouteMode;
function GetState_ConflictModeEnabled(AMode : TAdvancedRouteMode) : Boolean;
function GetState_DifferentialPairMode : Boolean;
function GetState_DifferentialPairModeForVias : Boolean;
function GetState_DiffPairGapToUse : Integer;
function GetState_DisableTraceCenteringWhenDragging : Boolean;
function GetState_DisplayClearanceBounds : Boolean;
function GetState_DragAvoidObstacleMode : TAvoidObstacleMode;
function GetState_DragMergeParallel : Boolean;
function GetState_Dragselected : TDragSelectUnselectMode;
function GetState_DragUnselected : TDragSelectUnselectMode;
function GetState_DragWithMiters : Boolean;
function GetState_GlossEffort : TGlossEffort;
function GetState_HuggingStyle : THuggingStyle;
function GetState_MinimumArcSize : Double;
function GetState_MiterSize : Double;
function GetState_NeighborGlossEffort : TGlossEffort;
function GetState_PadEntryStability : Integer;
function GetState_PickupWidthFromExistingRoutes : Boolean;
function GetState_PreferredClearanceAdjustVias : Boolean;
function GetState_PreferredClearanceApply : Boolean;
function GetState_PreferredClearanceRatio : Double;
function GetState_PreservePath : Boolean;
function GetState_ReduceClearanceDisplayArea : Boolean;
function GetState_RoutingWidthMode : TRoutingWidthMode;
function GetState_ShowGaugeDuringDragging : Boolean;
function GetState_SmartDrag : Boolean;
function GetState_VertexAction : TVertexAction;
function GetState_ViaSizeMode : TRoutingWidthMode;
function GetState_WidthToUse : Integer;
procedure SetState_AllowViaPushing(AValue : Boolean);
procedure SetState_AutoNecking(AValue : Boolean);
procedure SetState_AutoRemoveAntennas(AValue : Boolean);
procedure SetState_AutoRemoveLoops(AValue : Boolean);
procedure SetState_AutoRemoveViaLoops(AValue : Boolean);
procedure SetState_AutoTerminateRouting(AValue : Boolean);
procedure SetState_AvoidPolygons(AValue : Boolean);
procedure SetState_AvoidRooms(AValue : Boolean);
procedure SetState_ComponentMoveRelevantRouting(AValue : Boolean);
procedure SetState_ComponentMoveRelevantRoutingPinsLimit(AValue : Integer);
procedure SetState_ComponentNetLineMode(AValue : TNetLineMode);
procedure SetState_ComponentPushing(AValue : TPushMode);
procedure SetState_ComponentReroute(AValue : Boolean);
procedure SetState_ConflictMode(AValue : TAdvancedRouteMode);
procedure SetState_ConflictModeEnabled(AMode : TAdvancedRouteMode, AValue : Boolean);
procedure SetState_DifferentialPairMode(AValue : Boolean);
procedure SetState_DifferentialPairModeForVias(AValue : Boolean);
procedure SetState_DiffPairGapToUse(AValue : Integer);
procedure SetState_DisableTraceCenteringWhenDragging(AValue : Boolean);
procedure SetState_DisplayClearanceBounds(AValue : Boolean);
procedure SetState_DragAvoidObstacleMode(AValue : TAvoidObstacleMode);
procedure SetState_DragMergeParallel(AValue : Boolean);
procedure SetState_DragSelected(AValue : TDragSelectUnselectMode);
procedure SetState_DragUnSelected(AValue : TDragSelectUnselectMode);
procedure SetState_DragWithMiters(AValue : Boolean);
procedure SetState_GlossEffort(ANewValue : TGlossEffort);
procedure SetState_HuggingStyle(AValue : THuggingStyle);
procedure SetState_MinimumArcSize(AValue : Double);
procedure SetState_MiterSize(AValue : Double);
procedure SetState_NeighborGlossEffort(ANewValue : TGlossEffort);
procedure SetState_PadEntryStability(AValue : Integer);
procedure SetState_PickupWidthFromExistingRoutes(AValue : Boolean);
procedure SetState_PreferredClearanceAdjustVias(AValue : Boolean);
procedure SetState_PreferredClearanceApply(AValue : Boolean);
procedure SetState_PreferredClearanceRatio(AValue : Double);
procedure SetState_PreservePath(AValue : Boolean);
procedure SetState_ReduceClearanceDisplayArea(AValue : Boolean);
procedure SetState_RoutingWidthMode(AValue : TRoutingWidthMode);
procedure SetState_ShowGaugeDuringDragging(AValue : Boolean);
procedure SetState_SmartDrag(AValue : Boolean);
procedure SetState_VertexAction(ANewValue : TVertexAction);
procedure SetState_ViaSizeMode(AValue : TRoutingWidthMode);
procedure SetState_WidthToUse(AValue : Integer);

## IPCB_RoutingPriorityRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RoutingPriority : Integer
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_RoutingTopologyRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property Topology : TNetTopology

## IPCB_RoutingViaStackInfo (4 members)
property ViaDataInfo[AIndex: Integer] : IPCB_ViaRoutingDataInfo
function FirstViaDataInfo : IPCB_ViaRoutingDataInfo;
property Title : WideString
property ViaDataCount : Integer

## IPCB_RoutingViaStyleRule (42 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
procedure AddViaTemplate(TemplateGUID : WideString, TemplateName : WideString);
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
procedure DeleteAllViaTemplates;
procedure DeleteMissingViaTemplates;
property DRCEnabled : Boolean
procedure GetMissingViaTemplate(const Index : Integer, out ATemplateGUID : WideString, out ATemplateName : WideString);
function GetMissingViaTemplateCount : Integer;
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetViaTemplate(const Index : Integer) : IPCB_PadViaTemplate;
function GetViaTemplateCount : Integer;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
function IsViaTemplateUsed(ATemplateGUID : WideString) : Boolean;
property LayerKind : TRuleLayerKind
property MaxHoleWidth : TCoord
property MaxWidth : TCoord
property MinHoleWidth : TCoord
property MinWidth : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property PreferedHoleWidth : TCoord
property PreferedWidth : TCoord
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property UseViaTemplates : Boolean
property ViaStyle : TRouteVia

## IPCB_Rule (26 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_Rule1 (31 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckExpression(const AExpression : WideString) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property Data : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_Priority : Word;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
procedure Import_FromParameters(AParameters : PWideChar);
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetState_Priority(const Priority : Word);

## IPCB_RuleFlightTime_FallingEdge (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaximumFlightTime : Double
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_RuleFlightTime_RisingEdge (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaximumFlightTime : Double
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_RuleManager (3 members)
procedure SetRulePriority(const ARule : IPCB_Rule, const APriority : Word);
procedure UpdateRulePriorities;
procedure UpdateRulePrioritiesByRuleKind(const ARuleKind : TRuleKind);

## IPCB_RuleMaxMinImpedance (28 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Maximum : Double
property Minimum : Double
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_RuleMaxSignalBaseValue (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Maximum : Double
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_RuleMaxSlopeFallingEdge (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxSlope : Double
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_RuleMaxSlopeRisingEdge (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxSlope : Double
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_RuleMinSignalTopValue (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Minimum : Double
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_RuleSupplyNets (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property Voltage : Double

## IPCB_SafeLayerToBoolean (7 members)
property Data[ALayer: Integer] : Boolean
property AsString : TPCBString
procedure Clear;
procedure CopyTo(const ATarget : IPCB_SafeLayerToBoolean);
function Count : Integer;
function Keys : IPCB_LayerSet;
function LayerIterator : IPCB_LayerIterator;

## IPCB_SerializeLayerHash (2 members)
procedure HashFromString(const AValue : WideString);
function HashToString : WideString;

## IPCB_ServerInterface (70 members)
function Board3DModelExporter : IPCB_Board3DModelExporter;
property CanFastCrossSelect_Emit : Boolean
property CanFastCrossSelect_Receive : Boolean
property Capabilities : IPCB_CapabilitiesFactory
function CreateAndLoadPCBLibraryFromFile(const APath : WideString) : IPCB_Library;
function CreateComponentPainter : IPCB_ComponentPainterView;
function CreateDocumentPainter(Mode : TPCB_DocumentPainterMode) : IPCB_DocumentPainterView;
function CreateLayerStackupPainter : IPCB_LayerStackupDocumentPainterView;
function CreatePadViaPainter : IPCB_PadViaPainterView;
function CreatePCBGroup : IPCB_GroupEx;
function CreatePCBLibComp : IPCB_LibComponent;
function CreatePCBLibrary : IPCB_Library;
function CreatePCBPrimitiveGroups : IPCB_PrimitiveGroups;
function CreatePCBPrimitiveList : IPCB_PrimitiveList;
function CreatePCBWideStringList : IPCB_WideStrings;
function CreatePhysicalLayerMap(ABoard : IPCB_Board) : IPCB_GeometryMakerLayerMap;
procedure DestroyPCBContour(var APCBContour : IPCB_Contour);
procedure DestroyPCBLibComp(var APCBLibComp : IPCB_LibComponent);
procedure DestroyPCBLibrary(var APCBLibrary : IPCB_Library);
procedure DestroyPCBObject(var APCBObject : IPCB_Primitive);
procedure DisableFastParams;
procedure DocumentLiveHighlight_Start(ADocumentPath : WideString);
procedure DocumentLiveHighlight_Stop(ADocumentPath : WideString);
procedure EnableFastParams;
function GetCurrentPCBBoard : IPCB_Board;
function GetCurrentPCBLibrary : IPCB_Library;
function GetOccWrapper : IOccWrapper;
function GetPCBBoardByBoardID(BoardID : Integer) : IPCB_Board;
function GetPCBBoardByPath(const APath : WideString) : IPCB_Board;
function GetPCBLibraryByLibraryID(LibraryID : Integer) : IPCB_Library;
function GetPCBLibraryByPath(const APath : WideString) : IPCB_Library;
function GetState_PadViaLibraryManager : IPCB_PadViaLibraryManager;
property InteractiveRoutingOptions : IPCB_InteractiveRoutingOptions
function IsObsoleteRuleKind(ARuleKind : TRuleKind) : Boolean;
function LayerSet : IPCB_LayerSetUtils;
function LayerUtils : IPCB_LayerUtils;
function LoadCompFromLibrary(const APattern : WideString, const ALibPath : WideString) : IPCB_LibComponent;
function LoadPCBBoardByPath(const APath : WideString) : IPCB_Board;
function LoadPCBLibraryByPath(const APath : WideString) : IPCB_Library;
function LoadPCBLibraryFromFile(const APath : WideString) : IPCB_Library;
function PaintFootprintThumbnail(ViewName : WideString, ViewFileAddress : WideString, Width : Integer, Height : Integer) : HBITMAP;
property ParametersFactory : IPCB_ParametersFactory
function PCBAdditionalObjectFactory : IPCB_AdditionalObjectFactory;
procedure PcbApi_Export_ToPainter(var APainter : IInterface, LibReference : string, LibraryPath : string);
function PCBArcContourUtilities : IPCB_ArcContourUtilities;
function PCBClassFactory(const AClassKind : TObjectId) : IPCB_ObjectClass;
function PCBClassFactoryByClassMember(const AClassKind : TClassMemberKind) : IPCB_ObjectClass;
function PCBContourFactory : IPCB_Contour;
function PCBContourMaker : IPCB_ContourMaker;
function PCBContourUtilities : IPCB_ContourUtilities;
function PCBGeometricPolygonFactory : IPCB_GeometricPolygon;
function PCBGeometryMaker : IPCB_GeometryMaker;
function PCBObjectFactory(const AObjectId : TObjectId, const ADimensionKind : TDimensionKind, const ACreationMode : TObjectCreationMode) : IPCB_Primitive;
function PCBRuleFactory(const ARuleKind : TRuleKind) : IPCB_Rule;
procedure PostBatchProcess;
procedure PostProcess;
procedure PostProcess_Clustered;
procedure PreBatchProcess;
procedure PreProcess;
procedure PreProcess_Clustered;
function PrimitiveComparator : IPCB_PrimitiveComparator;
procedure RefreshDocumentView(ADocumentPath : WideString);
function RunFontEditorDialog(var ATextHeight : Integer, var AUseTTFont : Boolean, var AStrokeFontName : WideString, var AStrokeWidth : Integer, var ATTFontName : WideString, var ATTBold : Boolean, var ATTItalic : Boolean, var ATTInverted : Boolean, var ATTInvertedBorder : Integer) : Boolean;
procedure SendMessageToRobots(Source : Pointer, Destination : Pointer, MessageID : Word, MessageData : Pointer);
property ShowStatus : Boolean
property SpecialStringConverter : IPCB_SpecialStringConverter
property SystemOptions : IPCB_SystemOptions
property TTFLettersCache : IPCB_LettersCache
property TTFontsCache : IPCB_TTFontsCache
property ViolationsFactory : IPCB_ViolationsFactory

## IPCB_ShapeEdge (7 members)
property SubPt[Index: Integer] : TCoordPoint
procedure ClearShape;
property EdgeType : TPCB_ShapeEdgeType
property EndPt : TCoordPoint
property StartPt : TCoordPoint
property SubPtCount : Integer
property UserData : TPCBString

## IPCB_ShapeEdge_BSpline (14 members)
property SubPt[Index: Integer] : TCoordPoint
property CPoint[I: Integer] : TCoordPoint
property Knot[I: Integer] : TDouble
procedure ClearShape;
property CPointsCount : Integer
property Degree : Integer
property EdgeType : TPCB_ShapeEdgeType
property EndPt : TCoordPoint
property IsClosed : Boolean
property KnotCount : Integer
procedure SetDefaultKnots;
property StartPt : TCoordPoint
property SubPtCount : Integer
property UserData : TPCBString

## IPCB_ShapeEdge_Circle (14 members)
property SubPt[Index: Integer] : TCoordPoint
property AngleEnd : TDouble
property AngleStart : TDouble
property Center : TCoordPoint
procedure ClearShape;
property ClockWise : Boolean
property EdgeType : TPCB_ShapeEdgeType
property EndPt : TCoordPoint
procedure FillClosed(const Center : IDispatch, Radius : Integer);
property IsClosed : Boolean
property Radius : TCoord
property StartPt : TCoordPoint
property SubPtCount : Integer
property UserData : TPCBString

## IPCB_ShapeEdge_CircleUtils (1 members)
property CentralAngle : TDouble

## IPCB_ShapeEdge_Ellipse (14 members)
property SubPt[Index: Integer] : TCoordPoint
property Center : TCoordPoint
procedure ClearShape;
property ClockWise : Boolean
property EdgeType : TPCB_ShapeEdgeType
property EndPt : TCoordPoint
procedure Fill(const Center : IDispatch, const MinorPt : IDispatch, const MajorPt : IDispatch, const StartPt : IDispatch, const EndPt : IDispatch, ClockWise : Boolean);
procedure FillClosed(const Center : IDispatch, const MinorPt : IDispatch, const MajorPt : IDispatch);
property IsClosed : Boolean
property MajorPt : TCoordPoint
property MinorPt : TCoordPoint
property StartPt : TCoordPoint
property SubPtCount : Integer
property UserData : TPCBString

## IPCB_ShapeEdge_Line (7 members)
property SubPt[Index: Integer] : TCoordPoint
procedure ClearShape;
property EdgeType : TPCB_ShapeEdgeType
property EndPt : TCoordPoint
property StartPt : TCoordPoint
property SubPtCount : Integer
property UserData : TPCBString

## IPCB_ShapeEdge_Parabola (10 members)
property SubPt[Index: Integer] : TCoordPoint
procedure ClearShape;
property EdgeType : TPCB_ShapeEdgeType
property EndPt : TCoordPoint
procedure Fill(const AVertex : IDispatch, const AFocus : IDispatch, const AStartPt : IDispatch, const AEndPt : IDispatch);
property Focus : TCoordPoint
property StartPt : TCoordPoint
property SubPtCount : Integer
property UserData : TPCBString
property Vertex : TCoordPoint

## IPCB_Shapes (2 members)
function Count : Integer;
function Items(Index : Integer) : IPCB_RegionShape;

## IPCB_SharedUnion (28 members)
property LayerIsVisible[ALayer: Integer] : Boolean
property PrimitiveLockOnLayer[ALayer: Integer] : Boolean
property ActiveLayer : TLayer
procedure BeginModify(const ADoPushState : Boolean, const APrimitive : IPCB_Primitive);
procedure CancelEditing;
procedure CancelRegistrationOnBoard;
procedure ClearLayersLock;
procedure ClearPrimitive(const APrimitive : IPCB_Primitive);
procedure EditPrimitiveOnLayer(ALayer : Integer);
procedure EndModify(const APrimitive : IPCB_Primitive);
procedure HidePrimitivesOnLayer(ALayer : Integer);
function I_ObjectAddress : Pointer;
property Id : Integer
procedure LinkPrimitive(const AValue : IPCB_Primitive);
procedure MoveByXY(AX : Integer, AY : Integer);
procedure MoveByXYPrimitivesOnLayer(ALayer : Integer, AX : Integer, AY : Integer);
property OwnerPrimitive : IPCB_Primitive
property Primitives : IPCB_PrimitiveList
procedure RegisterOnBoard;
function Replicate : IPCB_SharedUnion;
procedure ResetTransormToLastStateOnLayer(ALayer : Integer);
procedure RotateAroundXYPrimitivesOnLayer(ALayer : Integer, AX : Integer, AY : Integer, ARotation : Double);
procedure SetState_RotateAroundXY(AX : Integer, AY : Integer, RotationAngle : Double);
procedure ShowPrimitivesOnLayer(ALayer : Integer);
procedure SwapLayersIfNeeded;
procedure UnLinkAllPrimitives;
procedure UnLinkPrimitive(const AValue : IPCB_Primitive);
procedure UpdateLayerVisibility;

## IPCB_Sheet (8 members)
function I_ObjectAddress : Pointer;
property LockSheet : Boolean
property SheetHeight : TCoord
property SheetWidth : TCoord
property SheetX : TCoord
property SheetY : TCoord
property ShowSheet : Boolean
procedure UpdateSheetPosition;

## IPCB_ShortCircuitConstraint (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property Allowed : Boolean
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_ShortCircuitViolation (18 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property ViolationArea : TCoordRect
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_SignalLayer (10 members)
property ComponentPlacement : TComponentPlacementType
property CopperThickness : TCoord
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_SignalStimulus (32 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
procedure Export_ToStmFile(AFileName : WideString);
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property Kind : TStimulusType
property LayerKind : TRuleLayerKind
property Level : TSignalLevel
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property PeriodTime : Double
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property StartTime : Double
property StopTime : Double

## IPCB_SilkscreenClipperSettings (13 members)
property DeleteOutside : Boolean
property DistanceToBoardShape : TCoord
property DistanceToSolderMask : Integer
property FillRegionAction : TProcessAction
property IncludeLockedPrims : Boolean
property LayerScope : TOverlayLayerScope
property MaxMoveDistance : TCoord
property MinimumLength : TCoord
property MoveText : Boolean
property SelectedOnly : Boolean
property UseBoardClearanceRule : Boolean
property UseClearanceToExposedCopper : Boolean
property UseToSolderHoleRule : Boolean

## IPCB_SilkToSilkClearanceRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property SilkToSilkClearance : TCoord

## IPCB_SilkToSolderMaskClearanceRule (28 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
property IsClearanceToExposedCopper : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property SilkToMaskGap : TCoord

## IPCB_SingleLayerMode (1 members)
property CopperSide : TCopperSide

## IPCB_SketchesGridManager (14 members)
function GetState_EnableGrid : Boolean;
function GetState_HorizontalOffset : Integer;
function GetState_HorizontalSize : Integer;
function GetState_PlaneKind : TPlaneKind;
function GetState_Rotation : Double;
function GetState_VerticalOffset : Integer;
function GetState_VerticalSize : Integer;
procedure SetState_EnableGrid(AValue : Boolean);
procedure SetState_HorizontalOffset(AValue : Integer);
procedure SetState_HorizontalSize(AValue : Integer);
procedure SetState_PlaneKind(AValue : TPlaneKind);
procedure SetState_Rotation(AValue : Double);
procedure SetState_VerticalOffset(AValue : Integer);
procedure SetState_VerticalSize(AValue : Integer);

## IPCB_SlidingRoutingProcess (38 members)
procedure EditMatchedNetLengthsRule;
procedure EditMaxMinWidthRule;
procedure EditRoutingViaStyleRule;
function GetRoutingOptions : IPCB_RoutingOptionsPage;
function GetState_AllowViaPusing : Boolean;
function GetState_Board : IPCB_Board;
function GetState_DisplayClearanceBoundaries : Boolean;
function GetState_GlossEffort : TGlossEffort;
function GetState_HuggingStyle : THuggingStyle;
function GetState_IsSingleNet : Boolean;
function GetState_Layer : Integer;
function GetState_MatchedNetLengthsRule : IPCB_MatchedNetLengthsConstraint;
function GetState_MinimumArcSize : Double;
function GetState_MiterSize : Double;
function GetState_NeighborGlossEffort : TGlossEffort;
function GetState_Net : IPCB_Net;
function GetState_NetDelay : Double;
function GetState_NetLength : Int64;
function GetState_PadEntryStability : Integer;
function GetState_ReduceClearanceDisplayArea : Boolean;
function GetState_RoutingViaStyleRule : IPCB_RoutingViaStyleRule;
function GetState_ShowLengthGauge : Boolean;
function GetState_Sliding : TAdvancedRouteMode;
function GetState_VertexAction : TVertexAction;
function GetState_WidthRule : IPCB_MaxMinWidthConstraint;
procedure SetState_AllowViaPusing(ANewValue : Boolean);
procedure SetState_DisplayClearanceBoundaries(ANewValue : Boolean);
procedure SetState_GlossEffort(ANewValue : TGlossEffort);
procedure SetState_HuggingStyle(ANewValue : THuggingStyle);
procedure SetState_IsSingleNet(ANewValue : Boolean);
procedure SetState_MinimumArcSize(ANewValue : Double);
procedure SetState_MiterSize(ANewValue : Double);
procedure SetState_NeighborGlossEffort(ANewValue : TGlossEffort);
procedure SetState_PadEntryStability(ANewValue : Integer);
procedure SetState_ReduceClearanceDisplayArea(ANewValue : Boolean);
procedure SetState_ShowLengthGauge(ANewValue : Boolean);
procedure SetState_Sliding(ANewValue : TAdvancedRouteMode);
procedure SetState_VertexAction(ANewValue : TVertexAction);

## IPCB_SmartUnionObject (52 unique + inherits IPCB_Primitive)
function AddArc(ACX : Integer, ACY : Integer, ARadius : Integer, ALineWidth : Integer, AAngle1 : Double, AAngle2 : Double) : IPCB_Arc;
property Alignment : TSmartUnionAlignmentType
function AllowSelectPrimsInUnion : Boolean;
property BasePoint : TCoordPoint
procedure CancelGroupWarehouseRegistration(APrimitive : IPCB_Primitive);
procedure DeleteObjectsFromUnion;
procedure DoDraw(ABoard : IPCB_Board);
function EditingHandlesEnabled : Boolean;
property ExpansionEnabled : Boolean
procedure ExplodeToPrimitives;
procedure FreePrimitives;
procedure FromString(aString : string);
function GetState_Primitive(AIndex : Integer) : IPCB_Primitive;
function GetState_PrimitivesCount : Integer;
procedure HandleBeforeClear;
procedure Invalidate;
function IsAccessible(AAction : TEditingAction) : Boolean;
function IsPrimitiveValidForUnion(APrimitive : IPCB_Primitive) : Boolean;
function IsRedundant : Boolean;
property IsValid : Boolean
property MaxHeight : TCoord
procedure MoveByPlaceHolder;
procedure NotifyPrimitiveMove(AX : Integer, AY : Integer, APrimitive : IPCB_Primitive);
property Placeholder : IPCB_Primitive
property PlaceholderLocation : TCoordPoint
property Primitives : IInterfaceListEx
property PrimitivesLocked : Boolean
procedure RebuildAfterLoad;
procedure RecollectObjectsToUnionFromBoard;
procedure Refresh;
procedure RegisterOnBoard(ABoard : IPCB_Board);
procedure RegisterWithGroupWarehouse(APrimitive : IPCB_Primitive);
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
property RotationCenter : TCoordPoint
property RotationHandle : TCoordPoint
property RotationHandleEnabled : Boolean
property RotationHandleOffset : TCoord
procedure SetState_AutoDeregisterable(AValue : Boolean);
function SetState_XSizeYSize : Boolean;
property ShowUnionShape : Boolean
property SilentRotate : Boolean
property Size : TCoordPoint
property UnionType : TSmartUnionObjectType
procedure UnRegisterFromBoard(ABoard : IPCB_Board);
property UseMiddleHandles : Boolean
property X1Location : TCoord
property X2Location : TCoord
property XLocation : TCoord
property Y1Location : TCoord
property Y2Location : TCoord
property YLocation : TCoord

## IPCB_SmartUnionPlaceHolder (10 unique + inherits IPCB_Primitive)
function IsRedundant : Boolean;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
function SetState_XSizeYSize : Boolean;
property X1Location : TCoord
property X2Location : TCoord
property XLocation : TCoord
property Y1Location : TCoord
property Y2Location : TCoord
property YLocation : TCoord

## IPCB_SMDNeckDownConstraint (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property Percent : Double
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_SMDNeckDownViolation (18 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Location : TCoordPoint
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_SMDPADEntryConstraint (31 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property Can_AnyAngle : Boolean
property Can_Corner : Boolean
property Can_IgnoreFirstCorner : Boolean
property Can_Side : Boolean
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property Distance : TCoord
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_SMDPADEntryViolation (19 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property CircleRadius : TCoord
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Location : TCoordPoint
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_SMDToCornerConstraint (31 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property Can_AnyAngle : Boolean
property Can_Corner : Boolean
property Can_IgnoreFirstCorner : Boolean
property Can_Side : Boolean
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property Distance : TCoord
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_SMDToPlaneConstraint (28 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property Distance : TCoord
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsInternalPlaneNet(Net : IPCB_Net, Board : IPCB_Board) : Boolean;
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_SolderMaskExpansionRule (35 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
property Expansion : TCoord
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ExpansionBottom : Integer;
function GetState_FromHoleEdge : Boolean;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_UseSeparateExpansions : Boolean;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
procedure SetState_ExpansionBottom(Value : Integer);
procedure SetState_FromHoleEdge(Value : Boolean);
procedure SetState_IsTenting_Bottom(Value : Boolean);
procedure SetState_IsTenting_Top(Value : Boolean);
procedure SetState_UseSeparateExpansions(Value : Boolean);

## IPCB_SolderMaskLayer (15 members)
property DielectricConstant : TDouble
property DielectricHeight : TCoord
property DielectricLossTangent : TDouble
property DielectricMaterial : TPCBString
property DielectricType : TDielectricType
property Expansion : TCoord
function GetState_LayerDisplayName(Value : TLayerNameDisplayMode) : WideString;
function I_ObjectAddress : Pointer;
function IsInLayerStack : Boolean;
property IsStiffener : Boolean
function LayerStack : IPCB_LayerStackBase;
property Name : TPCBString
property UsedByPrims : Boolean
function V6_LayerID : TV6_Layer;
function V7_LayerID : IDispatch;

## IPCB_SpatialIterator (11 members)
procedure AddFilter_AllLayers;
procedure AddFilter_Area(x1 : Integer, y1 : Integer, x2 : Integer, y2 : Integer);
procedure AddFilter_IPCB_LayerSet(ALayerSet : IPCB_LayerSet);
procedure AddFilter_LayerSet(ALayerSet : TV6_LayerSet);
procedure AddFilter_LayerSetA(ALayerSet : Integer);
procedure AddFilter_ObjectSet(AObjectSet : TObjectSet);
procedure AddFilter_ProcessSpecialLayers;
function FirstPCBObject : IPCB_Primitive;
function I_ObjectAddress : Pointer;
function NextPCBObject : IPCB_Primitive;
procedure SetState_FilterAll;

## IPCB_SpatialIterator2 (12 members)
procedure AddFilter_AllLayers;
procedure AddFilter_Area(x1 : Integer, y1 : Integer, x2 : Integer, y2 : Integer);
procedure AddFilter_IPCB_LayerSet(ALayerSet : IPCB_LayerSet);
procedure AddFilter_LayerSet(ALayerSet : TV6_LayerSet);
procedure AddFilter_LayerSetA(ALayerSet : Integer);
procedure AddFilter_ObjectSet(AObjectSet : TObjectSet);
procedure AddFilter_ProcessSpecialLayers;
function FirstPCBObject : IPCB_Primitive;
function I_ObjectAddress : Pointer;
function NextPCBObject : IPCB_Primitive;
procedure SetState_FilterAll;
procedure SetState_ProcessGroups(AValue : Boolean);

## IPCB_SpecctraDSNFile (2 members)
procedure ImportFile(const AFilePath : WideString);
function IsValidSpecctraDSNFile(const AFileName : WideString) : Boolean;

## IPCB_SpecctraRouterOptions (62 members)
property LayerWWTax[L: TV6_Layer] : TCCTTax
property Setback[I: Integer] : TCoord
property DoSetback[I: Integer] : Boolean
property LayerWWCost[L: TV6_Layer] : TCCTCost
property LayerTax[L: TV6_Layer] : TCCTTax
property LayerCost[L: TV6_Layer] : TCCTCost
property Adv10 : Boolean
property AdvancedDo : Boolean
property BusDiagonal : Boolean
property CleanPasses : Integer
property CrossCost : TCCTCost
property CrossTax : TCCTTax
property Dfm10 : Boolean
property DoBus : Boolean
property DoCritic : Boolean
property DoFanout : Boolean
property DoMiter : Boolean
property DoQuit : Boolean
property DoRecorner : Boolean
property DoSeedVias : Boolean
property DoSpread : Boolean
procedure Export_ToParameters(Parameters : PWideChar);
procedure Export_ToParameters_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version4(Parameters : PWideChar);
property FilterPasses : Integer
property FoIn : Boolean
property FoOut : Boolean
property FoPads : Boolean
property FoPasses : Integer
property FoPower : Boolean
property ForceVias : Boolean
property FoSignal : Boolean
property FoVias : Boolean
property Hyb10 : Boolean
function I_ObjectAddress : Pointer;
procedure Import_FromParameters(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, Parameters : PWideChar);
property MinimizePads : Boolean
property NoConflicts : Boolean
property OffCenterCost : TCCTCost
property OffCenterTax : TCCTTax
property OffGridCost : TCCTCost
property OffGridTax : TCCTTax
property OptionsObjectID : TOptionsObjectId
property ProtectPreRoutes : Boolean
property ReorderNets : Boolean
property RoutePasses : Integer
property SeedViaLimit : TCoord
property SideExitCost : TCCTCost
property SideExitTax : TCCTTax
property SortDir : TCCTSortDir
property SortKind : TCCTSort
property SpVersion : Integer
property SqueezeCost : TCCTCost
property SqueezeTax : TCCTTax
property ViaCost : TCCTCost
property ViaGrid : TReal
property ViaTax : TCCTTax
property WireGrid : TReal
property WwCost : TCCTCost
property WwTax : TCCTTax

## IPCB_SpecialStringConverter (12 members)
procedure AddForbiddenParamList(const AData : IPCB_ParameterList);
procedure AddSpecialStringConverterCache(const AData : IParameterList);
function Convert(const Primitive : IPCB_Primitive, const aString : WideString, out ConvertedString : WideString) : Boolean;
function FirstSpecialStringName : WideString;
function GetBoardSpecificSpecialStrings(const ABoard : IPCB_Board) : IPCB_WideStrings;
function I_ObjectAddress : Pointer;
function IsVCSRevisionSpecialString(const aString : WideString) : Boolean;
function NextSpecialStringName : WideString;
function PopStaticStringValue(const ASpecialString : WideString) : Boolean;
function PushStaticStringValue(const ASpecialString : WideString, const ANewValue : WideString) : Boolean;
procedure RemoveForbiddenParamList;
procedure RemoveSpecialStringConverterCache;

## IPCB_SplitBoardRegionLine (4 members)
function GetState_FromPoint : IDispatch;
function GetState_ToPoint : IDispatch;
function I_ObjectAddress : Pointer;
procedure SetState_FromToPoints(const AFromPoint : IDispatch, const AToPoint : IDispatch);

## IPCB_SplitBoardRegionWithArcs (5 members)
property Edge[AIndex: Integer] : IPCB_ShapeEdge
property EdgeCount : Integer
property LeftBoardRegion : IPCB_BoardRegion
property RightBoardRegion : IPCB_BoardRegion
procedure UpdateFromToPoints;

## IPCB_SplitPlane (34 unique + inherits IPCB_Primitive)
function AcceptsLayer(Layer : TV6_Layer) : Boolean;
procedure AddPCBObject(PCBObject : IPCB_Primitive);
property ArcApproximation : TCoord
property AreaSize : Extended
function FastSetState_XSizeYSize : Boolean;
procedure FreePrimitives;
function GetNegativeRegion : IPCB_Region;
function GetPrimitiveAt(I : Integer, ObjectId : TObjectId) : IPCB_Primitive;
function GetPrimitiveCount(ObjectSet : TObjectSet) : Integer;
function GetState_HitPrimitive(APrimitive : IPCB_Primitive) : Boolean;
function GetState_StrictHitTest(HitX : Integer, HitY : Integer) : Boolean;
function GroupIterator_Create : IPCB_GroupIterator;
procedure GroupIterator_Destroy(var AIterator : IPCB_GroupIterator);
procedure GrowPolyshape(ADist : Integer);
property IslandAreaThreshold : Double
property NeckWidthThreshold : TCoord
property OptimalVoidRotation : Boolean
property PointCount : Integer
function PointInPolygon(HitX : Integer, HitY : Integer) : Boolean;
procedure Pour;
function PrimitiveInsidePoly(APrimitive : IPCB_Primitive) : Boolean;
property PrimitiveLock : Boolean
property RemoveDead : Boolean
property RemoveIslandsByArea : Boolean
property RemoveNarrowNecks : Boolean
procedure RemovePCBObject(PCBObject : IPCB_Primitive);
procedure RemovePour;
function ReplicateWithChildren : IPCB_Primitive;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_LayersUsedArray;
function SetState_XSizeYSize : Boolean;
property x : TCoord
function xBoundingRectangle : IDispatch;
property y : TCoord

## IPCB_SplitPlaneRegion (11 unique + inherits IPCB_Primitive)
property Area : Int64
property CavityHeight : TCoord
property GeometricPolygon : IPCB_GeometricPolygon
property HoleCount : Integer
function IsSimpleRegion : Boolean;
property Kind : TRegionKind
property MainContour : IPCB_Contour
property Name : TPCBString
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetOutlineContour(Contour : IPCB_Contour);
property SplitPlane : IPCB_SplitPlane

## IPCB_StackObject (26 members)
property IsPadRemoved[ALayer: Integer] : Boolean
procedure AdjustStackObject;
function GetLayerStack : IPCB_LayerStack;
function GetState_BottomLayer : Integer;
function GetState_BottomSignalLayer : Integer;
function GetState_Cache : IDispatch;
function GetState_HoleNegativeTolerance : Integer;
function GetState_HolePositiveTolerance : Integer;
function GetState_HoleSize : Integer;
function GetState_Mode : TPadMode;
function GetState_SolderMaskExpansionFromHoleEdge : Boolean;
function GetState_TemplateLink : IPCB_PadViaTemplateLink;
function GetState_TopLayer : Integer;
function GetState_TopSignalLayer : Integer;
function GetState_XLocation : Integer;
function GetState_YLocation : Integer;
procedure InvalidateCache;
procedure ResetCache;
procedure SetState_Cache(const Value : IDispatch);
procedure SetState_HoleNegativeTolerance(Value : Integer);
procedure SetState_HolePositiveTolerance(Value : Integer);
procedure SetState_HoleSize(Value : Integer);
procedure SetState_Mode(Mode : TPadMode);
procedure SetState_SolderMaskExpansionFromHoleEdge(AValue : Boolean);
procedure SetState_XLocation(AX : Integer);
procedure SetState_YLocation(AY : Integer);

## IPCB_StackObjectCache (7 members)
property BottomPasteMaskEnabled : Boolean
property InternalPlanes : Word
property IsTentingBottom : Boolean
property IsTentingBottomValid : TCacheState
property IsTentingTop : Boolean
property IsTentingTopValid : TCacheState
property PasteMaskEnabled : Boolean

## IPCB_StateID (1 members)
function GetState_ID : Integer;

## IPCB_StructuredStorage (22 members)
property Features[AFeature: TStorageFeature] : Boolean
procedure AddTextsForSaveList(const APrimitive : IPCB_Primitive);
procedure AddWSForLoadList(AIndex : Integer, const AText : WideString);
property Board : IPCB_Board
function CreateNestedSection(const ASectionName : WideString) : IPCB_StructuredStorage;
function CreateNestedStream(const AStreamName : WideString) : IStream;
function CreateSection(const AName : WideString) : IPCB_BinarySection;
property FileName : WideString
function GetSectionCount : Integer;
function GetState_Section(AIndex : Integer) : IPCB_BinarySection;
function GetState_SectionByName(const AName : WideString) : IPCB_BinarySection;
function IsSectionToIgnore(const ASectionName : WideString) : Boolean;
function OpenNestedSection(const ASectionName : WideString) : IPCB_StructuredStorage;
function OpenNestedStream(const AStreamName : WideString) : IStream;
property PadViaLibrary : IPCB_PadViaLibrary
function PCBFileFormatVersion : TAdvPCBFileFormatVersion;
function RecognizeFile : Boolean;
procedure RegisterWithBoard;
function SectionExists(const ASectionName : WideString) : Boolean;
function StreamExists(const AStreamName : WideString) : Boolean;
function TextsForSaveListCount : Integer;
function TextsForSaveListItems(AIndex : Integer) : IPCB_Primitive;

## IPCB_SystemOptions (150 members)
property LayerColors[L: Integer] : TColor
property LayerColors_V6[L: TV6_Layer] : TColor
property LayerDrawingOrder[I: Integer] : TLayer
property FractionalDigits[aUnit: TUnit] : Integer
property HoldShiftToSelectObjectId[OId: TObjectId] : Boolean
property DrawMode[OId: TObjectId] : TDrawMode
property AreaRectangleSelectionColor : TColor
property AutoNecking : Boolean
property AutoPan : Boolean
property AutoPanLargeStep : Integer
property AutoPanMode : TAutoPanMode
property AutoPanSmallStep : Integer
property AutoPanSpeed : Integer
property AutoPanUnit : TAutoPanUnit
property AutoVia : Boolean
property BackgroundMaskLevel : Integer
property BoardAreaColor : TColor
property BoardCursorType : TGraphicsCursor
property BoardLineColor : TColor
property BodyPlacement_UseSnapPoints : Boolean
property BodyPlacement_UseVertices : Boolean
property CheckComments : Boolean
property CheckPatterns : Boolean
property CleanRedraw : Boolean
property ClickClearsSelection : Boolean
property Com1Parameters : TSerialParameters
property Com2Parameters : TSerialParameters
property Com3Parameters : TSerialParameters
property Com4Parameters : TSerialParameters
property ComponentLockPrimitives : Boolean
property ComponentMoveKind : TComponentMoveKind
property ComponentRefPointColor : TColor
property ConfirmSelectionMemoryClear : Boolean
property ContextDependentColors : Boolean
property DefaultPrimsPermanent : Boolean
property DefaultTTFont : TPCBString
property DeleteDeadEnds : Boolean
property DeleteUnconnectedComps : Boolean
property DeleteUnconnectedPrims : Boolean
property DisplaySpecialStrings : Boolean
property DoOnlineDRC : Boolean
property DoubleClickRunsInspector : Boolean
property DraftTrackThreshold : TCoord
property DragMode : TPcbDragMode
property DragVertexAction : TVertexAction
property DuplicateDesignatorsAllowed : Boolean
procedure Export_ToIniFile;
procedure Export_ToParameters(Parameters : PWideChar);
procedure Export_ToParameters_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version4(Parameters : PWideChar);
property FilteredObjectsBlend : Integer
property FirstDimensionLine : TColor
property FromTosDisplayMode : TFromToDisplayMode
function GetOptionsForGlossRetrace : IPCB_RoutingOptionsPage;
function GetState_AmbiguityThreshold : Integer;
function GetState_HighlightColor : Cardinal;
property GlobalEditIncludeArcsWithTracks : Boolean
property HighlightFull : Boolean
property HighlightObjectsBlend : Integer
property HuggingStyle : THuggingStyle
function I_ObjectAddress : Pointer;
procedure Import_FromIniFile;
procedure Import_FromParameters(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, Parameters : PWideChar);
property InteractiveRouteMode : TInteractiveRouteMode
function LayerColorIterator : IPCB_LayerIterator;
property LayerDrawingOrderCount : Integer
property LayerNameDisplayMode : TLayerNameDisplayMode
property LockPreRoutes : Boolean
property LoopRemoval : Boolean
property MinimumArcSize : Double
property MinPadViaObjectSizeInPixels : Integer
property MiterSize : Double
property ModelOptions : IPCB_ModelOptions
property MustHoldShiftToSelect : Boolean
property NearestComponent : Boolean
property NetlistReportDialog : Boolean
property NetlistReportFile : Boolean
property OnlySelectVisible : Boolean
property OptionsObjectID : TOptionsObjectId
property OriginMarkerColor : TColor
property PadEntryStability : Integer
property PadstackUpdateFromGlobalsOnLoad : TSameNamePadstackReplacementMode
property PadTypesDisplayMode : TFromToDisplayMode
property PadViaFontBkColor : TColor
property PadViaFontColor : TColor
property PadViaFontName : TPCBString
property PadViaFontStyle : TFontStyles
property PadViaMinFontSize : Integer
property Paste_HasSameDesignator : Boolean
property Paste_InSameClass : Boolean
property Paste_InSameNet : Boolean
property Paste_OnSameLayer : Boolean
property PlaceShoveDepth : Integer
property PlaneDrawMode : TPlaneDrawMode
property PlowThroughPolygons : Boolean
property PolygonRepour : TPolygonRepourMode
property PolygonThreshold : Integer
property ProtectLockedPrimitives : Boolean
property QuestionDelete : Boolean
property QuestionDrag : Boolean
property QuestionGlobalChange : Boolean
property RedrawLayerOnToggle : Boolean
property RemoveDuplicatesOnOutput : Boolean
property RepeatCircular : Boolean
property RepeatCountDefault : Integer
property RepeatDegrees : TGeometry
property RepeatInc : TPCBString
property RepeatRotateItem : Boolean
property RepeatX : TGeometry
property RepeatXUnit : TUnit
property RepeatY : TGeometry
property RepeatYUnit : TUnit
property ReportsCSV : Boolean
property RotationStep : TAngle
property RouteGuideColor : TColor
property SameNamePadstackReplacementMode : TSameNamePadstackReplacementMode
property SaveDefs : Boolean
property SecondDimensionLine : TColor
procedure SetState_AmbiguityThreshold(Value : Integer);
procedure SetState_HighlightColor(Value : Cardinal);
property ShadowsInPCB : Boolean
property SheetAreaColor : TColor
property SheetLineColor : TColor
property ShowAllPrimitivesInHighlightedNets : Boolean
property ShowComponentRefPoint : Boolean
property ShowInvisibleObjects : Boolean
property ShowPadNets : Boolean
property ShowPadNumbers : Boolean
property ShowStatusInfo : Boolean
property ShowStatusInterval : Integer
property ShowTestPoints : Boolean
property ShowViaNets : Boolean
property ShowViaSpan : Boolean
property SingleLayerMode : Boolean
property SnapToCentre : Boolean
property TextToRectSize : Integer
property TouchRectangleSelectionColor : TColor
property UndoRedoStackSize : Integer
property UseAmbiguityMenu : Boolean
property UseDithered : Boolean
property UseNetColorForHighlight : Boolean
property UseSmartTrackEnds : Boolean
property UseTransparent : Boolean
property ValidateOnLoad : Boolean
property WaivedDRCErrorColor : TColor
property WaivedViolationColor : TColor
property WorkspaceColor1 : TColor
property WorkspaceColor2 : TColor

## IPCB_TestPointOptions (8 members)
procedure Export_ToParameters(Parameters : PWideChar);
procedure Export_ToParameters_Version3(Parameters : PWideChar);
procedure Export_ToParameters_Version4(Parameters : PWideChar);
function I_ObjectAddress : Pointer;
procedure Import_FromParameters(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version3(DisplayUnit : TUnit, Parameters : PWideChar);
procedure Import_FromParameters_Version4(DisplayUnit : TUnit, Parameters : PWideChar);
property OptionsObjectID : TOptionsObjectId

## IPCB_TestPointStyleRule (43 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property AllowedSide : TTestpointAllowedSideSet
property BoardEdgeClearance : TCoord
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property CompBodyClearance : TCoord
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property GridOrigin : TCoordPoint
property GridTolerance : TCoord
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxHoleSize : TCoord
property MaxSize : TCoord
property MinHoleSize : TCoord
property MinSize : TCoord
property MinSpacing : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
property PadHoleCenterClearance : TCoord
property PreferedHoleSize : TCoord
property PreferedSize : TCoord
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property TestpointGrid : TCoord
property TestpointUnderComponent : Boolean
property UseGrid : Boolean
property ViaHoleCenterClearance : TCoord

## IPCB_TestPointUsage (28 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property AllowMultipleOnNet : Boolean
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property Valid : TTestpointValid

## IPCB_TestpointViolation_Base (18 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
property HelperPrim : IPCB_Primitive
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_Text (63 unique + inherits IPCB_Primitive)
property BarCodeBitPattern : TPCBString
property BarCodeFontName : TPCBString
property BarCodeFullHeight : TCoord
property BarCodeFullWidth : TCoord
property BarCodeInverted : Boolean
property BarCodeKind : TBarcodeKind
property BarCodeMinWidth : TCoord
property BarCodeRenderMode : TBarcodeRenderMode
property BarCodeShowText : Boolean
property BarCodeXMargin : TCoord
property BarCodeYMargin : TCoord
procedure BeginOutputGeneration(AConverter : IPCB_OutputConverter, AList : IInterfaceList);
property Bold : Boolean
property BorderSpaceType : TTextBorderSpaceType
function CanEditMultilineRectSize : Boolean;
property CharSet : Byte
property ConvertedString : TPCBString
property DisableSpecialStringConversion : Boolean
procedure EndOutputGeneration;
property FontID : TFontID
property FontName : TPCBString
function GetDesignatorDisplayString : WideString;
function GetState_BarCodeMinPixelSize : Integer;
function InAutoDimension : Boolean;
property Inverted : Boolean
property InvertedTTTextBorder : TCoord
property InvRectHeight : Integer
property InvRectWidth : Integer
function IsComment : Boolean;
function IsDesignator : Boolean;
function IsRedundant : Boolean;
property Italic : Boolean
property MirrorFlag : Boolean
property Multiline : Boolean
property MultilineTextAutoPosition : TTextAutoposition
property MultilineTextHeight : TCoord
property MultilineTextResizeEnabled : Boolean
property MultilineTextWidth : TCoord
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
function RotationHandle : IDispatch;
procedure SetState_BarCodeMinPixelSize(const Value : Integer);
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property Text : TPCBString
property TextKind : TTextKind
property TTFInvertedTextJustify : TTextAutoposition
property TTFOffsetFromInvertedRect : TCoord
property TTFTextHeight : Integer
property TTFTextWidth : Integer
property TTTextOutline : Pointer
property TTTextOutlineGeometricPolygon : IPCB_GeometricPolygon
property UnderlyingString : TPCBString
property UseInvertedRectangle : Boolean
property UseTTFonts : Boolean
property Width : TCoord
property WordWrap : Boolean
property X1Location : TCoord
property X2Location : TCoord
property XLocation : TCoord
property Y1Location : TCoord
property Y2Location : TCoord
property YLocation : TCoord

## IPCB_Text3 (75 unique + inherits IPCB_Primitive)
property AdvanceSnapping : Boolean
property BarCodeBitPattern : TPCBString
property BarCodeFontName : TPCBString
property BarCodeFullHeight : TCoord
property BarCodeFullWidth : TCoord
property BarCodeInverted : Boolean
property BarCodeKind : TBarcodeKind
property BarCodeMinWidth : TCoord
property BarCodeRenderMode : TBarcodeRenderMode
property BarCodeShowText : Boolean
property BarCodeXMargin : TCoord
property BarCodeYMargin : TCoord
procedure BeginOutputGeneration(AConverter : IPCB_OutputConverter, AList : IInterfaceList);
property Bold : Boolean
property BorderSpaceType : TTextBorderSpaceType
function CanEditMultilineRectSize : Boolean;
property CharSet : Byte
property ConvertedString : TPCBString
procedure CopyTo(const P : IPCB_Text, CopyMode : TCopyMode);
property DisableSpecialStringConversion : Boolean
procedure EndOutputGeneration;
property FontID : TFontID
property FontName : TPCBString
function GetActualTextBr : IDispatch;
function GetDesignatorDisplayString : WideString;
function GetState_BarCodeMinPixelSize : Integer;
function InAutoDimension : Boolean;
property Inverted : Boolean
property InvertedTTTextBorder : TCoord
property InvRectHeight : Integer
property InvRectWidth : Integer
function IsComment : Boolean;
function IsDesignator : Boolean;
function IsRedundant : Boolean;
property Italic : Boolean
property MirrorFlag : Boolean
property Multiline : Boolean
property MultilineTextAutoPosition : TTextAutoposition
property MultilineTextHeight : TCoord
property MultilineTextResizeEnabled : Boolean
property MultilineTextWidth : TCoord
procedure PushJustificationCenter(APushState : Boolean);
procedure RepositionAfterPush;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
function RotationHandle : IDispatch;
procedure SetState_BarCodeMinPixelSize(const Value : Integer);
function SetState_XSizeYSize : Boolean;
property Size : TCoord
property SnapPointX : TCoord
property SnapPointY : TCoord
property StoredFontID : IPCB_FontInfoRec
function StringXPosition : Integer;
function StringYPosition : Integer;
property Text : TPCBString
property TextKind : TTextKind
property TTFInvertedTextJustify : TTextAutoposition
property TTFOffsetFromInvertedRect : TCoord
property TTFontID : IPCB_FontInfoRec
property TTFTextHeight : Integer
property TTFTextWidth : Integer
property TTTextOutline : Pointer
property TTTextOutlineGeometricPolygon : IPCB_GeometricPolygon
property UnderlyingString : TPCBString
procedure UpdateTextPosition;
property UseInvertedRectangle : Boolean
property UseTTFonts : Boolean
property Width : TCoord
property WordWrap : Boolean
property X1Location : TCoord
property X2Location : TCoord
property XLocation : TCoord
property Y1Location : TCoord
property Y2Location : TCoord
property YLocation : TCoord

## IPCB_TextureSection (27 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage

## IPCB_TraceImpedance (25 members)
property CalculatedImpedance : TDouble
property ClearanceToPlane : TCoord
property DiffPairGap : TCoord
property EtchFactor : TDouble
function GetState_DiffPairMaxGap : Integer;
function GetState_DiffPairMinGap : Integer;
function I_ObjectAddress : Pointer;
property ImpedanceError : TDouble
property ImpedanceProfile : IPCB_ImpedanceProfile
property IsEnabled : Boolean
property IsTraceGapLocked : Boolean
property IsTraceWidthLocked : Boolean
property Layer : TLayer
property PropagationSpeed : TDouble
property RefBottomLayer : TLayer
property RefTopLayer : TLayer
procedure SetState_DiffPairMaxGap(Value : Integer);
procedure SetState_DiffPairMinGap(Value : Integer);
property SolderMaskThicknessBetweenTraces : TCoord
property SolderMaskThicknessOnTopOfTraces : TCoord
property Substack : IPCB_LayerStack
property TraceMaxWidth : TCoord
property TraceMinWidth : TCoord
property TraceWidth : TCoord
property UseSolderMask : Boolean

## IPCB_Track (8 unique + inherits IPCB_Primitive)
function GetState_Length : Integer;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_Length(Value : Integer);
property Width : TCoord
property x1 : TCoord
property x2 : TCoord
property y1 : TCoord
property y2 : TCoord

## IPCB_Track3D (23 unique + inherits IPCB_Primitive)
property FaceIdx1 : Integer
property FaceIdx2 : Integer
property FaceU1 : Integer
property FaceU2 : Integer
property FaceV1 : Integer
property FaceV2 : Integer
function GetState_Length : Integer;
procedure Path_AddPoint(const APt : IDispatch);
procedure Path_Clear;
procedure Path_DeleteLast;
procedure Path_DeletePoint(AIdx : Integer);
function Path_First : IDispatch;
procedure Path_InsertPoint(AIdx : Integer, const APt : IDispatch);
function Path_Last : IDispatch;
function Path_PointsCount : Integer;
function Path_StateID : Integer;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_Length(Value : Integer);
property Width : TCoord
property x1 : TCoord
property x2 : TCoord
property y1 : TCoord
property y2 : TCoord

## IPCB_TrueArcHolesSupport (5 members)
property TrueArcHoles[AIndex: Integer] : IPCB_PolygonalShape
function AddTrueArcHole : IPCB_PolygonalShape;
procedure ClearTrueArcHoles;
procedure DeleteTrueArcHole(AIndex : Integer);
property TrueArcHoleCount : Integer

## IPCB_TTFontData (17 members)
function AddRef : Integer;
property Bold : Boolean
property CanEmbed : Boolean
property CharSet : Byte
property EmbeddedFontHandle : THandle
function FontExists : Boolean;
property FontFaceName : TPCBString
property FontFullName : TPCBString
property FontStyleName : TPCBString
function GetEmbeddedFontData(var DataSize : Integer) : Pointer;
function I_ObjectAddress : Pointer;
function IsEmbedded : Boolean;
function IsEmbeddedInDocument(const ABoard : Pointer) : Boolean;
function IsSame(const FaceName : WideString, const Bold : Boolean, const Italic : Boolean, const CharSet : Byte) : Boolean;
property Italic : Boolean
property RefCount : Integer
function Release : Integer;

## IPCB_TTFontsCache (11 members)
property EmbeddedFontsCount[ABoard: IPCB_Board] : Integer
property Font[I: Integer] : IPCB_TTFontData
procedure AddEmbeddedFont(const FullFontName : WideString, const FaceName : WideString, const StyleName : WideString, const Bold : Boolean, const Italic : Boolean, const CharSet : Byte, FontData : Pointer, DataLen : Integer, const ABoard : IPCB_Board);
procedure AddFont(const FaceName : WideString, const Bold : Boolean, const Italic : Boolean, const CharSet : Byte, const ABoard : IPCB_Board);
function CreateFontInfoRec : IPCB_FontInfoRec;
function ExportFontsToList(const ABoard : IPCB_Board, const AFontsList : IPCB_WideStrings) : Integer;
property FontsCount : Integer
function GetFont(const FaceName : WideString, const Bold : Boolean, const Italic : Boolean, const CharSet : Byte, const ABoard : IPCB_Board) : IPCB_TTFontData;
function GetNextEmbeddedFont(var APos : Integer, const ABoard : IPCB_Board) : IPCB_TTFontData;
function I_ObjectAddress : Pointer;
procedure StoredFontInfoCacheAdd(const AFontInfoRec : IPCB_FontInfoRec);

## IPCB_UnConnectedPinRule (26 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_Union (5 members)
function FeturesValidForSave : Boolean;
function GetState_DeadCopper : Boolean;
function GetState_Name : WideString;
function GetState_Type : TUnionTypeID;
function GetState_UnionIndex : Integer;

## IPCB_UnionList (2 members)
function Get(Index : Integer) : IPCB_Union;
function GetCount : Integer;

## IPCB_Via (25 unique + inherits IPCB_Primitive)
property Cache : TPadCache
procedure ClearStackSizes;
property CounterHoleParams : IPCB_CounterHoleParams
function DefinitionLayerIterator : IPCB_LayerIterator;
property DrillLayerPairType : TDrillLayerPairType
property Height : TCoord
property HighLayer : TLayer
property HoleNegativeTolerance : TCoord
property HolePositiveTolerance : TCoord
property HoleSize : TCoord
function IntersectLayer(ALayer : Integer) : Boolean;
property IsBackdrill : Boolean
function IsCounterHole : Boolean;
property LowLayer : TLayer
property Mode : TPadMode
function PlaneConnectionStyleForLayer(ALayer : TV6_Layer) : TPlaneConnectionStyle;
property Plated : Boolean
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Size : TCoord
property SolderMaskExpansionFromHoleEdge : Boolean
property StartLayer : IPCB_LayerObject
property StopLayer : IPCB_LayerObject
property TemplateLink : IPCB_PadViaTemplateLink
property x : TCoord
property y : TCoord

## IPCB_ViaCombinationManagerInterface (5 members)
property ViaStacks[AIndex: Integer] : IPCB_RoutingViaStackInfo
property CurrentStack : IPCB_RoutingViaStackInfo
procedure NextStack;
procedure PrevStack;
property ViaStackCount : Integer

## IPCB_ViaDraggingProcess (2 members)
function GetRoutingOptions : IPCB_RoutingOptionsPage;
function GetState_Board : IPCB_Board;

## IPCB_ViaManager (3 members)
function GetViaType(const AViaPrim : IPCB_Primitive) : TViaType;
function IsMicroVia(const AViaPrim : IPCB_Primitive) : Boolean;
function IsPartOfStackedVia(const AViaPrim : IPCB_Primitive) : Boolean;

## IPCB_ViaRoutingDataInfo (12 members)
property DrillLayerPair : IPCB_DrillLayerPair
function GetState_ViaSizeOnLayer(ALayer : Integer) : Integer;
property HighLayer : TLayer
property HoleSize : TCoord
property LayerStack : IPCB_LayerStack
property LowLayer : TLayer
property PairType : TDrillLayerPairType
property Rule : IPCB_RoutingViaStyleRule
property Template : IPCB_PadViaTemplate
property Title : WideString
property ViaSize : TCoord
property ViaType : TViaType

## IPCB_ViaShieldingOptions (25 members)
property Objects[AIndex: Integer] : IPCB_Primitive
property AddCopper : Boolean
procedure AddObject(const APrimitive : IPCB_Primitive);
property AddPolyCutout : Boolean
property Board : IPCB_Board
property Distance : TCoord
procedure Export_ToOptionsWriter;
procedure Export_ToParameters(const AParameters : IWideParameterList);
procedure Export_ToParameters_SelectedObjects(const AParameters : IWideParameterList);
function I_ObjectAddress : Pointer;
procedure Import_FromOptionsReader;
procedure Import_FromParameters(const AParameters : IWideParameterList);
property MultipleObjects : Boolean
property Net : IPCB_Net
property NetName : TPCBString
property ObjectCount : Integer
property Pullback : TCoord
property RowCount : Integer
property RowStep : TCoord
property Stagger : Boolean
property Step : TCoord
property TemplateVia : IPCB_Via
property ViaNet : IPCB_Net
property ViaNetName : TPCBString
property ViaPadClearance : TCoord

## IPCB_ViaShieldingSU (56 unique + inherits IPCB_Primitive)
function AddArc(ACX : Integer, ACY : Integer, ARadius : Integer, ALineWidth : Integer, AAngle1 : Double, AAngle2 : Double) : IPCB_Arc;
property Alignment : TSmartUnionAlignmentType
function AllowSelectPrimsInUnion : Boolean;
property BasePoint : TCoordPoint
procedure CancelGroupWarehouseRegistration(APrimitive : IPCB_Primitive);
procedure DeleteObjectsFromUnion;
procedure DoDraw(ABoard : IPCB_Board);
function EditingHandlesEnabled : Boolean;
property ExpansionEnabled : Boolean
procedure ExplodeToPrimitives;
procedure FreePrimitives;
procedure FromString(aString : string);
function GetState_Primitive(AIndex : Integer) : IPCB_Primitive;
function GetState_PrimitivesCount : Integer;
procedure HandleBeforeClear;
procedure Invalidate;
function IsAccessible(AAction : TEditingAction) : Boolean;
property IsFilled : Boolean
function IsPrimitiveValidForUnion(APrimitive : IPCB_Primitive) : Boolean;
function IsRedundant : Boolean;
property IsValid : Boolean
property MaxHeight : TCoord
procedure MoveByPlaceHolder;
property MultipleObjects : Boolean
procedure NotifyPrimitiveMove(AX : Integer, AY : Integer, APrimitive : IPCB_Primitive);
property Options : IPCB_ViaShieldingOptions
property Placeholder : IPCB_Primitive
property PlaceholderLocation : TCoordPoint
property Primitives : IInterfaceListEx
property PrimitivesLocked : Boolean
procedure Rebuild;
procedure RebuildAfterLoad;
procedure RecollectObjectsToUnionFromBoard;
procedure Refresh;
procedure RegisterOnBoard(ABoard : IPCB_Board);
procedure RegisterWithGroupWarehouse(APrimitive : IPCB_Primitive);
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
property RotationCenter : TCoordPoint
property RotationHandle : TCoordPoint
property RotationHandleEnabled : Boolean
property RotationHandleOffset : TCoord
procedure SetState_AutoDeregisterable(AValue : Boolean);
function SetState_XSizeYSize : Boolean;
property ShowUnionShape : Boolean
property SilentRotate : Boolean
property Size : TCoordPoint
property UnionType : TSmartUnionObjectType
procedure UnRegisterFromBoard(ABoard : IPCB_Board);
property UseMiddleHandles : Boolean
property X1Location : TCoord
property X2Location : TCoord
property XLocation : TCoord
property Y1Location : TCoord
property Y2Location : TCoord
property YLocation : TCoord

## IPCB_ViaStitchFloodOptions (15 members)
property Board : IPCB_Board
procedure Export_ToOptionsWriter;
procedure Export_ToParameters(const AParameters : IWideParameterList);
function I_ObjectAddress : Pointer;
procedure Import_FromOptionsReader;
procedure Import_FromParameters(const AParameters : IWideParameterList);
property Net : IPCB_Net
property NetName : TPCBString
property OffsetX : TCoord
property OffsetY : TCoord
property Pullback : TCoord
property Stagger : Boolean
property Step : TCoord
property TemplateVia : IPCB_Via
property ViaPadClearance : TCoord

## IPCB_ViaStitchingSU (62 unique + inherits IPCB_Primitive)
function AddArc(ACX : Integer, ACY : Integer, ARadius : Integer, ALineWidth : Integer, AAngle1 : Double, AAngle2 : Double) : IPCB_Arc;
property Alignment : TSmartUnionAlignmentType
function AllowSelectPrimsInUnion : Boolean;
property BasePoint : TCoordPoint
procedure CancelGroupWarehouseRegistration(APrimitive : IPCB_Primitive);
function DefineArea : LongBool;
procedure DeleteObjectsFromUnion;
procedure DeserializeAreaShape(const AData : WideString);
procedure DoDraw(ABoard : IPCB_Board);
function EditingHandlesEnabled : Boolean;
property ExpansionEnabled : Boolean
procedure ExplodeToPrimitives;
procedure FreePrimitives;
procedure FromString(aString : string);
function GetState_GeometricPolygon : IPCB_GeometricPolygon;
function GetState_Primitive(AIndex : Integer) : IPCB_Primitive;
function GetState_PrimitivesCount : Integer;
procedure HandleBeforeClear;
procedure Invalidate;
function IsAccessible(AAction : TEditingAction) : Boolean;
property IsConstrainArea : Boolean
property IsDefiningArea : Boolean
function IsPrimitiveValidForUnion(APrimitive : IPCB_Primitive) : Boolean;
function IsRedundant : Boolean;
property IsValid : Boolean
property MaxHeight : TCoord
procedure MoveByPlaceHolder;
procedure NotifyPrimitiveMove(AX : Integer, AY : Integer, APrimitive : IPCB_Primitive);
property Options : IPCB_ViaStitchFloodOptions
property Placeholder : IPCB_Primitive
property PlaceholderLocation : TCoordPoint
property Primitives : IInterfaceListEx
property PrimitivesLocked : Boolean
procedure RebuildAfterLoad;
procedure RebuildAfterUpdate(const ShowPrompt : LongBool);
procedure RecollectObjectsToUnionFromBoard;
procedure Refresh;
procedure RegisterOnBoard(ABoard : IPCB_Board);
procedure RegisterWithGroupWarehouse(APrimitive : IPCB_Primitive);
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
property RotationCenter : TCoordPoint
property RotationHandle : TCoordPoint
property RotationHandleEnabled : Boolean
property RotationHandleOffset : TCoord
function SerializeAreaShape : WideString;
procedure SetState_AutoDeregisterable(AValue : Boolean);
procedure SetState_GeometricPolygon(const APolygon : IPCB_GeometricPolygon);
function SetState_XSizeYSize : Boolean;
property Shape : IPCB_PolygonalShape
property ShowUnionShape : Boolean
property SilentRotate : Boolean
property Size : TCoordPoint
property UnionType : TSmartUnionObjectType
procedure UnRegisterFromBoard(ABoard : IPCB_Board);
property UseMiddleHandles : Boolean
property X1Location : TCoord
property X2Location : TCoord
property XLocation : TCoord
property Y1Location : TCoord
property Y2Location : TCoord
property YLocation : TCoord

## IPCB_ViaStructure (15 members)
property FeatureByType[AType: TViaStructureFeatureType] : IPCB_ViaStructureFeature
property Feature[AIndex: Integer] : IPCB_ViaStructureFeature
property CanEditSide[AType: TViaStructureFeatureType] : Boolean
property CanEditFeature[AType: TViaStructureFeatureType] : Boolean
property CanEditMaterial[AType: TViaStructureFeatureType] : Boolean
procedure CopyTo(const AViaStructure : IPCB_ViaStructure);
procedure Deserialize(const AData : WideString);
property FeaturesCount : Integer
property FeaturesSide : TViaStructureFeatureSide
function GetFeatureTypes : TViaStructureFeatureTypeSet;
function IsEqual(AViaStructure : IPCB_ViaStructure) : Boolean;
function Replicate : IPCB_ViaStructure;
function Serialize : WideString;
property StructureType : TViaStructureType
property vIndexForSave : Integer

## IPCB_ViaStructureFeature (6 members)
property CanSelectSide[ASide: TViaStructureFeatureSide] : Boolean
procedure CopyTo(const AFeature : IPCB_ViaStructureFeature);
property FeatureType : TViaStructureFeatureType
property Material : TPCBString
function Replicate : IPCB_ViaStructureFeature;
property Side : TViaStructureFeatureSide

## IPCB_ViaStructureManager (8 members)
property Items[AIndex: Integer] : IPCB_ViaStructure
procedure ChangeFeatureTypeCounter(AFeatureType : TViaStructureFeatureType, AIncrement : Boolean);
procedure Clear;
procedure ClearFeatureTypeCounter;
property Count : Integer
function CreateViaStructure(AFullFeatureList : Boolean, AViaStructureType : TViaStructureType) : IPCB_ViaStructure;
function IsFeatureTypeExists(AFeatureType : TViaStructureFeatureType) : Boolean;
function RegisterViaStructure(const AViaStructure : IPCB_ViaStructure) : IPCB_ViaStructure;

## IPCB_ViaStructureSupport (3 members)
function GetViaStructureReplica : IPCB_ViaStructure;
property ViaStructure : IPCB_ViaStructure
property ViaStructureType : TViaStructureType

## IPCB_ViaStyleParams (12 members)
property Diameters[ALayer: Integer] : TCoord
function GetMaxDia : Integer;
property HoleDia : TCoord
property ManualSolderMaskExpantion : Boolean
property Mode : TPadMode
property SolderMaskBottomExpansion : TCoord
property SolderMaskExpansion : TCoord
property SolderMaskExpansionFromHoleEdge : Boolean
property TentingBottom : Boolean
property TentingTop : Boolean
property UseSeparateExpansions : Boolean
procedure ValidateSizes;

## IPCB_ViasUnderSMDConstraint (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property Allowed : Boolean
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;

## IPCB_ViaTemplate (41 members)
property StackData[AIndex: Integer] : IPCB_ViaTemplateStackData
function AddStackData(const AValue : IPCB_ViaTemplateStackData) : Integer;
procedure ClearStackData;
procedure CopyTo(ADest : IPCB_PadViaTemplate, ACopyMode : TCopyMode);
function CreateDefaultStackData : IPCB_ViaTemplateStackData;
function CreatePrimitive : IPCB_Primitive;
function CreateTemplateLink : IPCB_PadViaTemplateLink;
procedure DecreasePrimLinkCounter;
property DynamicName : Boolean
property ExternalLink : IPCB_PadViaTemplateLink
function GetFullTemplateID : WideString;
function GetHashVersion : WideString;
property Hash : WideString
function HasLocalChanges(APrimitive : IPCB_Primitive) : Boolean;
property HoleNegativeTolerance : TCoord
property HolePositiveTolerance : TCoord
property HoleSize : TCoord
function I_ObjectAddress : Pointer;
procedure IncreasePrimLinkCounter;
property Internal : Boolean
property IsBackdrill : Boolean
property IsTenting_Bottom : Boolean
property IsTenting_Top : Boolean
property LibraryID : WideString
property ManualSolderMask : Boolean
property Mode : TPadMode
property ObjectId : TObjectId
property ObjectIDString : WideString
property PrimLinkCount : Integer
property RemoveUnused : Boolean
property RevisionID : WideString
property SolderMaskBottomExpansion : TCoord
property SolderMaskExpansion : TCoord
property SolderMaskHoleEdge : Boolean
function StackDataCount : Integer;
property TemplateDescription : WideString
property TemplateID : WideString
property TemplateName : WideString
procedure UpdateHash;
property UseSeparateExpansions : Boolean
property ViaStructure : IPCB_ViaStructure

## IPCB_ViaTemplateStackData (4 members)
property Diameter : TCoord
function I_ObjectAddress : Pointer;
property Layer : TLayer
property ThermalRelief : TPadViaThermalReliefData

## IPCB_ViaUnderSMDViolation (18 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
property HelperPrim : IPCB_Primitive
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_Viewport (53 unique + inherits IPCB_Primitive)
procedure ApplyFilterToIterator(const AIterator : IPCB_AbstractIterator);
function AreLayerStacksCompatible : LongBool;
function AreTransmitSettingsEqual(const AEmbeddedBoard : IPCB_EmbeddedBoard) : Boolean;
function BoardIterator_CreateFiltered : IPCB_BoardIterator;
procedure BoardIterator_Destroy(var AIterator : IPCB_BoardIterator);
property ChildBoard : IPCB_Board
property ColCount : Integer
procedure CollectTransmitParameters;
property ColSpacing : TCoord
function CreareTransmitTextCacheIterator(AOnlyText : Boolean) : IPCB_EmbeddedBoardTransmitTextCacheIterator;
procedure DefineViewportRectGraphically;
property DocumentPath : TPCBString
function GetForbiddenParameterList : IPCB_ParameterList;
function GetState_ColMargin : Integer;
function GetState_RelativeDocumentPath : WideString;
function GetState_RowMargin : Integer;
function GetState_StateId : Cardinal;
function IsRedundant : Boolean;
property IsViewport : Boolean
property MirrorFlag : Boolean
property OriginMode : TEmbeddedBoardOriginMode
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
property Rotation : TAngle
property RowCount : Integer
property RowSpacing : TCoord
property Scale : Double
procedure SetState_ColMargin(Value : Integer);
procedure SetState_RowMargin(Value : Integer);
procedure SetState_VisibleLayers(const ALayers : IPCB_LayerSet);
function SetState_XSizeYSize : Boolean;
function SpatialIterator_CreateFiltered : IPCB_SpatialIterator;
procedure SpatialIterator_Destroy(var AIterator : IPCB_SpatialIterator);
property TitleFontColor : TColor
property TitleFontName : TPCBString
property TitleFontSize : Integer
property TitleObject : Int64
property TransmitBoardShape : Boolean
property TransmitDimensions : Boolean
property TransmitDrillTable : Boolean
property TransmitLayerStackTable : Boolean
property TransmitParametersCount : Integer
property ViewConfig : TPCBString
property ViewConfigType : TPCBString
property ViewportRect : TCoordRect
property ViewportTitle : TPCBString
property ViewportVisible : Boolean
property VisibleLayers : IPCB_LayerSet
property X1Location : TCoord
property X2Location : TCoord
property XLocation : TCoord
property Y1Location : TCoord
property Y2Location : TCoord
property YLocation : TCoord

## IPCB_Violation (17 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_ViolationSection (28 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GuidsCount : Integer;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage
property ViolationCount : Integer

## IPCB_ViolationsFactory (5 members)
function CreateAuthorInfo(const AID : WideString, const ATitle : WideString, const ASource : WideString) : IPCB_AuthorInfo;
function CreateCurrentAuthorInfo : IPCB_AuthorInfo;
function CreateDefaultWaivedViolationInfo : IPCB_WaivedViolationInfo;
function CreateViolation(const AClassName : WideString, const ARule : IPCB_Primitive, const APrimitive1 : IPCB_Primitive, const APrimitive2 : IPCB_Primitive) : IPCB_Violation;
function CreateWaivedViolationInfo : IPCB_WaivedViolationInfo;

## IPCB_WaivedViolationCommentSingleton (4 members)
property Items[AIndex: Integer] : WideString
property Count : Integer
property Last : WideString
function LastOrDefault : WideString;

## IPCB_WaivedViolationInfo (6 members)
property Author : IPCB_AuthorInfo
function CanChangeAuthor : Boolean;
function Clone : IPCB_WaivedViolationInfo;
property Comment : TPCBString
procedure CopyTo(const ADest : IPCB_WaivedViolationInfo);
property CreatedAt : TDateTime

## IPCB_WideStrings (8 members)
property Strings[Index: Integer] : WideString
procedure BeginUpdate;
procedure Clear;
property Count : Integer
property Duplicates : TDuplicates
procedure EndUpdate;
property Sorted : Boolean
function Text : WideString;

## IPCB_Wirebond (15 unique + inherits IPCB_Primitive)
function GetPrimitivesAtEnd : IPCB_PrimitiveList;
function GetPrimitivesAtStart : IPCB_PrimitiveList;
function GetState_Count : Integer;
function GetState_Length : Integer;
function GetState_Length3D : Integer;
function GetState_Point(const AStartPoint : IDispatch, const AEndPoint : IDispatch, AIndex : Integer) : IDispatch;
function GetState_WireBody : IPCB_ComponentBody;
procedure RotateAroundXY(AX : Integer, AY : Integer, Angle : Double);
procedure SetState_Length(Value : Integer);
property Width : TCoord
property WirebondTemplate : IPCB_WirebondTemplate
property x1 : TCoord
property x2 : TCoord
property y1 : TCoord
property y2 : TCoord

## IPCB_WirebondLengthViolation (18 unique + inherits IPCB_Primitive)
property ActualLength : TCoord
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_WirebondRule (33 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
property Angle : TAngle
property BondFingerMargin : TCoord
property BondFingerSpace : TCoord
property BondFingerToWireAlignment : Boolean
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property MaxWireLength : TCoord
property MinWireLength : TCoord
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property WireToWireGap : TCoord

## IPCB_WirebondTemplate (6 members)
property EndStyle : TWirebondConnectStyle
function I_ObjectAddress : Pointer;
property Id : TWirebondTemplateID
property Name : TPCBString
property StartStyle : TWirebondConnectStyle
property WireLoop : IPCB_WireLoop

## IPCB_WirebondTemplateFactory (2 members)
function CreateTemplate(const AName : WideString, AStartStyle : TWirebondConnectStyle, AEndStyle : TWirebondConnectStyle, const AWireLoop : IPCB_WireLoop) : IPCB_WirebondTemplate;
function CreateWireLoopBuilder(AWirebondStandard : TWirebondStandard) : IPCB_WireLoopBuilder;

## IPCB_WirebondTemplateSection (28 members)
property Items[AIndex: Integer] : IPCB_Primitive
procedure AddExtendedIndex(const AData : IDispatch);
procedure AddExtraPrimitive(const APrimitive : IPCB_Primitive);
procedure AddGUID(const AData : IDispatch);
procedure AddItem(const APrimitive : IPCB_Primitive);
procedure Apply;
procedure ApplyExtendedIndices;
procedure ApplyGUIDs;
procedure CloseSection;
procedure CollectExtraPrimitives;
procedure Export_ToFile;
function ExtendedIndexCount : Integer;
function GetExtendedIndex(AIndex : Integer) : IDispatch;
function GetGUID(AIndex : Integer) : IDispatch;
procedure GetIndexes(const APrimitive : IPCB_Primitive, out AvNet : Integer, out AvPolygon : Integer, out AvComponent : Integer, out AvPadOwner : Integer, out AvCoordinate : Integer, out AvDimension : Integer);
function GetWirebondTemplateByID(const AID : WideString) : IPCB_WirebondTemplate;
function GuidsCount : Integer;
procedure IndexExtraPrimitives(const AIndexer : IPCB_IndexForSaveIndexer);
property ItemsCount : Integer
function NeedsToProcess : Boolean;
property Parameter : IParameterList
procedure PrepareToSave;
property RecordCount : Integer
procedure RegisterWithBoard;
procedure RemoveIndexes(const APrimitive : IPCB_Primitive);
property SectionName : WideString
procedure SetIndexes(const APrimitive : IPCB_Primitive, AvNet : Integer, AvPolygon : Integer, AvComponent : Integer, AvPadOwner : Integer, AvCoordinate : Integer, AvDimension : Integer);
property StorageSection : IPCB_StructuredStorage

## IPCB_WirebondTemplatesIterator (2 members)
function Next : Boolean;
function WirebondTemplate : IPCB_WirebondTemplate;

## IPCB_WirebondTemplatesManager (6 members)
procedure AddTemplate(const AWirebondTemplate : IPCB_WirebondTemplate);
function CreateIterator : IPCB_WirebondTemplatesIterator;
procedure DeleteTemplate(const AWirebondTemplateID : WideString);
function GetTemplateByID(const AWirebondTemplateID : WideString) : IPCB_WirebondTemplate;
function GetTemplateFactory : IPCB_WirebondTemplateFactory;
function GetTemplates : ISafeInterfaceList;

## IPCB_WirebondWireToWireViolation (25 unique + inherits IPCB_Primitive)
property ActualClosestDistance : TCoord
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
property IsHoleClearanceViolation : Boolean
function IsRedundant : Boolean;
property IsWaived : Boolean
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
property RuleValue : TCoord
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property ValueIsIntit : Boolean
property ViolationPt1 : TCoordPoint
property ViolationPt2 : TCoordPoint
property ViolationPt3D1 : TCoordPoint3D
property ViolationPt3D2 : TCoordPoint3D
property WaivedInfo : IPCB_WaivedViolationInfo

## IPCB_WireLoop (4 members)
property Count : Integer
function GetState_Point(AStartHeight : Integer, AEndHeight : Integer, ALength : Integer, AIndex : Integer) : IDispatch;
function I_ObjectAddress : Pointer;
property Standard : TWirebondStandard

## IPCB_WireLoopBuilder (2 members)
function GetWireLoop : IPCB_WireLoop;
function I_ObjectAddress : Pointer;

## IPCB_WireLoopJedec (7 members)
property Count : Integer
property EndAngle : TAngle
function GetState_Point(AStartHeight : Integer, AEndHeight : Integer, ALength : Integer, AIndex : Integer) : IDispatch;
property Height : TCoord
function I_ObjectAddress : Pointer;
property Standard : TWirebondStandard
property StartAngle : TAngle

## IPCB_WireLoopJedecBuilder (5 members)
property EndAngle : TAngle
function GetWireLoop : IPCB_WireLoop;
property Height : TCoord
function I_ObjectAddress : Pointer;
property StartAngle : TAngle

## IPCB_ZAxisClearanceRule (27 unique + inherits IPCB_Primitive)
function ActualCheck(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : IPCB_Violation;
function CheckBinaryScope(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function CheckUnaryScope(P : IPCB_Primitive) : Boolean;
property Comment : TPCBString
property DefinedByLogicalDocument : Boolean
property DRCEnabled : Boolean
function GetState_CollisionExpansion : Integer;
function GetState_DataSummaryString : WideString;
function GetState_ScopeDescriptorString : WideString;
function GetState_ShortDescriptorString : WideString;
function GetState_ViolationDescriptorString(V : IPCB_Violation) : WideString;
function GetWhatsThisHelpString : WideString;
property IsAdvanced : Boolean
function IsUnary : Boolean;
function IsValid : Boolean;
property LayerKind : TRuleLayerKind
property Name : TPCBString
property NetScope : TNetScope
function NetScopeMatches(P1 : IPCB_Primitive, P2 : IPCB_Primitive) : Boolean;
function Priority : Word;
property RuleKind : TRuleKind
property Scope1Expression : TPCBString
function Scope1Includes(P : IPCB_Primitive) : Boolean;
property Scope2Expression : TPCBString
function Scope2Includes(P : IPCB_Primitive) : Boolean;
function ScopeKindIsValid(AScopeKind : TScopeKind) : Boolean;
property ZAxisClearance : TCoord

## IPCB_ZAxisClearanceViolation (26 unique + inherits IPCB_Primitive)
procedure AddInvolvedPrimitive(const APrimitive : IPCB_Primitive);
property Description : TPCBString
function GetState_ShortDescriptorString : WideString;
function GetSubPolyIndex1 : Integer;
function GetSubPolyIndex2 : Integer;
procedure InvolvedPrimitivesClear;
function InvolvedPrimitivesCount : Integer;
property IsHoleClearanceViolation : Boolean
function IsRedundant : Boolean;
property IsWaived : Boolean
property Layer1 : TLayer
property Layer2 : TLayer
property Name : TPCBString
property Primitive1 : IPCB_Primitive
property Primitive2 : IPCB_Primitive
property Rule : IPCB_Primitive
property RuleValue : TCoord
procedure SetState_Description(const AValue : WideString);
procedure SetSubPolyIndex1(AValue : Integer);
procedure SetSubPolyIndex2(AValue : Integer);
property ValueIsIntit : Boolean
property ViolationPt1 : TCoordPoint
property ViolationPt2 : TCoordPoint
property ViolationPt3D1 : TCoordPoint3D
property ViolationPt3D2 : TCoordPoint3D
property WaivedInfo : IPCB_WaivedViolationInfo

