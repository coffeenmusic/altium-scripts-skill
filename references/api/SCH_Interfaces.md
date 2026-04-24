# Schematic Interfaces (ISch_*)
Complete member listings for all schematic interfaces. Inherited ISch_GraphicalObject members documented once; derived interfaces list only unique additions.

## ISch_GraphicalObject (51 members) - BASE CLASS
Most ISch_ object interfaces inherit these members.
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
property Color : TColor
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
procedure DeleteAll;
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function GetHash : WideString;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
property Handle : WideString
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
property LiveHighlightValue : WideString
property Location : TLocation
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
property ObjectId : TObjectId
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetErrorFields;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_xSizeySize;
property UniqueId : WideString

## ISch_Arc (4 unique + inherits ISch_GraphicalObject)
property EndAngle : TAngle
property LineWidth : TSize
property Radius : TDistance
property StartAngle : TAngle

## ISch_BasicContainer (0 unique + inherits ISch_GraphicalObject)

## ISch_BasicPolyline (8 unique + inherits ISch_GraphicalObject)
procedure ClearAllVertices;
function InsertVertex(Index : Integer) : Boolean;
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
function RemoveVertex(var Index : Integer) : Boolean;
property Transparent : Boolean
property VerticesCount : Integer

## ISch_Bezier (8 unique + inherits ISch_GraphicalObject)
procedure ClearAllVertices;
function InsertVertex(Index : Integer) : Boolean;
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
function RemoveVertex(var Index : Integer) : Boolean;
property Transparent : Boolean
property VerticesCount : Integer

## ISch_Blanket (9 unique + inherits ISch_GraphicalObject)
procedure ClearAllVertices;
property Collapsed : Boolean
function InsertVertex(Index : Integer) : Boolean;
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
function RemoveVertex(var Index : Integer) : Boolean;
property Transparent : Boolean
property VerticesCount : Integer

## ISch_Bus (13 unique + inherits ISch_GraphicalObject)
property AutoWire : Boolean
procedure ClearAllVertices;
property EditingEndPoint : Boolean
function InsertVertex(Index : Integer) : Boolean;
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
procedure OrderCrossOverArray;
function RemoveVertex(var Index : Integer) : Boolean;
procedure ResetCompilationMaskedSegments;
property Transparent : Boolean
property UnderlineColor : TColor
property VerticesCount : Integer

## ISch_BusEntry (3 unique + inherits ISch_GraphicalObject)
property Corner : TLocation
property LineStyle : TLineStyle
property LineWidth : TSize

## ISch_Circle (4 unique + inherits ISch_GraphicalObject)
property IsSolid : Boolean
property LineWidth : TSize
property Radius : TDistance
property Transparent : Boolean

## ISch_CollapsiblePolygon (8 unique + inherits ISch_GraphicalObject)
procedure ClearAllVertices;
property Collapsed : Boolean
function InsertVertex(Index : Integer) : Boolean;
property IsSolid : Boolean
property LineWidth : TSize
function RemoveVertex(var Index : Integer) : Boolean;
property Transparent : Boolean
property VerticesCount : Integer

## ISch_CollapsibleRectangle (6 unique + inherits ISch_GraphicalObject)
property Collapsed : Boolean
property Corner : TLocation
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property Transparent : Boolean

## ISch_CompileMask (6 unique + inherits ISch_GraphicalObject)
property Collapsed : Boolean
property Corner : TLocation
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property Transparent : Boolean

## ISch_ComplexText (14 unique + inherits ISch_GraphicalObject)
property Autoposition : Boolean
property CalculatedValueString : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_SimpleCalculatedString : WideString;
property IsHidden : Boolean
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property Text : WideString
property TextHorzAnchor : TTextHorzAnchor
property TextVertAnchor : TTextVertAnchor

## ISch_Component (157 members)
property Alias[I: Integer] : WideString
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddDisplayMode;
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddImplementationToComponent(AnImplementation : ISch_Implementation);
procedure AddPart;
function AddPin : ISch_Pin;
function AddSchImplementation : ISch_Implementation;
procedure AddSchObject(AObject : ISch_BasicContainer);
function AddSchParameter : ISch_Parameter;
procedure Alias_Add(S : WideString);
procedure Alias_Clear;
procedure Alias_Delete(I : Integer);
procedure Alias_Remove(S : WideString);
property AliasAsText : WideString
property AliasCount : Integer
procedure ApplyChosenComponent(const DestComponent : IDispatch);
property AreaColor : TColor
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
function ChangeComponentLibraryToLibrary(LibraryName : WideString, TableName : WideString, AllowSelectNew : Boolean, Action : TSourceChangeAction) : TSourceChangeAction;
function ChangeComponentLibraryToVault(AVaultGUID : WideString, AllowSelectNew : Boolean, Action : TSourceChangeAction) : TSourceChangeAction;
function ChooseFromLibrary : IDispatch;
function ChooseFromVault : IDispatch;
property Color : TColor
property Comment : ISch_Parameter
property CompilationMasked : Boolean
property ComponentDescription : WideString
property ComponentKind : TComponentKind
property ConfigurationParameters : WideString
property ConfiguratorName : WideString
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
property CurrentPartID : Integer
property DatabaseLibraryName : WideString
property DatabaseTableName : WideString
procedure DeleteAll;
procedure DeleteDisplayMode(AMode : Byte);
procedure DeletePart(APartId : Integer);
property Designator : ISch_Designator
property DesignatorLocked : Boolean
property DesignItemId : WideString
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property DisplayFieldNames : Boolean
property DisplayMode : TDisplayMode
property DisplayModeCount : Integer
function EditPins : Boolean;
function EditPinsWithSelection(ASelectedPins : ISafeInterfaceList) : Boolean;
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function FullPartDesignator(APartId : Integer) : WideString;
property GenericComponentTemplateGUID : WideString
function GetAllPinCount : Integer;
function GetEmptyImplementation : ISch_Implementation;
function GetGraphicalHash : WideString;
function GetHash : WideString;
function GetState_CustomDisplayModeName(ADisplayMode : Byte) : WideString;
function GetState_DatabaseLibraryKeys(ADelimiter : WideString) : WideString;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_IsSubPartImplemented(ASubPartId : Integer) : Boolean;
function GetState_IsSubPartImplementedForDisplayMode(ASubPartId : Integer, ADisplayMode : Integer) : Boolean;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
property Handle : WideString
function HasConfiguredPinMapping : Boolean;
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
function InLibrary : Boolean;
function InSheet : Boolean;
function IsGenericComponent : Boolean;
function IsIntegratedComponent : Boolean;
property IsMirrored : Boolean
function IsMultiPartComponent : Boolean;
property IsUnmanaged : Boolean
property IsUserConfigurable : Boolean
property ItemGUID : WideString
procedure JumpTo(APin : ISch_Pin);
property LibIdentifierKind : TLibIdentifierKind
property LibraryIdentifier : WideString
property LibraryPath : WideString
property LibReference : WideString
property LiveHighlightValue : WideString
property Location : TLocation
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
property ObjectId : TObjectId
procedure OffsetParameters_Default;
property Orientation : TRotationBy90
property OverideColors : Boolean
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
property PartCount : Integer
property PartIdLocked : Boolean
function PartIdString(APartId : Integer) : WideString;
property PinColor : TColor
property PinsMoveable : Boolean
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure RemovePins(APins : ISafeInterfaceList);
procedure RemoveSchImplementation(AnImplementation : ISch_Implementation);
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetAllSchParametersPosition;
procedure ResetErrorFields;
property RevisionDetails : WideString
property RevisionGUID : WideString
property RevisionHRID : WideString
property RevisionState : WideString
property RevisionStatus : WideString
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
procedure SaveToFile(VFSAddress : WideString);
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property SelectedInLibrary : Boolean
property Selection : Boolean
procedure SetState_CustomDisplayModeName(ADisplayMode : Byte, AValue : WideString);
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_FilePosition(AValue : Integer);
procedure SetState_OrientationWithoutRotating(AValue : TRotationBy90);
procedure SetState_xSizeySize;
property SheetPartFileName : WideString
property ShowHiddenFields : Boolean
property ShowHiddenPins : Boolean
procedure ShowInVaultExplorer;
procedure ShowLibraryInExplorer;
property SourceLibraryName : WideString
function SuggestedSearchKeywords : WideString;
property SymbolItemGUID : WideString
property SymbolReference : WideString
property SymbolRevisionGUID : WideString
property SymbolVaultGUID : WideString
property TargetFileName : WideString
property UniqueId : WideString
procedure UpdatePart_PostProcess;
procedure UpdatePart_PreProcess;
procedure UpdatePrimitivesAccessibility;
property UseDBTableName : Boolean
property UseLibraryName : Boolean
procedure ValidateImplementationsCurrentState;
procedure ValidateLink;
property VariantOption : IVariantOption
property VaultGUID : WideString
property VaultHRID : WideString

## ISch_ConnectionLine (4 unique + inherits ISch_GraphicalObject)
property Corner : TLocation
property IsInferred : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize

## ISch_ConnectivityStorage (0 unique + inherits ISch_GraphicalObject)

## ISch_CrossReferenceObject (1 members)
property CrossRefObjectsInfo : WideString

## ISch_CrossSheetConnector (17 unique + inherits ISch_GraphicalObject)
property CalculatedValueString : WideString
property CrossSheetStyle : TCrossSheetConnectorStyle
procedure DeleteCrossRef;
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_CrossRef : WideString;
function GetState_SimpleCalculatedString : WideString;
property IsCustomStyle : Boolean
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
procedure SetState_CrossRef(AValue : WideString);
property ShowNetName : Boolean
property Style : TPowerObjectStyle
property Text : WideString

## ISch_CustomConnector (2 members)
procedure SetCustomMode(const AComponent : ISch_Component);
procedure SetCustomMode_NeedsCorrection(const AComponent : ISch_Component);

## ISch_DataModelUtils (12 members)
function ChangeComponentsLibraryToLibrary(SchComponents : ISafeInterfaceList, LibraryName : WideString, TableName : WideString, AllowSelectNew : Boolean) : Boolean;
function ChangeComponentsLibraryToVault(SchComponents : ISafeInterfaceList, VaultGUID : WideString, AllowSelectNew : Boolean) : Boolean;
function DecomposePinNameToPinFunctions(const PinName : WideString) : ISafeInterfaceList;
function DescribeClearanceMatrixChanges(const AOldMatrix : IClearancesMatrix, const ANewMatrix : IClearancesMatrix) : WideString;
function DeserializeConstraintManagerData(const AOwnerDocument : IDocument, const ASerializedData : WideString) : IConstraintManagerData;
function GetComponentSubPartsInfo(AComponent : ISch_Component) : IComponentSubPartsInfo;
function GetManagedSheetParentSymbolsInfo(ASheetSymbol : ISch_SheetSymbol) : IManagedSheetParentSymbolsInfo;
function GetReuseBlocksInstancesInfo(const AReuseBlock : ISch_SchematicBlock, const ALatestRevisionGuid : WideString) : IReuseBlockInstancesInfo;
procedure ReuseBlocksDissolve(const AReuseBlocks : ISafeInterfaceList);
function ReuseBlocksFindAllInstances(const AReuseBlocks : ISafeInterfaceList, out ANotSelectedInstanceNames : WideString) : ISafeInterfaceList;
procedure UpdateComponentSubPartsToGivenRevision(AComponentSubPartsInfo : IComponentSubPartsInfo, AVaultGUID : WideString, AItemGUID : WideString, ARevisionGUID : WideString, ADesignItemID : WideString, ASourceLibraryName : WideString);
procedure UpdateManagedSheetParentSymbolsToGivenRevision(AManagedSheetParentSymbolsInfo : IManagedSheetParentSymbolsInfo, AVaultGUID : WideString, AItemGUID : WideString, ARevisionGUID : WideString);

## ISch_Designator (28 unique + inherits ISch_GraphicalObject)
property AllowDatabaseSynchronize : Boolean
property AllowLibrarySynchronize : Boolean
property Autoposition : Boolean
property CalculatedValueString : WideString
property Description : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_SimpleCalculatedString : WideString;
property IsConfigurable : Boolean
property IsHidden : Boolean
property IsMirrored : Boolean
property IsRule : Boolean
property IsSystemParameter : Boolean
property Justification : TTextJustification
property Name : WideString
property NameIsReadOnly : Boolean
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property ParamType : TParameterType
property PhysicalDesignator : WideString
property ReadOnlyState : TParameter_ReadOnlyState
property ShowName : Boolean
property Text : WideString
property TextHorzAnchor : TTextHorzAnchor
property TextVertAnchor : TTextVertAnchor
property ValueIsReadOnly : Boolean
property VariantOption : IVariantOption

## ISch_DialogManager (2 members)
function ShowPrintOutPropertiesDialog(Settings : IPrintSettings) : Boolean;
function ShowPrintPreviewDialog(Settings : IPrintSettings) : Boolean;

## ISch_DialogManagerEntry (2 members)
function ShowPrintOutPropertiesDialog(Settings : IPrintSettings) : Boolean;
function ShowPrintPreviewDialog(Settings : IPrintSettings) : Boolean;

## ISch_Directive (1 unique + inherits ISch_GraphicalObject)
property Text : WideString

## ISch_Document (138 members)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
property BorderOn : Boolean
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
function BoundingRectangle_Selected : IDispatch;
function ChooseLocationInteractively(const ALocation : IDispatch, Prompt : WideString) : Boolean;
function ChooseRectangleInteractively(const ARect : IDispatch, Prompt1 : WideString, Prompt2 : WideString) : Boolean;
property Color : TColor
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
function CountContextMenuObjects(AObjectSet : TObjectSet) : Integer;
function CountContextMenuObjectsExceptSchematicBlockObjects(AObjectSet : TObjectSet) : Integer;
function CreateFilteredHitTest(const ATestMode : THitTestMode, const ALocation : IDispatch, const AObjectSet : TObjectSet, const AParentObjectSet : TObjectSet, const AIncludePins : Boolean, const ACrossSelect : Boolean) : ISch_HitTest;
function CreateHitTest(ATestMode : THitTestMode, const ALocation : IDispatch) : ISch_HitTest;
procedure CreateLibraryFromProject(AddLibToProject : Boolean, FileName : WideString, RunQuiet : Boolean);
function CreateUseHandle(const AGraphicalObject : ISch_GraphicalObject, const AView : IInterface, const ALocation : IDispatch) : ISch_HitTest;
property CustomMarginWidth : TCoord
property CustomSheetStyle : WideString
property CustomX : TCoord
property CustomXZones : TCoord
property CustomY : TCoord
property CustomYZones : TCoord
procedure DeleteAll;
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property DisplayUnit : TUnit
property DocumentBorderStyle : TSheetDocumentBorderStyle
procedure DocumentModifiedChanged(AChanged : Boolean);
property DocumentName : WideString
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function GenerateUniqueID : WideString;
function GetDialogManager : ISch_DialogManager;
function GetHash : WideString;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
function Graphical_VirtualRectangle : IDispatch;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
function GridCoordinateClosest(ACoord : Integer) : Integer;
function GridCoordinateUp(ACoord : Integer) : Integer;
property Handle : WideString
function HasPausedProcess : Boolean;
function HasServerDocument : Boolean;
property HotspotGridOn : Boolean
property HotspotGridSize : TCoord
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
property InternalTolerance : TCoord
function IsInEditorView : Boolean;
property IsLibrary : Boolean
property ItemRevisionGUID : WideString
property LiveHighlightValue : WideString
property LoadFormat : WideString
property Location : TLocation
procedure LockViewUpdate;
property MinorVersion : Integer
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
procedure Notify_FullUpdate;
property ObjectId : TObjectId
function ObjectReferenceZone(AObject : ISch_BasicContainer) : WideString;
procedure OptimizeUseOfPolylines;
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
procedure PlaceSchComponent(ALibraryPath : WideString, ALibRef : WideString, var SchObject : ISch_Component);
function PopupMenuHitTest : ISch_HitTest;
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
property PropsRevisionGUID : WideString
property PropsVaultGUID : WideString
procedure RecreateHandles;
procedure RedrawToDC(DC : HDC, PrintKind : Integer, PrintWhat : Integer);
procedure RedrawToDCEx(DC : HDC, PrintKind : Integer, PrintWhat : Integer, ExportToPDF : Boolean);
property ReferenceZonesOn : Boolean
property ReferenceZoneStyle : TSheetReferenceZoneStyle
procedure RegisterSchObjectInContainer(AObject : ISch_BasicContainer);
property ReleaseItemGUID : WideString
property ReleaseVaultGUID : WideString
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetAllSchParametersPosition;
procedure ResetErrorFields;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
property SchDocID : Integer
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetPreferencesInfo(const AVaultGUID : WideString, const ARevisionGUID : WideString);
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_xSizeySize;
procedure SetTemplateInfo(const AVaultGUID : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString, const AVaultHRID : WideString, const ARevisionHRID : WideString);
property SheetMarginWidth : TCoord
property SheetNumberSpaceSize : Integer
property SheetSizeX : TCoord
property SheetSizeY : TCoord
property SheetStyle : TSheetStyle
property SheetZonesX : Integer
property SheetZonesY : Integer
property ShowTemplateGraphics : Boolean
property SnapGridOn : Boolean
property SnapGridSize : TCoord
property SystemFont : TFontID
property TemplateFileName : WideString
property TemplateItemGUID : WideString
property TemplateRevisionGUID : WideString
property TemplateRevisionHRID : WideString
property TemplateVaultGUID : WideString
property TemplateVaultHRID : WideString
property TitleBlockOn : Boolean
property UniqueId : WideString
property UnitSystem : TUnitSystem
procedure UnLockViewUpdate;
procedure UnregisterAndFreeAllConnectionLines;
procedure UnRegisterSchObjectFromContainer(AObject : ISch_BasicContainer);
procedure UpdateDisplayForCurrentSheet;
procedure UpdateDocumentProperties;
function UpdatePartsToLatestRevision(ATarget : TUpdatePartTarget, const AContextObject : IInterface, ANeedConfirm : Boolean, AClearMessages : Boolean, out AUpdatedCount : Integer, out AUpToDateCount : Integer, out AErrorCount : Integer) : Boolean;
property UseCustomSheet : Boolean
property VisibleGridOn : Boolean
property VisibleGridSize : TCoord
property WorkspaceOrientation : TSheetOrientation

## ISch_Document2 (3 members)
procedure BeginSelection;
procedure DeselectAll;
procedure EndSelection;

## ISch_DrawableDocument (1 members)
procedure RedrawTo(GraphicCanvas : IInterface, PrintKind : Integer, PrintWhat : Integer);

## ISch_ElectronicsSystemDesignDocument (143 members)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddReuseBlockPartInfo(const ABlockId : WideString, const ABlockGUID : IFullItemGUID, const ASchSnippetGUID : IFullItemGUID, const APcbSnippetGUID : IFullItemGUID, const AUniqueId : WideString, const AUniqueIdInReuseBlock : WideString);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
property BorderOn : Boolean
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
function BoundingRectangle_Selected : IDispatch;
property BusConnections : IConnectionsArray
function ChooseLocationInteractively(const ALocation : IDispatch, Prompt : WideString) : Boolean;
function ChooseRectangleInteractively(const ARect : IDispatch, Prompt1 : WideString, Prompt2 : WideString) : Boolean;
property Color : TColor
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
function CountContextMenuObjects(AObjectSet : TObjectSet) : Integer;
function CountContextMenuObjectsExceptSchematicBlockObjects(AObjectSet : TObjectSet) : Integer;
function CreateFilteredHitTest(const ATestMode : THitTestMode, const ALocation : IDispatch, const AObjectSet : TObjectSet, const AParentObjectSet : TObjectSet, const AIncludePins : Boolean, const ACrossSelect : Boolean) : ISch_HitTest;
function CreateHitTest(ATestMode : THitTestMode, const ALocation : IDispatch) : ISch_HitTest;
procedure CreateLibraryFromProject(AddLibToProject : Boolean, FileName : WideString, RunQuiet : Boolean);
function CreateUseHandle(const AGraphicalObject : ISch_GraphicalObject, const AView : IInterface, const ALocation : IDispatch) : ISch_HitTest;
property CustomMarginWidth : TCoord
property CustomSheetStyle : WideString
property CustomX : TCoord
property CustomXZones : TCoord
property CustomY : TCoord
property CustomYZones : TCoord
procedure DeleteAll;
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property DisplayUnit : TUnit
property DocumentBorderStyle : TSheetDocumentBorderStyle
procedure DocumentModifiedChanged(AChanged : Boolean);
property DocumentName : WideString
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function GenerateUniqueID : WideString;
function GetDialogManager : ISch_DialogManager;
function GetHash : WideString;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
function Graphical_VirtualRectangle : IDispatch;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
function GridCoordinateClosest(ACoord : Integer) : Integer;
function GridCoordinateUp(ACoord : Integer) : Integer;
property Handle : WideString
function HasPausedProcess : Boolean;
function HasServerDocument : Boolean;
property HasUnsavedUniqueIdsChanges : Boolean
property HotspotGridOn : Boolean
property HotspotGridSize : TCoord
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
property InternalTolerance : TCoord
function IsInEditorView : Boolean;
property IsLibrary : Boolean
function IsManagedByDDM : Boolean;
property ItemRevisionGUID : WideString
property LiveHighlightValue : WideString
property LoadFormat : WideString
property Location : TLocation
procedure LockViewUpdate;
property MinorVersion : Integer
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
procedure Notify_FullUpdate;
property ObjectId : TObjectId
function ObjectReferenceZone(AObject : ISch_BasicContainer) : WideString;
procedure OptimizeUseOfPolylines;
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
procedure PlaceSchComponent(ALibraryPath : WideString, ALibRef : WideString, var SchObject : ISch_Component);
function PopupMenuHitTest : ISch_HitTest;
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
property PropsRevisionGUID : WideString
property PropsVaultGUID : WideString
procedure RecreateHandles;
procedure RedrawToDC(DC : HDC, PrintKind : Integer, PrintWhat : Integer);
procedure RedrawToDCEx(DC : HDC, PrintKind : Integer, PrintWhat : Integer, ExportToPDF : Boolean);
property ReferenceZonesOn : Boolean
property ReferenceZoneStyle : TSheetReferenceZoneStyle
procedure RegisterSchObjectInContainer(AObject : ISch_BasicContainer);
property ReleaseItemGUID : WideString
property ReleaseVaultGUID : WideString
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetAllSchParametersPosition;
procedure ResetErrorFields;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
property SchDocID : Integer
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetPreferencesInfo(const AVaultGUID : WideString, const ARevisionGUID : WideString);
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_xSizeySize;
procedure SetTemplateInfo(const AVaultGUID : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString, const AVaultHRID : WideString, const ARevisionHRID : WideString);
property SheetMarginWidth : TCoord
property SheetNumberSpaceSize : Integer
property SheetSizeX : TCoord
property SheetSizeY : TCoord
property SheetStyle : TSheetStyle
property SheetZonesX : Integer
property SheetZonesY : Integer
property ShowTemplateGraphics : Boolean
property SnapGridOn : Boolean
property SnapGridSize : TCoord
property SystemFont : TFontID
property TemplateFileName : WideString
property TemplateItemGUID : WideString
property TemplateRevisionGUID : WideString
property TemplateRevisionHRID : WideString
property TemplateVaultGUID : WideString
property TemplateVaultHRID : WideString
property TitleBlockOn : Boolean
property UniqueId : WideString
property UnitSystem : TUnitSystem
procedure UnLockViewUpdate;
procedure UnregisterAndFreeAllConnectionLines;
procedure UnRegisterSchObjectFromContainer(AObject : ISch_BasicContainer);
procedure UpdateDisplayForCurrentSheet;
procedure UpdateDocumentProperties;
function UpdatePartsToLatestRevision(ATarget : TUpdatePartTarget, const AContextObject : IInterface, ANeedConfirm : Boolean, AClearMessages : Boolean, out AUpdatedCount : Integer, out AUpToDateCount : Integer, out AErrorCount : Integer) : Boolean;
property UseCustomSheet : Boolean
property VisibleGridOn : Boolean
property VisibleGridSize : TCoord
property WireConnections : IConnectionsArray
property WorkspaceOrientation : TSheetOrientation

## ISch_Ellipse (5 unique + inherits ISch_GraphicalObject)
property IsSolid : Boolean
property LineWidth : TSize
property Radius : TDistance
property SecondaryRadius : TDistance
property Transparent : Boolean

## ISch_EllipticalArc (5 unique + inherits ISch_GraphicalObject)
property EndAngle : TAngle
property LineWidth : TSize
property Radius : TDistance
property SecondaryRadius : TDistance
property StartAngle : TAngle

## ISch_ErrorMarker (1 unique + inherits ISch_GraphicalObject)
property Text : WideString

## ISch_FontManager (17 members)
property Rotation[AnId: Integer] : Integer
property Italic[AnId: Integer] : Boolean
property Underline[AnId: Integer] : Boolean
property StrikeOut[AnId: Integer] : Boolean
property Size[AnId: Integer] : Integer
property SaveFlag[AnId: Integer] : Boolean
property Bold[AnId: Integer] : Boolean
property FontName[AnId: Integer] : TFontName
property DefaultHorizontalSysFontId : Integer
property DefaultVerticalSysFontId : Integer
property FontCount : Integer
function GetFontHandle(AnId : Integer, const CurrentLogFont : IDispatch, ScreenSize : Integer) : NativeUInt;
function GetFontID(Size : Integer, Rotation : Integer, Underline : Boolean, Italic : Boolean, Bold : Boolean, StrikeOut : Boolean, const FontName : WideString) : Integer;
function GetFontSize(FontID : Integer) : Integer;
procedure GetFontSpec(FontID : Integer, var Size : Integer, var Rotation : Integer, var Underline : Boolean, var Italic : Boolean, var Bold : Boolean, var StrikeOut : Boolean, var FontName : WideString);
function Import_FromUser(var FontID : Integer) : Boolean;
function IsFontVertical(FontID : Integer) : Boolean;

## ISch_FontManager2 (17 members)
function GetFontHandle(AnId : Integer, const CurrentLogFont : IDispatch, ScreenSize : Integer) : NativeUInt;
function GetFontID(Size : Integer, Rotation : Integer, Underline : Boolean, Italic : Boolean, Bold : Boolean, StrikeOut : Boolean, const FontName : WideString) : Integer;
function GetFontSize(FontID : Integer) : Integer;
procedure GetFontSpec(FontID : Integer, var Size : Integer, var Rotation : Integer, var Underline : Boolean, var Italic : Boolean, var Bold : Boolean, var StrikeOut : Boolean, var FontName : WideString);
function GetState_Bold(AnId : Integer) : Boolean;
function GetState_DefaultHorizontalSysFontId : Integer;
function GetState_DefaultVerticalSysFontId : Integer;
function GetState_FontCount : Integer;
function GetState_FontName(AnId : Integer) : WideString;
function GetState_Italic(AnId : Integer) : Boolean;
function GetState_Rotation(AnId : Integer) : Integer;
function GetState_SaveFlag(AnId : Integer) : Boolean;
function GetState_Size(AnId : Integer) : Integer;
function GetState_StrikeOut(AnId : Integer) : Boolean;
function GetState_UnderLine(AnId : Integer) : Boolean;
function Import_FromUser(var FontID : Integer) : Boolean;
function IsFontVertical(FontID : Integer) : Boolean;

## ISch_FunctionalBlock (10 unique + inherits ISch_GraphicalObject)
property Corner : TLocation
property FontID : TFontID
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property Name : WideString
property SchematicFileName : WideString
function SelectSchematicFileName(out AFileName : WideString) : LongBool;
property TextColor : TColor
property Transparent : Boolean

## ISch_FunctionalConnectionLine (23 unique + inherits ISch_GraphicalObject)
property AutoWire : Boolean
procedure ClearAllVertices;
property EditingEndPoint : Boolean
function GetState_DesignatorLocked : Boolean;
function GetState_EndVertex1ConnectedObjectUniqueId : WideString;
function GetState_EndVertex2ConnectedObjectUniqueId : WideString;
function GetState_InstanceLabel : WideString;
function GetState_IsEndVertex1ConnectedToAnyObject : Boolean;
function GetState_IsEndVertex2ConnectedToAnyObject : Boolean;
function GetState_SchComment : ISch_Parameter;
function GetState_SchDesignator : ISch_Designator;
function InsertVertex(Index : Integer) : Boolean;
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
procedure OrderCrossOverArray;
function RemoveVertex(var Index : Integer) : Boolean;
procedure ResetCompilationMaskedSegments;
procedure SetState_DesignatorLocked(AValue : Boolean);
procedure SetState_InstanceLabel(const AValue : WideString);
property Transparent : Boolean
property UnderlineColor : TColor
property VerticesCount : Integer

## ISch_FunctionalTextFrame (13 unique + inherits ISch_GraphicalObject)
property Alignment : THorizontalAlign
property ClipToRect : Boolean
property Corner : TLocation
property FontID : Integer
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property ShowBorder : Boolean
property Text : WideString
property TextColor : TColor
property TextMargin : TCoord
property Transparent : Boolean
property WordWrap : Boolean

## ISCH_GraphicalViewZoomableInterface (3 members)
procedure ClientToSCHLocation(const X : Integer, const Y : Integer, out PX : Integer, out PY : Integer);
function GetState_ZoomFactor : Double;
procedure SCHLocationToClient(const X : Integer, const Y : Integer, out PX : Integer, out PY : Integer);

## ISch_HarnessAssociatedPartsOwner (8 members)
function AddAssociatedPart(const Part : ISch_HarnessComponent) : Boolean;
function GetAssociatedPart(Index : Integer) : ISch_HarnessComponent;
function GetAssociatedPartsCount : Integer;
function GetFirstAssociatedPart : ISch_HarnessComponent;
procedure RemoveAllAssociatedParts;
procedure RemoveAssociatedPart(Index : Integer);
function SetAssociatedPart(Index : Integer, const Part : ISch_HarnessComponent) : Boolean;
function SetFirstAssociatedPart(const Part : ISch_HarnessComponent) : Boolean;

## ISch_HarnessBundle (29 unique + inherits ISch_GraphicalObject)
property AutoWire : Boolean
procedure ClearAllVertices;
property Comment : ISch_Parameter
property Designator : ISch_Designator
property DesignatorLocked : Boolean
property EditingEndPoint : Boolean
function GetState_DrawnLength : Int64;
function GetState_EndVertex1ConnectedConnectionPointUniqueId : WideString;
function GetState_EndVertex2ConnectedConnectionPointUniqueId : WideString;
function GetState_IsEndVertex1ConnectedToAnyConnectionPoint : Boolean;
function GetState_IsEndVertex2ConnectedToAnyConnectionPoint : Boolean;
function GetState_IsHighlighted : Boolean;
function GetState_ShowBreakSymbol : Boolean;
procedure HighlightBundle(AHighlightColorBGR : TColor);
function InsertVertex(Index : Integer) : Boolean;
property IsLengthSetManually : Boolean
property IsSolid : Boolean
property Length : Int64
property LengthParameter : ISch_Parameter
property LineStyle : TLineStyle
property LineWidth : TSize
procedure OrderCrossOverArray;
procedure RemoveHighlight;
function RemoveVertex(var Index : Integer) : Boolean;
procedure ResetCompilationMaskedSegments;
procedure SetState_ShowBreakSymbol(AShowBreakSymbol : Boolean);
property Transparent : Boolean
property UnderlineColor : TColor
property VerticesCount : Integer

## ISch_HarnessBundleContent (3 members)
function GetBundle : ISch_HarnessBundle;
function GetSubLineContent(AIndex : Integer) : ISch_HarnessBundleSubLineContent;
function GetSubLinesContentCount : Integer;

## ISch_HarnessBundleSubLineContent (7 members)
function GetBundle(AIndex : Integer) : ISch_HarnessBundle;
function GetBundlesCount : Integer;
function GetName : WideString;
function GetSubLineData(AIndex : Integer) : ISch_HarnessBundleSubLineData;
function GetSubLinesDataCount : Integer;
function GetSubWireData(AIndex : Integer) : ISch_HarnessWireData;
function GetSubWiresDataCount : Integer;

## ISch_HarnessBundleSubLineData (6 unique + inherits ISch_GraphicalObject)
function BundleToGoThroughAssignment(Index : Integer) : WideString;
function BundleToGoThroughAssignmentsCount : Integer;
function ContainsBundleToGoThroughUniqueId(const ABundleUniqueId : WideString) : Boolean;
function GetState_AutogeneratedLength : Int64;
function GetState_TotalLength : Int64;
property Length : Int64

## ISch_HarnessCable (17 unique + inherits ISch_GraphicalObject)
property Comment : ISch_Parameter
property Corner : TLocation
property Designator : ISch_Designator
property DesignatorLocked : Boolean
function GetState_CombinedConnectedWiresUniqueIdsCount : Integer;
function GetState_CombinedConnectedWireUniqueId(AIndex : Integer) : WideString;
function GetState_ComponentKind : TComponentKind;
function GetState_ConnectedWiresUniqueIdsCount : Integer;
function GetState_ConnectedWireUniqueId(AIndex : Integer) : WideString;
function GetState_IsConnectedToAnyWire : Boolean;
function GetState_SchDescription : ISch_Parameter;
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property Orientation : TRotationBy90
procedure SetState_ComponentKind(AValue : TComponentKind);
property Transparent : Boolean

## ISch_HarnessCableData (12 unique + inherits ISch_GraphicalObject)
function BundleToGoThroughAssignment(Index : Integer) : WideString;
function BundleToGoThroughAssignmentsCount : Integer;
function ContainsBundleToGoThroughUniqueId(const ABundleUniqueId : WideString) : Boolean;
function GetState_AutogeneratedLength : Int64;
function GetState_Comment : WideString;
function GetState_ConnectedWiresUniqueIdsCount : Integer;
function GetState_ConnectedWireUniqueId(AIndex : Integer) : WideString;
function GetState_Description : WideString;
function GetState_Designator : WideString;
function GetState_IsConnectedToAnyWire : Boolean;
function GetState_TotalLength : Int64;
property Length : Int64

## ISch_HarnessCavityPartsOwner (9 members)
function AddItem(ItemType : THarnessCavityPartType, const Item : ISch_HarnessComponent) : Boolean;
function GetCount(ItemType : THarnessCavityPartType) : Integer;
function GetFirst(ItemType : THarnessCavityPartType) : ISch_HarnessComponent;
function GetItem(ItemType : THarnessCavityPartType, Index : Integer) : ISch_HarnessComponent;
procedure Remove(ItemType : THarnessCavityPartType, Index : Integer);
procedure RemoveAll;
procedure RemoveAllOfType(ItemType : THarnessCavityPartType);
function SetFirst(ItemType : THarnessCavityPartType, const Item : ISch_HarnessComponent) : Boolean;
function SetItem(ItemType : THarnessCavityPartType, Index : Integer, const Item : ISch_HarnessComponent) : Boolean;

## ISch_HarnessComponent (157 members)
property Alias[I: Integer] : WideString
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddDisplayMode;
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddImplementationToComponent(AnImplementation : ISch_Implementation);
procedure AddPart;
function AddPin : ISch_Pin;
function AddSchImplementation : ISch_Implementation;
procedure AddSchObject(AObject : ISch_BasicContainer);
function AddSchParameter : ISch_Parameter;
procedure Alias_Add(S : WideString);
procedure Alias_Clear;
procedure Alias_Delete(I : Integer);
procedure Alias_Remove(S : WideString);
property AliasAsText : WideString
property AliasCount : Integer
procedure ApplyChosenComponent(const DestComponent : IDispatch);
property AreaColor : TColor
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
function ChangeComponentLibraryToLibrary(LibraryName : WideString, TableName : WideString, AllowSelectNew : Boolean, Action : TSourceChangeAction) : TSourceChangeAction;
function ChangeComponentLibraryToVault(AVaultGUID : WideString, AllowSelectNew : Boolean, Action : TSourceChangeAction) : TSourceChangeAction;
function ChooseFromLibrary : IDispatch;
function ChooseFromVault : IDispatch;
property Color : TColor
property Comment : ISch_Parameter
property CompilationMasked : Boolean
property ComponentDescription : WideString
property ComponentKind : TComponentKind
property ConfigurationParameters : WideString
property ConfiguratorName : WideString
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
property CurrentPartID : Integer
property DatabaseLibraryName : WideString
property DatabaseTableName : WideString
procedure DeleteAll;
procedure DeleteDisplayMode(AMode : Byte);
procedure DeletePart(APartId : Integer);
property Designator : ISch_Designator
property DesignatorLocked : Boolean
property DesignItemId : WideString
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property DisplayFieldNames : Boolean
property DisplayMode : TDisplayMode
property DisplayModeCount : Integer
function EditPins : Boolean;
function EditPinsWithSelection(ASelectedPins : ISafeInterfaceList) : Boolean;
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function FullPartDesignator(APartId : Integer) : WideString;
property GenericComponentTemplateGUID : WideString
function GetAllPinCount : Integer;
function GetEmptyImplementation : ISch_Implementation;
function GetGraphicalHash : WideString;
function GetHash : WideString;
function GetState_CustomDisplayModeName(ADisplayMode : Byte) : WideString;
function GetState_DatabaseLibraryKeys(ADelimiter : WideString) : WideString;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_IsSubPartImplemented(ASubPartId : Integer) : Boolean;
function GetState_IsSubPartImplementedForDisplayMode(ASubPartId : Integer, ADisplayMode : Integer) : Boolean;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
property Handle : WideString
function HasConfiguredPinMapping : Boolean;
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
function InLibrary : Boolean;
function InSheet : Boolean;
function IsGenericComponent : Boolean;
function IsIntegratedComponent : Boolean;
property IsMirrored : Boolean
function IsMultiPartComponent : Boolean;
property IsUnmanaged : Boolean
property IsUserConfigurable : Boolean
property ItemGUID : WideString
procedure JumpTo(APin : ISch_Pin);
property LibIdentifierKind : TLibIdentifierKind
property LibraryIdentifier : WideString
property LibraryPath : WideString
property LibReference : WideString
property LiveHighlightValue : WideString
property Location : TLocation
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
property ObjectId : TObjectId
procedure OffsetParameters_Default;
property Orientation : TRotationBy90
property OverideColors : Boolean
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
property PartCount : Integer
property PartIdLocked : Boolean
function PartIdString(APartId : Integer) : WideString;
property PinColor : TColor
property PinsMoveable : Boolean
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure RemovePins(APins : ISafeInterfaceList);
procedure RemoveSchImplementation(AnImplementation : ISch_Implementation);
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetAllSchParametersPosition;
procedure ResetErrorFields;
property RevisionDetails : WideString
property RevisionGUID : WideString
property RevisionHRID : WideString
property RevisionState : WideString
property RevisionStatus : WideString
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
procedure SaveToFile(VFSAddress : WideString);
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property SelectedInLibrary : Boolean
property Selection : Boolean
procedure SetState_CustomDisplayModeName(ADisplayMode : Byte, AValue : WideString);
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_FilePosition(AValue : Integer);
procedure SetState_OrientationWithoutRotating(AValue : TRotationBy90);
procedure SetState_xSizeySize;
property SheetPartFileName : WideString
property ShowHiddenFields : Boolean
property ShowHiddenPins : Boolean
procedure ShowInVaultExplorer;
procedure ShowLibraryInExplorer;
property SourceLibraryName : WideString
function SuggestedSearchKeywords : WideString;
property SymbolItemGUID : WideString
property SymbolReference : WideString
property SymbolRevisionGUID : WideString
property SymbolVaultGUID : WideString
property TargetFileName : WideString
property UniqueId : WideString
procedure UpdatePart_PostProcess;
procedure UpdatePart_PreProcess;
procedure UpdatePrimitivesAccessibility;
property UseDBTableName : Boolean
property UseLibraryName : Boolean
procedure ValidateImplementationsCurrentState;
procedure ValidateLink;
property VariantOption : IVariantOption
property VaultGUID : WideString
property VaultHRID : WideString

## ISch_HarnessConnector (16 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
function CreateEntry : ISch_HarnessEntry;
procedure DeleteEntry(const AEntry : ISch_HarnessEntry);
function GetState_Side : TLeftRightSide;
property HarnessConnectorType : ISch_HarnessConnectorType
property HarnessType : WideString
property HideHarnessConnectorType : Boolean
function Import_FromUser_Parameters : Boolean;
property LineWidth : TSize
property MasterEntryLocation : TLocation
property PrimaryConnectionPosition : TCoord
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure ResetAllSchParametersPosition;
procedure SetState_Side(AValue : TLeftRightSide);
property XSize : TCoord
property YSize : TCoord

## ISch_HarnessConnectorType (14 unique + inherits ISch_GraphicalObject)
property Autoposition : Boolean
property CalculatedValueString : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_SimpleCalculatedString : WideString;
property IsHidden : Boolean
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property Text : WideString
property TextHorzAnchor : TTextHorzAnchor
property TextVertAnchor : TTextVertAnchor

## ISch_HarnessDesignatorAndCommentOwner (3 members)
property DesignatorLocked : Boolean
function GetState_SchComment : ISch_Parameter;
function GetState_SchDesignator : ISch_Designator;

## ISch_HarnessDocument (139 members)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
property BorderOn : Boolean
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
function BoundingRectangle_Selected : IDispatch;
function ChooseLocationInteractively(const ALocation : IDispatch, Prompt : WideString) : Boolean;
function ChooseRectangleInteractively(const ARect : IDispatch, Prompt1 : WideString, Prompt2 : WideString) : Boolean;
property Color : TColor
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
function CountContextMenuObjects(AObjectSet : TObjectSet) : Integer;
function CountContextMenuObjectsExceptSchematicBlockObjects(AObjectSet : TObjectSet) : Integer;
function CreateFilteredHitTest(const ATestMode : THitTestMode, const ALocation : IDispatch, const AObjectSet : TObjectSet, const AParentObjectSet : TObjectSet, const AIncludePins : Boolean, const ACrossSelect : Boolean) : ISch_HitTest;
function CreateHitTest(ATestMode : THitTestMode, const ALocation : IDispatch) : ISch_HitTest;
procedure CreateLibraryFromProject(AddLibToProject : Boolean, FileName : WideString, RunQuiet : Boolean);
function CreateUseHandle(const AGraphicalObject : ISch_GraphicalObject, const AView : IInterface, const ALocation : IDispatch) : ISch_HitTest;
property CustomMarginWidth : TCoord
property CustomSheetStyle : WideString
property CustomX : TCoord
property CustomXZones : TCoord
property CustomY : TCoord
property CustomYZones : TCoord
procedure DeleteAll;
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property DisplayUnit : TUnit
property DocumentBorderStyle : TSheetDocumentBorderStyle
procedure DocumentModifiedChanged(AChanged : Boolean);
property DocumentName : WideString
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function GenerateUniqueID : WideString;
function GetDialogManager : ISch_DialogManager;
function GetHash : WideString;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
function Graphical_VirtualRectangle : IDispatch;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
function GridCoordinateClosest(ACoord : Integer) : Integer;
function GridCoordinateUp(ACoord : Integer) : Integer;
property Handle : WideString
function HasPausedProcess : Boolean;
function HasServerDocument : Boolean;
property HotspotGridOn : Boolean
property HotspotGridSize : TCoord
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
property InternalTolerance : TCoord
function IsInEditorView : Boolean;
property IsLibrary : Boolean
property ItemRevisionGUID : WideString
property LengthUnit : THarnessLengthUnit
property LiveHighlightValue : WideString
property LoadFormat : WideString
property Location : TLocation
procedure LockViewUpdate;
property MinorVersion : Integer
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
procedure Notify_FullUpdate;
property ObjectId : TObjectId
function ObjectReferenceZone(AObject : ISch_BasicContainer) : WideString;
procedure OptimizeUseOfPolylines;
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
procedure PlaceSchComponent(ALibraryPath : WideString, ALibRef : WideString, var SchObject : ISch_Component);
function PopupMenuHitTest : ISch_HitTest;
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
property PropsRevisionGUID : WideString
property PropsVaultGUID : WideString
procedure RecreateHandles;
procedure RedrawToDC(DC : HDC, PrintKind : Integer, PrintWhat : Integer);
procedure RedrawToDCEx(DC : HDC, PrintKind : Integer, PrintWhat : Integer, ExportToPDF : Boolean);
property ReferenceZonesOn : Boolean
property ReferenceZoneStyle : TSheetReferenceZoneStyle
procedure RegisterSchObjectInContainer(AObject : ISch_BasicContainer);
property ReleaseItemGUID : WideString
property ReleaseVaultGUID : WideString
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetAllSchParametersPosition;
procedure ResetErrorFields;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
property SchDocID : Integer
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetPreferencesInfo(const AVaultGUID : WideString, const ARevisionGUID : WideString);
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_xSizeySize;
procedure SetTemplateInfo(const AVaultGUID : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString, const AVaultHRID : WideString, const ARevisionHRID : WideString);
property SheetMarginWidth : TCoord
property SheetNumberSpaceSize : Integer
property SheetSizeX : TCoord
property SheetSizeY : TCoord
property SheetStyle : TSheetStyle
property SheetZonesX : Integer
property SheetZonesY : Integer
property ShowTemplateGraphics : Boolean
property SnapGridOn : Boolean
property SnapGridSize : TCoord
property SystemFont : TFontID
property TemplateFileName : WideString
property TemplateItemGUID : WideString
property TemplateRevisionGUID : WideString
property TemplateRevisionHRID : WideString
property TemplateVaultGUID : WideString
property TemplateVaultHRID : WideString
property TitleBlockOn : Boolean
property UniqueId : WideString
property UnitSystem : TUnitSystem
procedure UnLockViewUpdate;
procedure UnregisterAndFreeAllConnectionLines;
procedure UnRegisterSchObjectFromContainer(AObject : ISch_BasicContainer);
procedure UpdateDisplayForCurrentSheet;
procedure UpdateDocumentProperties;
function UpdatePartsToLatestRevision(ATarget : TUpdatePartTarget, const AContextObject : IInterface, ANeedConfirm : Boolean, AClearMessages : Boolean, out AUpdatedCount : Integer, out AUpToDateCount : Integer, out AErrorCount : Integer) : Boolean;
property UseCustomSheet : Boolean
property VisibleGridOn : Boolean
property VisibleGridSize : TCoord
property WorkspaceOrientation : TSheetOrientation

## ISCH_HarnessDocumentInterface (2 members)
function GetLocalComponentPCBLibraryPath(const ASourceLibraryName : WideString, const ADatabaseTableName : WideString, const ADesignItemID : WideString) : WideString;
function GetManagedComponentPCBLibraryPath(const AVaultGUID : WideString, const ARevisionGUID : WideString) : WideString;

## ISch_HarnessEntry (10 unique + inherits ISch_GraphicalObject)
property DistanceFromTop : TCoord
property HarnessType : WideString
function IsVertical : Boolean;
property Name : WideString
property OverrideDisplayString : WideString
property OwnerHarnessConnector : ISch_HarnessConnector
property Side : TLeftRightSide
property TextColor : TColor
property TextFontID : TFontID
property TextStyle : TBusTextStyle

## ISch_HarnessLayoutConnectionPoint (22 unique + inherits ISch_GraphicalObject)
function AddConnector(const ConnectorUniqueId : WideString) : ISch_HarnessLayoutConnectionPointConnector;
property BorderColor : TColor
property CalculatedValueString : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_ConnectedBundlesCount : Integer;
function GetState_ConnectedBundlesUniqueIdsCount : Integer;
function GetState_ConnectedBundleUniqueId(AIndex : Integer) : WideString;
function GetState_ConnectedSchBundle(AIndex : Integer) : ISch_HarnessBundle;
function GetState_Connector(Index : Integer) : ISch_HarnessLayoutConnectionPointConnector;
function GetState_ConnectorsCount : Integer;
function GetState_IsConnectedToAnyBundle : Boolean;
function GetState_SimpleCalculatedString : WideString;
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
procedure RemoveConnector(const ConnectorUniqueId : WideString);
property ShowName : Boolean
property Style : THarnessLayoutConnectionPointStyle
property Text : WideString

## ISch_HarnessLayoutConnectionPointConnector (5 members)
property PinId[AIndex: Integer] : WideString
procedure AddPin(const APinId : WideString);
property PinsCount : Integer
procedure RemovePin(const APinId : WideString);
property UniqueId : WideString

## ISch_HarnessLayoutCovering (24 unique + inherits ISch_GraphicalObject)
function AddBundleItem(const ABundle : ISch_HarnessBundle) : ICoveredItem;
function AddComponentItem(const AComponent : ISch_HarnessComponent, const AFirstPin : WideString, const ALastPin : WideString) : ICoveredItem;
function AddConnectionPointItem(const AConnectionPoint : ISch_HarnessLayoutConnectionPoint) : ICoveredItem;
procedure AttachToNewBundle(const ABundle : ISch_HarnessBundle, const AHitLocation : IDispatch);
procedure BeginUpdate;
property BorderSize : TSize
property Comment : ISch_Parameter
property Designator : ISch_Designator
property DesignatorLocked : Boolean
procedure EndUpdate;
function GetState_Brush : THarnessBrush;
function GetState_ComponentKind : TComponentKind;
function GetState_PhysicalEndPointDistance : Int64;
function GetState_PhysicalLength : Int64;
function GetState_PhysicalStartPointDistance : Int64;
property ItemsCount : Integer
procedure RemoveAllItems;
procedure RemoveItem(AIndex : Integer);
procedure SetState_Brush(AValue : THarnessBrush);
procedure SetState_ComponentKind(AValue : TComponentKind);
procedure SetState_PhysicalEndPointDistance(const AValue : Int64);
procedure SetState_PhysicalStartPointDistance(const AValue : Int64);
property Thickness : Byte
property Transparent : Boolean

## ISch_HarnessLayoutDrawing (140 members)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
property BorderOn : Boolean
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
function BoundingRectangle_Selected : IDispatch;
function ChooseLocationInteractively(const ALocation : IDispatch, Prompt : WideString) : Boolean;
function ChooseRectangleInteractively(const ARect : IDispatch, Prompt1 : WideString, Prompt2 : WideString) : Boolean;
property Color : TColor
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
function CountContextMenuObjects(AObjectSet : TObjectSet) : Integer;
function CountContextMenuObjectsExceptSchematicBlockObjects(AObjectSet : TObjectSet) : Integer;
function CreateFilteredHitTest(const ATestMode : THitTestMode, const ALocation : IDispatch, const AObjectSet : TObjectSet, const AParentObjectSet : TObjectSet, const AIncludePins : Boolean, const ACrossSelect : Boolean) : ISch_HitTest;
function CreateHitTest(ATestMode : THitTestMode, const ALocation : IDispatch) : ISch_HitTest;
procedure CreateLibraryFromProject(AddLibToProject : Boolean, FileName : WideString, RunQuiet : Boolean);
function CreateUseHandle(const AGraphicalObject : ISch_GraphicalObject, const AView : IInterface, const ALocation : IDispatch) : ISch_HitTest;
property CustomMarginWidth : TCoord
property CustomSheetStyle : WideString
property CustomX : TCoord
property CustomXZones : TCoord
property CustomY : TCoord
property CustomYZones : TCoord
procedure DeleteAll;
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property DisplayUnit : TUnit
property DocumentBorderStyle : TSheetDocumentBorderStyle
procedure DocumentModifiedChanged(AChanged : Boolean);
property DocumentName : WideString
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function GenerateUniqueID : WideString;
function GetBundleContent(const ABundle : ISch_HarnessBundle) : ISch_HarnessBundleContent;
function GetDialogManager : ISch_DialogManager;
function GetHash : WideString;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
function Graphical_VirtualRectangle : IDispatch;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
function GridCoordinateClosest(ACoord : Integer) : Integer;
function GridCoordinateUp(ACoord : Integer) : Integer;
property Handle : WideString
function HasPausedProcess : Boolean;
function HasServerDocument : Boolean;
property HotspotGridOn : Boolean
property HotspotGridSize : TCoord
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
property InternalTolerance : TCoord
function IsInEditorView : Boolean;
property IsLibrary : Boolean
property ItemRevisionGUID : WideString
property LengthUnit : THarnessLengthUnit
property LiveHighlightValue : WideString
property LoadFormat : WideString
property Location : TLocation
procedure LockViewUpdate;
property MinorVersion : Integer
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
procedure Notify_FullUpdate;
property ObjectId : TObjectId
function ObjectReferenceZone(AObject : ISch_BasicContainer) : WideString;
procedure OptimizeUseOfPolylines;
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
procedure PlaceSchComponent(ALibraryPath : WideString, ALibRef : WideString, var SchObject : ISch_Component);
function PopupMenuHitTest : ISch_HitTest;
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
property PropsRevisionGUID : WideString
property PropsVaultGUID : WideString
procedure RecreateHandles;
procedure RedrawToDC(DC : HDC, PrintKind : Integer, PrintWhat : Integer);
procedure RedrawToDCEx(DC : HDC, PrintKind : Integer, PrintWhat : Integer, ExportToPDF : Boolean);
property ReferenceZonesOn : Boolean
property ReferenceZoneStyle : TSheetReferenceZoneStyle
procedure RegisterSchObjectInContainer(AObject : ISch_BasicContainer);
property ReleaseItemGUID : WideString
property ReleaseVaultGUID : WideString
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetAllSchParametersPosition;
procedure ResetErrorFields;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
property SchDocID : Integer
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetPreferencesInfo(const AVaultGUID : WideString, const ARevisionGUID : WideString);
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_xSizeySize;
procedure SetTemplateInfo(const AVaultGUID : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString, const AVaultHRID : WideString, const ARevisionHRID : WideString);
property SheetMarginWidth : TCoord
property SheetNumberSpaceSize : Integer
property SheetSizeX : TCoord
property SheetSizeY : TCoord
property SheetStyle : TSheetStyle
property SheetZonesX : Integer
property SheetZonesY : Integer
property ShowTemplateGraphics : Boolean
property SnapGridOn : Boolean
property SnapGridSize : TCoord
property SystemFont : TFontID
property TemplateFileName : WideString
property TemplateItemGUID : WideString
property TemplateRevisionGUID : WideString
property TemplateRevisionHRID : WideString
property TemplateVaultGUID : WideString
property TemplateVaultHRID : WideString
property TitleBlockOn : Boolean
property UniqueId : WideString
property UnitSystem : TUnitSystem
procedure UnLockViewUpdate;
procedure UnregisterAndFreeAllConnectionLines;
procedure UnRegisterSchObjectFromContainer(AObject : ISch_BasicContainer);
procedure UpdateDisplayForCurrentSheet;
procedure UpdateDocumentProperties;
function UpdatePartsToLatestRevision(ATarget : TUpdatePartTarget, const AContextObject : IInterface, ANeedConfirm : Boolean, AClearMessages : Boolean, out AUpdatedCount : Integer, out AUpToDateCount : Integer, out AErrorCount : Integer) : Boolean;
property UseCustomSheet : Boolean
property VisibleGridOn : Boolean
property VisibleGridSize : TCoord
property WorkspaceOrientation : TSheetOrientation

## ISch_HarnessLayoutLabel (19 unique + inherits ISch_GraphicalObject)
property Alignment : THorizontalAlign
property CalculatedValueString : WideString
property Comment : ISch_Parameter
property Designator : ISch_Designator
property DesignatorLocked : Boolean
property DisplayString : WideString
property FontID : Integer
property FontID : TFontID
property Formula : WideString
function GetState_ComponentKind : TComponentKind;
function GetState_SimpleCalculatedString : WideString;
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
procedure SetState_ComponentKind(AValue : TComponentKind);
property ShowOnlyFirstLine : Boolean
property Text : WideString
property TextColor : TColor

## ISch_HarnessLibrary (172 members)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchComponent(const AComponent : ISch_Component);
procedure AddSchComponentWithoutNotification(const AComponent : ISch_Component);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AlwaysShowCD : Boolean
property AreaColor : TColor
property BorderOn : Boolean
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
function BoundingRectangle_Selected : IDispatch;
function ChooseLocationInteractively(const ALocation : IDispatch, Prompt : WideString) : Boolean;
function ChooseRectangleInteractively(const ARect : IDispatch, Prompt1 : WideString, Prompt2 : WideString) : Boolean;
property Color : TColor
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
function CountContextMenuObjects(AObjectSet : TObjectSet) : Integer;
function CountContextMenuObjectsExceptSchematicBlockObjects(AObjectSet : TObjectSet) : Integer;
function CreateFilteredHitTest(const ATestMode : THitTestMode, const ALocation : IDispatch, const AObjectSet : TObjectSet, const AParentObjectSet : TObjectSet, const AIncludePins : Boolean, const ACrossSelect : Boolean) : ISch_HitTest;
function CreateHitTest(ATestMode : THitTestMode, const ALocation : IDispatch) : ISch_HitTest;
procedure CreateLibraryFromProject(AddLibToProject : Boolean, FileName : WideString, RunQuiet : Boolean);
function CreateLibraryValidator : ISch_LibraryValidator;
function CreateUseHandle(const AGraphicalObject : ISch_GraphicalObject, const AView : IInterface, const ALocation : IDispatch) : ISch_HitTest;
property CurrentSchComponent : ISch_Component
property CustomMarginWidth : TCoord
property CustomSheetStyle : WideString
property CustomX : TCoord
property CustomXZones : TCoord
property CustomY : TCoord
property CustomYZones : TCoord
procedure DeleteAll;
property Description : WideString
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property DisplayUnit : TUnit
property DocumentBorderStyle : TSheetDocumentBorderStyle
procedure DocumentModifiedChanged(AChanged : Boolean);
property DocumentName : WideString
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
property FolderGUID : WideString
procedure FreeAllContainedObjects;
function GenerateUniqueID : WideString;
function GetDialogManager : ISch_DialogManager;
function GetHash : WideString;
function GetState_CurrentSchComponentDisplayMode : Byte;
function GetState_CurrentSchComponentLibReference : WideString;
function GetState_CurrentSchComponentPartId : Integer;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_SchComponentByLibRef(ALibRef : WideString) : ISch_Component;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
function Graphical_VirtualRectangle : IDispatch;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
function GridCoordinateClosest(ACoord : Integer) : Integer;
function GridCoordinateUp(ACoord : Integer) : Integer;
property Handle : WideString
function HasPausedProcess : Boolean;
function HasServerDocument : Boolean;
property HotspotGridOn : Boolean
property HotspotGridSize : TCoord
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
property InternalTolerance : TCoord
function IsInEditorView : Boolean;
property IsLibrary : Boolean
property IsSimpleDesignMode : Boolean
property IsSingleComponentMode : Boolean
property ItemRevisionGUID : WideString
function LibIsEmpty : Boolean;
property LifeCycleDefinitionGUID : WideString
function LinkDocumentToReleaseVault(Parameters : WideString, var ErrorMsg : WideString) : Boolean;
property LiveHighlightValue : WideString
property LoadFormat : WideString
procedure LoadFromFile(const VFSAddress : WideString);
property Location : TLocation
procedure LockViewUpdate;
property MinorVersion : Integer
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
procedure Notify_FullUpdate;
property ObjectId : TObjectId
function ObjectReferenceZone(AObject : ISch_BasicContainer) : WideString;
procedure OptimizeUseOfPolylines;
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
procedure PlaceSchComponent(ALibraryPath : WideString, ALibRef : WideString, var SchObject : ISch_Component);
function PopupMenuHitTest : ISch_HitTest;
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
property PropsRevisionGUID : WideString
property PropsVaultGUID : WideString
procedure RecreateHandles;
procedure RedrawToDC(DC : HDC, PrintKind : Integer, PrintWhat : Integer);
procedure RedrawToDCEx(DC : HDC, PrintKind : Integer, PrintWhat : Integer, ExportToPDF : Boolean);
property ReferenceZonesOn : Boolean
property ReferenceZoneStyle : TSheetReferenceZoneStyle
procedure RegisterSchObjectInContainer(AObject : ISch_BasicContainer);
function ReleaseDocument(Parameters : WideString, var ErrorMsg : WideString) : Boolean;
property ReleaseItemGUID : WideString
property ReleaseVaultGUID : WideString
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure RemoveSchComponent(const AComponent : ISch_Component);
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetAllSchParametersPosition;
procedure ResetErrorFields;
property RevisionNamingSchemeGUID : WideString
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
procedure SaveToFile(const VFSAddress : WideString);
function Sch_LibraryRuleChecker_Create : ISch_LibraryRuleChecker;
procedure Sch_LibraryRuleChecker_Destroy(var ARuleChecker : ISch_LibraryRuleChecker);
property SchDocID : Integer
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
function SchLibIterator_Create : ISch_Iterator;
property Selection : Boolean
procedure SetPreferencesInfo(const AVaultGUID : WideString, const ARevisionGUID : WideString);
procedure SetState_CurrentSchComponentAddDisplayMode;
procedure SetState_CurrentSchComponentAddPart;
procedure SetState_CurrentSchComponentDisplayMode(ADisplayMode : Byte);
procedure SetState_CurrentSchComponentLibReference(const AValue : WideString);
procedure SetState_CurrentSchComponentPartId(APartId : Integer);
procedure SetState_CurrentSchComponentRemoveDisplayMode;
procedure SetState_CurrentSchComponentRemovePart;
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_xSizeySize;
procedure SetTemplateInfo(const AVaultGUID : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString, const AVaultHRID : WideString, const ARevisionHRID : WideString);
property SheetMarginWidth : TCoord
property SheetNumberSpaceSize : Integer
property SheetSizeX : TCoord
property SheetSizeY : TCoord
property SheetStyle : TSheetStyle
property SheetZonesX : Integer
property SheetZonesY : Integer
property ShowHiddenPins : Boolean
property ShowTemplateGraphics : Boolean
property SnapGridOn : Boolean
property SnapGridSize : TCoord
property SystemFont : TFontID
property TemplateFileName : WideString
property TemplateItemGUID : WideString
property TemplateRevisionGUID : WideString
property TemplateRevisionHRID : WideString
property TemplateVaultGUID : WideString
property TemplateVaultHRID : WideString
property TitleBlockOn : Boolean
procedure TransferComponentsPrimitivesBackFromEditor;
procedure TransferComponentsPrimitivesToEditor;
property UniqueId : WideString
property UnitSystem : TUnitSystem
procedure UnLockViewUpdate;
procedure UnregisterAndFreeAllConnectionLines;
procedure UnRegisterSchObjectFromContainer(AObject : ISch_BasicContainer);
procedure UpdateDisplayForCurrentSheet;
procedure UpdateDocumentProperties;
function UpdatePartsToLatestRevision(ATarget : TUpdatePartTarget, const AContextObject : IInterface, ANeedConfirm : Boolean, AClearMessages : Boolean, out AUpdatedCount : Integer, out AUpToDateCount : Integer, out AErrorCount : Integer) : Boolean;
property UseCustomSheet : Boolean
property VisibleGridOn : Boolean
property VisibleGridSize : TCoord
property WorkspaceOrientation : TSheetOrientation

## ISch_HarnessLogicalSignal (11 unique + inherits ISch_GraphicalObject)
property Corner : TLocation
function GetState_Connection1Comp : WideString;
function GetState_Connection1Pin : WideString;
function GetState_Connection2Comp : WideString;
function GetState_Connection2Pin : WideString;
function GetState_FontId : Integer;
function GetState_IsFullyConnected : Boolean;
function GetState_Name : WideString;
function GetState_Visible : Boolean;
property LineStyle : TLineStyle
property LineWidth : TSize

## ISch_HarnessNoConnect (17 unique + inherits ISch_GraphicalObject)
property CalculatedValueString : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_ConnectedWiresUniqueIdsCount : Integer;
function GetState_ConnectedWireUniqueId(AIndex : Integer) : WideString;
function GetState_IsConnectedToAnyWire : Boolean;
function GetState_SimpleCalculatedString : WideString;
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property PullOffLength : Int64
property ShowName : Boolean
property StripLength : Int64
property Style : TNoERCSymbol
property Text : WideString

## ISch_HarnessNoConnectData (4 unique + inherits ISch_GraphicalObject)
property Designator : WideString
function GetState_ConnectedWiresUniqueIdsCount : Integer;
function GetState_ConnectedWireUniqueId(AIndex : Integer) : WideString;
function GetState_IsConnectedToAnyWire : Boolean;

## ISch_HarnessPin (105 members)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
property Color : TColor
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
property DefaultValue : WideString
procedure DeleteAll;
property Description : WideString
property Designator : WideString
property Designator_CustomColor : TColor
property Designator_CustomFontID : TFontID
property Designator_CustomPosition_Margin : TCoord
property Designator_CustomPosition_RotationAnchor : TPinTextRotationAnchor
property Designator_CustomPosition_RotationRelative : TRotationBy90
property Designator_CustomPosition_VerticalMargin : TCoord
property Designator_FontMode : TPinItemMode
property Designator_PositionMode : TPinItemMode
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property Electrical : TPinElectrical
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
property FormalType : TStdLogicState
procedure FreeAllContainedObjects;
function FullDesignator : WideString;
function GetHash : WideString;
function GetState_ConnectedWiresUniqueIdsCount : Integer;
function GetState_ConnectedWireUniqueId(AIndex : Integer) : WideString;
function GetState_DescriptionString : WideString;
function GetState_Designator_CustomPosition_HorizontalMargin : Integer;
function GetState_IdentifierString : WideString;
function GetState_IsConnectedToAnyWire : Boolean;
function GetState_Name_CustomPosition_HorizontalMargin : Integer;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
property Handle : WideString
property HiddenNetName : WideString
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
property IsHidden : Boolean
property LiveHighlightValue : WideString
property Location : TLocation
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
property Name : WideString
property Name_CustomColor : TColor
property Name_CustomFontID : TFontID
property Name_CustomPosition_Margin : TCoord
property Name_CustomPosition_RotationAnchor : TPinTextRotationAnchor
property Name_CustomPosition_RotationRelative : TRotationBy90
property Name_CustomPosition_VerticalMargin : TCoord
property Name_FontMode : TPinItemMode
property Name_PositionMode : TPinItemMode
property ObjectId : TObjectId
property Orientation : TRotationBy90
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
function OwnerSchComponent : ISch_Component;
property PinLength : TCoord
property PinPackageLength : TCoord
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
property PropagationDelay : Double
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetAllSchParametersPosition;
procedure ResetErrorFields;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_Designator_CustomPosition_HorizontalMargin(AValue : Integer);
procedure SetState_FunctionsFromName;
procedure SetState_Name_CustomPosition_HorizontalMargin(AValue : Integer);
procedure SetState_xSizeySize;
property ShowDesignator : Boolean
property ShowName : Boolean
property SwapId_Pair : WideString
property SwapId_Part : WideString
property SwapId_PartPin : WideString
property SwapId_Pin : WideString
property Symbol_Inner : TIeeeSymbol
property Symbol_InnerEdge : TIeeeSymbol
property Symbol_LineWidth : TSize
property Symbol_Outer : TIeeeSymbol
property Symbol_OuterEdge : TIeeeSymbol
property UniqueId : WideString
property Width : Integer

## ISch_HarnessShield (16 unique + inherits ISch_GraphicalObject)
property Corner : TLocation
function GetState_ComponentKind : TComponentKind;
function GetState_ConnectedPinWiresUniqueIdsCount : Integer;
function GetState_ConnectedPinWireUniqueId(AIndex : Integer) : WideString;
function GetState_ConnectedWiresUniqueIdsCount : Integer;
function GetState_ConnectedWireUniqueId(AIndex : Integer) : WideString;
function GetState_IsConnectedToAnyPinWire : Boolean;
function GetState_IsConnectedToAnyWire : Boolean;
function GetState_ShieldPinLocation : IDispatch;
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property Orientation : TRotationBy90
procedure SetState_ComponentKind(AValue : TComponentKind);
property Style : THarnessShieldStyle
property Transparent : Boolean

## ISch_HarnessShieldData (4 unique + inherits ISch_GraphicalObject)
function GetState_ConnectedWiresUniqueIdsCount : Integer;
function GetState_ConnectedWireUniqueId(AIndex : Integer) : WideString;
function GetState_Designator : WideString;
function GetState_IsConnectedToAnyWire : Boolean;

## ISch_HarnessSplice (19 unique + inherits ISch_GraphicalObject)
property BorderColor : TColor
property CalculatedValueString : WideString
property Designator : ISch_Designator
property DesignatorLocked : Boolean
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_ConnectedInlineWireUniqueId : WideString;
function GetState_ConnectedWiresUniqueIdsCount : Integer;
function GetState_ConnectedWireUniqueId(AIndex : Integer) : WideString;
function GetState_IsConnectedToAnyInlineWire : Boolean;
function GetState_IsConnectedToAnyWire : Boolean;
function GetState_SimpleCalculatedString : WideString;
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property Style : THarnessSpliceStyle
property Text : WideString

## ISch_HarnessSpliceData (7 unique + inherits ISch_GraphicalObject)
property Designator : WideString
function GetState_ConnectedInlineWireUniqueId : WideString;
function GetState_ConnectedWiresUniqueIdsCount : Integer;
function GetState_ConnectedWireUniqueId(AIndex : Integer) : WideString;
function GetState_IsConnectedToAnyInlineWire : Boolean;
function GetState_IsConnectedToAnyWire : Boolean;
property Style : THarnessSpliceStyle

## ISch_HarnessTwist (9 unique + inherits ISch_GraphicalObject)
property Corner : TLocation
function GetState_ConnectedWiresUniqueIdsCount : Integer;
function GetState_ConnectedWireUniqueId(AIndex : Integer) : WideString;
function GetState_IsConnectedToAnyWire : Boolean;
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property Orientation : TRotationBy90
property Transparent : Boolean

## ISch_HarnessTwistData (4 unique + inherits ISch_GraphicalObject)
function GetState_ConnectedWiresUniqueIdsCount : Integer;
function GetState_ConnectedWireUniqueId(AIndex : Integer) : WideString;
function GetState_Designator : WideString;
function GetState_IsConnectedToAnyWire : Boolean;

## ISch_HarnessWire (108 members)
property CompilationMaskedSegment[AIndex: Integer] : Boolean
property Vertex[I: Integer] : TLocation
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
property AutoWire : Boolean
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
procedure ClearAllVertices;
property Color : TColor
property Comment : ISch_Parameter
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
procedure DeleteAll;
property Description : ISch_Parameter
property Designator : ISch_Designator
property DesignatorLocked : Boolean
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property EditingEndPoint : Boolean
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function GetHash : WideString;
function GetState_BorderColor : TColor;
function GetState_BorderColorName : WideString;
function GetState_ComponentKind : TComponentKind;
function GetState_ConnectedCablesUniqueIdsCount : Integer;
function GetState_ConnectedCableUniqueId(AIndex : Integer) : WideString;
function GetState_ConnectedInlineSplicesUniqueIdsCount : Integer;
function GetState_ConnectedInlineSpliceUniqueId(AIndex : Integer) : WideString;
function GetState_ConnectedShieldsUniqueIdsCount : Integer;
function GetState_ConnectedShieldUniqueId(AIndex : Integer) : WideString;
function GetState_ConnectedTwistsUniqueIdsCount : Integer;
function GetState_ConnectedTwistUniqueId(AIndex : Integer) : WideString;
function GetState_ConnectedWireLabelsUniqueIdsCount : Integer;
function GetState_ConnectedWireLabelUniqueId(AIndex : Integer) : WideString;
function GetState_DescriptionString : WideString;
function GetState_EndVertex1ConnectedObjectUniqueId : WideString;
function GetState_EndVertex2ConnectedObjectUniqueId : WideString;
function GetState_IdentifierString : WideString;
function GetState_IsConnectedToAnyCable : Boolean;
function GetState_IsConnectedToAnyInlineSplice : Boolean;
function GetState_IsConnectedToAnyShield : Boolean;
function GetState_IsConnectedToAnyTwist : Boolean;
function GetState_IsConnectedToAnyWireLabel : Boolean;
function GetState_IsEndVertex1ConnectedToAnyObject : Boolean;
function GetState_IsEndVertex2ConnectedToAnyObject : Boolean;
function GetState_IsHighlighted : Boolean;
function GetState_PrimaryColorName : WideString;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_SecondaryColor : TColor;
function GetState_SecondaryColorName : WideString;
function GetState_TertiaryColor : TColor;
function GetState_TertiaryColorName : WideString;
function GetState_WiringDiagramOriginUniqueId : WideString;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
property Handle : WideString
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function InsertVertex(Index : Integer) : Boolean;
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property LiveHighlightValue : WideString
property Location : TLocation
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
property ObjectId : TObjectId
procedure OrderCrossOverArray;
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function RemoveVertex(var Index : Integer) : Boolean;
function Replicate : ISch_BasicContainer;
procedure ResetCompilationMaskedSegments;
procedure ResetErrorFields;
procedure RestoreProperties;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
procedure SaveProperties;
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetState_BorderColor(AColor : TColor);
procedure SetState_BorderColorName(AColorName : WideString);
procedure SetState_ComponentKind(AValue : TComponentKind);
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_PrimaryColorName(AColorName : WideString);
procedure SetState_SecondaryColor(AColor : TColor);
procedure SetState_SecondaryColorName(AColorName : WideString);
procedure SetState_TertiaryColor(AColor : TColor);
procedure SetState_TertiaryColorName(AColorName : WideString);
procedure SetState_xSizeySize;
property Transparent : Boolean
property UnderlineColor : TColor
property UniqueId : WideString
property VerticesCount : Integer

## ISch_HarnessWireBreak (38 unique + inherits ISch_GraphicalObject)
property CalculatedValueString : WideString
property CrossSheetStyle : TCrossSheetConnectorStyle
procedure DeleteCrossRef;
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_BorderColor : TColor;
function GetState_BorderColorString : WideString;
function GetState_ConnectedWireUniqueId : WideString;
function GetState_CrossRef : WideString;
function GetState_IsConnectedToAnyWire : Boolean;
function GetState_PrimaryColor : TColor;
function GetState_PrimaryColorString : WideString;
function GetState_SecondaryColor : TColor;
function GetState_SecondaryColorString : WideString;
function GetState_SimpleCalculatedString : WideString;
function GetState_TertiaryColor : TColor;
function GetState_TertiaryColorString : WideString;
property IsCustomStyle : Boolean
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
procedure RestoreProperties;
procedure SaveProperties;
procedure SetState_BorderColor(const AValue : TColor);
procedure SetState_BorderColorString(const AValue : WideString);
procedure SetState_CrossRef(AValue : WideString);
procedure SetState_NameWithColorSync(const AName : WideString);
procedure SetState_PrimaryColor(const AValue : TColor);
procedure SetState_PrimaryColorString(const AValue : WideString);
procedure SetState_SecondaryColor(const AValue : TColor);
procedure SetState_SecondaryColorString(const AValue : WideString);
procedure SetState_TertiaryColor(const AValue : TColor);
procedure SetState_TertiaryColorString(const AValue : WideString);
property ShowNetName : Boolean
property Style : TPowerObjectStyle
property Text : WideString

## ISch_HarnessWireData (56 members)
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddSchObject(AObject : ISch_BasicContainer);
function BundleToGoThroughAssignment(Index : Integer) : WideString;
function BundleToGoThroughAssignmentsCount : Integer;
property Color : TColor
property ColorName : WideString
property Comment : WideString
property Container : ISch_BasicContainer
function ContainsBundleToGoThroughUniqueId(const ABundleUniqueId : WideString) : Boolean;
procedure CopyTo(const AContainer : ISch_BasicContainer);
procedure DeleteAll;
property Description : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function GetState_AutogeneratedLength : Int64;
function GetState_ConnectedCable(AIndex : Integer) : ISch_BasicContainer;
function GetState_ConnectedCablesUniqueIdsCount : Integer;
function GetState_ConnectedCableUniqueId(AIndex : Integer) : WideString;
function GetState_ConnectedInlineSplicesUniqueId(AIndex : Integer) : WideString;
function GetState_ConnectedInlineSplicesUniqueIdsCount : Integer;
function GetState_ConnectedShieldsUniqueIdsCount : Integer;
function GetState_ConnectedShieldUniqueId(AIndex : Integer) : WideString;
function GetState_ConnectedTwist(AIndex : Integer) : ISch_BasicContainer;
function GetState_ConnectedTwistsUniqueIdsCount : Integer;
function GetState_ConnectedTwistUniqueId(AIndex : Integer) : WideString;
function GetState_DescriptionString : WideString;
function GetState_EndVertex1ConnectedObjectUniqueId : WideString;
function GetState_EndVertex1ConnectedSchObject : ISch_BasicContainer;
function GetState_EndVertex2ConnectedObjectUniqueId : WideString;
function GetState_EndVertex2ConnectedSchObject : ISch_BasicContainer;
function GetState_IdentifierString : WideString;
function GetState_IncludeCut : Boolean;
function GetState_IsConnectedToAnyCable : Boolean;
function GetState_IsConnectedToAnyInlineSplices : Boolean;
function GetState_IsConnectedToAnyShield : Boolean;
function GetState_IsConnectedToAnyTwist : Boolean;
function GetState_IsEndVertex1ConnectedToAnyObject : Boolean;
function GetState_IsEndVertex2ConnectedToAnyObject : Boolean;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_TotalLength : Int64;
function GetState_WiringDiagramOriginUniqueId : WideString;
property Handle : WideString
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
property Length : Int64
property Name : WideString
property ObjectId : TObjectId
property OwnerDocument : ISch_Document
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
procedure SetState_Default(AUnit : TUnitSystem);
property UniqueId : WideString

## ISch_HarnessWireLabel (10 unique + inherits ISch_GraphicalObject)
property CalculatedValueString : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_SimpleCalculatedString : WideString;
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property Text : WideString

## ISch_HarnessWiringDiagram (139 members)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
property BorderOn : Boolean
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
function BoundingRectangle_Selected : IDispatch;
function ChooseLocationInteractively(const ALocation : IDispatch, Prompt : WideString) : Boolean;
function ChooseRectangleInteractively(const ARect : IDispatch, Prompt1 : WideString, Prompt2 : WideString) : Boolean;
property Color : TColor
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
function CountContextMenuObjects(AObjectSet : TObjectSet) : Integer;
function CountContextMenuObjectsExceptSchematicBlockObjects(AObjectSet : TObjectSet) : Integer;
function CreateFilteredHitTest(const ATestMode : THitTestMode, const ALocation : IDispatch, const AObjectSet : TObjectSet, const AParentObjectSet : TObjectSet, const AIncludePins : Boolean, const ACrossSelect : Boolean) : ISch_HitTest;
function CreateHitTest(ATestMode : THitTestMode, const ALocation : IDispatch) : ISch_HitTest;
procedure CreateLibraryFromProject(AddLibToProject : Boolean, FileName : WideString, RunQuiet : Boolean);
function CreateUseHandle(const AGraphicalObject : ISch_GraphicalObject, const AView : IInterface, const ALocation : IDispatch) : ISch_HitTest;
property CustomMarginWidth : TCoord
property CustomSheetStyle : WideString
property CustomX : TCoord
property CustomXZones : TCoord
property CustomY : TCoord
property CustomYZones : TCoord
procedure DeleteAll;
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property DisplayUnit : TUnit
property DocumentBorderStyle : TSheetDocumentBorderStyle
procedure DocumentModifiedChanged(AChanged : Boolean);
property DocumentName : WideString
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function GenerateUniqueID : WideString;
function GetDialogManager : ISch_DialogManager;
function GetHash : WideString;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
function Graphical_VirtualRectangle : IDispatch;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
function GridCoordinateClosest(ACoord : Integer) : Integer;
function GridCoordinateUp(ACoord : Integer) : Integer;
property Handle : WideString
function HasPausedProcess : Boolean;
function HasServerDocument : Boolean;
property HotspotGridOn : Boolean
property HotspotGridSize : TCoord
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
property InternalTolerance : TCoord
function IsInEditorView : Boolean;
property IsLibrary : Boolean
property ItemRevisionGUID : WideString
property LengthUnit : THarnessLengthUnit
property LiveHighlightValue : WideString
property LoadFormat : WideString
property Location : TLocation
procedure LockViewUpdate;
property MinorVersion : Integer
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
procedure Notify_FullUpdate;
property ObjectId : TObjectId
function ObjectReferenceZone(AObject : ISch_BasicContainer) : WideString;
procedure OptimizeUseOfPolylines;
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
procedure PlaceSchComponent(ALibraryPath : WideString, ALibRef : WideString, var SchObject : ISch_Component);
function PopupMenuHitTest : ISch_HitTest;
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
property PropsRevisionGUID : WideString
property PropsVaultGUID : WideString
procedure RecreateHandles;
procedure RedrawToDC(DC : HDC, PrintKind : Integer, PrintWhat : Integer);
procedure RedrawToDCEx(DC : HDC, PrintKind : Integer, PrintWhat : Integer, ExportToPDF : Boolean);
property ReferenceZonesOn : Boolean
property ReferenceZoneStyle : TSheetReferenceZoneStyle
procedure RegisterSchObjectInContainer(AObject : ISch_BasicContainer);
property ReleaseItemGUID : WideString
property ReleaseVaultGUID : WideString
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetAllSchParametersPosition;
procedure ResetErrorFields;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
property SchDocID : Integer
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetPreferencesInfo(const AVaultGUID : WideString, const ARevisionGUID : WideString);
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_xSizeySize;
procedure SetTemplateInfo(const AVaultGUID : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString, const AVaultHRID : WideString, const ARevisionHRID : WideString);
property SheetMarginWidth : TCoord
property SheetNumberSpaceSize : Integer
property SheetSizeX : TCoord
property SheetSizeY : TCoord
property SheetStyle : TSheetStyle
property SheetZonesX : Integer
property SheetZonesY : Integer
property ShowTemplateGraphics : Boolean
property SnapGridOn : Boolean
property SnapGridSize : TCoord
property SystemFont : TFontID
property TemplateFileName : WideString
property TemplateItemGUID : WideString
property TemplateRevisionGUID : WideString
property TemplateRevisionHRID : WideString
property TemplateVaultGUID : WideString
property TemplateVaultHRID : WideString
property TitleBlockOn : Boolean
property UniqueId : WideString
property UnitSystem : TUnitSystem
procedure UnLockViewUpdate;
procedure UnregisterAndFreeAllConnectionLines;
procedure UnRegisterSchObjectFromContainer(AObject : ISch_BasicContainer);
procedure UpdateDisplayForCurrentSheet;
procedure UpdateDocumentProperties;
function UpdatePartsToLatestRevision(ATarget : TUpdatePartTarget, const AContextObject : IInterface, ANeedConfirm : Boolean, AClearMessages : Boolean, out AUpdatedCount : Integer, out AUpToDateCount : Integer, out AErrorCount : Integer) : Boolean;
property UseCustomSheet : Boolean
property VisibleGridOn : Boolean
property VisibleGridSize : TCoord
property WorkspaceOrientation : TSheetOrientation

## ISch_HighLevelCodeEntry (25 unique + inherits ISch_GraphicalObject)
property ArrowKind : TArrowKind
property DataIdentifier : WideString
property DataType : THighLevelCodeDataType
property DataTypeString : WideString
property DataWidth : Integer
procedure DeleteCrossRef;
property DistanceFromTop : TCoord
property EntryType : THighLevelCodeEntryType
function GetState_CrossRef : WideString;
property HarnessColor : TColor
property HarnessType : WideString
property IOType : TPortIO
function IsVertical : Boolean;
property Name : WideString
property OverrideDisplayString : WideString
property OwnerSheetSymbol : ISch_SheetSymbol
property ParentRoutine : WideString
property Role : THighLevelCodeEntryRole
procedure SetState_CrossRef(AValue : WideString);
property Side : TLeftRightSide
property Style : TPortArrowStyle
function SymbolInfo : IInterface;
property TextColor : TColor
property TextFontID : TFontID
property TextStyle : TBusTextStyle

## ISch_HighLevelCodeMemory (11 members)
property AddressWidth : Integer
property BusMode : WideString
property DataWidth : Integer
property IFace : TMemoryInterfaceType
property IsReserved : Boolean
property Mau : Integer
property MemType : TMemoryInterfaceType
property Name : WideString
property Offset : WideString
property Scope : THighLevelCodeScope
property Size : WideString

## ISch_HighLevelCodeRoutine (12 members)
property AllowStalls : Boolean
function DeclarationString(WithQualifiers : Boolean) : WideString;
function GetEntries : IInterfaceList;
property InterfaceMode : THighLevelCodeInterfaceMode
property IsLinked : Boolean
property LinkTarget : WideString
property NoWait : Boolean
property Pipelined : Boolean
property PipelineII : WideString
property PipelineLatency : WideString
property RoutineName : WideString
property Scope : THighLevelCodeScope

## ISch_HighLevelCodeSymbol (45 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
property AdditionalFileCount : Integer
procedure ChangeSymbolType(AType : TSheetSymbolType);
function CreateEntry : ISch_SheetEntry;
procedure DeleteEntry(const AEntry : ISch_SheetEntry);
property DesignItemId : WideString
property EnableResetLogic : Boolean
function GetState_SchSheetFullPath : WideString;
function Import_FromUser_Parameters : Boolean;
property InternalMemoryCount : Integer
property InternalMemorySize : WideString
property IsSolid : Boolean
property ItemGUID : WideString
property JtagBufferDepth : Integer
property JtagBufferWidth : Integer
property JtagDebugInterface : Boolean
property JtagLossless : Boolean
property LibIdentifierKind : TLibIdentifierKind
property LibraryIdentifier : WideString
property LineWidth : TSize
property MemoryCount : Integer
property RegisterOutputs : Boolean
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
property ReserveAddressZero : Boolean
procedure ResetAllSchParametersPosition;
property ResetUninitializedVariables : Boolean
property RevisionGUID : WideString
property RoutineCount : Integer
function SelectSchSheetFileName(out AFileName : WideString) : LongBool;
property SheetFileName : ISch_SheetFileName
property SheetName : ISch_SheetName
property ShowHiddenFields : Boolean
property SourceLibraryName : WideString
property StartOnRisingEdge : Boolean
property SymbolType : TSheetSymbolType
property ToolchainC_Int16 : Boolean
property ToolchainC_Misc : WideString
property ToolchainHdl_Misc : WideString
function TopLevel_InterfaceMode : THighLevelCodeInterfaceMode;
function TopLevel_Name : WideString;
function TopLevel_WishboneWidth : Integer;
procedure UpdateToLatestRevision;
property VaultGUID : WideString
property XSize : TCoord
property YSize : TCoord

## ISch_HitTest (4 members)
property HitObject[I: Integer] : ISch_GraphicalObject
function GetState_HighestPriorityObject : ISch_GraphicalObject;
function GetState_SecondHighestPriorityObject : ISch_GraphicalObject;
property HitTestCount : Integer

## ISch_Hyperlink (11 unique + inherits ISch_GraphicalObject)
property CalculatedValueString : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_SimpleCalculatedString : WideString;
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property Text : WideString
property Url : WideString

## ISch_Image (11 unique + inherits ISch_GraphicalObject)
property Corner : TLocation
procedure DrawToHDC(Handle : HDC, X : Integer, Y : Integer, Width : Integer, Height : Integer, ColorMode : TPaintColorMode);
property EmbedImage : Boolean
property FileName : WideString
function FullPath : WideString;
property IsSolid : Boolean
property KeepAspect : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
procedure SaveImageToFile(FileName : WideString);
property Transparent : Boolean

## ISch_ImageParameter (29 unique + inherits ISch_GraphicalObject)
property AllowDatabaseSynchronize : Boolean
property AllowLibrarySynchronize : Boolean
property Autoposition : Boolean
property CalculatedValueString : WideString
property Description : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_McadModelHash : WideString;
function GetState_SimpleCalculatedString : WideString;
property IsConfigurable : Boolean
property IsHidden : Boolean
property IsMirrored : Boolean
property IsRule : Boolean
property IsSystemParameter : Boolean
property Justification : TTextJustification
property Name : WideString
property NameIsReadOnly : Boolean
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property ParamType : TParameterType
property ReadOnlyState : TParameter_ReadOnlyState
function SaveModelToFile(const AFilePath : WideString) : Boolean;
property ShowName : Boolean
property Text : WideString
property TextHorzAnchor : TTextHorzAnchor
property TextVertAnchor : TTextVertAnchor
property ValueIsReadOnly : Boolean
property VariantOption : IVariantOption

## ISch_Implementation (18 unique + inherits ISch_GraphicalObject)
procedure AddDataFileLink(anEntityName : WideString, ALocation : WideString, aFileKind : WideString);
procedure ClearAllDatafileLinks;
property DatabaseDatalinksLocked : Boolean
property DatabaseModel : Boolean
property DatafileLinkCount : Integer
property DatalinksLocked : Boolean
property Description : WideString
property IntegratedModel : Boolean
property IsCurrent : Boolean
procedure LockImplementation;
function Map_Import_FromUser(AlowOneToMany : Boolean) : Boolean;
property MapAsString : WideString
property ModelItemGUID : WideString
property ModelName : WideString
property ModelRevisionGUID : WideString
property ModelType : WideString
property ModelVaultGUID : WideString
property UseComponentLibrary : Boolean

## ISch_Iterator (11 members)
procedure AddFilter_Area(x1 : Integer, y1 : Integer, x2 : Integer, y2 : Integer);
procedure AddFilter_CurrentDisplayModePrimitives;
procedure AddFilter_CurrentDisplayModePrimitivesWithHiddenPins;
procedure AddFilter_CurrentPartPrimitives;
procedure AddFilter_ObjectSet(const AObjectSet : TObjectSet);
procedure AddFilter_PartPrimitives(APartId : Integer, ADisplayMode : Byte);
function FirstSchObject : ISch_BasicContainer;
function NextSchObject : ISch_BasicContainer;
procedure SetContainer(const AContainer : ISch_BasicContainer);
procedure SetState_FilterAll;
procedure SetState_IterationDepth(AIterationDepth : TIterationDepth);

## ISch_Junction (2 unique + inherits ISch_GraphicalObject)
property Locked : Boolean
property Size : TSize

## ISch_JunctionConvertSettings (6 members)
property BatchMode : Boolean
procedure Export_ToIniFile(const OptionsWriter : IOptionsWriter);
procedure Import_FromIniFile(const OptionsReader : IOptionsReader);
property JunctionConversion : TJunctionConversionKind
property MiterSize : TDistance
property ShowDialog : Boolean

## ISch_Label (10 unique + inherits ISch_GraphicalObject)
property CalculatedValueString : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_SimpleCalculatedString : WideString;
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property Text : WideString

## ISch_Lib (172 members)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchComponent(const AComponent : ISch_Component);
procedure AddSchComponentWithoutNotification(const AComponent : ISch_Component);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AlwaysShowCD : Boolean
property AreaColor : TColor
property BorderOn : Boolean
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
function BoundingRectangle_Selected : IDispatch;
function ChooseLocationInteractively(const ALocation : IDispatch, Prompt : WideString) : Boolean;
function ChooseRectangleInteractively(const ARect : IDispatch, Prompt1 : WideString, Prompt2 : WideString) : Boolean;
property Color : TColor
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
function CountContextMenuObjects(AObjectSet : TObjectSet) : Integer;
function CountContextMenuObjectsExceptSchematicBlockObjects(AObjectSet : TObjectSet) : Integer;
function CreateFilteredHitTest(const ATestMode : THitTestMode, const ALocation : IDispatch, const AObjectSet : TObjectSet, const AParentObjectSet : TObjectSet, const AIncludePins : Boolean, const ACrossSelect : Boolean) : ISch_HitTest;
function CreateHitTest(ATestMode : THitTestMode, const ALocation : IDispatch) : ISch_HitTest;
procedure CreateLibraryFromProject(AddLibToProject : Boolean, FileName : WideString, RunQuiet : Boolean);
function CreateLibraryValidator : ISch_LibraryValidator;
function CreateUseHandle(const AGraphicalObject : ISch_GraphicalObject, const AView : IInterface, const ALocation : IDispatch) : ISch_HitTest;
property CurrentSchComponent : ISch_Component
property CustomMarginWidth : TCoord
property CustomSheetStyle : WideString
property CustomX : TCoord
property CustomXZones : TCoord
property CustomY : TCoord
property CustomYZones : TCoord
procedure DeleteAll;
property Description : WideString
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property DisplayUnit : TUnit
property DocumentBorderStyle : TSheetDocumentBorderStyle
procedure DocumentModifiedChanged(AChanged : Boolean);
property DocumentName : WideString
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
property FolderGUID : WideString
procedure FreeAllContainedObjects;
function GenerateUniqueID : WideString;
function GetDialogManager : ISch_DialogManager;
function GetHash : WideString;
function GetState_CurrentSchComponentDisplayMode : Byte;
function GetState_CurrentSchComponentLibReference : WideString;
function GetState_CurrentSchComponentPartId : Integer;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_SchComponentByLibRef(ALibRef : WideString) : ISch_Component;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
function Graphical_VirtualRectangle : IDispatch;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
function GridCoordinateClosest(ACoord : Integer) : Integer;
function GridCoordinateUp(ACoord : Integer) : Integer;
property Handle : WideString
function HasPausedProcess : Boolean;
function HasServerDocument : Boolean;
property HotspotGridOn : Boolean
property HotspotGridSize : TCoord
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
property InternalTolerance : TCoord
function IsInEditorView : Boolean;
property IsLibrary : Boolean
property IsSimpleDesignMode : Boolean
property IsSingleComponentMode : Boolean
property ItemRevisionGUID : WideString
function LibIsEmpty : Boolean;
property LifeCycleDefinitionGUID : WideString
function LinkDocumentToReleaseVault(Parameters : WideString, var ErrorMsg : WideString) : Boolean;
property LiveHighlightValue : WideString
property LoadFormat : WideString
procedure LoadFromFile(const VFSAddress : WideString);
property Location : TLocation
procedure LockViewUpdate;
property MinorVersion : Integer
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
procedure Notify_FullUpdate;
property ObjectId : TObjectId
function ObjectReferenceZone(AObject : ISch_BasicContainer) : WideString;
procedure OptimizeUseOfPolylines;
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
procedure PlaceSchComponent(ALibraryPath : WideString, ALibRef : WideString, var SchObject : ISch_Component);
function PopupMenuHitTest : ISch_HitTest;
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
property PropsRevisionGUID : WideString
property PropsVaultGUID : WideString
procedure RecreateHandles;
procedure RedrawToDC(DC : HDC, PrintKind : Integer, PrintWhat : Integer);
procedure RedrawToDCEx(DC : HDC, PrintKind : Integer, PrintWhat : Integer, ExportToPDF : Boolean);
property ReferenceZonesOn : Boolean
property ReferenceZoneStyle : TSheetReferenceZoneStyle
procedure RegisterSchObjectInContainer(AObject : ISch_BasicContainer);
function ReleaseDocument(Parameters : WideString, var ErrorMsg : WideString) : Boolean;
property ReleaseItemGUID : WideString
property ReleaseVaultGUID : WideString
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure RemoveSchComponent(const AComponent : ISch_Component);
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetAllSchParametersPosition;
procedure ResetErrorFields;
property RevisionNamingSchemeGUID : WideString
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
procedure SaveToFile(const VFSAddress : WideString);
function Sch_LibraryRuleChecker_Create : ISch_LibraryRuleChecker;
procedure Sch_LibraryRuleChecker_Destroy(var ARuleChecker : ISch_LibraryRuleChecker);
property SchDocID : Integer
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
function SchLibIterator_Create : ISch_Iterator;
property Selection : Boolean
procedure SetPreferencesInfo(const AVaultGUID : WideString, const ARevisionGUID : WideString);
procedure SetState_CurrentSchComponentAddDisplayMode;
procedure SetState_CurrentSchComponentAddPart;
procedure SetState_CurrentSchComponentDisplayMode(ADisplayMode : Byte);
procedure SetState_CurrentSchComponentLibReference(const AValue : WideString);
procedure SetState_CurrentSchComponentPartId(APartId : Integer);
procedure SetState_CurrentSchComponentRemoveDisplayMode;
procedure SetState_CurrentSchComponentRemovePart;
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_xSizeySize;
procedure SetTemplateInfo(const AVaultGUID : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString, const AVaultHRID : WideString, const ARevisionHRID : WideString);
property SheetMarginWidth : TCoord
property SheetNumberSpaceSize : Integer
property SheetSizeX : TCoord
property SheetSizeY : TCoord
property SheetStyle : TSheetStyle
property SheetZonesX : Integer
property SheetZonesY : Integer
property ShowHiddenPins : Boolean
property ShowTemplateGraphics : Boolean
property SnapGridOn : Boolean
property SnapGridSize : TCoord
property SystemFont : TFontID
property TemplateFileName : WideString
property TemplateItemGUID : WideString
property TemplateRevisionGUID : WideString
property TemplateRevisionHRID : WideString
property TemplateVaultGUID : WideString
property TemplateVaultHRID : WideString
property TitleBlockOn : Boolean
procedure TransferComponentsPrimitivesBackFromEditor;
procedure TransferComponentsPrimitivesToEditor;
property UniqueId : WideString
property UnitSystem : TUnitSystem
procedure UnLockViewUpdate;
procedure UnregisterAndFreeAllConnectionLines;
procedure UnRegisterSchObjectFromContainer(AObject : ISch_BasicContainer);
procedure UpdateDisplayForCurrentSheet;
procedure UpdateDocumentProperties;
function UpdatePartsToLatestRevision(ATarget : TUpdatePartTarget, const AContextObject : IInterface, ANeedConfirm : Boolean, AClearMessages : Boolean, out AUpdatedCount : Integer, out AUpToDateCount : Integer, out AErrorCount : Integer) : Boolean;
property UseCustomSheet : Boolean
property VisibleGridOn : Boolean
property VisibleGridSize : TCoord
property WorkspaceOrientation : TSheetOrientation

## ISch_LibraryComponent (13 members)
procedure ApplyChosenComponent(const DestComponent : IDispatch);
function ChooseFromLibrary : IDispatch;
property DesignItemId : WideString
function GetState_LibIdentifierKind : TLibIdentifierKind;
function GetState_LibraryIdentifier : WideString;
property ItemGUID : WideString
property LibraryPath : WideString
property RevisionGUID : WideString
procedure ShowInVaultExplorer;
property SourceLibraryName : WideString
property UseLibraryName : Boolean
procedure ValidateLink;
property VaultGUID : WideString

## ISch_LibraryRuleChecker (12 members)
property Duplicate_Component : Boolean
property Duplicate_Pins : Boolean
function Import_FromUser : Boolean;
property Missing_Default_Designator : Boolean
property Missing_Description : Boolean
property Missing_Footprint : Boolean
property Missing_Pin_Name : Boolean
property Missing_Pin_Number : Boolean
property Missing_Pins_In_Sequence : Boolean
function Run : Boolean;
function SetState_FromParameters(Parameters : PWideChar) : Boolean;
property ShowReport : Boolean

## ISch_LibraryValidator (1 members)
procedure Validate(AChecksResult : IInterfaceList, AErrorKinds : TFileLessViolationKinds);

## ISch_Line (3 unique + inherits ISch_GraphicalObject)
property Corner : TLocation
property LineStyle : TLineStyle
property LineWidth : TSize

## ISch_LineView (0 unique + inherits ISch_GraphicalObject)

## ISch_MapDefiner (7 unique + inherits ISch_GraphicalObject)
property Designator_ImplementationCount : Integer
property Designator_Implementations_AsString : WideString
property Designator_Interface : WideString
property IsTrivial : Boolean
procedure SetState_AllFromString(AValue : WideString);
procedure SetState_Designator_ImplementationAdd(AValue : WideString);
procedure SetState_Designator_ImplementationClear;

## ISch_ModelDatafileLink (5 members)
property EntityName : WideString
property FileKind : WideString
property LibIdentifierKind : TLibIdentifierKind
property LibraryIdentifier : WideString
property Location : WideString

## ISch_NetLabel (10 unique + inherits ISch_GraphicalObject)
property CalculatedValueString : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_SimpleCalculatedString : WideString;
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property Text : WideString

## ISch_NoERC (8 unique + inherits ISch_GraphicalObject)
function Import_FromUser_MultipleNoErc(AObjects : ISafeInterfaceList) : Boolean;
property IsActive : Boolean
property Orientation : TRotationBy90
property StrConnectionPairsToSuppress : WideString
property StrErrorKindSetToSuppress : WideString
property StrSuppressableErrors : WideString
property SuppressAll : Boolean
property Symbol : TNoERCSymbol

## ISch_Note (15 unique + inherits ISch_GraphicalObject)
property Alignment : THorizontalAlign
property Author : WideString
property ClipToRect : Boolean
property Collapsed : Boolean
property Corner : TLocation
property FontID : Integer
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property ShowBorder : Boolean
property Text : WideString
property TextColor : TColor
property TextMargin : TCoord
property Transparent : Boolean
property WordWrap : Boolean

## ISch_OpenBusGroup (9 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
property Circular : Boolean
function Import_FromUser_Parameters : Boolean;
property IsMirrored : Boolean
property Orientation : TRotationBy90
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure ResetAllSchParametersPosition;
property XSize : TCoord
property YSize : TCoord

## ISch_Parameter (27 unique + inherits ISch_GraphicalObject)
property AllowDatabaseSynchronize : Boolean
property AllowLibrarySynchronize : Boolean
property Autoposition : Boolean
property CalculatedValueString : WideString
property Description : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_SimpleCalculatedString : WideString;
property IsConfigurable : Boolean
property IsHidden : Boolean
property IsMirrored : Boolean
property IsRule : Boolean
property IsSystemParameter : Boolean
property Justification : TTextJustification
property Name : WideString
property NameIsReadOnly : Boolean
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property ParamType : TParameterType
property ReadOnlyState : TParameter_ReadOnlyState
property ShowName : Boolean
property Text : WideString
property TextHorzAnchor : TTextHorzAnchor
property TextVertAnchor : TTextVertAnchor
property ValueIsReadOnly : Boolean
property VariantOption : IVariantOption

## ISch_ParameterSet (7 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
function Import_FromUser_Parameters : Boolean;
property Name : WideString
property Orientation : TRotationBy90
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure ResetAllSchParametersPosition;
property Style : TParameterSetStyle

## ISch_ParametrizedGroup (4 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
function Import_FromUser_Parameters : Boolean;
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure ResetAllSchParametersPosition;

## ISch_Pie (5 unique + inherits ISch_GraphicalObject)
property EndAngle : TAngle
property IsSolid : Boolean
property LineWidth : TSize
property Radius : TDistance
property StartAngle : TAngle

## ISch_Pin (102 members)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
property Color : TColor
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
property DefaultValue : WideString
procedure DeleteAll;
property Description : WideString
property Designator : WideString
property Designator_CustomColor : TColor
property Designator_CustomFontID : TFontID
property Designator_CustomPosition_Margin : TCoord
property Designator_CustomPosition_RotationAnchor : TPinTextRotationAnchor
property Designator_CustomPosition_RotationRelative : TRotationBy90
property Designator_CustomPosition_VerticalMargin : TCoord
property Designator_FontMode : TPinItemMode
property Designator_PositionMode : TPinItemMode
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property Electrical : TPinElectrical
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
property FormalType : TStdLogicState
procedure FreeAllContainedObjects;
function FullDesignator : WideString;
function GetHash : WideString;
function GetState_DescriptionString : WideString;
function GetState_Designator_CustomPosition_HorizontalMargin : Integer;
function GetState_IdentifierString : WideString;
function GetState_Name_CustomPosition_HorizontalMargin : Integer;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
property Handle : WideString
property HiddenNetName : WideString
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
property IsHidden : Boolean
property LiveHighlightValue : WideString
property Location : TLocation
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
property Name : WideString
property Name_CustomColor : TColor
property Name_CustomFontID : TFontID
property Name_CustomPosition_Margin : TCoord
property Name_CustomPosition_RotationAnchor : TPinTextRotationAnchor
property Name_CustomPosition_RotationRelative : TRotationBy90
property Name_CustomPosition_VerticalMargin : TCoord
property Name_FontMode : TPinItemMode
property Name_PositionMode : TPinItemMode
property ObjectId : TObjectId
property Orientation : TRotationBy90
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
function OwnerSchComponent : ISch_Component;
property PinLength : TCoord
property PinPackageLength : TCoord
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
property PropagationDelay : Double
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetAllSchParametersPosition;
procedure ResetErrorFields;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_Designator_CustomPosition_HorizontalMargin(AValue : Integer);
procedure SetState_FunctionsFromName;
procedure SetState_Name_CustomPosition_HorizontalMargin(AValue : Integer);
procedure SetState_xSizeySize;
property ShowDesignator : Boolean
property ShowName : Boolean
property SwapId_Pair : WideString
property SwapId_Part : WideString
property SwapId_PartPin : WideString
property SwapId_Pin : WideString
property Symbol_Inner : TIeeeSymbol
property Symbol_InnerEdge : TIeeeSymbol
property Symbol_LineWidth : TSize
property Symbol_Outer : TIeeeSymbol
property Symbol_OuterEdge : TIeeeSymbol
property UniqueId : WideString
property Width : Integer

## ISch_Polygon (7 unique + inherits ISch_GraphicalObject)
procedure ClearAllVertices;
function InsertVertex(Index : Integer) : Boolean;
property IsSolid : Boolean
property LineWidth : TSize
function RemoveVertex(var Index : Integer) : Boolean;
property Transparent : Boolean
property VerticesCount : Integer

## ISch_Polyline (11 unique + inherits ISch_GraphicalObject)
procedure ClearAllVertices;
property EndLineShape : TLineShape
function InsertVertex(Index : Integer) : Boolean;
property IsSolid : Boolean
property LineShapeSize : TSize
property LineStyle : TLineStyle
property LineWidth : TSize
function RemoveVertex(var Index : Integer) : Boolean;
property StartLineShape : TLineShape
property Transparent : Boolean
property VerticesCount : Integer

## ISch_Port (23 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
property Alignment : THorizontalAlign
property AutoSize : Boolean
property BorderWidth : TSize
property ConnectedEnd : TPortConnectedEnd
property CrossReference : WideString
property FontID : TFontID
function GetState_NetNamesForPort : WideString;
property HarnessColor : TColor
property HarnessType : WideString
property Height : TCoord
function Import_FromUser_Parameters : Boolean;
property IOType : TPortIO
property IsCustomStyle : Boolean
function IsVertical : Boolean;
property Name : WideString
property OverrideDisplayString : WideString
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure ResetAllSchParametersPosition;
property ShowNetName : Boolean
property Style : TPortArrowStyle
property TextColor : TColor
property Width : TCoord

## ISch_PowerObject (13 unique + inherits ISch_GraphicalObject)
property CalculatedValueString : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_SimpleCalculatedString : WideString;
property IsCustomStyle : Boolean
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property ShowNetName : Boolean
property Style : TPowerObjectStyle
property Text : WideString

## ISch_Preferences (118 members)
property SheetStyle_YZones[S: TSheetStyle] : TCoord
property ViolationColor[ALevel: TErrorLevel] : TColor
property ViolationDisplay[ALevel: TErrorLevel] : Boolean
property SheetStyle_YSize[S: TSheetStyle] : TCoord
property SheetStyle_MarginWidth[S: TSheetStyle] : TCoord
property SheetStyle_XSize[S: TSheetStyle] : TCoord
property SheetStyle_XZones[S: TSheetStyle] : TCoord
property AddTemplateToClipBoard : Boolean
property AllowDeviceSheetEditing : Boolean
property AlwaysDrag : Boolean
property AutoBackupFileCount : Integer
property AutoBackupTime : Integer
property AutoPanJumpDistance : TCoord
property AutoPanShiftJumpDistance : TCoord
property AutoPanStyle : TAutoPanStyle
property AutoZoom : Boolean
property BufferedPainting : Boolean
property BusAutoJunctionsColor : TColor
property BusAutoJunctionsSize : TSize
property BusDragJunctionsColor : TColor
property ClickClearsSelection : Boolean
property ComponentsCutWires : Boolean
property ConfirmSelectionMemoryClear : Boolean
property ConvertSpecialStrings : Boolean
property CrossRefLocationStyle : TCrossRefLocationStyle
property CrossRefSheetStyle : TCrossRefSheetStyle
property CtrlDbleClickGoesDown : Boolean
property CutterFixedLength : TCoord
property CutterGridSizeMultiple : Integer
property DefaultDisplayUnit : TUnit
property DefaultEarthName : WideString
property DefaultPowerGndName : WideString
property DefaultPrimsPermanent : Boolean
property DefaultSheetStyle : TSheetStyle
property DefaultSignalGndName : WideString
property DefaultTemplateFileName : WideString
property DefaultUnitSystem : TUnitSystem
property DisplayPrinterFonts : Boolean
property DocMenuID : WideString
property DocumentScope : TChosenDocumentScope
property DoubleClickRunsInspector : Boolean
property DragStepSize : TSize
property ExpandComponentDesignators : Boolean
property ExpandDocumentNumber : Boolean
property ExpandNetLabelsText : Boolean
property ExpandPortsName : Boolean
property ExpandSheetNumber : Boolean
property FSMMenuID : WideString
function Get_DefaultPrimOverridesLibraryComment : Boolean;
function Get_DefaultPrimOverridesLibraryDesignator : Boolean;
property GraphicsCursorStyle : TCursorShape
function GridPresetAt(AUnit : TUnitSystem, AnIndex : Integer) : IGridSetting;
function GridPresetsCount(AUnit : TUnitSystem) : Integer;
property HarnessLayoutMenuID : WideString
property HarnessWiringMenuID : WideString
property HotSpotGridDistance : Integer
property IgnoreSelection : Boolean
function Import_FromUser : Boolean;
property LastModelType : WideString
property LibMenuID : WideString
property LibraryScope : TLibraryScope
property MaintainOrthogonal : Boolean
property ManualJunctionsColor : TColor
property MarkManualParameters : Boolean
property Metafile_Blankets : Boolean
property Metafile_NoERCMarkers : Boolean
property Metafile_Notes : Boolean
property Metafile_NotesCollapsed : Boolean
property Metafile_OpenEnds : Boolean
property Metafile_ParameterSets : Boolean
property Metafile_Probes : Boolean
property Metafile_StrNoERCSymbolsToShow : WideString
property MultiPartNamingMethod : Integer
property MultipartSeparator : WideString
property MultiSelectionColor : TColor
property OpenBusMenuID : WideString
property OptimizePolylines : Boolean
property OrcadFootPrint : TOrcadFootPrint
property PhysicalViewDimLevel : Integer
property PinDesignatorHorizontalMargin : Integer
property PinDesignatorVerticalMargin : Integer
property PinNameHorizontalMargin : Integer
property PinNameMargin : Integer
property PinNameVerticalMargin : Integer
property PinNumberMargin : Integer
property PolylineCutterMode : TPolylineCutterMode
property ResizeColor : TColor
property RunInPlaceEditing : Boolean
property SelectionColor : TColor
property SelectionReference : Boolean
property Sensitivity : Integer
procedure Set_DefaultPrimOverridesLibraryComment(AValue : Boolean);
procedure Set_DefaultPrimOverridesLibraryDesignator(AValue : Boolean);
property ShowCutterBoxMode : TShowCutterBoxMode
property ShowCutterMarkersMode : TShowCutterMarkersMode
property ShowPinDirection : Boolean
property SingleSlashNegation : Boolean
property SnapToCenter : Boolean
property SnapToHotSpot : Boolean
property SpatialAnalysisDuringDragging : Boolean
property StringIncA : WideString
property StringIncB : WideString
property StringIncRemoveLeadingZero : Boolean
property SuperscriptDesignator : TSuperscriptMode
property SuperscriptDocumentNumber : TSuperscriptMode
property SuperscriptNetLabel : TSuperscriptMode
property SuperscriptPort : TSuperscriptMode
property SuperscriptSheetNumber : TSuperscriptMode
property TranslateRotateColor : TColor
property UndoRedoStackSize : Integer
property UseOrcadPortWidth : Boolean
property VisibleGridColor : TColor
property VisibleGridStyle : TVisibleGrid
property WatermarkDeviceSheet : Boolean
property WatermarkReadOnlySheet : Boolean
property WireAutoJunctionsColor : TColor
property WireAutoJunctionsSize : TSize
property WireDragJunctionsColor : TColor

## ISch_Probe (7 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
function Import_FromUser_Parameters : Boolean;
property Name : WideString
property Orientation : TRotationBy90
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure ResetAllSchParametersPosition;
property Style : TParameterSetStyle

## ISch_Rectangle (5 unique + inherits ISch_GraphicalObject)
property Corner : TLocation
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property Transparent : Boolean

## ISch_RectangularGroup (6 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
function Import_FromUser_Parameters : Boolean;
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure ResetAllSchParametersPosition;
property XSize : TCoord
property YSize : TCoord

## ISch_ReuseBlockImplementation (6 members)
function GetState_BlockDescription : WideString;
function GetState_BlockItemGUID : WideString;
function GetState_BlockItemRevisionGUID : WideString;
function GetState_BlockName : WideString;
function GetState_BlockVaultGUID : WideString;
procedure SetRevisionFileMappings(const AValue : WideString);

## ISch_ReuseSheetSymbol (47 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure ChangeSymbolType(AType : TSheetSymbolType);
function CreateEntry : ISch_SheetEntry;
procedure DeleteEntry(const AEntry : ISch_SheetEntry);
property DesignItemId : WideString
function GetState_BlockDescription : WideString;
function GetState_BlockItemGUID : WideString;
function GetState_BlockItemRevisionGUID : WideString;
function GetState_BlockName : WideString;
function GetState_BlockVaultGUID : WideString;
function GetState_PcbSnippetItemGUID : WideString;
function GetState_PcbSnippetItemRevisionGUID : WideString;
function GetState_PcbSnippetVaultGUID : WideString;
function GetState_SchSheetFullPath : WideString;
function GetState_SchSnippetItemGUID : WideString;
function GetState_SchSnippetItemRevisionGUID : WideString;
function GetState_SchSnippetVaultGUID : WideString;
function Import_FromUser_Parameters : Boolean;
property IsSolid : Boolean
property ItemGUID : WideString
property LibIdentifierKind : TLibIdentifierKind
property LibraryIdentifier : WideString
property LineWidth : TSize
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure ResetAllSchParametersPosition;
property RevisionGUID : WideString
function SelectSchSheetFileName(out AFileName : WideString) : LongBool;
procedure SetState_BlockDescription(const AValue : WideString);
procedure SetState_BlockItemGUID(const AValue : WideString);
procedure SetState_BlockItemRevisionGUID(const AValue : WideString);
procedure SetState_BlockName(const AValue : WideString);
procedure SetState_BlockVaultGUID(const AValue : WideString);
procedure SetState_PcbSnippetItemGUID(const AValue : WideString);
procedure SetState_PcbSnippetItemRevisionGUID(const AValue : WideString);
procedure SetState_PcbSnippetVaultGUID(const AValue : WideString);
procedure SetState_SchSnippetItemGUID(const AValue : WideString);
procedure SetState_SchSnippetItemRevisionGUID(const AValue : WideString);
procedure SetState_SchSnippetVaultGUID(const AValue : WideString);
property SheetFileName : ISch_SheetFileName
property SheetName : ISch_SheetName
property ShowHiddenFields : Boolean
property SourceLibraryName : WideString
property SymbolType : TSheetSymbolType
procedure UpdateToLatestRevision;
property VaultGUID : WideString
property XSize : TCoord
property YSize : TCoord

## ISch_RichTextDocument (6 unique + inherits ISch_GraphicalObject)
property Corner : TLocation
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property ShowBorder : Boolean
property Transparent : Boolean

## ISch_RobotManager (2 members)
procedure SendMessage(Source : ISch_BasicContainer, Destination : ISch_BasicContainer, MessageID : Word, MessageData : ISch_BasicContainer);
procedure SendMessageByHandle(Source : WideString, Destination : WideString, MessageID : Word, MessageData : WideString);

## ISch_RoundRectangle (7 unique + inherits ISch_GraphicalObject)
property Corner : TLocation
property CornerXRadius : TDistance
property CornerYRadius : TDistance
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property Transparent : Boolean

## ISch_RTFLink (8 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
property FileNameRTF : WideString
property FullPathRTF : WideString
function Import_FromUser_Parameters : Boolean;
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure ResetAllSchParametersPosition;
property XSize : TCoord
property YSize : TCoord

## ISch_SchematicBlock (39 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
property BlockDescription : WideString
property Corner : TLocation
property DesignItemId : WideString
function GetState_BlockItemGUID : WideString;
function GetState_BlockItemRevisionGUID : WideString;
function GetState_BlockName : WideString;
function GetState_BlockVaultGUID : WideString;
function GetState_DesignatorLocked : Boolean;
function GetState_PcbSnippetItemGUID : WideString;
function GetState_PcbSnippetItemRevisionGUID : WideString;
function GetState_PcbSnippetVaultGUID : WideString;
function GetState_SchDesignator : ISch_Designator;
function GetState_SchSnippetItemGUID : WideString;
function GetState_SchSnippetItemRevisionGUID : WideString;
function GetState_SchSnippetVaultGUID : WideString;
function GetState_SourceLibraryName : WideString;
function Import_FromUser_Parameters : Boolean;
property IsSolid : Boolean
property ItemGUID : WideString
property LineStyle : TLineStyle
property LineWidth : TSize
property Orientation : TRotationBy90
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure ResetAllSchParametersPosition;
property RevisionGUID : WideString
procedure SetState_BlockItemGUID(const AValue : WideString);
procedure SetState_BlockItemRevisionGUID(const AValue : WideString);
procedure SetState_BlockName(const AValue : WideString);
procedure SetState_BlockVaultGUID(const AValue : WideString);
procedure SetState_DesignatorLocked(AValue : Boolean);
procedure SetState_PcbSnippetItemGUID(const AValue : WideString);
procedure SetState_PcbSnippetItemRevisionGUID(const AValue : WideString);
procedure SetState_PcbSnippetVaultGUID(const AValue : WideString);
procedure SetState_SchSnippetItemGUID(const AValue : WideString);
procedure SetState_SchSnippetItemRevisionGUID(const AValue : WideString);
procedure SetState_SchSnippetVaultGUID(const AValue : WideString);
property Transparent : Boolean
property VaultGUID : WideString

## ISch_ServerInterface (48 members)
function CreateComponentMetafilePainter : IComponentMetafilePainter;
function CreateComponentPainter : IComponentPainterView;
function CreateDocumentPainter : IDocumentPainterView;
function CreateHarnessLibrary : ISch_HarnessLibrary;
function CreateLibCompFullInfoReader(ALibFileName : WideString) : ILibCompFullInfoReader;
function CreateLibCompInfoReader(ALibFileName : WideString) : ILibCompInfoReader;
function CreateSchLibrary : ISch_Lib;
function CreateSchLibraryWrapped : ISch_Lib;
procedure DestroyCompFullInfoReader(var ALibCompReader : ILibCompFullInfoReader);
procedure DestroyCompInfoReader(var ALibCompReader : ILibCompInfoReader);
procedure DestroySchLibrary(var SchLib : ISch_Lib);
procedure DestroySchObject(var ASchObject : ISch_BasicContainer);
function ExportSchObject(const ASchObject : ISch_BasicContainer, const AParameters : WideString) : Boolean;
property FontManager : ISch_FontManager
function GetCurrentSchDocument : ISch_Document;
function GetDDMHarnessProject(const AProjectFilePath : WideString) : IDDMHarnessProject;
function GetDialogManager : ISch_DialogManager;
function GetDMHarnessObjectHelper : IInterface;
function GetHarnessUtils : ISch_HarnessUtils;
function GetSchDocumentByPath(APath : WideString) : ISch_Document;
function GetSchDocumentByPathWrapped(const APath : WideString) : ISch_Document;
function GetSchDocumentBySchDocID(DocID : Integer) : ISch_Document;
property JunctionConvertSettings : ISch_JunctionConvertSettings
function LoadComponent(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString) : ISch_Component;
function LoadComponentFromDatabaseLibrary(ALibraryName : WideString, ADatabaseTableName : WideString, ADatabaseKeys : WideString) : ISch_Component;
function LoadComponentFromLibrary(ALibReference : WideString, ALibraryName : WideString) : ISch_Component;
function LoadComponentFromLibraryWrapped(ALibReference : WideString, ALibraryName : WideString) : ISch_Component;
function LoadComponentFromMemoryFile(const AFile : IMemoryMappedFile) : ISch_Component;
function LoadComponentWrapped(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString) : ISch_Component;
function LoadDesignItemDeviceSheet(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString, LocationX : Integer, LocationY : Integer) : ISch_SheetSymbol;
function LoadSchDocumentByPath(const AFullPath : WideString) : ISch_Document;
function LoadSchDocumentByPathWrapped(const AFullPath : WideString) : ISch_Document;
function PaintComponentThumbnail(SymbolName : WideString, SymbolLibraryFullPath : WideString, PartIndex : Integer, Width : Integer, Height : Integer) : HBITMAP;
function PaintDeviceSheetThumbnail(DeviceSheetName : WideString, Width : Integer, Height : Integer) : HBITMAP;
function PaintLoadedComponentThumbnail(ASchPart : ISch_Component, PartIndex : Integer, Width : Integer, Height : Integer) : HBITMAP;
property Preferences : ISch_Preferences
property ProbesTimerEnabled : Boolean
function ReportSchObjectsDifferences(const AObject1 : ISch_BasicContainer, const AObject2 : ISch_BasicContainer, AIgnoreSpatialAttributes : Boolean, ADiffDescription : PWideChar) : Integer;
property RobotManager : ISch_RobotManager
function SaveComponentToMemoryFile(const AComponent : ISch_Component) : IMemoryMappedFile;
procedure SaveSchDocument(ADoc : ISch_Document, AFullPath : WideString, AFileFormat : WideString);
function SchObjectFactory(AObjectId : TObjectId, ACreationMode : TObjectCreationMode) : ISch_BasicContainer;
function SchObjectFactoryBySettings(AObjectId : TObjectId, AUnit : TUnitSystem) : ISch_BasicContainer;
function SelectWireHarness(const AHarnessList : WideString) : WideString;
procedure SetDocumentManagedTemplate(const ADocument : IServerDocument, const AVaultGUID : WideString, const ARevisionGUID : WideString, AAction : TTemplateUpdateAction, ASilent : Boolean);
procedure SetOriginalHarnessProject(const AProjectFilePath : WideString, const AOriginalProject : IProject);
procedure UpdateDocumentTemplate(ADocument : IServerDocument, VaultGUID : WideString, ItemRevisionGUID : WideString);
function UpdateSignalValueDisplay(DMObject : IDMObject, Value : Integer, BitIndex : Integer) : LongBool;

## ISch_Sheet (143 members)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddReuseBlockPartInfo(const ABlockId : WideString, const ABlockGUID : IFullItemGUID, const ASchSnippetGUID : IFullItemGUID, const APcbSnippetGUID : IFullItemGUID, const AUniqueId : WideString, const AUniqueIdInReuseBlock : WideString);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
property BorderOn : Boolean
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
function BoundingRectangle_Selected : IDispatch;
property BusConnections : IConnectionsArray
function ChooseLocationInteractively(const ALocation : IDispatch, Prompt : WideString) : Boolean;
function ChooseRectangleInteractively(const ARect : IDispatch, Prompt1 : WideString, Prompt2 : WideString) : Boolean;
property Color : TColor
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
function CountContextMenuObjects(AObjectSet : TObjectSet) : Integer;
function CountContextMenuObjectsExceptSchematicBlockObjects(AObjectSet : TObjectSet) : Integer;
function CreateFilteredHitTest(const ATestMode : THitTestMode, const ALocation : IDispatch, const AObjectSet : TObjectSet, const AParentObjectSet : TObjectSet, const AIncludePins : Boolean, const ACrossSelect : Boolean) : ISch_HitTest;
function CreateHitTest(ATestMode : THitTestMode, const ALocation : IDispatch) : ISch_HitTest;
procedure CreateLibraryFromProject(AddLibToProject : Boolean, FileName : WideString, RunQuiet : Boolean);
function CreateUseHandle(const AGraphicalObject : ISch_GraphicalObject, const AView : IInterface, const ALocation : IDispatch) : ISch_HitTest;
property CustomMarginWidth : TCoord
property CustomSheetStyle : WideString
property CustomX : TCoord
property CustomXZones : TCoord
property CustomY : TCoord
property CustomYZones : TCoord
procedure DeleteAll;
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
property DisplayUnit : TUnit
property DocumentBorderStyle : TSheetDocumentBorderStyle
procedure DocumentModifiedChanged(AChanged : Boolean);
property DocumentName : WideString
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function GenerateUniqueID : WideString;
function GetDialogManager : ISch_DialogManager;
function GetHash : WideString;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
function Graphical_VirtualRectangle : IDispatch;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
function GridCoordinateClosest(ACoord : Integer) : Integer;
function GridCoordinateUp(ACoord : Integer) : Integer;
property Handle : WideString
function HasPausedProcess : Boolean;
function HasServerDocument : Boolean;
property HasUnsavedUniqueIdsChanges : Boolean
property HotspotGridOn : Boolean
property HotspotGridSize : TCoord
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
property InternalTolerance : TCoord
function IsInEditorView : Boolean;
property IsLibrary : Boolean
function IsManagedByDDM : Boolean;
property ItemRevisionGUID : WideString
property LiveHighlightValue : WideString
property LoadFormat : WideString
property Location : TLocation
procedure LockViewUpdate;
property MinorVersion : Integer
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
procedure Notify_FullUpdate;
property ObjectId : TObjectId
function ObjectReferenceZone(AObject : ISch_BasicContainer) : WideString;
procedure OptimizeUseOfPolylines;
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
procedure PlaceSchComponent(ALibraryPath : WideString, ALibRef : WideString, var SchObject : ISch_Component);
function PopupMenuHitTest : ISch_HitTest;
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
property PropsRevisionGUID : WideString
property PropsVaultGUID : WideString
procedure RecreateHandles;
procedure RedrawToDC(DC : HDC, PrintKind : Integer, PrintWhat : Integer);
procedure RedrawToDCEx(DC : HDC, PrintKind : Integer, PrintWhat : Integer, ExportToPDF : Boolean);
property ReferenceZonesOn : Boolean
property ReferenceZoneStyle : TSheetReferenceZoneStyle
procedure RegisterSchObjectInContainer(AObject : ISch_BasicContainer);
property ReleaseItemGUID : WideString
property ReleaseVaultGUID : WideString
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetAllSchParametersPosition;
procedure ResetErrorFields;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
property SchDocID : Integer
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetPreferencesInfo(const AVaultGUID : WideString, const ARevisionGUID : WideString);
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_xSizeySize;
procedure SetTemplateInfo(const AVaultGUID : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString, const AVaultHRID : WideString, const ARevisionHRID : WideString);
property SheetMarginWidth : TCoord
property SheetNumberSpaceSize : Integer
property SheetSizeX : TCoord
property SheetSizeY : TCoord
property SheetStyle : TSheetStyle
property SheetZonesX : Integer
property SheetZonesY : Integer
property ShowTemplateGraphics : Boolean
property SnapGridOn : Boolean
property SnapGridSize : TCoord
property SystemFont : TFontID
property TemplateFileName : WideString
property TemplateItemGUID : WideString
property TemplateRevisionGUID : WideString
property TemplateRevisionHRID : WideString
property TemplateVaultGUID : WideString
property TemplateVaultHRID : WideString
property TitleBlockOn : Boolean
property UniqueId : WideString
property UnitSystem : TUnitSystem
procedure UnLockViewUpdate;
procedure UnregisterAndFreeAllConnectionLines;
procedure UnRegisterSchObjectFromContainer(AObject : ISch_BasicContainer);
procedure UpdateDisplayForCurrentSheet;
procedure UpdateDocumentProperties;
function UpdatePartsToLatestRevision(ATarget : TUpdatePartTarget, const AContextObject : IInterface, ANeedConfirm : Boolean, AClearMessages : Boolean, out AUpdatedCount : Integer, out AUpToDateCount : Integer, out AErrorCount : Integer) : Boolean;
property UseCustomSheet : Boolean
property VisibleGridOn : Boolean
property VisibleGridSize : TCoord
property WireConnections : IConnectionsArray
property WorkspaceOrientation : TSheetOrientation

## ISch_SheetEntry (17 unique + inherits ISch_GraphicalObject)
property ArrowKind : TArrowKind
procedure DeleteCrossRef;
property DistanceFromTop : TCoord
function GetState_CrossRef : WideString;
property HarnessColor : TColor
property HarnessType : WideString
property IOType : TPortIO
function IsVertical : Boolean;
property Name : WideString
property OverrideDisplayString : WideString
property OwnerSheetSymbol : ISch_SheetSymbol
procedure SetState_CrossRef(AValue : WideString);
property Side : TLeftRightSide
property Style : TPortArrowStyle
property TextColor : TColor
property TextFontID : TFontID
property TextStyle : TBusTextStyle

## ISch_SheetFileName (15 unique + inherits ISch_GraphicalObject)
property Autoposition : Boolean
property CalculatedValueString : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_IsFileNameReadOnly : Boolean;
function GetState_SimpleCalculatedString : WideString;
property IsHidden : Boolean
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property Text : WideString
property TextHorzAnchor : TTextHorzAnchor
property TextVertAnchor : TTextVertAnchor

## ISch_SheetName (14 unique + inherits ISch_GraphicalObject)
property Autoposition : Boolean
property CalculatedValueString : WideString
property DisplayString : WideString
property FontID : TFontID
property Formula : WideString
function GetState_SimpleCalculatedString : WideString;
property IsHidden : Boolean
property IsMirrored : Boolean
property Justification : TTextJustification
property Orientation : TRotationBy90
property OverrideDisplayString : WideString
property Text : WideString
property TextHorzAnchor : TTextHorzAnchor
property TextVertAnchor : TTextVertAnchor

## ISch_SheetSymbol (25 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure ChangeSymbolType(AType : TSheetSymbolType);
function CreateEntry : ISch_SheetEntry;
procedure DeleteEntry(const AEntry : ISch_SheetEntry);
property DesignItemId : WideString
function GetState_SchSheetFullPath : WideString;
function Import_FromUser_Parameters : Boolean;
property IsSolid : Boolean
property ItemGUID : WideString
property LibIdentifierKind : TLibIdentifierKind
property LibraryIdentifier : WideString
property LineWidth : TSize
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure ResetAllSchParametersPosition;
property RevisionGUID : WideString
function SelectSchSheetFileName(out AFileName : WideString) : LongBool;
property SheetFileName : ISch_SheetFileName
property SheetName : ISch_SheetName
property ShowHiddenFields : Boolean
property SourceLibraryName : WideString
property SymbolType : TSheetSymbolType
procedure UpdateToLatestRevision;
property VaultGUID : WideString
property XSize : TCoord
property YSize : TCoord

## ISch_Symbol (5 unique + inherits ISch_GraphicalObject)
property IsMirrored : Boolean
property LineWidth : TSize
property Orientation : TRotationBy90
property ScaleFactor : TCoord
property Symbol : TIeeeSymbol

## ISch_Template (1 unique + inherits ISch_GraphicalObject)
property FileName : WideString

## ISch_TextFrame (13 unique + inherits ISch_GraphicalObject)
property Alignment : THorizontalAlign
property ClipToRect : Boolean
property Corner : TLocation
property FontID : Integer
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
property ShowBorder : Boolean
property Text : WideString
property TextColor : TColor
property TextMargin : TCoord
property Transparent : Boolean
property WordWrap : Boolean

## ISch_Voltage (7 unique + inherits ISch_GraphicalObject)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
function GetState_IsVoltageComponent : Boolean;
function GetState_SignalType : WideString;
function Import_FromUser_Parameters : Boolean;
function Remove_Parameter(const Parameter : ISch_Parameter) : LongBool;
procedure ResetAllSchParametersPosition;
procedure SetState_SignalType(AValue : WideString);

## ISch_Wire (13 unique + inherits ISch_GraphicalObject)
property AutoWire : Boolean
procedure ClearAllVertices;
property EditingEndPoint : Boolean
function InsertVertex(Index : Integer) : Boolean;
property IsSolid : Boolean
property LineStyle : TLineStyle
property LineWidth : TSize
procedure OrderCrossOverArray;
function RemoveVertex(var Index : Integer) : Boolean;
procedure ResetCompilationMaskedSegments;
property Transparent : Boolean
property UnderlineColor : TColor
property VerticesCount : Integer

## ISch_WrappedObject (1 members)
function GetOrCreateWrapper : ISch_Wrapper;

## ISch_Wrapper (1 members)
procedure ReleaseObject;

