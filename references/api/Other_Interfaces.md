# Other Interfaces
Complete member listings for all non-PCB, non-schematic interfaces. Includes IClient, IProject, IDocument, IWorkSpace, IDraftsman, and all other interfaces.

##  (0 members)

## IAbstractSynthesizer (1 members)
function GetSynthesisConstraintsFileName : WideString;

## IAbstractVHDLProject (292 members)
procedure DM_Abort;
function DM_AddAsDeviceSheet(const ADocumentPath : WideString) : IDocument;
function DM_AddConfiguration(Configuration : WideString) : IConfiguration;
procedure DM_AddConfigurationParameters(Configuration : WideString);
procedure DM_AddConfigurationParameters_Physical(Configuration : WideString);
procedure DM_AddControlPanel(Filename : WideString);
procedure DM_AddDeviceSheetFolder(FolderPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddGeneratedDocument(Filename : WideString);
procedure DM_AddMissingAutoCrossRefs;
procedure DM_AddOrSetUniqueIdMapping(const ASchHandle : WideString, const AUniqueIdMapping : WideString);
procedure DM_AddParameter(AName : WideString, AValue : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AddProjectVariant : IProjectVariant;
procedure DM_AddSearchPath(SearchPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddSourceDocument(Filename : WideString);
procedure DM_AddSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_AddVirtualDocument(const APath : WideString);
procedure DM_ApplyChangesFromSystemDataModel;
function DM_AvailableDatabaseLinks : Boolean;
procedure DM_BeginUpdate;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateFormula(const DMObject : IDMObject, const AFormula : WideString, ForComponentVariation : Boolean, const ProjectVariant : IProjectVariant, const Variations : ISafeInterfaceList) : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChannelDesignatorFormat : WideString;
function DM_ChannelRoomLevelSeperator : WideString;
function DM_ChannelRoomNamingStyle : TChannelRoomNamingStyle;
procedure DM_ClearAllNetColors;
procedure DM_ClearSchematicObjectsErrorFields(const SchematicId : WideString);
procedure DM_ClearViolations;
function DM_Compile : LongBool;
function DM_CompileEx(All : LongBool, var Cancelled : LongBool) : LongBool;
function DM_CompileProjectOrDocument(ADocument : IDocument) : Boolean;
function DM_ComponentMappings(AnImplementationDocument : WideString) : IComponentMappings;
function DM_ConfigurationCount : Integer;
function DM_Configurations(Index : Integer) : IConfiguration;
function DM_CrossRefCrossSheets : Boolean;
function DM_CrossRefLocationStyle : TCrossRefLocationStyle;
function DM_CrossRefPorts : TCrossRefPorts;
function DM_CrossRefSheetEntries : Boolean;
function DM_CrossRefSheetStyle : TCrossRefSheetStyle;
function DM_CurrentProjectVariant : IProjectVariant;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DataModel : IUnifiedDataModel;
function DM_DeviceSheetFolderCount : Integer;
function DM_DeviceSheetFolders(Index : Integer) : IDeviceSheetFolder;
procedure DM_DeviceSheetRemoved(const Filename : WideString);
function DM_DiffPairSuffixCount : Integer;
procedure DM_DiffPairSuffixes(Index : Integer, var Positive : WideString, var Negative : WideString);
procedure DM_DisableOnlineSynchronization(AUpdateParameters : Boolean);
procedure DM_DoCrossProbeBase;
procedure DM_DoCrossSelection;
function DM_DocumentBackups : IDocumentBackups;
function DM_DocumentClassGenerationOptions(const ADocumentPath : WideString) : IDocumentClassGenerationOptions;
function DM_DocumentFlattened : IDocument;
function DM_DocumentIsGenerated(const ADocumentFileName : WideString) : Boolean;
function DM_EditConfigurations : LongBool;
function DM_EditOptions(DefaultPage : WideString) : LongBool;
procedure DM_EndUpdate;
procedure DM_EnsureAllCachedManagedOutputJobs;
procedure DM_EnsureStandardConfigurations;
function DM_ErrorLevels(AErrorKind : TErrorKind) : TErrorLevel;
procedure DM_Export_ToFile(const AFileName : WideString);
function DM_FileLessItemGUID : WideString;
function DM_FileLessVaultGUID : WideString;
function DM_FindProjectVariant(ADescription : WideString) : IProjectVariant;
procedure DM_FixDesignatorAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ALogicalDesignator : WideString, ARemoveOriginal : Boolean);
procedure DM_FixSheetNumberAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ADocumentFileName : WideString, ARemoveOriginal : Boolean);
procedure DM_FixVariationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const APhysicalDesignator : WideString, const AProjectVariantUniqueId : WideString, const AProjectVariantDescription : WideString, ARemoveOriginal : Boolean);
procedure DM_ForceIncludeRequiredOutJobs(const AConfigurationManager : IDMS_ConfigurationManager, const AVaultGUID : WideString);
function DM_FSMCodingStyle : TFSMCodingStyle_DropDownList;
function DM_FSMEncodingStyle : TFSMEncodingStyle_DropDownList;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GeneratedDocumentCount : Integer;
function DM_GeneratedDocuments(Index : Integer) : IDocument;
function DM_GenerateHDL(Parameters : WideString, ARebuild : LongBool) : LongBool;
procedure DM_GenerateSystemDataModel;
function DM_GetAllowPortNetNames : Boolean;
function DM_GetAllowSheetEntryNetNames : Boolean;
function DM_GetAnnotationManager : IAnnotationManager;
function DM_GetAnnotationOptions : IAnnotateOptions;
function DM_GetAppendSheetNumberToLocalNets : Boolean;
function DM_GetAutomaticSheetsNumbers : IAutomaticSheetsNumbers;
function DM_GetConfigurationByName(Configuration : WideString) : IConfiguration;
function DM_GetDefaultConfiguration : IConfiguration;
function DM_GetDefaultConfigurationName : WideString;
function DM_GetDefaultPcbType : WideString;
function DM_GetDocumentByDocumentId(const ADocumentId : WideString) : IDocument;
function DM_GetDocumentFromName(DocumentName : WideString) : IDocument;
function DM_GetDocumentFromPath(DocumentPath : WideString) : IDocument;
function DM_GetECOInterface : IECO;
function DM_GetGeneratedHDLFilenames(ConfigurationName : WideString) : WideString;
function DM_GetHarnessDefinitionList : IHarnessDefinitionList;
function DM_GetHasWriteAccessAsync : Boolean;
function DM_GetIncludeDesignInRelease : Boolean;
function DM_GetIsActiveOnlineSynchronization : Boolean;
function DM_GetLinkedManagedProjectGUID : WideString;
function DM_GetNetColorByName(const ANetName : WideString) : TColor;
function DM_GetNetInfosToExportCount : Integer;
function DM_GetNetInfoToExport(AIndex : Integer) : WideString;
function DM_GetNotificationService : IEDMS_NotificationService;
function DM_GetOpenOutputs : Boolean;
function DM_GetOrCreateLibraryPart(const AComponentLibraryLink : IComponentLibraryLink) : IPart;
function DM_GetOriginalDocumentFromPath(const ADocumentPath : WideString) : IDocument;
function DM_GetOutputPath : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPinSwapBy_Netlabel : Boolean;
function DM_GetPinSwapBy_Pin : Boolean;
function DM_GetProjectClassGenerationOptions : IProjectClassGenerationOptions;
function DM_GetRelativeOutputPath : WideString;
function DM_GetReleaseFolderPath : WideString;
function DM_GetReleaseMode : TProjectReleaseMode;
function DM_GetReleaseNamings : WideString;
function DM_GetReleaseNamingTemplates : WideString;
function DM_GetReleaseVaultGUID : WideString;
function DM_GetReleaseZipPath : WideString;
function DM_GetReportFactory : IReportFactory;
function DM_GetRequiredCapabilities(ACapabilities : ICapabilityList) : Boolean;
function DM_GetRequiresHDLGeneration : LongBool;
function DM_GetSchematicNetlister : TSchematicNetlister;
function DM_GetScrapDocument(DocumentPath : WideString) : IDocument;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTargetDeviceName(ConfigurationName : WideString) : WideString;
function DM_GetTemplateLink : WideString;
function DM_GetTimeStampedOutputFolder : Boolean;
function DM_GetTopLevelDocumentStructure : IDocumentStructure;
function DM_GetVariantSchLibrary : WideString;
function DM_GetVerilog95 : LongBool;
function DM_GetVHDL87 : LongBool;
function DM_GetVirtualParametersManager : IVirtualParametersManager;
function DM_GetWebURL(const APage : WideString, const AOpenedFrom : WideString, AIncludeAuthToken : Boolean) : WideString;
function DM_GlobalPreferencesRevisionGUID : WideString;
function DM_GlobalPreferencesVaultGUID : WideString;
function DM_HierarchyMode : TFlattenMode;
function DM_HierarchyModeForCompile : TFlattenMode;
function DM_ImageIndex : Integer;
function DM_IncludePath(Index : Integer) : WideString;
function DM_IncludePathCount : Integer;
function DM_InCompilation : Boolean;
function DM_IndexOfSourceDocument(Filename : WideString) : Integer;
function DM_InitializeOutputPath(AnOutputType : WideString) : WideString;
function DM_IsActive : Boolean;
function DM_IsConnectiveSelectedNow(AConnective : IDMObject) : Boolean;
function DM_IsCrossRefAddedToProject : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFileLessClone : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsManagedDocument(ADocument : IDocument) : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsReuseBlock : Boolean;
function DM_IsSharedWithMe : Boolean;
function DM_IsSolution : Boolean;
function DM_IsTemplate : Boolean;
function DM_IsVaultFileLessEditing : Boolean;
function DM_IsViewOnly : Boolean;
procedure DM_LoadAllLogicalDocuments;
procedure DM_LoadManagedParameters;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDocumentCount : Integer;
function DM_LogicalDocuments(Index : Integer) : IDocument;
function DM_LogicalDocumentsIsDeviceSheet(const ADocument : IDocument) : Boolean;
function DM_LongDescriptorString : WideString;
function DM_MacroCount : Integer;
function DM_MacroName(Index : Integer) : WideString;
function DM_MacroValue(Index : Integer) : WideString;
function DM_ManagedParameterCount : Integer;
function DM_ManagedParameters(Index : Integer) : IParameter;
function DM_ManagedProjectGUID : WideString;
procedure DM_MoveSourceDocument(Filename : WideString, NewIndex : Integer);
function DM_NeedsCompile : LongBool;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OfflineProjectGUID : WideString;
function DM_OptionsStorage : IOptionsStorage;
function DM_Outputers(Name : WideString) : IOutputer;
function DM_OwnedProjectCount : Integer;
function DM_OwnedProjects(Index : Integer) : IProject;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentProject : IProject;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDocumentCount : Integer;
function DM_PhysicalDocuments(Index : Integer) : IDocument;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrimaryImplementationDocument : IDocument;
function DM_ProjectContainsOutputJobs : Boolean;
function DM_ProjectFileName : WideString;
function DM_ProjectFullPath : WideString;
procedure DM_ProjectStructureChanged;
function DM_ProjectTemplateLocation : WideString;
procedure DM_ProjectVariantChanged;
function DM_ProjectVariantCount : Integer;
function DM_ProjectVariants(Index : Integer) : IProjectVariant;
procedure DM_RefreshHarnessDefinitions;
procedure DM_RefreshInWorkspaceForm;
function DM_ReleaseProjectCopy : IProject;
function DM_RemoveAllConfigurations : Boolean;
function DM_RemoveConfigurationByName(Configuration : WideString) : Boolean;
procedure DM_RemoveHarnessFile(const HarnessFileFullPath : WideString);
procedure DM_RemoveParameter(const AParameter : IParameter);
procedure DM_RemoveParameterByName(const AParameterName : WideString);
procedure DM_RemoveProjectVariant(Index : Integer);
procedure DM_RemoveSourceDocument(Filename : WideString);
procedure DM_RemoveSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_RemoveVirtualDocument(const APath : WideString);
function DM_ReportSuppressedErrorsInMessages : Boolean;
procedure DM_ResetLastCompileTimeForAllDocuments;
procedure DM_ResetReleaseProject;
function DM_ResumeContinuousCompilation : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SearchPathCount : Integer;
function DM_SearchPaths(Index : Integer) : ISearchPath;
function DM_SecondaryCrossProbeString : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetAllowPortNetNames(AAllow : Boolean);
procedure DM_SetAllowSheetEntryNetNames(AAllow : Boolean);
procedure DM_SetAppendSheetNumberToLocalNets(AAppend : Boolean);
procedure DM_SetAsCurrentProject;
procedure DM_SetConnectedNetsColor(const ANet : INet, AColor : TColor);
procedure DM_SetCurrentProjectVariant(AProjVariant : IProjectVariant);
procedure DM_SetCurrentProjectVariantSilent(AProjectVariant : IProjectVariant);
procedure DM_SetDefaultConfigurationName(Configuration : WideString);
procedure DM_SetDefaultPcbType(PcbType : WideString);
procedure DM_SetErrorLevels(AErrorKind : TErrorKind, AErrorLevel : TErrorLevel);
procedure DM_SetGlobalPreferencesRevisionGUID(AValue : WideString);
procedure DM_SetGlobalPreferencesVaultGUID(AValue : WideString);
procedure DM_SetHierarchyMode(AFlatten : TFlattenMode);
procedure DM_SetIncludeDesignInRelease(AValue : Boolean);
procedure DM_SetLinkedManagedProjectGUID(const AValue : WideString);
procedure DM_SetManagedProjectGUID(const AValue : WideString);
procedure DM_SetModified;
procedure DM_SetNetColorByName(const ANetName : WideString, AColor : TColor);
procedure DM_SetOfflineProjectGUID(const AValue : WideString);
procedure DM_SetOpenOutputs(AValue : Boolean);
procedure DM_SetOutputPath(AnOutputPath : WideString);
procedure DM_SetPinSwapBy_Netlabel(AAllow : Boolean);
procedure DM_SetPinSwapBy_Pin(AAllow : Boolean);
procedure DM_SetRelativeOutputPath(AValue : WideString);
procedure DM_SetReleaseFolderPath(AValue : WideString);
procedure DM_SetReleaseMode(AValue : TProjectReleaseMode);
procedure DM_SetReleaseNamings(const AValue : WideString);
procedure DM_SetReleaseNamingTemplates(const AValue : WideString);
procedure DM_SetReleaseProjectCopy(AProject : IProject);
procedure DM_SetReleaseVaultGUID(const Value : WideString);
procedure DM_SetReleaseZipPath(AValue : WideString);
procedure DM_SetTimeStampedOutputFolder(AValue : Boolean);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ShowVariantsDrawingStylesDialog(const AValue : IVariantOption) : IVariantOption;
procedure DM_StartCrossProbing(CtrlDoesSwitch : Boolean);
procedure DM_StartNavigation;
function DM_SuspendContinuousCompilation : Boolean;
function DM_ToDoManager : IToDoManager;
function DM_TopLevelLogicalDocument : IDocument;
function DM_TopLevelPhysicalDocument : IDocument;
function DM_TryToResolveDocumentSpecialString(const AName : WideString, const ADocumentFileName : WideString, out AValue : WideString) : Boolean;
function DM_TryToResolveSpecialString(const AName : WideString, out AValue : WideString) : Boolean;
function DM_UpdateConstraints : LongBool;
procedure DM_UpdateSchObjectErrorFields(const SchHandle : WideString, ErrorKind : TErrorKind, Suppressed : Boolean);
function DM_UserID : WideString;
procedure DM_Validate;
function DM_ValidateManagedOutputJobs : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VariantManager : IVariantManager;
function DM_Vault : IEDMS_Vault;
function DM_VaultGUID : WideString;
function DM_VaultHRID : WideString;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViolationCount : Integer;
function DM_Violations(Index : Integer) : IViolation;
function GetNavigationHistory : INavigationHistory;
property VCSProject : IInterface

## IAltiumLibrary (5 members)
function GetAttributes(APath : WideString, const AAttrs : IDispatch, AFields : Int64) : LongBool;
function LoadData(APath : WideString, AStream : IStream) : LongBool;
property Name : WideString
function PathExists(APath : WideString) : LongBool;
function SaveData(APath : WideString, AStream : IStream) : LongBool;

## IAltiumLibraryManager (2 members)
function FindActivatedAltiumLibraryByFileName(AFileName : WideString) : IAltiumLibrary;
function GetDItemRevisionByDesignItemId(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemId : WideString) : IDItemRevision;

## IAltiumPortalNotification (3 members)
property ApplicationName : WideString
property Code : Integer
property ParameterList : IInterfaceList

## IAltiumVHDLSimulatorEngine (34 members)
function AddBreakPoint(FileName : PWideChar, LineNumber : Cardinal) : Boolean;
procedure AddRegisteredModule(AName : PWideChar);
function AtBreakPoint : Boolean;
procedure DeleteAllBreakpoints;
function DeleteBreakPoint(FileName : PWideChar, LineNumber : Cardinal) : Boolean;
function GetCurrentBreakPoint(FileName : PWideChar, var LineNumber : Cardinal) : Boolean;
function GetDeltaCount : Integer;
function GetDesignName : PWideChar;
function GetModule(Index : Integer) : PWideChar;
function GetModuleCount : Integer;
function GetPercentage : Integer;
function GetStatus : TVHDLStatus;
function GetTimeUnits : PWideChar;
function GetTranscript : IVHDLTranscript;
function GetValidBreakpoint(FileName : PWideChar, Index : Integer) : Integer;
function GetValidBreakpointCount(FileName : PWideChar) : Integer;
function GetWatch(Index : Integer) : ISimWatch;
function GetWatchCount : Integer;
function Load : Boolean;
function Reset : Boolean;
function Run : Boolean;
function RunForever : Boolean;
function RunToBreakpoint(FileName : PWideChar, LineNumber : Cardinal) : Boolean;
procedure SetBinFile(ABinFile : PWideChar);
procedure SetLineInput(ALine : PWideChar);
procedure SetLoadDir(AValue : PWideChar);
procedure SetSeverity(AValue : Integer);
procedure SetTimeUnits(ATime : PWideChar);
function StepDebug : Boolean;
function StepDelta : Boolean;
function StepInto : Boolean;
function StepOver : Boolean;
function StepTime : Boolean;
function Stop : Boolean;

## IAnnotateOptions (14 members)
function AddPhysicalAnnotateOption(const AUniqueIDPath : WideString, const ADocumentName : WideString, AIsEnabled : Boolean, ASelectionScope : TDocAnnotationScope, AOrder : Integer, AIndexEnabled : Boolean, AIndexStartValue : Integer, const ASuffix : WideString) : IPhysicalAnnotateOptions;
procedure ClearAllPhysicalAnnotateOptions;
function DM_ObjectAddress : Pointer;
function FindPhysicalAnnotateOption(const AUniqueIDPath : WideString, const ADocumentName : WideString) : IPhysicalAnnotateOptions;
function GetGlobalIndexSortLocation : TSortLocation;
function GetGlobalIndexSortOrder : TSortOrder;
function GetMatchParam(AIndex : Integer, out AParamName : WideString, out AMatchStrictly : Boolean) : Boolean;
function GetMatchParamsCount : Integer;
function GetPackageCompletion : TPackageCompletion;
function GetPhysicalNamingFormat : WideString;
function GetReplaceSubparts : TReplaceSubparts;
function GetSortLocation : TSortLocation;
function GetSortOrder : TSortOrder;
procedure SetPhysicalNamingFormat(const ANamingFormat : WideString);

## IAnnotationManager (9 members)
procedure EnsureAnnotationFileExists(const AProjectPath : WideString);
function GetDesignatorRecordCount : Integer;
function GetDesignatorRecords(AIndex : Integer) : IDesignatorRecord;
function GetSheetNumberRecordCount : Integer;
function GetSheetNumberRecords(AIndex : Integer) : ISheetNumberRecord;
function MatchDesignatorRecordToParts(AParts : ISafeInterfaceList) : IInterfaceListAdapter;
function RemoveDesignatorRecord(const ARecord : IDesignatorRecord) : Boolean;
procedure SaveToAnnotationFile(const AProjectPath : WideString);
procedure UpdateDesignatorRecord(const ARecord : IDesignatorRecord, const ALogicalDesignator : WideString, ALogicalPartID : Integer, const ADocumentName : WideString, const AChannelName : WideString, const AUniqueId : WideString);

## IAutomaticSheetsNumbers (2 members)
function GetSheetNumber(SchematicUniqueId : WideString) : Integer;
function GetTotalSheetsNumber : Integer;

## IBackForwardNavigator (4 members)
property Address : WideString
property Caption : WideString
function GetBackwardHistoryCount : Integer;
function GetForwardHistoryCount : Integer;

## IBaseConfiguration (49 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetName(Value : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IBaseReport (9 members)
function DM_ObjectAdress : Pointer;
procedure EndReport;
procedure EndSection;
procedure EndTable;
procedure StartReport;
procedure StartSection(const SectionName : WideString);
procedure StartTable(const Title : WideString);
procedure StartTableWithHeading(const Title : WideString, const ColumnHeadings : WideString);
function WriteToFile(const Filename : WideString) : WideString;

## IBitLevelJTagChannel (9 members)
function BufIO(WData : WideString, WriteOnly : Boolean, Terminate : Boolean) : WideString;
procedure CloseChannel;
function OpenChannel : LongBool;
procedure Read;
property TCK : Byte
property TDI : Byte
property TDO : Byte
property TMS : Byte
procedure Write;

## IBitLevelJTagChannel_Hard (9 members)
function BufIO(WData : WideString, WriteOnly : Boolean, Terminate : Boolean) : WideString;
procedure CloseChannel;
function OpenChannel : LongBool;
procedure Read;
property TCK : Byte
property TDI : Byte
property TDO : Byte
property TMS : Byte
procedure Write;

## IBlanket (53 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LineCount : Integer;
function DM_Lines(AIndex : Integer) : ILine;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetItemCount : Integer;
function DM_NetItems(AIndex : Integer) : INetItem;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_SheetSymbolCount : Integer;
function DM_SheetSymbols(AIndex : Integer) : ISheetSymbol;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IBoardProject (280 members)
function DM_AddAsDeviceSheet(const ADocumentPath : WideString) : IDocument;
function DM_AddConfiguration(Configuration : WideString) : IConfiguration;
procedure DM_AddConfigurationParameters(Configuration : WideString);
procedure DM_AddConfigurationParameters_Physical(Configuration : WideString);
procedure DM_AddControlPanel(Filename : WideString);
procedure DM_AddDeviceSheetFolder(FolderPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddGeneratedDocument(Filename : WideString);
procedure DM_AddMissingAutoCrossRefs;
procedure DM_AddOrSetUniqueIdMapping(const ASchHandle : WideString, const AUniqueIdMapping : WideString);
procedure DM_AddParameter(AName : WideString, AValue : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AddProjectVariant : IProjectVariant;
procedure DM_AddSearchPath(SearchPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddSourceDocument(Filename : WideString);
procedure DM_AddSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_AddVirtualDocument(const APath : WideString);
procedure DM_ApplyChangesFromSystemDataModel;
function DM_AvailableDatabaseLinks : Boolean;
procedure DM_BeginUpdate;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateFormula(const DMObject : IDMObject, const AFormula : WideString, ForComponentVariation : Boolean, const ProjectVariant : IProjectVariant, const Variations : ISafeInterfaceList) : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChannelDesignatorFormat : WideString;
function DM_ChannelRoomLevelSeperator : WideString;
function DM_ChannelRoomNamingStyle : TChannelRoomNamingStyle;
procedure DM_ClearAllNetColors;
procedure DM_ClearSchematicObjectsErrorFields(const SchematicId : WideString);
procedure DM_ClearViolations;
function DM_Compile : LongBool;
function DM_CompileEx(All : LongBool, var Cancelled : LongBool) : LongBool;
function DM_CompileProjectOrDocument(ADocument : IDocument) : Boolean;
function DM_ComponentMappings(AnImplementationDocument : WideString) : IComponentMappings;
function DM_ConfigurationCount : Integer;
function DM_Configurations(Index : Integer) : IConfiguration;
function DM_CrossRefCrossSheets : Boolean;
function DM_CrossRefLocationStyle : TCrossRefLocationStyle;
function DM_CrossRefPorts : TCrossRefPorts;
function DM_CrossRefSheetEntries : Boolean;
function DM_CrossRefSheetStyle : TCrossRefSheetStyle;
function DM_CurrentProjectVariant : IProjectVariant;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DataModel : IUnifiedDataModel;
function DM_DeviceSheetFolderCount : Integer;
function DM_DeviceSheetFolders(Index : Integer) : IDeviceSheetFolder;
procedure DM_DeviceSheetRemoved(const Filename : WideString);
function DM_DiffPairSuffixCount : Integer;
procedure DM_DiffPairSuffixes(Index : Integer, var Positive : WideString, var Negative : WideString);
procedure DM_DisableOnlineSynchronization(AUpdateParameters : Boolean);
procedure DM_DoCrossProbeBase;
procedure DM_DoCrossSelection;
function DM_DocumentBackups : IDocumentBackups;
function DM_DocumentClassGenerationOptions(const ADocumentPath : WideString) : IDocumentClassGenerationOptions;
function DM_DocumentFlattened : IDocument;
function DM_DocumentIsGenerated(const ADocumentFileName : WideString) : Boolean;
function DM_EditConfigurations : LongBool;
function DM_EditOptions(DefaultPage : WideString) : LongBool;
procedure DM_EndUpdate;
procedure DM_EnsureAllCachedManagedOutputJobs;
procedure DM_EnsureStandardConfigurations;
function DM_ErrorLevels(AErrorKind : TErrorKind) : TErrorLevel;
procedure DM_Export_ToFile(const AFileName : WideString);
function DM_FileLessItemGUID : WideString;
function DM_FileLessVaultGUID : WideString;
function DM_FindProjectVariant(ADescription : WideString) : IProjectVariant;
procedure DM_FixDesignatorAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ALogicalDesignator : WideString, ARemoveOriginal : Boolean);
procedure DM_FixSheetNumberAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ADocumentFileName : WideString, ARemoveOriginal : Boolean);
procedure DM_FixVariationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const APhysicalDesignator : WideString, const AProjectVariantUniqueId : WideString, const AProjectVariantDescription : WideString, ARemoveOriginal : Boolean);
procedure DM_ForceIncludeRequiredOutJobs(const AConfigurationManager : IDMS_ConfigurationManager, const AVaultGUID : WideString);
function DM_FSMCodingStyle : TFSMCodingStyle_DropDownList;
function DM_FSMEncodingStyle : TFSMEncodingStyle_DropDownList;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GeneratedDocumentCount : Integer;
function DM_GeneratedDocuments(Index : Integer) : IDocument;
procedure DM_GenerateSystemDataModel;
function DM_GetAllowPortNetNames : Boolean;
function DM_GetAllowSheetEntryNetNames : Boolean;
function DM_GetAnnotationManager : IAnnotationManager;
function DM_GetAnnotationOptions : IAnnotateOptions;
function DM_GetAppendSheetNumberToLocalNets : Boolean;
function DM_GetAutomaticSheetsNumbers : IAutomaticSheetsNumbers;
function DM_GetConfigurationByName(Configuration : WideString) : IConfiguration;
function DM_GetDefaultConfiguration : IConfiguration;
function DM_GetDefaultConfigurationName : WideString;
function DM_GetDefaultPcbType : WideString;
function DM_GetDocumentByDocumentId(const ADocumentId : WideString) : IDocument;
function DM_GetDocumentFromName(DocumentName : WideString) : IDocument;
function DM_GetDocumentFromPath(DocumentPath : WideString) : IDocument;
function DM_GetECOInterface : IECO;
function DM_GetHarnessDefinitionList : IHarnessDefinitionList;
function DM_GetHasWriteAccessAsync : Boolean;
function DM_GetIncludeDesignInRelease : Boolean;
function DM_GetIsActiveOnlineSynchronization : Boolean;
function DM_GetLinkedManagedProjectGUID : WideString;
function DM_GetNetColorByName(const ANetName : WideString) : TColor;
function DM_GetNetInfosToExportCount : Integer;
function DM_GetNetInfoToExport(AIndex : Integer) : WideString;
function DM_GetNotificationService : IEDMS_NotificationService;
function DM_GetOpenOutputs : Boolean;
function DM_GetOrCreateLibraryPart(const AComponentLibraryLink : IComponentLibraryLink) : IPart;
function DM_GetOriginalDocumentFromPath(const ADocumentPath : WideString) : IDocument;
function DM_GetOutputPath : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPinSwapBy_Netlabel : Boolean;
function DM_GetPinSwapBy_Pin : Boolean;
function DM_GetProjectClassGenerationOptions : IProjectClassGenerationOptions;
function DM_GetRelativeOutputPath : WideString;
function DM_GetReleaseFolderPath : WideString;
function DM_GetReleaseMode : TProjectReleaseMode;
function DM_GetReleaseNamings : WideString;
function DM_GetReleaseNamingTemplates : WideString;
function DM_GetReleaseVaultGUID : WideString;
function DM_GetReleaseZipPath : WideString;
function DM_GetReportFactory : IReportFactory;
function DM_GetRequiredCapabilities(ACapabilities : ICapabilityList) : Boolean;
function DM_GetScrapDocument(DocumentPath : WideString) : IDocument;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTemplateLink : WideString;
function DM_GetTimeStampedOutputFolder : Boolean;
function DM_GetTopLevelDocumentStructure : IDocumentStructure;
function DM_GetVariantSchLibrary : WideString;
function DM_GetVirtualParametersManager : IVirtualParametersManager;
function DM_GetWebURL(const APage : WideString, const AOpenedFrom : WideString, AIncludeAuthToken : Boolean) : WideString;
function DM_GlobalPreferencesRevisionGUID : WideString;
function DM_GlobalPreferencesVaultGUID : WideString;
function DM_HierarchyMode : TFlattenMode;
function DM_HierarchyModeForCompile : TFlattenMode;
function DM_ImageIndex : Integer;
function DM_InCompilation : Boolean;
function DM_IndexOfSourceDocument(Filename : WideString) : Integer;
function DM_InitializeOutputPath(AnOutputType : WideString) : WideString;
function DM_IsActive : Boolean;
function DM_IsConnectiveSelectedNow(AConnective : IDMObject) : Boolean;
function DM_IsCrossRefAddedToProject : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFileLessClone : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsManagedDocument(ADocument : IDocument) : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsReuseBlock : Boolean;
function DM_IsSharedWithMe : Boolean;
function DM_IsSolution : Boolean;
function DM_IsTemplate : Boolean;
function DM_IsVaultFileLessEditing : Boolean;
function DM_IsViewOnly : Boolean;
procedure DM_LoadAllLogicalDocuments;
procedure DM_LoadManagedParameters;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDocumentCount : Integer;
function DM_LogicalDocuments(Index : Integer) : IDocument;
function DM_LogicalDocumentsIsDeviceSheet(const ADocument : IDocument) : Boolean;
function DM_LongDescriptorString : WideString;
function DM_ManagedParameterCount : Integer;
function DM_ManagedParameters(Index : Integer) : IParameter;
function DM_ManagedProjectGUID : WideString;
procedure DM_MoveSourceDocument(Filename : WideString, NewIndex : Integer);
function DM_NeedsCompile : LongBool;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OfflineProjectGUID : WideString;
function DM_OptionsStorage : IOptionsStorage;
function DM_Outputers(Name : WideString) : IOutputer;
function DM_OwnedProjectCount : Integer;
function DM_OwnedProjects(Index : Integer) : IProject;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentProject : IProject;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDocumentCount : Integer;
function DM_PhysicalDocuments(Index : Integer) : IDocument;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrimaryImplementationDocument : IDocument;
function DM_ProjectContainsOutputJobs : Boolean;
function DM_ProjectFileName : WideString;
function DM_ProjectFullPath : WideString;
procedure DM_ProjectStructureChanged;
function DM_ProjectTemplateLocation : WideString;
procedure DM_ProjectVariantChanged;
function DM_ProjectVariantCount : Integer;
function DM_ProjectVariants(Index : Integer) : IProjectVariant;
function DM_ReferenceObjectManager : IInterface;
procedure DM_RefreshHarnessDefinitions;
procedure DM_RefreshInWorkspaceForm;
function DM_ReleaseProjectCopy : IProject;
function DM_RemoveAllConfigurations : Boolean;
function DM_RemoveConfigurationByName(Configuration : WideString) : Boolean;
procedure DM_RemoveHarnessFile(const HarnessFileFullPath : WideString);
procedure DM_RemoveParameter(const AParameter : IParameter);
procedure DM_RemoveParameterByName(const AParameterName : WideString);
procedure DM_RemoveProjectVariant(Index : Integer);
procedure DM_RemoveSourceDocument(Filename : WideString);
procedure DM_RemoveSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_RemoveVirtualDocument(const APath : WideString);
function DM_ReportSuppressedErrorsInMessages : Boolean;
procedure DM_ResetLastCompileTimeForAllDocuments;
procedure DM_ResetReleaseProject;
function DM_ResumeContinuousCompilation : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SearchPathCount : Integer;
function DM_SearchPaths(Index : Integer) : ISearchPath;
function DM_SecondaryCrossProbeString : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetAllowPortNetNames(AAllow : Boolean);
procedure DM_SetAllowSheetEntryNetNames(AAllow : Boolean);
procedure DM_SetAppendSheetNumberToLocalNets(AAppend : Boolean);
procedure DM_SetAsCurrentProject;
procedure DM_SetConnectedNetsColor(const ANet : INet, AColor : TColor);
procedure DM_SetCurrentProjectVariant(AProjVariant : IProjectVariant);
procedure DM_SetCurrentProjectVariantSilent(AProjectVariant : IProjectVariant);
procedure DM_SetDefaultConfigurationName(Configuration : WideString);
procedure DM_SetDefaultPcbType(PcbType : WideString);
procedure DM_SetErrorLevels(AErrorKind : TErrorKind, AErrorLevel : TErrorLevel);
procedure DM_SetGlobalPreferencesRevisionGUID(AValue : WideString);
procedure DM_SetGlobalPreferencesVaultGUID(AValue : WideString);
procedure DM_SetHierarchyMode(AFlatten : TFlattenMode);
procedure DM_SetIncludeDesignInRelease(AValue : Boolean);
procedure DM_SetLinkedManagedProjectGUID(const AValue : WideString);
procedure DM_SetManagedProjectGUID(const AValue : WideString);
procedure DM_SetModified;
procedure DM_SetNetColorByName(const ANetName : WideString, AColor : TColor);
procedure DM_SetOfflineProjectGUID(const AValue : WideString);
procedure DM_SetOpenOutputs(AValue : Boolean);
procedure DM_SetOutputPath(AnOutputPath : WideString);
procedure DM_SetPinSwapBy_Netlabel(AAllow : Boolean);
procedure DM_SetPinSwapBy_Pin(AAllow : Boolean);
procedure DM_SetRelativeOutputPath(AValue : WideString);
procedure DM_SetReleaseFolderPath(AValue : WideString);
procedure DM_SetReleaseMode(AValue : TProjectReleaseMode);
procedure DM_SetReleaseNamings(const AValue : WideString);
procedure DM_SetReleaseNamingTemplates(const AValue : WideString);
procedure DM_SetReleaseProjectCopy(AProject : IProject);
procedure DM_SetReleaseVaultGUID(const Value : WideString);
procedure DM_SetReleaseZipPath(AValue : WideString);
procedure DM_SetTimeStampedOutputFolder(AValue : Boolean);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ShowVariantsDrawingStylesDialog(const AValue : IVariantOption) : IVariantOption;
procedure DM_StartCrossProbing(CtrlDoesSwitch : Boolean);
procedure DM_StartNavigation;
function DM_SuspendContinuousCompilation : Boolean;
function DM_ToDoManager : IToDoManager;
function DM_TopLevelLogicalDocument : IDocument;
function DM_TopLevelPhysicalDocument : IDocument;
function DM_TryToResolveDocumentSpecialString(const AName : WideString, const ADocumentFileName : WideString, out AValue : WideString) : Boolean;
function DM_TryToResolveSpecialString(const AName : WideString, out AValue : WideString) : Boolean;
function DM_UpdateConstraints : LongBool;
procedure DM_UpdateSchObjectErrorFields(const SchHandle : WideString, ErrorKind : TErrorKind, Suppressed : Boolean);
function DM_UserID : WideString;
procedure DM_Validate;
function DM_ValidateManagedOutputJobs : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VariantManager : IVariantManager;
function DM_Vault : IEDMS_Vault;
function DM_VaultGUID : WideString;
function DM_VaultHRID : WideString;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViolationCount : Integer;
function DM_Violations(Index : Integer) : IViolation;
function GetNavigationHistory : INavigationHistory;
property VCSProject : IInterface

## IBoardStackReportSettings (10 members)
function GetState_ColumnName(const AIndex : Integer) : WideString;
function GetState_ColumnsCount : Integer;
function GetState_ColumnTitle(const AIndex : Integer) : WideString;
function GetState_ColumnVisible(const AIndex : Integer) : Boolean;
function GetState_Units : TUnit;
procedure SetState_ColumnVisible(const AIndex : Integer, const AVisible : Boolean);
procedure SetState_MoveDown(const AIndex : Integer);
procedure SetState_MoveUp(const AIndex : Integer);
procedure SetState_NewColumn(const ATitle : WideString, const Name : WideString, const AVisible : Boolean);
procedure SetState_Units(const AValue : TUnit);

## IBoundaryCell (15 members)
function GetCellFunction : TCellFunction;
function GetCellKind : TCellKind;
function GetCellNumber : Integer;
function GetControlCell : IBoundaryCell;
function GetControlCellNumber : Integer;
function GetCurrentValue : Integer;
function GetDescription : WideString;
function GetDisableResult : TDisableResult;
function GetDisableValue : TBitValue;
function GetEntity : IBSDLEntity;
function GetPin : IScanPin;
function GetPortId : WideString;
function GetSafeBit : TBitValue;
function GetShortDescription : WideString;
function GetTargetCell : IBoundaryCell;

## IBreakpoint (5 members)
property Enabled : Boolean
property FileName : WideString
property Line : Integer
procedure SetFocus;
property Valid : Boolean

## IBreakpointMonitor (6 members)
procedure Changed(aBreakpoint : IBreakpoint);
procedure EnabledChanged(aBreakpoint : IBreakpoint);
procedure Focused(aBreakpoint : IBreakpoint);
procedure Moved(aBreakpoint : IBreakpoint, OldFileName : WideString, OldLine : Integer);
procedure Remove(aBreakpoint : IBreakpoint);
procedure ValidChanged(aBreakpoint : IBreakpoint);

## IBSDLEntity (32 members)
function GetBoundaryCell(Index : Integer) : IBoundaryCell;
function GetBoundaryCellCount : Integer;
function GetBoundaryLength : Integer;
function GetCompliancePattern : WideString;
function GetConformanceStatement : WideString;
function GetDesignWarning : WideString;
function GetFilename : WideString;
function GetIdCode : Cardinal;
function GetInstruction_BYPASS : Cardinal;
function GetInstruction_CLAMP : Cardinal;
function GetInstruction_EXTEST : Cardinal;
function GetInstruction_HIGHZ : Cardinal;
function GetInstruction_IDCODE : Cardinal;
function GetInstruction_SAMPLE : Cardinal;
function GetInstruction_USERCODE : Cardinal;
function GetInstructionLength : Integer;
function GetInstructionOpcode(Index : Integer) : IInstructionOpCode;
function GetInstructionOpcodeCount : Integer;
function GetName : WideString;
function GetPin(Index : Integer) : IScanPin;
function GetPin_TCK : IScanPin;
function GetPin_TDI : IScanPin;
function GetPin_TDO : IScanPin;
function GetPin_TMS : IScanPin;
function GetPin_TRST : IScanPin;
function GetPinCount : Integer;
function GetPinMapping(Index : Integer) : IPinMapping;
function GetPinMappingCount : Integer;
function GetRegisterAssociation(Index : Integer) : IRegisterAssociation;
function GetRegisterAssociationCount : Integer;
function GetScanClockHaltMode : TScanClockHaltMode;
function GetScanClockMaxSpeed : Double;

## IBSDLObject (3 members)
function GetDescription : WideString;
function GetEntity : IBSDLEntity;
function GetShortDescription : WideString;

## IBus (65 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusKind : TBusKind;
function DM_BusName : WideString;
function DM_BusRange1 : WideString;
function DM_BusRange2 : WideString;
function DM_BusRangeValue1 : Integer;
function DM_BusRangeValue2 : Integer;
function DM_BusWidth : Integer;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_Electric : TPinElectrical;
function DM_FullBusName : WideString;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_HasItemOnDocument(Document : IDocument) : Boolean;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsLocal : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_RangeDefinedByValue : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_Scope : TNetScope;
function DM_SecondaryCrossProbeString : WideString;
function DM_SectionCount : Integer;
function DM_Sections(Index : Integer) : INet;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SignalType : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
function DM_WireCount : Integer;
function DM_Wires(Index : Integer) : INet;
property VCSProject : IInterface

## ICable (49 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DesignatorLocationX : Integer;
function DM_DesignatorLocationY : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ICapabilityList (15 members)
property Objects[i: Integer] : IInterface
property Capability[i: Integer] : WideString
procedure AddFromOther(const aList : ICapabilityList);
procedure AddFromString(const aString : WideString);
procedure AddObject(const aString : WideString, aObject : IInterface);
function Contains(const aCapability : WideString) : Boolean;
function ContainsAll(const aCapabilityList : ICapabilityList) : Boolean;
function ContainsAny(const aCapabilityList : ICapabilityList) : Boolean;
property Count : Integer
procedure FromOther(const aList : ICapabilityList);
procedure FromString(const aString : WideString);
function IsReadOnly : Boolean;
procedure Remove(const aCapability : WideString);
procedure RemoveOthers(const aList : ICapabilityList);
function ToString : WideString;

## ICategorizedServerView (20 members)
property Caption : WideString
property Category : WideString
procedure FocusFirstTabStop;
procedure GetBounds(var ALeft : Integer, var ATop : Integer, var AWidth : Integer, var AHeight : Integer);
function GetFavoritesViewState(const AAddFavoriteView : LongBool) : WideString;
function GetViewState : WideString;
property Handle : HWND
procedure Hide;
property IsPanel : LongBool
procedure ParentWindowCreated;
procedure ParentWindowDestroyed;
procedure ReceiveNotification(const ANotification : INotification);
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetFavoritesViewState(const Astate : WideString);
procedure SetFocus;
procedure SetParentWindow(const ParentWindow : IExternalFormHolder);
procedure SetViewState(const Astate : WideString);
procedure Show;
property SubCategory : WideString
property ViewName : WideString

## IChangeManager (31 members)
procedure CreateECO_AddMember(const ATargetDocument : IDocument, const AReferenceMember : IDMObject, const AReferenceParent : IDMObject, const ATargetParent : IDMObject);
procedure CreateECO_AddMember_2(const ATargetDocument : IDocument, const AReferenceMember : IDMObject, const AReferenceParent : IDMObject, const ATargetParent : IDMObject, AModificationKind : TModificationKind);
procedure CreateECO_AddObject(const ATargetDocument : IDocument, const AReferenceObject : IDMObject);
procedure CreateECO_AddParameterVariation(const ATargetDocument : IDocument, const AReferenceMember : IDMObject, const AReferenceParent : IDMObject, const ATargetParent : IDMObject);
procedure CreateECO_ChangeComponentParameters(const ATargetDocument : IDocument, AModificationKind : TModificationKind, const AObjectToChange : IDMObject, const AReferenceObject : IDMObject, const AChanges : IInterfaceListAdapter);
procedure CreateECO_ChangeComponentVariation(const ATargetDocument : IDocument, AModificationKind : TModificationKind, const AObjectToChange : IDMObject, const AReferenceObject : IDMObject);
procedure CreateECO_ChangeFootprintParameters(const ATargetDocument : IDocument, AModificationKind : TModificationKind, const AObjectToChange : IDMObject, const AReferenceObject : IDMObject, const AAffectedParameters : IInterfaceListAdapter);
procedure CreateECO_ChangeObject(const ATargetDocument : IDocument, AModificationKind : TModificationKind, const AObjectToChange : IDMObject, const AReferenceObject : IDMObject);
procedure CreateECO_ChangeParameterVariation(const ATargetDocument : IDocument, AModificationKind : TModificationKind, const AObjectToChange : IDMObject, const AReferenceObject : IDMObject);
procedure CreateECO_RemoveMember(const ATargetDocument : IDocument, const AMemberObject : IDMObject, const AParentObject : IDMObject);
procedure CreateECO_RemoveMember_2(const ATargetDocument : IDocument, const AMemberObject : IDMObject, const AParentObject : IDMObject, AModificationKind : TModificationKind);
procedure CreateECO_RemoveObject(const ATargetDocument : IDocument, const AObjectToRemove : IDMObject);
procedure CreateECO_RemoveParameterVariation(const ATargetDocument : IDocument, const AMemberObject : IDMObject, const AParentObject : IDMObject);
procedure DM_CreateECO_AddMember(const ATargetDocument : IDocument, const AReferenceMember : IDMObject, const AReferenceParent : IDMObject, const ATargetParent : IDMObject);
procedure DM_CreateECO_ChangeObject(const ATargetDocument : IDocument, AModificationKind : TModificationKind, const AObjectToChange : IDMObject, const AReferenceObject : IDMObject);
procedure DM_CreateECO_RemoveMember(const ATargetDocument : IDocument, const AMemberObject : IDMObject, const AParentObject : IDMObject);
procedure DM_CreateECO_SwapPin(const TargetDocument : IDocument, const TargetComponent : IComponent, const TargetPin : INetItem, const NewPinNumber : WideString, const OldPinNet : WideString, const NewPinNet : WideString);
function DM_DoEditProperties : Boolean;
function DM_ExecuteChanges(IsSilent : LongBool) : LongBool;
procedure DM_SetIsApply(AValue : Boolean);
procedure DM_SetProject1(const AProject : IProject);
procedure DM_SetProject2(const AProject : IProject);
function DoEditProperties : Boolean;
function ExecuteChanges(IsSilent : LongBool) : LongBool;
function GetModification(AIndex : Integer) : IModification;
function HasPerformedAction : Boolean;
property ModificationCount : Integer
procedure NormalizePinSwaps(const AProject1 : IProject, const AProject2 : IProject);
function PerformActions : Boolean;
procedure SetIsApply(AValue : Boolean);
property SilentMode : Boolean

## IChangeManagerFactory (1 members)
function CreateChangeManager(const AProject1 : IProject, const AProject2 : IProject, const AUpdateParamOptions : IUpdateParameterOptions, ADisplayCompilationErrors : Boolean) : IChangeManager;

## IChangeNotifier (1 members)
procedure Changed;

## IChannelClass (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MemberCount : Integer;
function DM_Members(Index : Integer) : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IClearancesMatrix (52 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_Rule(Index : Integer) : IClearancesMatrixRule;
function DM_RulesCount : Integer;
function DM_SameNetClearances : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_Scope(Index : Integer) : IClearancesMatrixScope;
function DM_ScopesCount : Integer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IClearancesMatrixRule (74 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_Attributes : WideString;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_Comment : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Description : WideString;
procedure DM_DoCrossProbeBase;
function DM_FromScope : IClearancesMatrixScope;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsAdvanced : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LayerId : Cardinal;
function DM_LayerType : Integer;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MaxViaHole : Integer;
function DM_MaxViaWidth : Integer;
function DM_MaxWidth : Integer;
function DM_MinViaHole : Integer;
function DM_MinViaWidth : Integer;
function DM_MinWidth : Integer;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OverrideClearancePairs : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PreferedWidth : Integer;
function DM_PrimaryCrossProbeString : WideString;
function DM_Priority : Integer;
function DM_RoutingLayers(IndexLayer : Integer) : Integer;
function DM_RuleKind : Integer;
function DM_RuleName : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_Scope1Expression : WideString;
function DM_Scope2Expression : WideString;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_Topology : Integer;
function DM_ToScope : IClearancesMatrixScope;
function DM_UniqueId : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViaHole : Integer;
function DM_ViaStyle : Integer;
function DM_ViaWidth : Integer;
property VCSProject : IInterface

## IClearancesMatrixScope (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_ItemType : Cardinal;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SameAs(const Other : IClearancesMatrixScope) : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IClient (138 members)
property ServerModuleByName[AModuleName: WideString] : IServerModule
property ServerModule[Index: Integer] : IServerModule
property AccessFeaturesInDevelopment : Boolean
procedure AddServerView(const AView : IServerView);
function AddViewToFavorites(const AView : IServerDocumentView, AIsSnippet : Boolean) : Boolean;
property ApplicationHandle : Integer
procedure ApplicationIdle;
function ArePreferencesReadOnly(const AServerName : WideString, const AFormName : WideString) : LongBool;
procedure BeginDisableInterface;
procedure BeginDocumentLoad;
procedure BeginRecoverySave;
procedure BeginTransaction;
procedure BroadcastNotification(ANotification : INotification);
procedure BroadcastNotificationAsynchronously(ANotification : INotification);
procedure ClearMemorySnapshots;
property ClientAPI : IClientAPI_Interface
procedure CloseDocument(const ADocument : IServerDocument);
property CommandLauncher : ICommandLauncher
property Count : Integer
procedure CreateMemoryShapshot(const ASnapshotName : WideString);
property CurrentView : IServerDocumentView
procedure DisableServerNotificationHandler(const Handler : IServerModule);
procedure DispatchDocumentNotification(const ServerDocument : IServerDocument, const Notification : INotification);
procedure DispatchNotification(const AServerModule : IServerModule, const ANotification : INotification);
procedure DisplayDocsTogetherForCompare;
procedure DisplaySplashScreen(AImagePath : WideString, AFadeInMillis : Integer, ADisplayMillis : Integer, AFadeOutMillis : Integer, AAlphaStep : Integer);
property DocumentPreviewHint : IDocumentPreviewHint
property DocumentPreviewManager : IDocumentPreviewManager
property DXPAltiumPortal : IDXPAltiumPortal
function EnableTestsAutomation : Boolean;
procedure EndDisableInterface;
procedure EndDocumentLoad(AShow : LongBool);
procedure EndRecoverySave;
procedure EndTransaction;
function GetDefaultExtensionForDocumentKind(const DocumentKind : WideString) : WideString;
function GetDocumentByPath(const AFilePath : WideString) : IServerDocument;
function GetDocumentCaptionFromDocumentKind(const ADocumentKind : WideString) : WideString;
function GetDocumentCaptionFromDocumentPath(const APath : WideString) : WideString;
function GetDocumentKindFromDocumentFileName(const Path : WideString, CheckForTextFiles : Boolean) : WideString;
function GetDocumentKindFromDocumentPath(const Path : WideString) : WideString;
function GetDocumentKindFromDocumentPathEx(const Path : WideString, var DocSubKind : WideString) : WideString;
function GetDotNetObjectInterface(const AModuleName : WideString) : IInterface;
function GetDXPSplash : IDXPSplash;
function GetDXPUrlCommandData(const Url : WideString, out Command : WideString, out Params : WideString) : Boolean;
function GetDXPWorkspace : IDXPWorkSpace;
function GetDynamicHelpManager : IDynamicHelpManager;
function GetGlobalPreferencesRevisionGUID : WideString;
function GetGlobalPreferencesVaultGUID : WideString;
function GetInternalOptions : IInternalOptions;
function GetInternalOptionsManager : IServerInternalOptionsManager;
function GetIsUpdateRequired : Boolean;
function GetLayoutSaveLoadManager : ISaveLoadLayout;
function GetLicenseManager : ILicenseManager;
function GetLocalSnippetManager : ILocalSnippetManager;
function GetMacroManager : IMacroManager;
function GetOptionsSet(Index : Integer) : IDocumentOptionsSet;
function GetOptionsSetByName(const AName : WideString) : IDocumentOptionsSet;
function GetOptionsSetCount : Integer;
function GetPanelInfoByName(const APanelName : WideString) : IServerPanelInfo;
function GetPreferencesChanged : Boolean;
function GetProductName : WideString;
function GetProductVersion : WideString;
function GetRealMainWindowHandle : NativeUInt;
function GetSceneManager : ISceneManager;
function GetServerNameByPLID(const APLID : WideString) : WideString;
function GetServerRecord(Index : Integer) : IServerRecord;
function GetServerRecordByFeature(const AFeature : WideString) : IServerRecord;
function GetServerRecordByName(const AModuleName : WideString) : IServerRecord;
function GetServerRecordCount : Integer;
function GetServerViewFromName(const ViewName : WideString) : IServerView;
function GetStackTraceForLiveObjects(const AServerName : WideString, const AClassName : WideString) : IStrings;
function GetTechnologySets(var ValidAtTimestamp : Cardinal) : WideString;
function GetTechnologySubscriptionExpirationDate(const ATechnologySet : WideString) : TDateTime;
function GetVersion : WideString;
function GetVersionHelper : IVersionHelper;
function GetWindowKindByName(const AWindowKindName : WideString) : IServerWindowKind;
property GUIManager : IGUIManager
procedure HandleException(const AMessage : WideString);
procedure HideDocument(const ADocument : IServerDocument);
function InRecoverySave : LongBool;
function InTestMode : Boolean;
function InvokeCustomDialog(const DialogName : string, var Params : WideString) : Integer;
function IsDocumentOfKind(const Path : WideString, const DocKind : WideString) : Boolean;
function IsDocumentOpen(const AFilePath : WideString) : LongBool;
function IsInitialized : LongBool;
function IsQuitting : Boolean;
property LabsManager : ILabsManager
function LastActiveDocumentOfType(const AType : WideString) : IServerDocument;
function LicenseInfoStillValid(const RetrievedAt : Cardinal) : LongBool;
procedure LoadCustomizationsFromFile(ARCSFileName : WideString);
procedure LoadCustomizationsFromFileByMode(ARCSFileName : WideString, ARemoveAllUserResources : Boolean);
procedure LoadCustomizationsFromPath(ARCSFilePath : WideString);
procedure LoadGlobalPreferencesFromVault(const VaultGuid : WideString, const ItemRevisionGUID : WideString);
procedure LoadPreferencesFromVault(const AVaultGuid : WideString, const AItemRevisionGuid : WideString, AIsSilent : Boolean);
property MainWindowHandle : HWND
property NavigationSystem : INavigationSystem
function OpenDocument(const AKind : WideString, const AFileName : WideString) : IServerDocument;
function OpenDocumentShowOrHide(const AKind : WideString, const AFileName : WideString, AShowInTree : Boolean) : IServerDocument;
function OpenNewDocument(const AKind : WideString, const AFileName : WideString, const ANewName : WideString, ReuseExisting : Boolean) : IServerDocument;
property OptionsManager : IOptionsManager
property PluginsRegistry : IPluginsRegistry
procedure PreloadImage(const AFileName : WideString);
procedure PreparePreferencesToRelease(const AFileName : WideString, out AFolderName : WideString);
property ProcessControl : IProcessControl
function ProductInfo : IProductInfo;
procedure QuerySystemFont(QueryMode : TFontQueryMode, var AUseSysFont : Boolean, var AFontName : WideString, var AFontSize : Integer, var AFontStyle : TFontStyles, var AFontColor : TColor, var AFontCharset : TFontCharset);
procedure RegisterCustomDialog(const DialogName : string, Dialog : ICustomDialog);
procedure RegisterCustomDialogIfNotExists(const DialogName : string, Dialog : ICustomDialog);
procedure RegisterDocumentNotificationHandler(const ServerDocument : IServerDocument, const Handler : INotificationHandler, const NotificationFilter : WideString);
procedure RegisterDotNetObjectInterface(const AModuleName : WideString, const AInterface : IInterface);
procedure RegisterFilteredNotificationHandler(const Handler : INotificationHandler, const NotificationFilter : WideString);
procedure RegisterNotificationHandler(const Handler : INotificationHandler);
procedure RegisterServerNotificationHandler(const ServerModule : IServerModule, const Handler : INotificationHandler, const NotificationFilter : WideString);
procedure ReleaseGlobalPreferencesToVault(const VaultGuid : WideString, const ItemGUID : WideString);
procedure RemoveServerView(const AView : IServerView);
property RibbonManager : IRibbonManager
function SaveCustomizationsForExport : WideString;
property SearchManager : ISearchManager
property SecurityManager : ISecurityManager
property SecurityServerManager : ISecurityServerManager
procedure SetIsUpdateRequired(AValue : Boolean);
procedure SetPreferencesChanged(Value : Boolean);
procedure ShowDocument(const ADocument : IServerDocument);
procedure ShowDocumentDontFocus(const ADocument : IServerDocument);
procedure ShowMemoryReport;
procedure ShowMemorySnapshotDifference(const ASnapshotName : WideString);
function StartServer(const AModuleName : WideString) : Boolean;
procedure StartStackTraceCollection(const AClassName : WideString);
procedure StartSuspendTestMode;
function StopServer(const AModuleName : WideString, UnloadDLL : Boolean) : Boolean;
procedure StopStackTraceCollection(const AClassName : WideString);
procedure StopSuspendTestMode;
property TimerManager : ITimerManager
function UIAutomationFactory : IInterface;
procedure UnregisterDocumentNotificationHandler(const ServerDocument : IServerDocument, const Handler : INotificationHandler);
procedure UnregisterNotificationHandler(const Handler : INotificationHandler);
procedure UnregisterServerNotificationHandler(const ServerModule : IServerModule, const Handler : INotificationHandler);
property UpdatesManager : IUpdatesManager

## IClient2 (1 members)
procedure SetInternalOptions(const AValue : IInternalOptions);

## IClientAPI_AgileInterface (9 members)
function GetGlobalPreferencesRevisionGUID : WideString;
function GetInternalOptions : IInternalOptions;
function GetIsBetaExtensionExists(var Value : Boolean) : Boolean;
function GetIsDevFeaturesEnabled(var Value : Boolean) : Boolean;
function GetIsServerActive(const AServerName : WideString, var Value : Boolean) : Boolean;
function InTestMode : Boolean;
function IsTechnologySetSupported(const ATechnologySet : WideString) : Boolean;
function SpecialKey_SoftwareAltiumAppDXPGlobal : WideString;
function StartedInTestMode : Boolean;

## IClientAPI_Interface (217 members)
procedure AddShutdownMessage(S : WideString);
procedure AddStartupMessage(S : WideString);
procedure BeginExceptionHandling;
procedure CheckSynchronize;
procedure ClearErrorInfo;
function ConvertFileNameToExeFileName(Name : WideString) : WideString;
function ConvertFileNameToWildCard(Path : WideString) : WideString;
procedure EndCursor;
procedure EndExceptionHandling;
procedure EraseFile(FName : WideString);
function ExistSpecific(FileName : WideString) : Boolean;
function ExtractFileDirFromPath(Path : WideString) : WideString;
function ExtractFileExtFromPath(Path : WideString) : WideString;
function ExtractFileNameFromPath(Path : WideString) : WideString;
function ExtractWholeFileNameFromPath(Path : WideString) : WideString;
function FilePathInShort(Path : WideString) : WideString;
function ForceFileNameExtension(Name : WideString, Ext : WideString) : WideString;
function GetActivateLastActiveOnClose : Boolean;
function GetAlwaysShowNavBarInTasks : Boolean;
function GetAnalyticsMonitor : IAnalyticsMonitor;
function GetAutoHideDocumentsBar : Boolean;
function GetAutoShowComponentSymbols : Boolean;
function GetBuiltInNavigationBar : Boolean;
function GetContractedEnvironmentPath(Path : WideString) : WideString;
function GetCurrentInstallationUniqueID : WideString;
function GetCurrentOutputGenerator : IInterface;
function GetCurrentProductFullBuild : WideString;
function GetDialogsSizeRegKeyName : WideString;
function GetDpiScalingSuffix : WideString;
function GetDxpNavigator : IDXPNavigator;
function GetEncryptUtils : IEncryptUtils;
function GetEqualButtonsInDocumentsBar : Boolean;
function GetExpandedEnvironmentPath(Path : WideString) : WideString;
function GetFavoritesThumbnailSize : IDispatch;
function GetFeatureChecker : IFeatureChecker;
function GetFileSize(FName : WideString) : Integer;
function GetGroupingInDocumentsBar : TDocumentsBarGrouping;
function GetHelpTopic(const AHelpTopicID : WideString, out HelpTopicName : WideString) : Boolean;
function GetIntegratedHelpSystem : Boolean;
function GetInternalOptions : IInternalOptions;
function GetLogManager : ILogManager;
function GetMiddleClickClosesDocumentTab : Boolean;
function GetMultilineDocumentsBar : Boolean;
function GetNetworkActivityMonitor : INetworkActivityMonitor;
function GetOptionsManager : IOptionsManager;
function GetPrefAnimatedPanels : Boolean;
function GetPrefAnimationSpeed : Integer;
function GetPrefAutoTransparency : Boolean;
function GetPrefConnectivityInsightClickPreview : Boolean;
function GetPrefConnectivityInsightClickTextHint : Boolean;
function GetPrefConnectivityInsightClickTree : Boolean;
function GetPrefConnectivityInsightHoverDelay : Integer;
function GetPrefConnectivityInsightHoverPreview : Boolean;
function GetPrefConnectivityInsightHoverTextHint : Boolean;
function GetPrefConnectivityInsightHoverTree : Boolean;
function GetPrefDynamicAutoTransparency : Boolean;
function GetPrefEnableConnectivityInsight : Boolean;
function GetPrefEnableDocumentInsight : Boolean;
function GetPrefEnableHyperlinkInsight : Boolean;
function GetPrefEnableProjectInsight : Boolean;
function GetPrefEnableSupplyChainInsight : Boolean;
function GetPrefHideBinderViewTabs : Boolean;
function GetPrefHideDelay : Integer;
function GetPrefHideFloatingPanels : Boolean;
function GetPrefHyperlinkInsightClickEnabled : Boolean;
function GetPrefHyperlinkInsightHoverEnabled : Boolean;
function GetPrefNoRestoreKind(Index : Integer) : WideString;
function GetPrefNoRestoreKindCount : Integer;
function GetPrefOpenTasksIfNothingOpen : Boolean;
function GetPrefPathInTitleBar : Boolean;
function GetPrefPopupDelay : Integer;
function GetPrefRememberFormForDocKind : Boolean;
function GetPrefRestoreOpenDocuments : Boolean;
function GetPrefSaveToolsLayout : Boolean;
function GetPrefSuppressStartupScreen : Boolean;
function GetPrefTransparencyForce : Integer;
function GetPrefTransparencyHighest : Integer;
function GetPrefTransparencyLowest : Integer;
function GetPrefUseLuna : Boolean;
function GetPrefUseShadow : Boolean;
function GetPrevSettings_SpecialFolder_AltiumApplicationData(AIndex : Integer) : WideString;
function GetPrevSettings_SpecialKey_SoftwareAltiumAppDXP(AIndex : Integer) : WideString;
function GetRecentLayout(AIndex : Integer) : WideString;
function GetRecentLayoutCount : Integer;
function GetReloadDocumentsModifiedOutside : TConfirmationOption;
function GetResourceMonitor : IResourceMonitor;
function GetServerName(const ADllName : WideString, out ServerName : WideString) : Boolean;
function GetStringFromFile(FileName : WideString, UserID : WideString) : WideString;
function GetSystemPreferences : ISystemPreferences;
function GetTranslationManager : ITranslationManager;
function GetUACUtils : IUACUtils;
function GetUIDialogManager : IUIDialogManager;
function GetUseExternalWebBrowser : Boolean;
function GetUseLocalizedDialogs : Boolean;
function GetUseLocalizedResources : Boolean;
function GetUseSystemLocaleLanguage : Boolean;
function GetVSStyleCtrlTab : Boolean;
function GetWin7TaskbarJumpLists : Boolean;
function GetWin7TaskbarProgress : Boolean;
function GetWin7TaskbarThumbnails : Boolean;
procedure HandleException(const Message : WideString);
procedure HideProductStartup;
function IsAltiumViewer : Boolean;
function IsErrorInfoSet : WordBool;
function IsFileReadOnly(S : WideString) : Boolean;
procedure MakeNewBackUp(FileName : WideString);
function RemoveModuleFromMemory(S : WideString) : Integer;
procedure RemoveSynchronize(const ASync : IThreadSynchronize);
function SameFileName(S1 : WideString, S2 : WideString, MatchFileNameKind : TMatchFileNameKind) : Boolean;
procedure SetActivateLastActiveOnClose(Value : Boolean);
procedure SetAlwaysShowNavBarInTasks(Value : Boolean);
procedure SetAutoHideDocumentsBar(Value : Boolean);
procedure SetAutoShowComponentSymbols(Value : Boolean);
procedure SetBuiltInNavigationBar(Value : Boolean);
procedure SetCurrentOutputGenerator(const Generator : IInterface);
procedure SetDisableClearFlag(Value : WordBool);
procedure SetEqualButtonsInDocumentsBar(Value : Boolean);
procedure SetErrorInfo(const ErrorMsg : WideString, const ErrorReport : WideString, ErrorAddr : Int64);
procedure SetFavoritesThumbnailSize(const Value : IDispatch);
procedure SetFileFromString(FileName : WideString, UserID : WideString, Data : WideString);
procedure SetGroupingInDocumentsBar(Value : TDocumentsBarGrouping);
procedure SetIntegratedHelpSystem(Value : Boolean);
procedure SetMiddleClickClosesDocumentTab(Value : Boolean);
procedure SetMultilineDocumentsBar(Value : Boolean);
procedure SetPrefAnimatedPanels(Value : Boolean);
procedure SetPrefAnimationSpeed(Value : Integer);
procedure SetPrefAutoTransparency(Value : Boolean);
procedure SetPrefConnectivityInsightClickPreview(Value : Boolean);
procedure SetPrefConnectivityInsightClickTextHint(Value : Boolean);
procedure SetPrefConnectivityInsightClickTree(Value : Boolean);
procedure SetPrefConnectivityInsightHoverDelay(Value : Integer);
procedure SetPrefConnectivityInsightHoverPreview(Value : Boolean);
procedure SetPrefConnectivityInsightHoverTextHint(Value : Boolean);
procedure SetPrefConnectivityInsightHoverTree(Value : Boolean);
procedure SetPrefDynamicAutoTransparency(Value : Boolean);
procedure SetPrefEnableConnectivityInsight(Value : Boolean);
procedure SetPrefEnableDocumentInsight(Value : Boolean);
procedure SetPrefEnableHyperlinkInsight(Value : Boolean);
procedure SetPrefEnableProjectInsight(Value : Boolean);
procedure SetPrefEnableSupplyChainInsight(Value : Boolean);
procedure SetPrefHideBinderViewTabs(Value : Boolean);
procedure SetPrefHideDelay(Value : Integer);
procedure SetPrefHideFloatingPanels(Value : Boolean);
procedure SetPrefHyperlinkInsightClickEnabled(Value : Boolean);
procedure SetPrefHyperlinkInsightHoverEnabled(Value : Boolean);
procedure SetPrefNoRestoreKindAdd(Value : WideString);
procedure SetPrefNoRestoreKindClear;
procedure SetPrefOpenTasksIfNothingOpen(Value : Boolean);
procedure SetPrefPathInTitleBar(Value : Boolean);
procedure SetPrefPopupDelay(Value : Integer);
procedure SetPrefRememberFormForDocKind(Value : Boolean);
procedure SetPrefRestoreOpenDocuments(Value : Boolean);
procedure SetPrefSaveToolsLayout(Value : Boolean);
procedure SetPrefSuppressStartupScreen(Value : Boolean);
procedure SetPrefTransparencyForce(Value : Integer);
procedure SetPrefTransparencyHighest(Value : Integer);
procedure SetPrefTransparencyLowest(Value : Integer);
procedure SetPrefUseLuna(Value : Boolean);
procedure SetPrefUseShadow(Value : Boolean);
procedure SetReloadDocumentsModifiedOutside(Value : TConfirmationOption);
procedure SetSoftErrorInfo(const ErrorMsg : WideString);
procedure SetUIDialogManager(const Value : IUIDialogManager);
procedure SetUseExternalWebBrowser(Value : Boolean);
procedure SetUseLocalizedDialogs(Value : Boolean);
procedure SetUseLocalizedResources(Value : Boolean);
procedure SetUseSystemLocaleLanguage(Value : Boolean);
procedure SetVSStyleCtrlTab(Value : Boolean);
procedure SetWin7TaskbarJumpLists(Value : Boolean);
procedure SetWin7TaskbarProgress(Value : Boolean);
procedure SetWin7TaskbarThumbnails(Value : Boolean);
procedure ShowHelpTopic(ATopicName : WideString);
procedure ShowProductStartup(aBitmap : WideString);
function SpecialFolder_AdvSimExtension : WideString;
function SpecialFolder_AllUserDocuments : WideString;
function SpecialFolder_AltiumAllUserApplicationData : WideString;
function SpecialFolder_AltiumAllUserDocuments : WideString;
function SpecialFolder_AltiumApplicationData : WideString;
function SpecialFolder_AltiumConstraintFiles : WideString;
function SpecialFolder_AltiumDesignExplorer : WideString;
function SpecialFolder_AltiumEmbeddedConstraintFiles : WideString;
function SpecialFolder_AltiumExtensions : WideString;
function SpecialFolder_AltiumHelp : WideString;
function SpecialFolder_AltiumLibrary : WideString;
function SpecialFolder_AltiumLibraryEDIF : WideString;
function SpecialFolder_AltiumLibraryIntegrated : WideString;
function SpecialFolder_AltiumLocalApplicationData : WideString;
function SpecialFolder_AltiumLocalHelp : WideString;
function SpecialFolder_AltiumMeshApplicationData : WideString;
function SpecialFolder_AltiumPublicDocuments : WideString;
function SpecialFolder_AltiumScripts : WideString;
function SpecialFolder_AltiumSecurityAllUserApplicationData : WideString;
function SpecialFolder_AltiumSecurityService : WideString;
function SpecialFolder_AltiumSystem : WideString;
function SpecialFolder_AltiumSystemButtons : WideString;
function SpecialFolder_AltiumSystemDocumentImages : WideString;
function SpecialFolder_AltiumSystemLibrary : WideString;
function SpecialFolder_AltiumSystemOutputJob : WideString;
function SpecialFolder_AltiumSystemResources : WideString;
function SpecialFolder_AltiumSystemTemplates : WideString;
function SpecialFolder_AltiumSystemTextures : WideString;
function SpecialFolder_AltiumSystemWizardImages : WideString;
function SpecialFolder_AltiumTaskingApplicationData : WideString;
function SpecialFolder_AltiumVaultEditCache : WideString;
function SpecialFolder_AltiumViewConfigurationsApplicationData : WideString;
function SpecialFolder_CommonDocumnetTemplates : WideString;
function SpecialFolder_DesignExamples : WideString;
function SpecialFolder_DesignTemplates : WideString;
function SpecialFolder_ExportPreferences : WideString;
function SpecialFolder_MyDesigns : WideString;
function SpecialFolder_MyDocuments : WideString;
function SpecialFolder_Recovery : WideString;
function SpecialFolder_TemplatesForAllUsers : WideString;
function SpecialKey_SoftwareAltiumApp : WideString;
function SpecialKey_SoftwareAltiumAppDXP : WideString;
function SpecialKey_SoftwareAltiumAppDXPGlobal : WideString;
procedure Synchronize(const ASync : IThreadSynchronize);
function UpdateFont(const Font : IDispatch) : LongBool;

## IClientAPI_Interface2 (6 members)
procedure BeginIgnoreOutsideChanges;
procedure EndIgnoreOutsideChanges;
function GetLastErrorMessage : WideString;
function GetLastErrorReport : WideString;
function GetProfilerManager : IProfilerManager;
function IsIgnoreOutsideChanges : Boolean;

## IClientAPI_OutsideChangesDetection (6 members)
procedure BeginIgnoreOutsideChanges;
procedure EndIgnoreOutsideChanges;
function GetLastErrorMessage : WideString;
function GetLastErrorReport : WideString;
function GetProfilerManager : IProfilerManager;
function IsIgnoreOutsideChanges : Boolean;

## IClientAPI_OutsideChangesDetection2 (5 members)
procedure AddFileToIgnored(const FilePath : WideString);
function IsFileIgnored(const FilePath : WideString) : Boolean;
function IsNewFileMonitorActive : Boolean;
procedure RemoveFileFromIgnored(const FilePath : WideString);
function WasFileIgnored(const FilePath : WideString, AtTime : Double) : Boolean;

## IClientWebSocket (5 members)
property CanReceiveOrSend : Boolean
procedure Close(ACloseCode : Integer, const ACloseReason : WideString);
procedure Send(const AMessage : WideString);
procedure SetCallBackManager(const ACallBackManager : IClientWebSocketCallBackManager);
procedure Start;

## IClientWebSocketCallBackManager (5 members)
procedure HandleOnClose(ACloseCode : Integer, const ACloseReason : WideString, AIsTerminated : Boolean);
procedure HandleOnOpen;
procedure HandleOnRead(const AData : WideString);
procedure HandleOnTimeout;
procedure ResetHandlers;

## IClientWebSocketFactory (1 members)
function CreateWebSocket(const aURI : WideString, const ASessionID : WideString, const AClientId : WideString, const ACallBackManager : IClientWebSocketCallBackManager, const ALogger : ILogger) : IClientWebSocket;

## IClipboardDocument (3 members)
function Clipboard_GetFormat(Index : Integer) : Cardinal;
function Clipboard_GetFormatCount : Integer;
function Clipboard_PasteFormat(Format : Cardinal) : LongBool;

## IClockCore (1 members)
function FindClockConstraintByName(const AName : WideString) : IClockModifierData;

## IClockCoreGenerator (1 members)
function ValidateConfig(const AClockCore : IClockCore) : LongBool;

## IClockCoreTemplate (10 members)
procedure AddCustomVars;
function InternalActual(Index : Integer) : IClockOutputActual;
function InternalActualCount : Integer;
function OutputActual(Index : Integer) : IClockOutputActual;
function OutputActualCount : Integer;
function TargetInput(Index : Integer) : IClockModifierTarget;
function TargetInputCount : Integer;
function TargetOutput(Index : Integer) : IClockModifierTarget;
function TargetOutputCount : Integer;
procedure VarAdd(const AName : WideString, AIncludeIf : LongBool, const AReplaceWith : WideString);

## IClockCoreTemplateGenerator (1 members)
function PreProcess(const AClockCoreTemplate : IClockCoreTemplate) : LongBool;

## IClockModifierData (9 members)
property CurDiv : Double
property CurMul : Double
property CurPhase : Double
property InFreq : Double
property InPhase : Double
property Name : WideString
property OutFreq : Double
property OutPhase : Double
property Score : Double

## IClockModifierTarget (9 members)
property FreqMax : Double
property FreqMin : Double
property FreqStep : Double
property Ignore : LongBool
property Last : LongBool
property Name : WideString
property Outputs : LongWord
property Phase : Double
property PostDivider : Double

## IClockOutputActual (6 members)
property Divider : Double
property Multipler : Double
property Name : WideString
property OutFreq : Double
property OutPhase : Double
property OutputMap : Integer

## ICommandGetState (1 members)
procedure GetState(AProcess : PWideChar, AParameters : PWideChar, const AContext : IServerDocumentView, var Enabled : LongBool, var Checked : LongBool, var Visible : LongBool, Caption : PWideChar, ImageFile : PWideChar);

## ICommandLauncher (2 members)
procedure GetCommandState(ACommandName : PWideChar, AParameters : PWideChar, const AContext : IServerDocumentView, var Enabled : LongBool, var Checked : LongBool, var Visible : LongBool, Caption : PWideChar, ImageFile : PWideChar);
procedure LaunchCommand(ACommandName : PWideChar, AParameters : PWideChar, MaxParameterSize : Integer, const AContext : IServerDocumentView);

## ICommentedDocument (8 members)
procedure AddCommentThread(const ACommentThread : IEDMS_CommentThreadHolder);
procedure ClearCommentThreads;
function GetActiveCommentThread : IEDMS_CommentThreadHolder;
function GetCommentThread(const AIndex : Integer) : IEDMS_CommentThreadHolder;
function GetCommentThreadByGUID(const AThreadGUID : WideString) : IEDMS_CommentThreadHolder;
function GetCommentThreadsCount : Integer;
function SelectCommentThread(const ACommentThread : IEDMS_CommentThreadHolder) : Boolean;
procedure SetActiveCommentThread(const ACommentThread : IEDMS_CommentThreadHolder);

## ICommentedMbaDocument (3 members)
procedure EnterExternalMode;
procedure ExitExternalMode;
function GetHitResult : IDocumentPoint;

## IComponent (120 members)
procedure DM_AddConfigurationParameters;
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AllPinCount : Integer;
function DM_AssignedDesignator : WideString;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculatedDesignator : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CenterLocationX : Integer;
function DM_CenterLocationY : Integer;
function DM_ChannelOffset : Integer;
function DM_ChildProjectSheet : IDocument;
function DM_ChildVHDLEntity : WideString;
function DM_Comment : WideString;
function DM_ComponentKind : TComponentKind;
function DM_ConfigurationParameters : WideString;
function DM_ConfiguratorName : WideString;
function DM_CurrentImplementation(AType : WideString) : IComponentImplementation;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DatabaseTableName : WideString;
function DM_Description : WideString;
function DM_DesignatorLocationX : Integer;
function DM_DesignatorLocationY : Integer;
function DM_DesignatorLocked : Boolean;
function DM_DisplayMode : Byte;
procedure DM_DoCrossProbe;
procedure DM_DoCrossProbeBase;
function DM_ExternalPartHandle : WideString;
function DM_FirstPinLocationX : Integer;
function DM_FirstPinLocationY : Integer;
function DM_Footprint : WideString;
function DM_FullCrossProbeString : WideString;
function DM_FullLogicalDesignator : WideString;
function DM_FullLogicalDesignatorForDisplay : WideString;
function DM_FullPhysicalDesignator : WideString;
function DM_FullPhysicalDesignatorForDisplay : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_Height : Integer;
function DM_ImageIndex : Integer;
function DM_ImplementationCount : Integer;
function DM_Implementations(Index : Integer) : IComponentImplementation;
procedure DM_IncrementallyUpdatePhysicalDesignators(NewHasDesignatorRecord : LongBool, NewDesignatorLocked : LongBool, NewPhysicalDesignator : WideString);
function DM_InstanceCount : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsWireTermination : Boolean;
function DM_Layer : WideString;
function DM_LibraryReference : WideString;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDesignator : WideString;
function DM_LogicalOwnerDocument : IDocument;
function DM_LongDescriptorString : WideString;
function DM_MaxPartCount : Integer;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NewDesignator : WideString;
function DM_NewPartId : Integer;
function DM_NexusDeviceId : WideString;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OldPartId : Integer;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PartID : Integer;
function DM_PartIdLocked : Boolean;
function DM_PartType : WideString;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalComponentCount : Integer;
function DM_PhysicalComponents(Index : Integer) : IComponent;
function DM_PhysicalDesignator : WideString;
function DM_PhysicalPath : WideString;
function DM_PinCount : Integer;
function DM_Pins(Index : Integer) : INetItem;
function DM_PrimaryCrossProbeString : WideString;
function DM_ReferenceLocationX : Integer;
function DM_ReferenceLocationY : Integer;
function DM_Replicate(const ADocument : IDMObject) : IPart;
function DM_Rotation : Double;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetExternalPartHandle(APCBComponentHandle : WideString);
procedure DM_SetFootprintItemGUID(const AValue : WideString);
procedure DM_SetFootprintRevisionGUID(const AValue : WideString);
procedure DM_SetNewPartId(Value : Integer);
procedure DM_SetOldPartId(Value : Integer);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SourceDesignator : WideString;
function DM_SourceHierarchicalPath : WideString;
function DM_SourceLibraryName : WideString;
function DM_SourceUniqueId : WideString;
function DM_SubPartCount : Integer;
function DM_SubParts(Index : Integer) : IPart;
function DM_SubProject : WideString;
function DM_UniqueId : WideString;
function DM_UniqueIdFromFlatComponent : WideString;
function DM_UniqueIdName : WideString;
function DM_UniqueIdPath : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IComponentClass (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MemberCount : Integer;
function DM_Members(Index : Integer) : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IComponentConfigurator (16 members)
function AreConfigurableParametersEquivalent(AEncodedParamString : WideString, BEncodedParamString : WideString) : Boolean;
property ConfiguratorName : WideString
function ConfigureComponent(const ASchComponent : ISch_Component) : Boolean;
function ConfigureComponentParametrically(const ASchComponent : ISch_Component, const AParamString : WideString) : Boolean;
function GenerateNetlist(const AParameters : WideString, const AFileName : WideString) : Boolean;
function GenerateReport(const ASchComponent : ISch_Component) : WideString;
function GenerateSoftwareCode(const AInstanceName : WideString, const AConfigurationValues : WideString, AHeaderFile : IEmbeddedCode, ASourceFile : IEmbeddedCode) : Boolean;
function GetConfigurationValues(const ASchComponent : ISch_Component) : WideString;
function GetParameters(const ASchComponent : ISch_Component) : WideString;
function GetParametersFromPart(const APart : IPart) : WideString;
procedure Import_FromDialog(var AEncodedParamString : WideString);
function IsChildCoreUsed(const AChildCoreName : WideString, const ASchComponent : ISch_Component) : Boolean;
function IsChildCoreUsedByPart(const AChildCoreName : WideString, const APart : IPart) : Boolean;
function IsVerilogSupported : Boolean;
procedure SetConfigurationParametersToDefault(const ASchComponent : ISch_Component);
function UpdateSymbol(const ASchComponent : ISch_Component) : Boolean;

## IComponentFullInfo (8 members)
property PartName[APartNumber: Integer] : WideString
property AliasName : WideString
property CompName : WideString
property Description : WideString
property Offset : Integer
property Parameters : WideString
property ParametersVisibility : WideString
property PartCount : Integer

## IComponentImplementation (69 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DatafileCount : Integer;
function DM_DatafileEntity(Index : Integer) : WideString;
function DM_DatafileFullPath(Index : Integer, EntityName : WideString, FileKind : WideString, var FoundIn : WideString) : WideString;
function DM_DatafileKind(Index : Integer) : WideString;
function DM_DatafileLibIdentifierKind(Index : Integer) : TLibIdentifierKind;
function DM_DatafileLibraryIdentifier(Index : Integer) : WideString;
function DM_DatafileLocation(Index : Integer) : WideString;
function DM_DatalinksLocked : Boolean;
function DM_Description : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IntegratedModel : Boolean;
function DM_IsCurrent : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_ModelName : WideString;
function DM_ModelType : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_Part : IPart;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PortMap : WideString;
function DM_PortMapList : WideString;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetDatafileCount(ACount : Integer);
procedure DM_SetDatafileEntity(Index : Integer, AEntity : WideString);
procedure DM_SetDatafileKind(Index : Integer, AKind : WideString);
procedure DM_SetDatafileLocation(Index : Integer, ALocation : WideString);
procedure DM_SetUseComponentLibrary(AValue : Boolean);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_UseComponentLibrary : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IComponentInfo (6 members)
property PartName[APartNumber: Integer] : WideString
property AliasName : WideString
property CompName : WideString
property Description : WideString
property Offset : Integer
property PartCount : Integer

## IComponentLibraryLink (37 members)
function DM_AsDisplayString : WideString;
function DM_CreateCopy : IComponentLibraryLink;
function DM_DatabaseTableName : WideString;
function DM_DesignItemID : WideString;
function DM_Equal(const AnotherLink : IComponentLibraryLink) : LongBool;
function DM_Footprint : WideString;
function DM_IsCompatibleFootprint(const AFootprintName : WideString) : Boolean;
function DM_IsLinkedToVault : LongBool;
function DM_IsSameFootprint : LongBool;
function DM_IsValid : LongBool;
function DM_ItemGUID : WideString;
function DM_LibIdentifierKind : TLibIdentifierKind;
function DM_LibraryIdentifier : WideString;
function DM_NeedsVaultNameUpdateInLibraryData : Boolean;
function DM_RevisionGUID : WideString;
procedure DM_SetDatabaseTableName(const AValue : WideString);
procedure DM_SetDesignItemID(const AValue : WideString);
procedure DM_SetFootprint(const AValue : WideString);
procedure DM_SetIsSameFootprint(const AValue : LongBool);
procedure DM_SetItemGUID(const AValue : WideString);
procedure DM_SetLibIdentifierKind(const AValue : TLibIdentifierKind);
procedure DM_SetLibraryIdentifier(const AValue : WideString);
procedure DM_SetRevisionGUID(const AValue : WideString);
procedure DM_SetSourceLibraryName(const AValue : WideString);
procedure DM_SetState_Component(const AComponent : IPart);
procedure DM_SetState_Default;
procedure DM_SetState_SchComponent(const ASchComponent : IInterface);
procedure DM_SetSymbolReference(const AValue : WideString);
procedure DM_SetUseDBTableName(const AValue : LongBool);
procedure DM_SetUseLibraryName(const AValue : LongBool);
procedure DM_SetVaultGUID(const AValue : WideString);
function DM_SourceLibraryName : WideString;
function DM_SymbolReference : WideString;
function DM_UpdateVaultNameInLibraryData : Boolean;
function DM_UseDBTableName : LongBool;
function DM_UseLibraryName : LongBool;
function DM_VaultGUID : WideString;

## IComponentMappings (54 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MatchedComponentCount : Integer;
function DM_MatchedSourceComponent(Index : Integer) : IComponent;
function DM_MatchedTargetComponent(Index : Integer) : IComponent;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_UnmatchedSourceComponent(Index : Integer) : IComponent;
function DM_UnmatchedSourceComponentCount : Integer;
function DM_UnmatchedTargetComponent(Index : Integer) : IComponent;
function DM_UnmatchedTargetComponentCount : Integer;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IComponentMetafilePainter (2 members)
procedure DrawToMetafile(APartIndex : Integer, APaintColorMode : TPaintColorMode, AScaleMode : TPaintScaleMode, const AFileName : WideString);
procedure SetComponent(const ALibReference : WideString, const ALibraryPath : WideString);

## IComponentPainterView (9 members)
procedure HideComponentTextualDescriptions;
procedure HighLightComponentPins(APinNameList : WideString, AHighlightColor : TColor, ANonHighlightColor : TColor);
procedure RegisterListener(APinSelectionListener : IComponentPinSelectionListener);
procedure RenameSpecifiedPins(APinNamesParam : WideString);
procedure SetComponent(LibReference : WideString, LibraryPath : WideString, APartIndex : Integer, AHideTextualDescription : Boolean);
procedure SetComponentByHandle(AHandle : ISch_Component, APartIndex : Integer);
procedure ShowAllPins;
procedure ShowPinsAsSelected(APinNameList : WideString);
procedure ShowSpecifiedPinsOnly(APinNameList : WideString);

## IComponentPainterView2 (10 members)
procedure ConfigView(Parameters : WideString);
procedure HideComponentTextualDescriptions;
procedure HighLightComponentPins(APinNameList : WideString, AHighlightColor : TColor, ANonHighlightColor : TColor);
procedure RegisterListener(APinSelectionListener : IComponentPinSelectionListener);
procedure RenameSpecifiedPins(APinNamesParam : WideString);
procedure SetComponent(LibReference : WideString, LibraryPath : WideString, APartIndex : Integer, AHideTextualDescription : Boolean);
procedure SetComponentByHandle(AHandle : ISch_Component, APartIndex : Integer);
procedure ShowAllPins;
procedure ShowPinsAsSelected(APinNameList : WideString);
procedure ShowSpecifiedPinsOnly(APinNameList : WideString);

## IComponentPinSelectionListener (1 members)
procedure ComponentPinSelectionChanged(NewPinSelectionList : WideString);

## IComponentSubPartsInfo (5 members)
property Designator : WideString
function GetSubPartHandle(AIndex : Integer) : WideString;
property ProjectFilePath : WideString
procedure RemoveSubPartHandle(ASubPartHandle : WideString);
property SubPartsHandlesCount : Integer

## IComponentVariation (88 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AddParameterVariation : IParameterVariation;
function DM_AddVariation(const AParamName : WideString, const AVariantValue : WideString) : IParameterVariation;
function DM_AlternateLibraryLink : IComponentLibraryLink;
function DM_AlternatePart : WideString;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculatedAlternatePart(const Component : IComponent) : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_EditAlternateLibraryLink(const ASchComponent : IInterface) : LongBool;
function DM_FindParameterVariation(const AName : WideString) : IParameterVariation;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsRedundant : Boolean;
function DM_IsRedundantParameterVariation(const AParamVariation : IParameterVariation) : Boolean;
function DM_LibUpdateOptions : ILibraryUpdatePartOptions;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NeedsResetParameterValues : Boolean;
function DM_NeedsUpdate : Boolean;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NewAlternateLibraryLink : IComponentLibraryLink;
function DM_NewIsSet : Boolean;
function DM_NewVariationKind : TVariationKind;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDesignator : WideString;
function DM_PrimaryCrossProbeString : WideString;
function DM_Project : IProject;
function DM_ProjectVariant : IProjectVariant;
function DM_ReferenceGroupOption : WideString;
procedure DM_RemoveParameterVariation(Index : Integer);
procedure DM_RemoveParameterVariationByName(const AName : WideString);
procedure DM_RemoveRedundantParameterVariations;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetAlternateLibraryLink(const AValue : IComponentLibraryLink);
procedure DM_SetAlternatePart(const Value : WideString);
procedure DM_SetComponentLink(const AComponent : IComponent);
procedure DM_SetNeedsResetParameterValues(Value : Boolean);
procedure DM_SetNeedsUpdate(Value : Boolean);
procedure DM_SetNewAlternateLibraryLink(const ACompLibLink : IComponentLibraryLink);
procedure DM_SetNewIsSet(Value : Boolean);
procedure DM_SetNewVariationKind(const AKind : TVariationKind);
procedure DM_SetPhysicalDesignator(const Value : WideString);
procedure DM_SetReferenceGroupOption(const Id : WideString);
procedure DM_SetUniqueId(const Value : WideString);
procedure DM_SetVariationKind(const Value : TVariationKind);
procedure DM_SetVariationKindWithNoCompilation(const Value : TVariationKind);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_UniqueId : WideString;
procedure DM_UpdateIfRequired(AResetParameters : Boolean, AResetParameterValues : Boolean);
procedure DM_UpdateVariationKind(NewVariationKind : TVariationKind);
function DM_ValidForNavigation : Boolean;
function DM_VariationCount : Integer;
function DM_VariationKind : TVariationKind;
function DM_Variations(Index : Integer) : IParameterVariation;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IConfiguration (55 members)
procedure DM_AddConstraintFile(AConstraintFilePath : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ConstraintGroupCount : Integer;
function DM_ConstraintGroups(Index : Integer) : IConstraintGroup;
function DM_ConstraintsFileCount : Integer;
function DM_ConstraintsFilePath(Index : Integer) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTargetDeviceName : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetName(Value : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IConfigurationReleaseManager (1 members)
function DM_CurrentConfiguration : IVaultConfiguration;

## IConfiguratorManager (23 members)
property Names[Index: Integer] : WideString
function AreDevicesPinCompatible(DeviceName1 : WideString, DeviceName2 : WideString) : LongBool;
function CanGetDevice(DeviceName : WideString) : Boolean;
function ChoosePhysicalDevice(DeviceName : WideString, FilterParameters : PWideChar) : WideString;
function CompareIdCodes(IdCodeA : Cardinal, IdCodeB : Cardinal) : Boolean;
property Count : Integer
procedure Finalize;
function GetAllVendors : WideString;
function GetConfigurator(const AConfiguratorName : WideString) : IComponentConfigurator;
function GetDefaultDevice : WideString;
function GetDevice(DeviceName : WideString) : INexusDevice;
function GetDeviceCachedInfo(const ADeviceName : WideString, const AInformation : IDispatch) : Boolean;
function GetDeviceFamilyManager : IDeviceFamilyManager;
function GetDeviceFromDeviceId(AnId : WideString) : INexusDevice;
function GetDeviceInformation(DeviceName : WideString) : IDeviceInformation;
function GetDeviceNamesForIdCode(IdCode : Cardinal) : WideString;
function GetDevicesForFamily(const Family : WideString) : WideString;
function GetFamiliesForDeviceType(const ADeviceType : WideString) : WideString;
function GetFamiliesForVendor(const Vendor : WideString) : WideString;
function GetGenericDeviceManager : IGenericDeviceManager;
function Initialize : LongBool;
procedure ReleaseDevice(NexusDevice : INexusDevice);
procedure SetDefaultDevice(DeviceName : WideString);

## IConfiguratorTest (1 members)
function RunCommand(Parameters : TStringList) : Boolean;

## IConnection (5 members)
property IsManualJunction : Boolean
property IsPinConnection : Boolean
property Location : TLocation
property ObjectsCount : Integer
property Size : TSize

## IConnectionPoint (47 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IConnectionsArray (13 members)
property Connection[Index: Integer] : IConnection
procedure AddConnection(const ALocation : IDispatch);
procedure AddConnectionWithPin(const ALocation : IDispatch, AIsPin : Boolean);
procedure AddConnectionXY(X : Integer, Y : Integer);
procedure AddConnectionXY_WithSize(X : Integer, Y : Integer, ASize : TSize);
procedure AddJunctionsFromComponent(const AConnectionsArraySrc : IConnectionsArray, const AComponent : ISch_Component);
procedure AddJunctionsFromWire(const AConnectionsArraySrc : IConnectionsArray, const AWire : ISch_Wire);
property ConnectionsCount : Integer
function GetConnectionAt(const ALocation : IDispatch) : IConnection;
procedure GraphicallyInvalidate;
function RemoveAllConnectionsAt(const ALocation : IDispatch) : Boolean;
function RemoveAllConnectionsForLine(const L1 : IDispatch, const L2 : IDispatch) : Boolean;
procedure ResetAllConnections;

## IConstraint (49 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Data : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_Kind : WideString;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IConstraintGroup (53 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ConstraintCount : Integer;
function DM_Constraints(Index : Integer) : IConstraint;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SourceId : WideString;
function DM_SourceKindString : WideString;
function DM_TargetId : WideString;
function DM_TargetKindString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IConstraintManagerData (54 members)
function DeserializeFromString(const ASerializedData : WideString) : Boolean;
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
function GetState_Id : Integer;
function GetState_Name : WideString;
function IsValidForComparison : Boolean;
function SameAs(const AOther : IConstraintManagerData) : Boolean;
function SerializeToString : WideString;
procedure SetState_Id(const Id : Integer);
property VCSProject : IInterface

## IContextMenuServerDocumentView (1 members)
function IsReuseBlockObjectUnderCursor : Boolean;

## IContextServerView (1 members)
function SupportsContext(const ADocumentKind : WideString, const AProjectKind : WideString) : Boolean;

## IControlValueObserver (2 members)
procedure ValueModified;
procedure ValueUpdate;

## ICookieSetter (3 members)
procedure ClearCookies;
function SetCookie(const AURL : WideString, const AName : WideString, const AValue : WideString, AIsSecure : LongBool, AIsHttpOnly : LongBool, AIsSession : LongBool, AExpiry : Int64) : LongBool;
procedure SetCookies(const AURL : WideString, const ACookies : WideString);

## ICoordPointPairList (2 members)
function GetCoordPointPair(I : Integer) : IDispatch;
function GetCount : Integer;

## ICoreGenerator (1 members)
function GenerateModule(Params : WideString) : LongBool;

## ICoreProject (294 members)
procedure DM_Abort;
function DM_AddAsDeviceSheet(const ADocumentPath : WideString) : IDocument;
function DM_AddConfiguration(Configuration : WideString) : IConfiguration;
procedure DM_AddConfigurationParameters(Configuration : WideString);
procedure DM_AddConfigurationParameters_Physical(Configuration : WideString);
procedure DM_AddControlPanel(Filename : WideString);
procedure DM_AddDeviceSheetFolder(FolderPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddGeneratedDocument(Filename : WideString);
procedure DM_AddMissingAutoCrossRefs;
procedure DM_AddOrSetUniqueIdMapping(const ASchHandle : WideString, const AUniqueIdMapping : WideString);
procedure DM_AddParameter(AName : WideString, AValue : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AddProjectVariant : IProjectVariant;
procedure DM_AddSearchPath(SearchPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddSourceDocument(Filename : WideString);
procedure DM_AddSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_AddVirtualDocument(const APath : WideString);
procedure DM_ApplyChangesFromSystemDataModel;
function DM_AvailableDatabaseLinks : Boolean;
procedure DM_BeginUpdate;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateFormula(const DMObject : IDMObject, const AFormula : WideString, ForComponentVariation : Boolean, const ProjectVariant : IProjectVariant, const Variations : ISafeInterfaceList) : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChannelDesignatorFormat : WideString;
function DM_ChannelRoomLevelSeperator : WideString;
function DM_ChannelRoomNamingStyle : TChannelRoomNamingStyle;
procedure DM_ClearAllNetColors;
procedure DM_ClearSchematicObjectsErrorFields(const SchematicId : WideString);
procedure DM_ClearViolations;
function DM_Compile : LongBool;
function DM_CompileEx(All : LongBool, var Cancelled : LongBool) : LongBool;
function DM_CompileProjectOrDocument(ADocument : IDocument) : Boolean;
function DM_ComponentMappings(AnImplementationDocument : WideString) : IComponentMappings;
function DM_ConfigurationCount : Integer;
function DM_Configurations(Index : Integer) : IConfiguration;
function DM_CreateSymbolGenerator : ISymbolGenerator;
function DM_CrossRefCrossSheets : Boolean;
function DM_CrossRefLocationStyle : TCrossRefLocationStyle;
function DM_CrossRefPorts : TCrossRefPorts;
function DM_CrossRefSheetEntries : Boolean;
function DM_CrossRefSheetStyle : TCrossRefSheetStyle;
function DM_CurrentProjectVariant : IProjectVariant;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DataModel : IUnifiedDataModel;
function DM_DeviceSheetFolderCount : Integer;
function DM_DeviceSheetFolders(Index : Integer) : IDeviceSheetFolder;
procedure DM_DeviceSheetRemoved(const Filename : WideString);
function DM_DiffPairSuffixCount : Integer;
procedure DM_DiffPairSuffixes(Index : Integer, var Positive : WideString, var Negative : WideString);
procedure DM_DisableOnlineSynchronization(AUpdateParameters : Boolean);
procedure DM_DoCrossProbeBase;
procedure DM_DoCrossSelection;
function DM_DocumentBackups : IDocumentBackups;
function DM_DocumentClassGenerationOptions(const ADocumentPath : WideString) : IDocumentClassGenerationOptions;
function DM_DocumentFlattened : IDocument;
function DM_DocumentIsGenerated(const ADocumentFileName : WideString) : Boolean;
function DM_EditConfigurations : LongBool;
function DM_EditOptions(DefaultPage : WideString) : LongBool;
procedure DM_EndUpdate;
procedure DM_EnsureAllCachedManagedOutputJobs;
procedure DM_EnsureStandardConfigurations;
function DM_ErrorLevels(AErrorKind : TErrorKind) : TErrorLevel;
procedure DM_Export_ToFile(const AFileName : WideString);
function DM_FileLessItemGUID : WideString;
function DM_FileLessVaultGUID : WideString;
function DM_FindProjectVariant(ADescription : WideString) : IProjectVariant;
procedure DM_FixDesignatorAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ALogicalDesignator : WideString, ARemoveOriginal : Boolean);
procedure DM_FixSheetNumberAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ADocumentFileName : WideString, ARemoveOriginal : Boolean);
procedure DM_FixVariationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const APhysicalDesignator : WideString, const AProjectVariantUniqueId : WideString, const AProjectVariantDescription : WideString, ARemoveOriginal : Boolean);
procedure DM_ForceIncludeRequiredOutJobs(const AConfigurationManager : IDMS_ConfigurationManager, const AVaultGUID : WideString);
function DM_FSMCodingStyle : TFSMCodingStyle_DropDownList;
function DM_FSMEncodingStyle : TFSMEncodingStyle_DropDownList;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GeneratedDocumentCount : Integer;
function DM_GeneratedDocuments(Index : Integer) : IDocument;
function DM_GenerateHDL(Parameters : WideString, ARebuild : LongBool) : LongBool;
procedure DM_GenerateSystemDataModel;
function DM_GetAllowPortNetNames : Boolean;
function DM_GetAllowSheetEntryNetNames : Boolean;
function DM_GetAnnotationManager : IAnnotationManager;
function DM_GetAnnotationOptions : IAnnotateOptions;
function DM_GetAppendSheetNumberToLocalNets : Boolean;
function DM_GetAutomaticSheetsNumbers : IAutomaticSheetsNumbers;
function DM_GetConfigurationByName(Configuration : WideString) : IConfiguration;
function DM_GetDefaultConfiguration : IConfiguration;
function DM_GetDefaultConfigurationName : WideString;
function DM_GetDefaultPcbType : WideString;
function DM_GetDocumentByDocumentId(const ADocumentId : WideString) : IDocument;
function DM_GetDocumentFromName(DocumentName : WideString) : IDocument;
function DM_GetDocumentFromPath(DocumentPath : WideString) : IDocument;
function DM_GetECOInterface : IECO;
function DM_GetGeneratedHDLFilenames(ConfigurationName : WideString) : WideString;
function DM_GetHarnessDefinitionList : IHarnessDefinitionList;
function DM_GetHasWriteAccessAsync : Boolean;
function DM_GetIncludeDesignInRelease : Boolean;
function DM_GetIncludeModelsInArchive : LongBool;
function DM_GetIsActiveOnlineSynchronization : Boolean;
function DM_GetLinkedManagedProjectGUID : WideString;
function DM_GetNetColorByName(const ANetName : WideString) : TColor;
function DM_GetNetInfosToExportCount : Integer;
function DM_GetNetInfoToExport(AIndex : Integer) : WideString;
function DM_GetNotificationService : IEDMS_NotificationService;
function DM_GetOpenOutputs : Boolean;
function DM_GetOrCreateLibraryPart(const AComponentLibraryLink : IComponentLibraryLink) : IPart;
function DM_GetOriginalDocumentFromPath(const ADocumentPath : WideString) : IDocument;
function DM_GetOutputPath : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPinSwapBy_Netlabel : Boolean;
function DM_GetPinSwapBy_Pin : Boolean;
function DM_GetProjectClassGenerationOptions : IProjectClassGenerationOptions;
function DM_GetRelativeOutputPath : WideString;
function DM_GetReleaseFolderPath : WideString;
function DM_GetReleaseMode : TProjectReleaseMode;
function DM_GetReleaseNamings : WideString;
function DM_GetReleaseNamingTemplates : WideString;
function DM_GetReleaseVaultGUID : WideString;
function DM_GetReleaseZipPath : WideString;
function DM_GetReportFactory : IReportFactory;
function DM_GetRequiredCapabilities(ACapabilities : ICapabilityList) : Boolean;
function DM_GetRequiresHDLGeneration : LongBool;
function DM_GetSchematicNetlister : TSchematicNetlister;
function DM_GetScrapDocument(DocumentPath : WideString) : IDocument;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTargetDeviceName(ConfigurationName : WideString) : WideString;
function DM_GetTemplateLink : WideString;
function DM_GetTimeStampedOutputFolder : Boolean;
function DM_GetTopLevelDocumentStructure : IDocumentStructure;
function DM_GetVariantSchLibrary : WideString;
function DM_GetVerilog95 : LongBool;
function DM_GetVHDL87 : LongBool;
function DM_GetVirtualParametersManager : IVirtualParametersManager;
function DM_GetWebURL(const APage : WideString, const AOpenedFrom : WideString, AIncludeAuthToken : Boolean) : WideString;
function DM_GlobalPreferencesRevisionGUID : WideString;
function DM_GlobalPreferencesVaultGUID : WideString;
function DM_HierarchyMode : TFlattenMode;
function DM_HierarchyModeForCompile : TFlattenMode;
function DM_ImageIndex : Integer;
function DM_IncludePath(Index : Integer) : WideString;
function DM_IncludePathCount : Integer;
function DM_InCompilation : Boolean;
function DM_IndexOfSourceDocument(Filename : WideString) : Integer;
function DM_InitializeOutputPath(AnOutputType : WideString) : WideString;
function DM_IsActive : Boolean;
function DM_IsConnectiveSelectedNow(AConnective : IDMObject) : Boolean;
function DM_IsCrossRefAddedToProject : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFileLessClone : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsManagedDocument(ADocument : IDocument) : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsReuseBlock : Boolean;
function DM_IsSharedWithMe : Boolean;
function DM_IsSolution : Boolean;
function DM_IsTemplate : Boolean;
function DM_IsVaultFileLessEditing : Boolean;
function DM_IsViewOnly : Boolean;
procedure DM_LoadAllLogicalDocuments;
procedure DM_LoadManagedParameters;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDocumentCount : Integer;
function DM_LogicalDocuments(Index : Integer) : IDocument;
function DM_LogicalDocumentsIsDeviceSheet(const ADocument : IDocument) : Boolean;
function DM_LongDescriptorString : WideString;
function DM_MacroCount : Integer;
function DM_MacroName(Index : Integer) : WideString;
function DM_MacroValue(Index : Integer) : WideString;
function DM_ManagedParameterCount : Integer;
function DM_ManagedParameters(Index : Integer) : IParameter;
function DM_ManagedProjectGUID : WideString;
procedure DM_MoveSourceDocument(Filename : WideString, NewIndex : Integer);
function DM_NeedsCompile : LongBool;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OfflineProjectGUID : WideString;
function DM_OptionsStorage : IOptionsStorage;
function DM_Outputers(Name : WideString) : IOutputer;
function DM_OwnedProjectCount : Integer;
function DM_OwnedProjects(Index : Integer) : IProject;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentProject : IProject;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDocumentCount : Integer;
function DM_PhysicalDocuments(Index : Integer) : IDocument;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrimaryImplementationDocument : IDocument;
function DM_ProjectContainsOutputJobs : Boolean;
function DM_ProjectFileName : WideString;
function DM_ProjectFullPath : WideString;
procedure DM_ProjectStructureChanged;
function DM_ProjectTemplateLocation : WideString;
procedure DM_ProjectVariantChanged;
function DM_ProjectVariantCount : Integer;
function DM_ProjectVariants(Index : Integer) : IProjectVariant;
procedure DM_RefreshHarnessDefinitions;
procedure DM_RefreshInWorkspaceForm;
function DM_ReleaseProjectCopy : IProject;
function DM_RemoveAllConfigurations : Boolean;
function DM_RemoveConfigurationByName(Configuration : WideString) : Boolean;
procedure DM_RemoveHarnessFile(const HarnessFileFullPath : WideString);
procedure DM_RemoveParameter(const AParameter : IParameter);
procedure DM_RemoveParameterByName(const AParameterName : WideString);
procedure DM_RemoveProjectVariant(Index : Integer);
procedure DM_RemoveSourceDocument(Filename : WideString);
procedure DM_RemoveSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_RemoveVirtualDocument(const APath : WideString);
function DM_ReportSuppressedErrorsInMessages : Boolean;
procedure DM_ResetLastCompileTimeForAllDocuments;
procedure DM_ResetReleaseProject;
function DM_ResumeContinuousCompilation : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SearchPathCount : Integer;
function DM_SearchPaths(Index : Integer) : ISearchPath;
function DM_SecondaryCrossProbeString : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetAllowPortNetNames(AAllow : Boolean);
procedure DM_SetAllowSheetEntryNetNames(AAllow : Boolean);
procedure DM_SetAppendSheetNumberToLocalNets(AAppend : Boolean);
procedure DM_SetAsCurrentProject;
procedure DM_SetConnectedNetsColor(const ANet : INet, AColor : TColor);
procedure DM_SetCurrentProjectVariant(AProjVariant : IProjectVariant);
procedure DM_SetCurrentProjectVariantSilent(AProjectVariant : IProjectVariant);
procedure DM_SetDefaultConfigurationName(Configuration : WideString);
procedure DM_SetDefaultPcbType(PcbType : WideString);
procedure DM_SetErrorLevels(AErrorKind : TErrorKind, AErrorLevel : TErrorLevel);
procedure DM_SetGlobalPreferencesRevisionGUID(AValue : WideString);
procedure DM_SetGlobalPreferencesVaultGUID(AValue : WideString);
procedure DM_SetHierarchyMode(AFlatten : TFlattenMode);
procedure DM_SetIncludeDesignInRelease(AValue : Boolean);
procedure DM_SetLinkedManagedProjectGUID(const AValue : WideString);
procedure DM_SetManagedProjectGUID(const AValue : WideString);
procedure DM_SetModified;
procedure DM_SetNetColorByName(const ANetName : WideString, AColor : TColor);
procedure DM_SetOfflineProjectGUID(const AValue : WideString);
procedure DM_SetOpenOutputs(AValue : Boolean);
procedure DM_SetOutputPath(AnOutputPath : WideString);
procedure DM_SetPinSwapBy_Netlabel(AAllow : Boolean);
procedure DM_SetPinSwapBy_Pin(AAllow : Boolean);
procedure DM_SetRelativeOutputPath(AValue : WideString);
procedure DM_SetReleaseFolderPath(AValue : WideString);
procedure DM_SetReleaseMode(AValue : TProjectReleaseMode);
procedure DM_SetReleaseNamings(const AValue : WideString);
procedure DM_SetReleaseNamingTemplates(const AValue : WideString);
procedure DM_SetReleaseProjectCopy(AProject : IProject);
procedure DM_SetReleaseVaultGUID(const Value : WideString);
procedure DM_SetReleaseZipPath(AValue : WideString);
procedure DM_SetTimeStampedOutputFolder(AValue : Boolean);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ShowVariantsDrawingStylesDialog(const AValue : IVariantOption) : IVariantOption;
procedure DM_StartCrossProbing(CtrlDoesSwitch : Boolean);
procedure DM_StartNavigation;
function DM_SuspendContinuousCompilation : Boolean;
function DM_ToDoManager : IToDoManager;
function DM_TopLevelLogicalDocument : IDocument;
function DM_TopLevelPhysicalDocument : IDocument;
function DM_TryToResolveDocumentSpecialString(const AName : WideString, const ADocumentFileName : WideString, out AValue : WideString) : Boolean;
function DM_TryToResolveSpecialString(const AName : WideString, out AValue : WideString) : Boolean;
function DM_UpdateConstraints : LongBool;
procedure DM_UpdateSchObjectErrorFields(const SchHandle : WideString, ErrorKind : TErrorKind, Suppressed : Boolean);
function DM_UserID : WideString;
procedure DM_Validate;
function DM_ValidateManagedOutputJobs : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VariantManager : IVariantManager;
function DM_Vault : IEDMS_Vault;
function DM_VaultGUID : WideString;
function DM_VaultHRID : WideString;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViolationCount : Integer;
function DM_Violations(Index : Integer) : IViolation;
function GetNavigationHistory : INavigationHistory;
property VCSProject : IInterface

## ICoveredItem (4 members)
property CanBeAtBegginingOrEnd : Boolean
property GraphicalObject : ISch_GraphicalObject
property GraphicalObjectUniqueId : WideString
property Owner : ISch_HarnessLayoutCovering

## ICrosspointSwitchInstrument (13 members)
function AddConnection(const AInputName : WideString, const AOutputName : WideString) : LongBool;
procedure BeginReconnect;
function ConnectionExists(const AInputName : WideString, const AOutputName : WideString) : LongBool;
procedure EndReconnect;
procedure GetConnection(Index : Integer, var AInputName : WideString, var AOutputName : WideString);
function GetConnectionCount : Integer;
function GetDesignator : WideString;
function GetInputCount : Integer;
function GetInputName(Index : Integer) : WideString;
function GetOutputCount : Integer;
function GetOutputName(Index : Integer) : WideString;
function IsSynchronized : LongBool;
function RemoveConnection(const AInputName : WideString, const AOutputName : WideString) : LongBool;

## ICrosspointSwitchInstrumentManager (4 members)
function GetInstrument(Index : Integer) : ICrosspointSwitchInstrument;
function GetInstrumentByDesignator(const ADesignator : WideString) : ICrosspointSwitchInstrument;
function GetInstrumentByJtagIndex(AJtagIndex : Integer) : ICrosspointSwitchInstrument;
function GetInstrumentCount : Integer;

## ICrossProbeHelper (1 members)
procedure DoCrossProbeBase(const ADmObject : IDMObject);

## ICrossSheet (111 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusIndex : Integer;
function DM_BusKind : TBusKind;
function DM_BusPrefix : WideString;
function DM_BusRange1 : WideString;
function DM_BusRange2 : WideString;
function DM_BusRangeValue1 : Integer;
function DM_BusRangeValue2 : Integer;
function DM_BusWidth : Integer;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ComponentUniqueId : WideString;
function DM_CrossSheetText : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DefaultSearchID : WideString;
function DM_DisplayMode : Byte;
procedure DM_DoCrossProbeBase;
function DM_Electric : TPinElectrical;
function DM_Electrical : TPinElectrical;
function DM_ElectricalString : WideString;
function DM_FlattenedNetName : WideString;
function DM_Footprint : WideString;
function DM_FullCrossProbeString : WideString;
function DM_FullLogicalPartDesignator : WideString;
function DM_FullPhysicalPartDesignator : WideString;
function DM_FullPinName : WideString;
function DM_FullUniqueId : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_Id : WideString;
function DM_ImageIndex : Integer;
function DM_IsAutoGenerated : Boolean;
function DM_IsBusElement : Boolean;
function DM_IsBusMember : Boolean;
function DM_IsBusSection : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredFromHarness : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LinkObject : INetItem;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalPartDesignator : WideString;
function DM_LongDescriptorString : WideString;
function DM_MatchesPadName(const PadName : WideString) : Boolean;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetLabelText : WideString;
function DM_NetName : WideString;
function DM_NetNumber : WideString;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
function DM_OwnerHarnessNetLogical : INet;
function DM_OwnerHarnessNetPhysical : INet;
function DM_OwnerNetLogical : INet;
function DM_OwnerNetPhysical : INet;
function DM_OwnerPartID : Integer;
function DM_PairSwapId : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentID : WideString;
function DM_ParentSheetSymbolName : WideString;
function DM_ParentSheetSymbolSheetName : WideString;
function DM_Part : IPart;
function DM_PartID : Integer;
function DM_PartPinSwapId : WideString;
function DM_PartSwapId : WideString;
function DM_PartType : WideString;
function DM_PartUniqueId : WideString;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalPartDesignator : WideString;
function DM_PinName : WideString;
function DM_PinNameNoPartId : WideString;
function DM_PinNumber : WideString;
function DM_PinPackageLength : Integer;
function DM_PinPropagationDelay : Double;
function DM_PinSwapId : WideString;
function DM_PortName : WideString;
function DM_PowerText : WideString;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrintableNetName(out ShouldBeUsed : Boolean) : WideString;
function DM_RangeDefinedByValue : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_SheetName : WideString;
function DM_SheetSymbol : ISheetSymbol;
function DM_ShortDescriptorString : WideString;
function DM_SignalType : WideString;
function DM_UniqueIdName : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ICurrentModelChange (7 members)
property Enabled : Boolean
function IsNull : Boolean;
function ModelName : WideString;
property ModelType : WideString
property NewModel : IComponentImplementation
property NewModelName : WideString
property OrigModelName : WideString

## ICustomClipboardFormat (1 members)
function RegisterCustomClipboardFormat(const AFormatName : WideString) : Cardinal;

## ICustomCore (2 members)
property DoSoftError : LongBool
property Info : WideString

## ICustomCoreGenerator (1 members)
function CreateTarget(const AParameters : WideString) : ICustomCore;

## ICustomDialog (1 members)
function Invoke(var Params : WideString) : Integer;

## ICustomPage (9 members)
property Height : Double
property HeightStr : WideString
property HeightUnit : TMeasureUnit
property Title : WideString
function TrySetHeightStr(const AValue : WideString) : Boolean;
function TrySetWidthStr(const AValue : WideString) : Boolean;
property Width : Double
property WidthStr : WideString
property WidthUnit : TMeasureUnit

## ICustomPageList (6 members)
property Items[Index: Integer] : ICustomPage
procedure Clear;
property Count : Integer
function CreatePage : ICustomPage;
procedure ExportToOptions(const AWriter : IOptionsWriter, const ASection : WideString);
procedure ImportFromOptions(const AReader : IOptionsReader, const ASection : WideString);

## IDataBaseLibCommands (11 members)
function GetCommaDelimitedFieldValues(ATableIndex : Integer, AFieldIndex : Integer) : WideString;
function GetDatabaseType : TDatabaseType;
function GetFieldTypeAt(ATableIndex : Integer, AFieldIndex : Integer) : TFieldType;
function GetLeftQuote : WideString;
function GetRightQuote : WideString;
function GetTableNameForSQL(ATableIndex : Integer) : WideString;
function GetWhereClause(ATableIndex : Integer, const AComponentKeys : WideString) : WideString;
function HasComponent(ATableIndex : Integer, const AComponentKeys : WideString) : Boolean;
function HasDatafileEntity(ATableIndex : Integer, const ADatafileEntityName : WideString, const ADatafileType : WideString) : Boolean;
function HasModel(ATableIndex : Integer, const AComponentKeys : WideString, const AModelName : WideString, const AModelType : WideString) : Boolean;
procedure ShowTableBrowser;

## IDatabaseLibDocument (42 members)
procedure ClearDatabaseTypeFields;
procedure CreateTableInDatabase(ATableName : WideString, APrimaryKeyColumnName : WideString);
procedure DisposeIfNotShowing;
function DocumentObject : Pointer;
function ExportNewRecordFromIntLib(ATableName : WideString, AFieldParameters : WideString) : WideString;
procedure FinaliseExportFromDatabase;
procedure GetAllComponentKeys(ATableIndex : Integer, AResults : IStrings);
function GetCommandString(ATableIndex : Integer, AFilterText : WideString, ASQLWhereClause : WideString) : WideString;
function GetConnectionString : WideString;
function GetDatafilePath(AName : WideString, AType : WideString, ATableName : WideString, AComponentKeys : WideString) : WideString;
function GetDesignParameterName(ATableIndex : Integer, const AFieldName : WideString) : WideString;
function GetFieldCount(ATableIndex : Integer) : Integer;
function GetFieldNameAt(ATableIndex : Integer, AFieldIndex : Integer) : WideString;
function GetFileName : WideString;
function GetFilterText(ATableIndex : Integer, AFilterColumnNames : WideString, AFilterValue : WideString) : WideString;
function GetItemCount(ACommand : WideString, var AnError : WideString) : Integer;
function GetKeyField(AParameterName : Boolean, ATableIndex : Integer, AKeyIndex : Integer) : WideString;
function GetKeyFieldCount(ATableIndex : Integer) : Integer;
function GetLibraryPathFieldName(ATableIndex : Integer) : WideString;
function GetLibraryRefFieldName(ATableIndex : Integer, var AOrcadLibrary : Boolean) : WideString;
function GetLibrarySearchPath : WideString;
procedure GetModelFieldNamesAt(AnIndex : Integer, ATableIndex : Integer, AModelType : WideString, var AModelPathName : WideString, var AModelRefName : WideString, var AOrcadModel : Boolean);
procedure GetOrcadLibraryDetails(AParseString : WideString, var LibRef : WideString, var LibPath : WideString);
function GetParameterNameAt(ATableIndex : Integer, AFieldIndex : Integer) : WideString;
function GetParametersForComponent(ATableIndex : Integer, AComponentKeys : WideString) : WideString;
function GetSchLibPathForComponent(ATableIndex : Integer, AComponentKeys : WideString) : WideString;
function GetSchLibRefForComponent(ATableIndex : Integer, AComponentKeys : WideString) : WideString;
function GetSearchSubDirectories : Boolean;
function GetTableCount : Integer;
function GetTableIndex(ATableName : WideString) : Integer;
function GetTableNameAt(AnIndex : Integer) : WideString;
function InitialiseExportFromIntLib(ATableName : WideString) : WideString;
procedure InitialiseExportToDatabase(ADatabaseFileName : WideString);
function IsParameterDatabaseKey(ATableIndex : Integer, AParameterName : WideString) : Boolean;
function IsValidSQLStatementForTable(ATableName : WideString, AQuery : WideString) : Boolean;
function LoadAllRecordsLimit : Integer;
function ObjectAddress : Pointer;
function OrcadDelimiter : Char;
procedure SetConnectionString(AConnectionString : WideString);
function TableContainsColumn(ATableIndex : Integer, AColumnName : WideString) : Boolean;
function TableEnabled(AnIndex : Integer) : Boolean;
function ValidateSQLQuery(ASqlQuery : WideString) : WideString;

## IDatabaseLinkDocument (7 members)
procedure ClearDbCache;
function GetConnectionString : WideString;
function LookUpValues(const APart : IPart, var ACancelled : Boolean) : ITableLink;
function LookUpValues_Comp(const AComponent : IComponent, const AVariation : IComponentVariation, var ACancelled : Boolean) : ITableLink;
function LookUpValues_NoDBLib(const APart : IPart, var ACancelled : Boolean, ATableName : WideString) : ITableLink;
function TableLinkCount : Integer;
function TableLinks(Index : Integer) : ITableLink;

## IDataForEDM_UserLoggedInNotification (5 members)
property CanLogin : LongBool
property DenyReason : WideString
property Host : WideString
property SessionID : WideString
property UserName : WideString

## IDataSetCommandSupport (2 members)
procedure ExecuteCommand(const ACommand : string, const Args : TVarRec);
function GetCommandStates(const ACommand : string) : TDataSetCommandStates;

## IDBApplication (2 members)
procedure ProcessMessages;
property Title : String

## IDBScreen (1 members)
property Cursor : TDBScreenCursor

## IDBSession (3 members)
procedure AddPassword(const APassword : string);
procedure RemoveAllPasswords;
procedure RemovePassword(const APassword : string);

## IDDMAnnotationObject (63 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
function GetLogicalDesignator : WideString;
function GetMaxPartCount : Integer;
function GetNewDesignator : WideString;
function GetNewPartId : Integer;
function GetOldDesignator : WideString;
function GetOldPartId : Integer;
function GetPartId : Integer;
function GetSchHandle : WideString;
function IsDesignatorLocked : Boolean;
function IsPartIdLocked : Boolean;
procedure SetDesignatorLocked(Locked : Boolean);
procedure SetNewDesignator(Designator : WideString);
procedure SetNewPartId(PartId : Integer);
procedure SetOldDesignator(Designator : WideString);
procedure SetOldPartId(PartId : Integer);
procedure SetPartIdLocked(Locked : Boolean);
property VCSProject : IInterface

## IDDMBoardProject (34 members)
procedure AddMissingAutoCrossRefs;
procedure ApplyChangesFromSystemDataModel;
procedure ClearAllNetColors;
procedure ClearViolations;
function Compile(PopulateMessagesManager : LongBool) : LongBool;
function ForceCompilationOnMainThread : Boolean;
procedure GenerateSystemDataModel;
function GetAutomaticSheetsNumbers : IAutomaticSheetsNumbers;
function GetDocumentByDocumentId(const ADocumentUniqueId : WideString) : IDocument;
function GetDocumentByName(const ADocumentFileName : WideString) : IDocument;
function GetDocumentByPath(const ADocumentFilePath : WideString) : IDocument;
function GetDocumentFlattened : IDocument;
function GetHierarchyModeForCompile : TFlattenMode;
function GetNetColorByName(const ANetName : WideString) : TColor;
function GetNetInfosToExportCount : Integer;
function GetNetInfoToExport(Index : Integer) : WideString;
function GetPhysicalDocument(AIndex : Integer) : IDocument;
function GetPhysicalDocumentsCount : Integer;
function GetScrapDocument(const ADocumentFilePath : WideString) : IDocument;
function GetTopLevelLogicalDocument : IDocument;
function GetTopLevelPhysicalDocument : IDocument;
function GetViolation(Index : Integer) : IViolation;
function GetViolationsCount : Integer;
function GetVirtualParametersManager : IVirtualParametersManager;
function IsInCompilationState : Boolean;
function NeedsCompile : LongBool;
function ReferenceObjectManager : IInterface;
function ResumeContinuousCompilation : Boolean;
procedure SetConnectedNetsColor(const Net : INet, Color : TColor);
procedure SetErrorLevels(ErrorKind : TErrorKind, ErrorLevel : TErrorLevel);
procedure SetErrorLevelsForConnections(Row : TConnectionCode, Column : TConnectionCode, ErrorLevel : TErrorLevel);
procedure SetNetColorByName(const ANetName : WideString, AColor : TColor);
function SuspendContinuousCompilation : Boolean;
procedure Validate;

## IDDMHarnessProject (20 members)
procedure ClearViolations;
function Compile(PopulateMessagesManager : LongBool) : LongBool;
function GetDocumentByDocumentId(const ADocumentUniqueId : WideString) : IDocument;
function GetDocumentByName(const ADocumentFileName : WideString) : IDocument;
function GetDocumentByPath(const ADocumentFilePath : WideString) : IDocument;
function GetDocumentFlattened : IDocument;
function GetHarnessDocumentFlattened : IDocument;
function GetPhysicalDocument(AIndex : Integer) : IDocument;
function GetPhysicalDocumentsCount : Integer;
function GetScrapDocument(const ADocumentFilePath : WideString) : IDocument;
function GetTopLevelLogicalDocument : IDocument;
function GetTopLevelPhysicalDocument : IDocument;
function GetViolation(Index : Integer) : IViolation;
function GetViolationsCount : Integer;
function IsInCompilationState : Boolean;
function NeedsCompile : LongBool;
procedure PerformSpatialAnalysis(const ADocumentFilePath : WideString);
function ReferenceObjectManager : IInterface;
procedure SetErrorLevels(ErrorKind : TErrorKind, ErrorLevel : TErrorLevel);
procedure Validate;

## IDDMObserver (6 members)
procedure BeginUpdate(const ProjectPath : WideString);
procedure Compiled(const ProjectPath : WideString, const FlattenedDoc : IDocument);
procedure EndUpdate;
procedure ObjectAdded(const aObject : IDMObject);
procedure ObjectRemoved(ObjectAddress : Pointer);
procedure ObjectUpdated(const aObject : IDMObject);

## IDDMProjectBase (18 members)
procedure ClearViolations;
function Compile(PopulateMessagesManager : LongBool) : LongBool;
function GetDocumentByDocumentId(const ADocumentUniqueId : WideString) : IDocument;
function GetDocumentByName(const ADocumentFileName : WideString) : IDocument;
function GetDocumentByPath(const ADocumentFilePath : WideString) : IDocument;
function GetDocumentFlattened : IDocument;
function GetPhysicalDocument(AIndex : Integer) : IDocument;
function GetPhysicalDocumentsCount : Integer;
function GetScrapDocument(const ADocumentFilePath : WideString) : IDocument;
function GetTopLevelLogicalDocument : IDocument;
function GetTopLevelPhysicalDocument : IDocument;
function GetViolation(Index : Integer) : IViolation;
function GetViolationsCount : Integer;
function IsInCompilationState : Boolean;
function NeedsCompile : LongBool;
function ReferenceObjectManager : IInterface;
procedure SetErrorLevels(ErrorKind : TErrorKind, ErrorLevel : TErrorLevel);
procedure Validate;

## IDebuggable (1 members)
function GetDebugger : IDebugger;

## IDebugger (45 members)
function BreakPoint_Add(aFileName : WideString, aLine : Integer) : IBreakpoint;
function BreakPoint_At(anIndex : Integer) : IBreakpoint;
function BreakPoint_AtForFile(aFileName : WideString, anIndex : Integer) : IBreakpoint;
procedure Breakpoint_Changed(aBreakpoint : IBreakpoint);
function BreakPoint_Count : Integer;
function BreakPoint_CountForFile(aFileName : WideString) : Integer;
procedure Breakpoint_EnabledChanged(aBreakpoint : IBreakpoint);
function BreakPoint_Find(aFileName : WideString, aLine : Integer) : IBreakpoint;
procedure Breakpoint_Focused(aBreakpoint : IBreakpoint);
procedure BreakPoint_Moved(aBreakpoint : IBreakpoint, aOldFileName : WideString, aOldLine : Integer);
procedure BreakPoint_Remove(aFileName : WideString, aLine : Integer);
procedure Breakpoint_ValidChanged(aBreakpoint : IBreakpoint);
function CodePoint_At(aFileName : WideString, anIndex : Integer) : Integer;
function CodePoint_Count(aFileName : WideString) : Integer;
function CodePoint_IsCodePoint(aFileName : WideString, aLine : Integer) : Boolean;
procedure Configure;
function CurrentSourceFullPath : WideString;
procedure Execution_Break;
function Execution_GetExectionPoint(var aFileName : WideString, var aLine : Integer) : Boolean;
procedure Execution_Reset;
procedure Execution_Run;
procedure Execution_RunTo(AFile : WideString, aLine : Integer);
procedure Execution_ShowExecutionPoint;
procedure Execution_StepInto;
procedure Execution_StepOver;
function Previous_State : TDebuggerState;
procedure Session_Begin;
procedure Session_End;
function State : TDebuggerState;
procedure View_AttachBreakpointMonitor(aMonitor : IBreakpointMonitor);
procedure View_AttachStatusMonitor(aMonitor : IDebugStatusMonitor);
procedure View_AttachWatchMonitor(aMonitor : IWatchMonitor);
procedure View_DetachBreakpointMonitor(aMonitor : IBreakpointMonitor);
procedure View_DetachStatusMonitor(aMonitor : IDebugStatusMonitor);
procedure View_DetachWatchMonitor(aMonitor : IWatchMonitor);
function Watch_Add(aExpression : WideString) : IWatch;
procedure Watch_Add_BeginUpdate;
procedure Watch_Add_EndUpdate;
function Watch_Add_Ext(aExpression : WideString, aFullPath : WideString, aLineNumber : Integer) : IWatch;
function Watch_At(anIndex : Integer) : IWatch;
procedure Watch_ClearAll;
function Watch_Count : Integer;
function Watch_Find(aExpression : WideString) : IWatch;
procedure Watch_Remove(aExpression : WideString);
procedure Watch_UpdateAllValues;

## IDebugStatusMonitor (1 members)
procedure StateChanged;

## IDefaultPrimitivesOptionsPageParams (6 members)
function GetCount : Integer;
function GetIsModified : LongBool;
function GetIsPermanent : LongBool;
function GetItem(const AIndex : Integer) : IPrimitiveDefaultsItem;
procedure SetIsModified(AIsModified : LongBool);
procedure SetIsPermanent(const AIsPermanent : LongBool);

## IDependsOnDisplayStyle (1 members)
procedure UpdateFromDisplayStyle(AStyle : TDisplayStyle);

## IDependsOnPanelStyle (1 members)
procedure UpdateFromPanelStyle(AStyle : TInstrumentPanelStyle);

## IDesignatorRecord (8 members)
function DM_ObjectAddress : Pointer;
function GetChannelName : WideString;
function GetDocumentName : WideString;
function GetLogicalDesignator : WideString;
function GetLogicalPartID : Integer;
function GetPhysicalDesignator : WideString;
function GetPhysicalDesignatorLocked : Boolean;
function GetUniqueID : WideString;

## IDesignerHook (11 members)
procedure CanInsertComponent(AComponent : TComponent);
property Form : TCustomForm
function GetRoot : TComponent;
property IsControl : Boolean
function IsDesignMsg(Sender : TControl, const Message : IDispatch) : Boolean;
procedure Modified;
procedure Notification(AnObject : TPersistent, Operation : TOperation);
procedure PaintGrid;
procedure PaintMenu;
function UniqueName(const BaseName : string) : string;
procedure ValidateRename(AComponent : TComponent, const CurName : string, const NewName : string);

## IDesignerNotify (3 members)
procedure CanInsertComponent(AComponent : TComponent);
procedure Modified;
procedure Notification(AnObject : TPersistent, Operation : TOperation);

## IDeviceChannel (2 members)
procedure CloseChannel;
function OpenChannel : LongBool;

## IDeviceDebugManager (29 members)
property HardBreakpoints[Index: Integer] : IHardBreakpoint
property SoftBreakpoints[Index: Integer] : ISoftBreakpoint
function AddHardBreakPoint(const ANewBP : IHardBreakpoint) : Cardinal;
function AddressSupportsSoftBreakpoints(AMemorySpace : Integer, AAddress : Int64) : LongBool;
procedure DisableAllAllocatedBreakpoints;
procedure DisableAllocatedHardBreakpoints;
procedure DisableAllocatedSoftBreakpoints;
procedure EnableAllAllocatedBreakpoints;
procedure EnableAllocatedHardBreakpoints;
procedure EnableAllocatedSoftBreakpoints;
function GetAllocatedHardBreakPointCount : Integer;
function GetAllocatedSoftBreakPointCount : Integer;
function GetBreakpointByAddress(AMemorySpace : Integer, AAddress : Int64) : ISoftBreakpoint;
function GetBreakpointByData(AData : Int64) : IHardBreakpoint;
function GetBreakpointMode : TBreakpointMode;
function GetDebuggerMode : TDebuggerMode;
function GetHardBreakpointCount : Integer;
function GetNewBreakpoint(AMemorySpace : Integer, AAddress : Int64) : ISoftBreakpoint;
function GetNewHardBreakpoint : IHardBreakpoint;
function GetNewSoftBreakpoint : ISoftBreakpoint;
function GetSoftBreakpointsRequireHardware : LongBool;
function GetSystemBreakpoint : IHardBreakpoint;
procedure ReleaseAllBreakpoints;
procedure ReleaseAllocatedHardBreakpoints;
procedure ReleaseAllocatedSoftBreakpoints;
procedure ReleaseBreakpoint(const ABreakpoint : ISoftBreakpoint);
function SetBreakpointMode(ANewMode : TBreakpointMode) : LongBool;
procedure SetDebuggerMode(ANewMode : TDebuggerMode);
procedure SetSoftbreakpointsRequireHardware(AValue : LongBool);

## IDeviceFamily (13 members)
function GetBooleanKey(Index : Integer) : WideString;
function GetBooleanKeyCount : Integer;
function GetBooleanValueByKey(Key : string) : Boolean;
function GetFamilyName : WideString;
function GetIntegerKey(Index : Integer) : WideString;
function GetIntegerKeyCount : Integer;
function GetIntegerValueByKey(Key : string) : Integer;
function GetStringKey(Index : Integer) : WideString;
function GetStringKeyCount : Integer;
function GetStringValueByKey(Key : string) : WideString;
function IsKeyValidForBoolean(Key : string) : Boolean;
function IsKeyValidForInteger(Key : string) : Boolean;
function IsKeyValidForString(Key : string) : Boolean;

## IDeviceFamilyManager (4 members)
function FamilyCount : Integer;
function GetFamily(FamilyName : string) : IDeviceFamily;
function GetFamilyByIndex(Index : Integer) : IDeviceFamily;
function GetListOfFamilies : WideString;

## IDeviceInformation (46 members)
function GetBaseName : WideString;
function GetBSDLEntity : IBSDLEntity;
function GetBSDLFilename : WideString;
function GetClockManagerCount : Integer;
function GetConfigMemorySize : Integer;
function GetDeviceDescription : WideString;
function GetDeviceDisplayName : WideString;
function GetDeviceIOCount : Integer;
function GetDeviceName : WideString;
function GetDeviceParameter(ParameterName : WideString) : WideString;
function GetDevicePin(Index : Integer) : IDevicePin;
function GetDevicePinCount : Integer;
function GetDiffPairCount : Integer;
function GetDownloadFileExtensions : WideString;
function GetDSPMultiplierCount : Integer;
function GetEquivalentGatesForBase : Integer;
function GetFamilyDescription : WideString;
function GetFamilyName : WideString;
function GetGlobalClockCount : Integer;
function GetHighSpeedDiffPairCount : Integer;
function GetIdCode : Cardinal;
function GetInstructionLength : Integer;
function GetIOStandard(Index : Integer) : IDeviceIOStandard;
function GetIOStandardCount : Integer;
function GetLibraryName : WideString;
function GetMaxIOForBase : Integer;
function GetMemorySize : Integer;
function GetOptionDesignatorDescription : WideString;
function GetOptionDesignatorId : WideString;
function GetOptionDesignatorName : WideString;
function GetPackageDescription : WideString;
function GetPackageDimensions : WideString;
function GetPackageId : WideString;
function GetPackageName : WideString;
function GetPackageTypeDescription : WideString;
function GetPackageTypeId : WideString;
function GetPackageTypeName : WideString;
function GetSpeedGradeDescription : WideString;
function GetSpeedGradeId : WideString;
function GetSpeedGradeName : WideString;
function GetTemperatureGradeDescription : WideString;
function GetTemperatureGradeId : WideString;
function GetTemperatureGradeName : WideString;
function GetTerminationSupport : Boolean;
function GetVendorName : WideString;
function GetVendorPrimitiveLibraryName : WideString;

## IDeviceIOStandard (6 members)
function GetDisplayName : WideString;
function GetDriveCount : Integer;
function GetDriveStrength(Index : Integer) : WideString;
function GetParamName : WideString;
function GetSlewCount : Integer;
function GetSlewValue(Index : Integer) : WideString;

## IDeviceLink (18 members)
function AnyFlowsRunning : Boolean;
function DownloadFlow : IProcessFlow;
function GetConfiguration : WideString;
function GetDeviceName : WideString;
function GetFPGAProject : IProject;
function GetIndex : Integer;
function GetJTAGDevice : IJTagDevice;
function GetJTAGIndex : Integer;
function GetNexusCore : INexusCore;
function GetNexusDevice : INexusDevice;
function GetProject : IProject;
function GetShortDescription : WideString;
function GetUniqueDescription : WideString;
function ProcessFlow : IProcessFlow;
procedure SetDeviceName(const ADeviceName : WideString);
function SubversionFlow : IProcessFlow;
function VaultFlow : IProcessFlow;
function VerifyFlow : IProcessFlow;

## IDeviceManager (23 members)
property Names[Index: Integer] : WideString
function AreDevicesPinCompatible(DeviceName1 : WideString, DeviceName2 : WideString) : LongBool;
function CanGetDevice(DeviceName : WideString) : Boolean;
function ChoosePhysicalDevice(DeviceName : WideString, FilterParameters : PWideChar) : WideString;
function CompareIdCodes(IdCodeA : Cardinal, IdCodeB : Cardinal) : Boolean;
property Count : Integer
procedure Finalize;
function GetAllVendors : WideString;
function GetConfigurator(const AConfiguratorName : WideString) : IComponentConfigurator;
function GetDefaultDevice : WideString;
function GetDevice(DeviceName : WideString) : INexusDevice;
function GetDeviceCachedInfo(const ADeviceName : WideString, const AInformation : IDispatch) : Boolean;
function GetDeviceFamilyManager : IDeviceFamilyManager;
function GetDeviceFromDeviceId(AnId : WideString) : INexusDevice;
function GetDeviceInformation(DeviceName : WideString) : IDeviceInformation;
function GetDeviceNamesForIdCode(IdCode : Cardinal) : WideString;
function GetDevicesForFamily(const Family : WideString) : WideString;
function GetFamiliesForDeviceType(const ADeviceType : WideString) : WideString;
function GetFamiliesForVendor(const Vendor : WideString) : WideString;
function GetGenericDeviceManager : IGenericDeviceManager;
function Initialize : LongBool;
procedure ReleaseDevice(NexusDevice : INexusDevice);
procedure SetDefaultDevice(DeviceName : WideString);

## IDeviceMemoryArchitectureSection (12 members)
function AddLogicalSection(ANewMap : IDeviceMemoryLogicalSection) : Integer;
property AddressWidth : LongWord
property BusName : TDynamicString
property BusType : TDynamicString
property Description : TDynamicString
property Designator : TDynamicString
property DeviceMemoryIndex : LongWord
function GetChildMap(AIndex : Cardinal) : IDeviceMemoryLogicalSection;
function GetChildMapCount : Cardinal;
property IsMappedIO : Boolean
property Size : LongWord
property StartAddress : LongWord

## IDeviceMemoryInformation (10 members)
function AddArchitectureSection(ANewMap : IDeviceMemoryArchitectureSection) : Integer;
function AddDefaultSection(ANewMap : IDeviceMemoryLogicalSection) : Integer;
function AddLogicalSection(ANewMap : IDeviceMemoryLogicalSection) : Integer;
function GetArchitectureSection(AIndex : Cardinal) : IDeviceMemoryArchitectureSection;
function GetArchitectureSectionCount : Cardinal;
function GetDefaultFlashLogicalSection : IDeviceMemoryLogicalSection;
function GetDefaultRAMLogicalSection : IDeviceMemoryLogicalSection;
function GetDefaultROMLogicalSection : IDeviceMemoryLogicalSection;
function GetLogicalSection(AIndex : Cardinal) : IDeviceMemoryLogicalSection;
function GetLogicalSectionCount : Cardinal;

## IDeviceMemoryLogicalSection (13 members)
property BusName : TDynamicString
property BusType : TDynamicString
property Designator : TDynamicString
property DeviceMemoryIndex : LongWord
property IsDefault : Boolean
property IsExternal : Boolean
property MAU : LongWord
property MemConfig : TDynamicString
property ParentMap : IDeviceMemoryArchitectureSection
property PhysicalType : TDynamicString
property Size : LongWord
property StartAddress : LongWord
property UsageType : TDynamicString

## IDevicePin (25 members)
function GetClkDifferentialId : WideString;
function GetDifferentialId : WideString;
function GetIOBank : WideString;
function GetIOStandard(Index : Integer) : IDeviceIOStandard;
function GetIOStandardCount : Integer;
function GetIsClkDiffN_Pin : Boolean;
function GetIsClkDiffP_Pin : Boolean;
function GetIsCLKPin : Boolean;
function GetIsDCIN_Pin : Boolean;
function GetIsDCIP_Pin : Boolean;
function GetIsDiffN_Pin : Boolean;
function GetIsDiffP_Pin : Boolean;
function GetIsDLLPin : Boolean;
function GetIsHDiffN_Pin : Boolean;
function GetIsHDiffP_Pin : Boolean;
function GetIsInputOnlyPin : Boolean;
function GetIsIOPin : Boolean;
function GetIsNegPinOfDiffPair : Boolean;
function GetIsPosPinOfDiffPair : Boolean;
function GetIsReceiveDiffPin : Boolean;
function GetIsSpecialPin : Boolean;
function GetIsTransmitDiffPin : Boolean;
function GetIsVREFPin : Boolean;
function GetPinNumber : WideString;
function GetUniqueDifferentialID : WideString;

## IDeviceProcessorInformation (5 members)
function GetDeviceProcessorArchString : WideString;
function GetDeviceProcessorCoreString : WideString;
function GetDeviceProcessorFamilyString : WideString;
function GetDeviceProcessorToolChainString : WideString;
function GetDeviceProcessorToolChainTargetString : WideString;

## IDeviceSheet (1 members)
property FilePath : WideString

## IDeviceSheetFolder (49 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FolderPath : WideString;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IncludeSubFolders : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IDeviceSheetManager (16 members)
function AddDeviceFolder(const AFolderPath : WideString, ASearchSubfolder : Boolean) : Boolean;
function BrowseDeviceSheet(var AFileName : WideString, out AFilePath : WideString) : Boolean;
function ChooseDeviceFolder(var AFolderPath : WideString) : Boolean;
procedure ClearFolders;
function ConvertDeviceSheetPathToName(const AFilePath : WideString) : WideString;
procedure DeleteFolder(AIndex : Integer);
procedure EditDeviceFolderList;
function FindAllDeviceSheetPaths(const AFileName : WideString, out AOtherMatchingPaths : WideString) : WideString;
function FindDeviceSheetPath(const AFileName : WideString) : WideString;
function GetCurrentProject : IProject;
function GetFolders_FolderPath(AIndex : Integer) : WideString;
function GetFolders_SearchSubFolders(AIndex : Integer) : Boolean;
function GetFoldersCount : Integer;
procedure MakeCurrentProject(AProject : IProject);
procedure SetDeviceFolder(AIndex : Integer, const AFolderPath : WideString, ASearchSubfolder : Boolean);
function WillSearchDeviceFolder(const AFolderPath : WideString) : Boolean;

## IDialogManagerProvider (1 members)
function GetDialogsManager : IPCB_DialogsManager;

## IDifferentialPair (52 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MemberCount : Integer;
function DM_Members(Index : Integer) : WideString;
function DM_Name : WideString;
function DM_NegativeNet : INet;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PositiveNet : INet;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IDifferentialPairClass (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MemberCount : Integer;
function DM_Members(Index : Integer) : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IDirectiveData (10 members)
property Color : TColor
property Directive : INetItem
property IsActive : Boolean
property Location : TLocation
property Orientation : TRotationBy90
property StrConnectionPairsToSuppress : WideString
property StrErrorKindSetToSuppress : WideString
property StrSuppressableErrors : WideString
property SuppressAll : Boolean
property Symbol : TNoERCSymbol

## IDispatch (2 members)
function GetTypeInfo(Index : Integer, LocaleID : Integer, out TypeInfo : ) : HRESULT;
function GetTypeInfoCount(out Count : Integer) : HRESULT;

## IDItemRevision (18 members)
property SourceRelationship[Index: Integer] : ISourceRelationship
property Parameters[Index: Integer] : IItemParameter
property Category : WideString
property Comment : WideString
procedure DeleteParameter(Index : Integer);
property Description : WideString
property DeviceSheet : IDeviceSheet
function GetParameterByName(AName : WideString) : IItemParameter;
function GetParameterValueByName(AName : WideString) : WideString;
property LibIdentifierKind : TLibIdentifierKind
property LibraryIdentifier : WideString
procedure Load;
property Name : WideString
property ParameterCount : Integer
procedure SetParameterValueByName(AName : WideString, AValue : WideString);
property SourceRelationshipCount : Integer
property SymbolLibraryFullPath : WideString
property SymbolName : WideString

## IDM_FSMState (55 members)
function DM_Actions : WideString;
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DelayedClock : Integer;
function DM_DelayedEnable : Boolean;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsDefault : LongBool;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OutputTransition(Index : Integer) : IDM_FSMTransition;
function DM_OutputTransitionCount : Integer;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_UniqueId : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IDM_FSMTransition (56 members)
function DM_Actions : WideString;
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_Condition_Verilog : WideString;
function DM_Condition_VHDL : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FromState : IDM_FSMState;
function DM_FromStateID : WideString;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_Priority : Integer;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ToState : IDM_FSMState;
function DM_ToStateID : WideString;
function DM_UniqueId : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IDMInterface (55 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DefinitionName : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_Function(Index : Integer) : IFunction;
function DM_FunctionsCount : Integer;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LineCount : Integer;
function DM_Lines(Index : Integer) : ILine;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_Net(Index : Integer) : IElectronicsSystemDesignNet;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetsCount : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IDMObject (47 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IDocHostUIHandler (10 members)
function EnableModeless(const fEnable : LongBool) : HRESULT;
function FilterDataObject(const pDO : IDataObject, out ppDORet : IDataObject) : HRESULT;
function GetDropTarget(const pDropTarget : IDropTarget, out ppDropTarget : IDropTarget) : HRESULT;
function GetExternal(out ppDispatch : IDispatch) : HRESULT;
function GetHostInfo(const pInfo : IDispatch) : HRESULT;
function HideUI : HRESULT;
function OnDocWindowActivate(const fActivate : LongBool) : HRESULT;
function OnFrameWindowActivate(const fActivate : LongBool) : HRESULT;
function ShowUI(const dwID : Cardinal, const pActiveObject : IOleInPlaceActiveObject, const pCommandTarget : IOleCommandTarget, const pFrame : IOleInPlaceFrame, const pDoc : IOleInPlaceUIWindow) : HRESULT;
function UpdateUI : HRESULT;

## IDockManager (11 members)
procedure BeginUpdate;
procedure EndUpdate;
procedure GetControlBounds(Control : TControl, const CtlBounds : IDispatch);
procedure InsertControl(Control : TControl, InsertAt : TAlign, DropCtl : TControl);
procedure LoadFromStream(Stream : TStream);
procedure PaintSite(DC : HDC);
procedure PositionDockRect(Client : TControl, DropCtl : TControl, DropAlign : TAlign, const DockRect : IDispatch);
procedure RemoveControl(Control : TControl);
procedure ResetBounds(Force : Boolean);
procedure SaveToStream(Stream : TStream);
procedure SetReplacingControl(Control : TControl);

## IDocument (183 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AnnotationOptions : IDocumentAnnotationOptions;
function DM_BlanketCount : Integer;
function DM_Blankets(Index : Integer) : IBlanket;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusCount : Integer;
function DM_Buses(Index : Integer) : IBus;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChannelClassCount : Integer;
function DM_ChannelClasses(Index : Integer) : IChannelClass;
function DM_ChannelIndex : Integer;
function DM_ChannelPrefix : WideString;
function DM_ChannelRoomNamingStyle : TChannelRoomNamingStyle;
function DM_ChildDocumentCount : Integer;
function DM_ChildDocumentCountIgnoreScope : Integer;
function DM_ChildDocuments(Index : Integer) : IDocument;
function DM_ChildDocumentsIgnoreScope(Index : Integer) : IDocument;
function DM_ClassClusterCount : Integer;
function DM_ClassClusters(Index : Integer) : IObjectClassCluster;
function DM_ClearancesMatrix : IClearancesMatrix;
function DM_Compile : LongBool;
function DM_ComponentClassCount : Integer;
function DM_ComponentClasses(Index : Integer) : IComponentClass;
function DM_ComponentCount : Integer;
function DM_Components(Index : Integer) : IComponent;
function DM_ConstraintGroupCount : Integer;
function DM_ConstraintGroups(Index : Integer) : IConstraintGroup;
function DM_ConstraintManagerData(Index : Integer) : IConstraintManagerData;
function DM_ConstraintManagerDatasCount : Integer;
function DM_CreateViolation(AErrorKind : TErrorKind, AErrorString : WideString) : IViolation;
function DM_CrossSheetConnectorCount : Integer;
function DM_CrossSheetConnectors(Index : Integer) : ICrossSheet;
function DM_CurrentInstanceNumber : Integer;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DifferentialPairClassCount : Integer;
function DM_DifferentialPairClasses(Index : Integer) : IDifferentialPairClass;
function DM_DifferentialPairCount : Integer;
function DM_DifferentialPairs(Index : Integer) : IDifferentialPair;
procedure DM_DoCrossProbeBase;
function DM_DocumentID : WideString;
function DM_DocumentIsLoaded : Boolean;
function DM_DocumentIsTextual : Boolean;
function DM_DocumentKind : WideString;
procedure DM_DocumentLoaded;
function DM_FileName : WideString;
function DM_FSMClockPort : INetItem;
function DM_FSMResetPort : INetItem;
function DM_FSMState(Index : Integer) : IDM_FSMState;
function DM_FSMStateCount : Integer;
function DM_FSMTransition(Index : Integer) : IDM_FSMTransition;
function DM_FSMTransitionCount : Integer;
function DM_FullCrossProbeString : WideString;
function DM_FullPath : WideString;
function DM_GeneralField : Integer;
function DM_GetDirectiveProperties(const ObjectHandle : WideString) : IDirectiveProperties;
function DM_GetDocumentForECO : IDocument;
function DM_GetItemRevisionGUID : WideString;
function DM_GetNet(const ObjectHandle : WideString) : INet;
function DM_GetNetNamesForObject(const ObjectHandle : WideString) : IStrings;
function DM_GetNetProperties(const ObjectHandle : WideString) : INetProperties;
function DM_GetOriginalDocumentHash : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPartDesignatorsForObject(const ObjectHandle : WideString) : IStrings;
function DM_GetRequiredCapabilities(ACapabilities : ICapabilityList) : Boolean;
function DM_GetSchConstraintsManager : ISchConstraintsManager;
function DM_GetState_DocDisplayName : WideString;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_HarnessConnectorCount : Integer;
function DM_HarnessConnectors(Index : Integer) : ISheetSymbol;
function DM_HarnessNetCount : Integer;
function DM_HarnessNets(Index : Integer) : INet;
function DM_ImageIndex : Integer;
function DM_IndentLevel : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsDeviceSheet : Boolean;
function DM_IsDocumentFileLessEditing : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsPhysicalDocument : Boolean;
function DM_IsPrimaryImplementationDocument : Boolean;
function DM_IsRequired : Boolean;
function DM_IsVirtualDocument : Boolean;
function DM_LoadDocument : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDocument : IDocument;
function DM_LongDescriptorString : WideString;
function DM_ModelKind : WideString;
function DM_NeedsScrapCompile : Boolean;
function DM_NetClassCount : Integer;
function DM_NetClasses(Index : Integer) : INetClass;
function DM_NetCount : Integer;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_Nets(Index : Integer) : INet;
function DM_NoteCount : Integer;
function DM_Notes(Index : Integer) : INote;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_ObjectRevisionId : WideString;
function DM_OpenAndFocusDocument : Boolean;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentDocumentCount : Integer;
function DM_ParentDocuments(Index : Integer) : IDocument;
function DM_ParentSheetSymbolCount : Integer;
function DM_ParentSheetSymbols(Index : Integer) : ISheetSymbol;
function DM_PartAnnotateCount : Integer;
function DM_PartCount : Integer;
function DM_Parts(Index : Integer) : IPart;
function DM_PartsAnnotate(Index : Integer) : IPart;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDocument(Index : Integer) : IDocument;
function DM_PhysicalDocumentCount : Integer;
function DM_PhysicalDocumentParent : IDocument;
function DM_PhysicalInstanceName : WideString;
function DM_PhysicalInstancePath : WideString;
function DM_PhysicalRoomName : WideString;
function DM_PinPair(Index : Integer) : IPinPair;
function DM_PinPairsCount : Integer;
function DM_PortCount : Integer;
function DM_Ports(Index : Integer) : INetItem;
function DM_PrimaryCrossProbeString : WideString;
function DM_Project : IProject;
function DM_ReuseBlocks : IReuseBlocks;
function DM_RoomCount : Integer;
function DM_Rooms(Index : Integer) : IRoom;
function DM_RuleCount : Integer;
function DM_Rules(Index : Integer) : IRule;
function DM_SameClearancesMatrix : IClearancesMatrix;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_ScrapCompile(ForceCompile : Boolean) : LongBool;
function DM_ScrapCompileWithOptions(ForceCompile : Boolean, AOptions : WideString) : LongBool;
function DM_SecondaryCrossProbeString : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetItemRevisionGUID(S : WideString);
procedure DM_SetOriginalDocumentHash(const AValue : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_SheetSizeX : Integer;
function DM_SheetSizey : Integer;
function DM_SheetSymbolCount : Integer;
function DM_SheetSymbols(Index : Integer) : ISheetSymbol;
function DM_ShortDescriptorString : WideString;
function DM_SignalManager : ISignalManager;
function DM_SmartLoad : Boolean;
function DM_SpatialAnalysis(Force : Boolean, AllowAbort : Boolean, AbortOnMouseMove : Boolean) : Boolean;
function DM_SpatialAnalysisForTest : Integer;
function DM_SystemFunction(Index : Integer) : ISystemFunction;
function DM_SystemFunctionsCount : Integer;
function DM_TextFrameCount : Integer;
function DM_TextFrames(Index : Integer) : ITextFrame;
function DM_UniqueComponentCount : Integer;
function DM_UniqueComponents(Index : Integer) : IComponent;
function DM_UniquePartCount : Integer;
function DM_UniqueParts(Index : Integer) : IPart;
procedure DM_UpdateDateModified;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntities(Index : Integer) : IVHDLEntity;
function DM_VHDLEntity : IVHDLEntity;
function DM_VHDLEntityCount : Integer;
function DM_xNet(Index : Integer) : IxNet;
function DM_xNetClass(Index : Integer) : IxNetClass;
function DM_xNetClassesCount : Integer;
function DM_xNetsCount : Integer;
function DM_xSignalClass(Index : Integer) : IxSignalClass;
function DM_xSignalClassesCount : Integer;
property VCSProject : IInterface

## IDocumentAnnotationOptions (6 members)
property AnnotationEnabled : Boolean
property AnnotationIndexControlEnabled : Boolean
property AnnotationOrder : Integer
property AnnotationScope : TDocAnnotationScope
property AnnotationStartValue : Integer
property AnnotationSuffix : WideString

## IDocumentClassGenerationOptions (5 members)
property CompClassAutoEnabled : Boolean
property CompClassAutoRoomEnabled : Boolean
property GenerateClassCluster : Boolean
property NetClassAutoScope : TDocAutoNetClassScope
procedure ResetToDefaultState;

## IDocumentDragDropInfo (2 members)
function GetDocumentKind : WideString;
function GetDocumentPath : WideString;

## IDocumentFormNotification (2 members)
property Code : Integer
property Handle : THandle

## IDocumentFormNotification2 (3 members)
property Code : Integer
property FormId : Integer
property Handle : THandle

## IDocumentNotification (3 members)
property Code : Integer
property OldFileName : WideString
property ServerDocument : IServerDocument

## IDocumentOptionsSet (6 members)
function GetHostServer : WideString;
function GetSetName : WideString;
function GetSortName : WideString;
function IsAllDocuments : Boolean;
function IsAllProjects : Boolean;
function IsForDocumentKind(const AKind : WideString) : Boolean;

## IDocumentOptionsView (18 members)
function CanClose : Boolean;
property Caption : WideString
procedure FocusFirstTabStop;
procedure GetBounds(var ALeft : Integer, var ATop : Integer, var AWidth : Integer, var AHeight : Integer);
function GetControlState(AId : string) : string;
property Handle : HWND
procedure Hide;
procedure Initialize(const ADocumentPath : WideString);
procedure ParentWindowCreated;
procedure ParentWindowDestroyed;
procedure Save;
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetControlState(AId : string, AValue : string);
procedure SetFocus;
procedure SetParentWindow(const ParentWindow : IExternalFormHolder);
procedure SetState_Default;
procedure Show;
function SupportsDefaults : Boolean;

## IDocumentPainterView (8 members)
procedure DrawCurrentZoomRectangle_Invert;
procedure GetStringMaxMin(const ALocation : IDispatch, const AText : WideString, AFontId : Integer, const ABoundingRect : IDispatch);
procedure Invalidate;
procedure PaintSingleObject(const AGraphicalObject : ISch_GraphicalObject);
procedure Redraw(const AGraphicalObject : ISch_GraphicalObject);
procedure Refresh;
procedure RefreshCurrentZoomWindow;
procedure SetState_DocumentToPaint(const ADocument : ISch_Document);

## IDocumentPoint (3 members)
property ComponentUniqueID : WideString
property ObjectKind : TRaycastHitObject
property SuperassemblyUniqueID : WideString

## IDocumentPreviewHint (6 members)
procedure ActivateDocumentChooser(const AProjectPath : WideString, const APos : IDispatch);
procedure ActivateDocumentPath(const ADocumentPath : WideString, const APos : IDispatch);
procedure ActivateDocumentPreview(const ADocumentPath : WideString, const APos : IDispatch, AMouseGap : Integer);
property ActivatedPath : WideString
property ActivatedPos : TPoint
procedure DeActivate(AImmediate : Boolean);

## IDocumentPreviewManager (4 members)
function CreatePreviewImage : IPreviewImage;
function FindPreview(const ADocumentPath : WideString, AForceGeneration : Boolean) : IPreviewImage;
procedure InvalidatePreview(const AServerDocument : IServerDocument);
procedure SavePreview(const AServerDocument : IServerDocument, AForceGeneration : Boolean);

## IDocumentRenamedNotification (5 members)
property Code : Integer
property NewFileName : WideString
property OldFileName : WideString
property ProjectFileName : WideString
property ServerDocument : IServerDocument

## IDocumentRequest (3 members)
property Code : Integer
property RequestResult : Integer
property ServerDocument : IServerDocument

## IDocumentStructure (8 members)
function DM_GetDesignItemId : WideString;
function DM_GetDocStructureForPath(const Path : WideString) : IDocumentStructure;
function DM_GetDocument : IDocument;
function DM_GetLogicalSubStructure(Index : Integer) : IDocumentStructure;
function DM_GetLogicalSubStructureCount : Integer;
function DM_GetSourceDocument(Index : Integer) : IDocument;
function DM_GetSourceDocumentCount : Integer;
function DM_GetSourceLibraryName : WideString;

## IDocumentViewChangeFocus (1 members)
procedure SetFocusTo(const ActivityName : WideString);

## IDraftsman_ArcItem (14 members)
function GetState_EndAngle : Double;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Radius : Double;
function GetState_StartAngle : Double;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_EndAngle(AValue : Double);
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Radius(AValue : Double);
procedure SetState_StartAngle(AValue : Double);

## IDraftsman_AssemblyView (16 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Rotation : TOrthogonalRotation;
function GetState_Scale : Double;
function GetState_Title : WideString;
function GetState_Variant : WideString;
function GetState_ViewSide : TBoardViewSide;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Rotation(AValue : TOrthogonalRotation);
procedure SetState_Scale(const AValue : Double);
procedure SetState_Variant(const AValue : WideString);
procedure SetState_ViewSide(ASide : TBoardViewSide);

## IDraftsman_BillOfMaterialsTable (15 members)
function GetState_DataSource : TBomDataSource;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_SourceViewId : Integer;
function GetState_Title : WideString;
function GetState_Variant : WideString;
function GetState_ViewMode : TBomViewMode;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_DataSource(AValue : TBomDataSource);
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Variant(const AValue : WideString);
procedure SetState_ViewMode(AValue : TBomViewMode);

## IDraftsman_BoardDetailView (11 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Rotation : TOrthogonalRotation;
function GetState_SourceViewId : Integer;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Rotation(AValue : TOrthogonalRotation);

## IDraftsman_CalloutItem (10 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_SourceViewId : Integer;
function GetState_Text : WideString;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);

## IDraftsman_CenterMarkItem (10 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Rotation : Double;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Rotation(AValue : Double);

## IDraftsman_CircleItem (10 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Radius : Double;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Radius(AValue : Double);

## IDraftsman_CommentsThreadItem (10 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Resolved : Boolean;
function GetState_Text : WideString;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);

## IDraftsman_ComponentView (14 members)
function GetState_Component : WideString;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Rotation : TOrthogonalRotation;
function GetState_Title : WideString;
function GetState_ViewSide : TBoardViewSide;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Component(const AValue : WideString);
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Rotation(AValue : TOrthogonalRotation);
procedure SetState_ViewSide(ASide : TBoardViewSide);

## IDraftsman_ConnectionTable (10 members)
function GetState_Component : WideString;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Component(const AValue : WideString);
procedure SetState_Location(X : Double, Y : Double);

## IDraftsman_CounterHoleView (12 members)
function GetState_HoleId : WideString;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Title : WideString;
function GetState_ViewSide : TBoardViewSide;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_HoleId(const AValue : WideString);
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_ViewSide(ASide : TBoardViewSide);

## IDraftsman_DatumFeatureItem (10 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Label : WideString;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Label(const AValue : WideString);
procedure SetState_Location(X : Double, Y : Double);

## IDraftsman_DocumentData (2 members)
function GetState_Page(Index : Integer) : IDraftsman_DocumentPage;
function GetState_PageCount : Integer;

## IDraftsman_DocumentItem (8 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);

## IDraftsman_DocumentPage (4 members)
function GetState_Item(Index : Integer) : IDraftsman_DocumentItem;
function GetState_ItemCount : Integer;
function GetState_Template : WideString;
procedure SetState_Template(const AFileName : WideString);

## IDraftsman_DocumentView (2 members)
procedure PointToScreen(APageIndex : Integer, var X : Double, var Y : Double);
procedure ScreenToPoint(APageIndex : Integer, var X : Double, var Y : Double);

## IDraftsman_DrillTable (16 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_ShowNonPlated : Boolean;
function GetState_ShowPads : Boolean;
function GetState_ShowPlated : Boolean;
function GetState_ShowVias : Boolean;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_ShowNonPlated(AValue : Boolean);
procedure SetState_ShowPads(AValue : Boolean);
procedure SetState_ShowPlated(AValue : Boolean);
procedure SetState_ShowVias(AValue : Boolean);

## IDraftsman_DrillView (12 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Rotation : TOrthogonalRotation;
function GetState_Title : WideString;
function GetState_ViewSide : TBoardViewSide;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Rotation(AValue : TOrthogonalRotation);
procedure SetState_ViewSide(ASide : TBoardViewSide);

## IDraftsman_FabricationView (13 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_LayerName : WideString;
function GetState_Rotation : TOrthogonalRotation;
function GetState_Title : WideString;
function GetState_ViewSide : TBoardViewSide;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Rotation(AValue : TOrthogonalRotation);
procedure SetState_ViewSide(ASide : TBoardViewSide);

## IDraftsman_FeatureControlFrameItem (10 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Symbol : TControlFrameSymbol;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Symbol(AValue : TControlFrameSymbol);

## IDraftsman_IsometricView (16 members)
function GetState_DisplayHoles : Boolean;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_ShowNoBom : Boolean;
function GetState_Title : WideString;
function GetState_Variant : WideString;
function GetState_ViewSide : TBoardViewSide;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_DisplayHoles(AValue : Boolean);
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_ShowNoBom(AValue : Boolean);
procedure SetState_Variant(const AValue : WideString);
procedure SetState_ViewSide(ASide : TBoardViewSide);

## IDraftsman_LayerStackLegend (9 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_SourceStackName : WideString;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);

## IDraftsman_LayoutDrawingView (12 members)
function GetState_AutoSize : Boolean;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_ShowBorder : Boolean;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_AutoSize(AValue : Boolean);
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_ShowBorder(AValue : Boolean);

## IDraftsman_LineItem (14 members)
function GetState_EndX : Double;
function GetState_EndY : Double;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_StartX : Double;
function GetState_StartY : Double;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_EndPoint(X : Double, Y : Double);
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_StartPoint(X : Double, Y : Double);

## IDraftsman_NoteItem (11 members)
function GetState_ElementCount : Integer;
function GetState_ElementText(AIndex : Integer) : WideString;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_ElementText(AIndex : Integer, const AValue : WideString);
procedure SetState_Location(X : Double, Y : Double);

## IDraftsman_PictureItem (13 members)
function GetState_Height : Double;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Title : WideString;
function GetState_Width : Double;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure LoadFromFile(const AFileName : WideString);
procedure SaveToFile(const AFileName : WideString);
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Size(AWidth : Double, AHeight : Double);

## IDraftsman_RealisticView (14 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Rotation : TOrthogonalRotation;
function GetState_Title : WideString;
function GetState_Variant : WideString;
function GetState_ViewSide : TBoardViewSide;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Rotation(AValue : TOrthogonalRotation);
procedure SetState_Variant(const AValue : WideString);
procedure SetState_ViewSide(ASide : TBoardViewSide);

## IDraftsman_RectangleItem (11 members)
function GetState_Height : Double;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Title : WideString;
function GetState_Width : Double;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Size(AWidth : Double, AHeight : Double);

## IDraftsman_RegionItem (11 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_PointsCount : Integer;
function GetState_PointX(AIndex : Integer) : Double;
function GetState_PointY(AIndex : Integer) : Double;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);

## IDraftsman_RegionView (10 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Rotation : TOrthogonalRotation;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Rotation(AValue : TOrthogonalRotation);

## IDraftsman_SectionView (11 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Rotation : TOrthogonalRotation;
function GetState_SourceViewId : Integer;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Rotation(AValue : TOrthogonalRotation);

## IDraftsman_ServerInterface (2 members)
function GetState_DocumentData(const AFileName : WideString) : IDraftsman_DocumentData;
function GetState_DocumentView(const AFileName : WideString) : IDraftsman_DocumentView;

## IDraftsman_SurfaceFinishItem (16 members)
function GetState_FirstRequirement : WideString;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_MachiningAllowance : WideString;
function GetState_ManufacturingMethod : WideString;
function GetState_SecondRequirement : WideString;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_FirstRequirement(const AValue : WideString);
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_MachiningAllowance(const AValue : WideString);
procedure SetState_ManufacturingMethod(const AValue : WideString);
procedure SetState_SecondRequirement(const AValue : WideString);

## IDraftsman_TableItem (12 members)
function GetState_CellText(X : Integer, Y : Integer) : WideString;
function GetState_ColumnCount : Integer;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_RowCount : Integer;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_CellText(X : Integer, Y : Integer, const AValue : WideString);
procedure SetState_Location(X : Double, Y : Double);

## IDraftsman_TextItem (10 members)
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_Text : WideString;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_Text(const AValue : WideString);

## IDraftsman_WiringDiagramView (12 members)
function GetState_AutoSize : Boolean;
function GetState_Id : Integer;
function GetState_ItemType : TDrawingDocumentItemType;
function GetState_ShowBorder : Boolean;
function GetState_Title : WideString;
function GetState_XLocation : Double;
function GetState_XSize : Double;
function GetState_YLocation : Double;
function GetState_YSize : Double;
procedure SetState_AutoSize(AValue : Boolean);
procedure SetState_Location(X : Double, Y : Double);
procedure SetState_ShowBorder(AValue : Boolean);

## IDragDropDataSheets (2 members)
property DataSheetURL[I: Integer] : WideString
function DataSheetCount : Integer;

## IDragDropNotification (2 members)
function GetCode : Integer;
function GetDragDropObject : IDragDropObject;

## IDragDropParameters (2 members)
property Parameter[I: Integer] : IItemParameter
function ParameterCount : Integer;

## IDragDropSupplierSourceRelationships (2 members)
property SupplierSourceRelationship[I: Integer] : ISupplierSourceRelationship
function SupplierSourceRelationshipCount : Integer;

## IDrillPairInfo (5 members)
function GetState_IsBackDrill : Boolean;
function GetState_IsMicroVia : Boolean;
function GetState_Name : WideString;
function GetState_StartLayerId : Integer;
function GetState_StopLayerId : Integer;

## IDriverManager (2 members)
function GetAllDevices : IInterfaceList;
function GetDeviceInterface(DeviceName : WideString) : INexusDevice;

## IDXPAltiumPortal (20 members)
procedure AddAltiumPortalEvent(AEventType : WideString);
function FullName : WideString;
function GetContentVaultServiceUrl : WideString;
function GetGlobalIDSServiceUrl : WideString;
procedure GetOperatorDetails;
function GetPRT_GlobalServiceUrl(const ServiceName : WideString) : WideString;
function GetUseUnifiedLogin : Boolean;
function IsBusy : Boolean;
function LoggedIn : Boolean;
function LoggingIn : Boolean;
procedure LoginBySessionID(AWaitForResult : Boolean, ASessionHandle : WideString);
function Logout : Boolean;
function LogoutWithParams(const AParameters : WideString) : Boolean;
function OperatorAccountName : WideString;
function Password : WideString;
function PortalSecureSessionHandle : WideString;
function PortalSessionHandle : WideString;
function ProfilePicture : WideString;
procedure ResetPassWord;
function UserName : WideString;

## IDXPAltiumPortalExtendedUIFactory (8 members)
function ChineseLogin(out ASessionID : WideString) : Boolean;
function ChineseSavedLogin : WideString;
function ExchangeAccessToken(const ASourceToken : WideString, out ATargetToken : WideString, out ATargetSecureToken : WideString) : Boolean;
function PlatformAPIReferenceDesignExchangeRefreshToAccessToken(const AAuthServiceUrl : WideString, const ASourceToken : WideString, out ATargetToken : WideString, out AErrorMessage : WideString) : Boolean;
function SynchronizerExchangeRefreshToAccessToken(const AAuthServiceUrl : WideString, const AItarServiceUrl : WideString, const ASourceToken : WideString, AIsSecure : Boolean, out ATargetToken : WideString, out AErrorMessage : WideString) : Boolean;
function SynchronizerUnifiedLogin(out ARefreshSessionID : WideString) : Boolean;
function UnifiedLogin(const ABrowserLocation : WideString, const ABrowserStartupParameters : WideString, out ASessionID : WideString, out ASecureSessionID : WideString) : Boolean;
procedure UnifiedLogout(const ABrowserLocation : WideString, const ABrowserStartupParameters : WideString);

## IDXPDocument (7 members)
function DM_DocumentIsLoaded : Boolean;
function DM_DocumentIsTextual : Boolean;
function DM_DocumentKind : WideString;
function DM_FileName : WideString;
function DM_FullPath : WideString;
function DM_IsVirtualDocument : Boolean;
function DM_Project : IDXPProject;

## IDXPExtensionManager (1 members)
property Settings : IDXPExtensionManagerSettings

## IDXPExtensionManagerSettings (3 members)
property CheckFrequency : TUpdateCheckFrequency
procedure Load;
procedure Save;

## IDXPLocalComparisonCallback (1 members)
procedure Handle(const aResult : IDXPLocalComparisonResult);

## IDXPLocalComparisonResult (4 members)
property ErrorMessage : WideString
property IsDone : Boolean
property IsSuccess : Boolean
procedure Terminate;

## IDXPMessageItem (18 members)
property CallBackParameters : WideString
property CallBackParameters2 : WideString
property CallBackProcess : WideString
property CallBackProcess2 : WideString
property Details : IDXPMessageItemDetails
property Document : WideString
property HelpFileID : WideString
property HelpFileName : WideString
property ImageIndex : Integer
property MsgClass : WideString
property MsgColor : Integer
property MsgDateTime : TDateTime
property MsgIndex : Integer
property Pinned : Boolean
property Selected : Boolean
property Source : WideString
property Text : WideString
property UserID : WideString

## IDXPMessageItemDetails (1 members)
property RootItem : IDXPMessageSubItem

## IDXPMessagesManager (21 members)
procedure AddMessage(const MessageClass : WideString, const MessageText : WideString, const MessageSource : WideString, const MessageDocument : WideString, const MessageCallBackProcess : WideString, const MessageCallBackParameters : WideString, ImageIndex : Integer, ReplaceLastMessageIfSameClass : Boolean);
procedure AddMessage2(const MessageClass : WideString, const MessageText : WideString, const MessageSource : WideString, const MessageDocument : WideString, const MessageCallBackProcess : WideString, const MessageCallBackParameters : WideString, ImageIndex : Integer, ReplaceLastMessageIfSameClass : Boolean, const MessageCallBackProcess2 : WideString, const MessageCallBackParameters2 : WideString, const Details : IDXPMessageItemDetails);
procedure AddMessageParametric(MessageParams : PWideChar, MessageCallBackParameters : PWideChar);
procedure BeginPinCriticalMessages(AErrorLevel : TErrorLevel);
procedure BeginPreserve;
procedure BeginUpdate;
procedure ClearMessageByIndex(AIndex : Integer);
procedure ClearMessages;
procedure ClearMessagesForDocument(const DocumentPath : WideString);
procedure ClearMessagesOfClass(const AMsgClass : WideString);
procedure ClearPinnedMessages;
function CreateMesssageItemDetails : IDXPMessageItemDetails;
procedure EndPinCriticalMessages;
procedure EndPreserve;
procedure EndUpdate;
function GetMaxErrorLevel : TErrorLevel;
function Messages(Index : Integer) : IDXPMessageItem;
function MessagesCount : Integer;
function SelectedMessages(Index : Integer) : IDXPMessageItem;
function SelectedMessagesCount : Integer;
procedure UpdateWindow;

## IDXPMessageSubItem (7 members)
property Item[Index: Integer] : IDXPMessageSubItem
procedure AddSubItem(AText : WideString, AImageIndex : Integer, ACallBackProcess : WideString, ACallBackParameters : WideString);
property CallBackParameters : WideString
property CallBackProcess : WideString
property Count : Integer
property ImageIndex : Integer
property Text : WideString

## IDXPNavigator (3 members)
function DXPFavoritesNavigateTo(const Target : WideString) : Boolean;
function DXPNavigateInNewWindow(const Target : WideString) : Boolean;
function DXPNavigateTo(const Target : WideString) : Boolean;

## IDXPProductBranding (3 members)
function VaultAllowSwitch : Boolean;
function VaultCaption : WideString;
function VaultImage : WideString;

## IDXPProject (46 members)
procedure DM_AddControlPanel(FileName : WideString);
procedure DM_AddGeneratedDocument(FileName : WideString);
procedure DM_AddParameter(const AName : WideString, const AValue : WideString);
procedure DM_AddSourceDocument(FileName : WideString);
procedure DM_AddToVCSPostProcess(AIsInternalRepository : Boolean);
procedure DM_AddToVCSPreProcess(const ARepositoryGUID : WideString, const ARepositoryPath : WideString, AIsInternalRepository : Boolean);
function DM_ExternalFiles(ASearchInDocuments : Boolean, ACheckForExistence : Boolean) : IExternalFiles;
function DM_GeneratedDocumentCount : Integer;
function DM_GeneratedDocuments(Index : Integer) : IDXPDocument;
function DM_GetDocumentByDocumentId(const ADocumentId : WideString) : IDXPDocument;
function DM_GetDocumentFromPath(DocumentPath : WideString) : IDXPDocument;
function DM_GetIsEnabledOnlineSynchronization : Boolean;
function DM_GetOutputPath : WideString;
function DM_GetParameterCount : Integer;
function DM_GetParameterExist(const AName : WideString) : Boolean;
function DM_GetParameterName(const AIndex : Integer) : WideString;
function DM_GetParameterValue(const AIndex : Integer) : WideString;
function DM_IsActive : Boolean;
function DM_IsHidden : Boolean;
function DM_IsLinkedToVault : Boolean;
function DM_IsReuseBlock : Boolean;
function DM_IsSharedWithMe : Boolean;
function DM_IsSolution : Boolean;
function DM_IsViewOnly : Boolean;
function DM_ItemGUID : WideString;
function DM_LogicalDocumentCount : Integer;
function DM_LogicalDocuments(Index : Integer) : IDXPDocument;
function DM_ManagedProjectGUID : WideString;
function DM_MigrateToConstraintManagerFlow : Boolean;
function DM_OfflineProjectGUID : WideString;
function DM_OptionsStorage : IOptionsStorage;
function DM_OwnedProjectCount : Integer;
function DM_OwnedProjects(Index : Integer) : IDXPProject;
function DM_ProjectFileName : WideString;
function DM_ProjectFullPath : WideString;
procedure DM_RefreshInWorkspaceForm;
procedure DM_RemoveParameter(const AIndex : Integer);
procedure DM_RemoveSourceDocument(FileName : WideString);
function DM_RevisionGUID : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetParameter(const AName : WideString, const AValue : WideString);
procedure DM_UnlinkFromVault;
function DM_VaultGUID : WideString;
function DM_VaultHRID : WideString;
function DM_WriteAccessState : TWriteAccessState;
property VCSProject : IInterface

## IDXPServer_Notification (3 members)
property NotificationCode : Integer
property NotificationData : IInterface
property NotificationType : WideString

## IDxpServerInitializer (1 members)
procedure SetHostServiceName(const AName : WideString);

## IDXPSplash (4 members)
procedure AddMessage(const Msg : WideString);
procedure HideSplash;
procedure SetParam(const ParamName : WideString, const ParamValue : WideString);
procedure ShowSplash(const IsStartup : Boolean);

## IDXPSVNDatabaseLibDocument (3 members)
function GetFileName : WideString;
function GetLibrarySearchPath : WideString;
function GetRepositoryURL : WideString;

## IDXPWorkSpace (26 members)
procedure DM_ClearOutputLines;
function DM_CreateNewDocument(ADocKind : WideString) : WideString;
procedure DM_FileOwnership_BulkWarnEnd(AWarningLevel : TFileOwnershipWarningLevel);
function DM_FileOwnership_BulkWarnRegister(AFileName : string) : Boolean;
procedure DM_FileOwnership_BulkWarnStart;
function DM_FocusedDocument : IDXPDocument;
function DM_FocusedProject : IDXPProject;
function DM_FreeDocumentsProject : IDXPProject;
function DM_GetDocumentFromPath(DocumentPath : WideString) : IDXPDocument;
function DM_GetManagedDocumentImageIndex(const AFilePath : WideString) : Integer;
function DM_GetOutputLine(Index : Integer) : WideString;
function DM_GetOutputLineCount : Integer;
function DM_GetProjectFromPath(ProjectPath : WideString) : IDXPProject;
function DM_IsReferencedAsDeviceSheet(const AFilePath : WideString) : Boolean;
function DM_LoadProjectHidden(const ProjectPath : WideString) : IDXPProject;
function DM_LocalHistoryManager : ILocalHistoryManager;
function DM_MessagesManager : IDXPMessagesManager;
function DM_Preferences : IDXPWorkspacePreferences;
function DM_ProductBranding : IDXPProductBranding;
function DM_ProjectCount : Integer;
function DM_Projects(Index : Integer) : IDXPProject;
procedure DM_ShowMessageView;
procedure DM_UpdateOutputWindow;
function DM_UseItemRevision(const AVaultGuid : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString, const AParams : WideString) : Boolean;
function DM_WorkspaceFileName : WideString;
function GetProjectsByGUID(const APath : WideString, const AManagedProjectGUID : WideString, const AProjectType : WideString) : IStrings;

## IDXPWorkspace2 (3 members)
function DM_FocusedDocumentKind : WideString;
function DM_GetDocumentFromPathIncludingMissing(const ADocumentPath : WideString) : IDXPDocument;
function DM_UseItemRevision_ExtPcb(const AVaultGuid : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString, const ASelectedItemGUID : WideString, const ASelectedItemRevisionGUID : WideString, const AParams : WideString) : Boolean;

## IDXPWorkspaceHelper (2 members)
function CompareLocalProjectWithLastRevision(const AProjectPath : WideString, ARevisionType : TLocalComparisonRevisionType, ADocumentType : TLocalComparisonDocumentType, AShowPrepareDialog : Boolean, const ACallback : IDXPLocalComparisonCallback) : IDXPLocalComparisonResult;
function CompareLocalProjectWithSpecificRevision(const AProjectPath : WideString, ARevisionType : TLocalComparisonRevisionType, const ARevisionID : WideString, ADocumentType : TLocalComparisonDocumentType, AShowPrepareDialog : Boolean, const ACallback : IDXPLocalComparisonCallback) : IDXPLocalComparisonResult;

## IDXPWorkspacePreferences (9 members)
property DefaultDocumentPath : WideString
property FileOwnership_Enabled : Boolean
property FileOwnership_EnabledOutputDirectory : Boolean
property FileOwnership_WarningLevelOpen : TFileOwnershipWarningLevel
property FileOwnership_WarningLevelSave : TFileOwnershipWarningLevel
property ReleasesTemporaryFolder : WideString
property ReleasesTemporaryFolderCleanUp : Boolean
property ReleasesTemporaryFolderNotExpanded : WideString
property TemplatePath : WideString

## IDynamicHelpManager (5 members)
function AddCustomContent(const ASectionName : WideString, const ASectionBody : WideString) : NativeInt;
function GetCustomSectionBody(Index : Integer) : WideString;
function GetCustomSectionName(Index : Integer) : WideString;
function GetCustomSectionsCount : Integer;
procedure RemoveCustomContent(AnID : NativeInt);

## IECO (6 members)
function DM_AddMemberToObject(Mode : TECO_Mode, ReferenceMember : IDMObject, ReferenceParent : IDMObject, TargetParent : IDMObject) : Boolean;
function DM_AddObject(Mode : TECO_Mode, ReferenceObject : IDMObject) : Boolean;
procedure DM_Begin;
procedure DM_End;
function DM_RemoveMemberFromObject(Mode : TECO_Mode, MemberObject : IDMObject, ParentObject : IDMObject) : Boolean;
function DM_RemoveObject(Mode : TECO_Mode, ObjectToRemove : IDMObject) : Boolean;

## IEditComponentVariantDialog (1 members)
function Run(ALibraryLink : IComponentLibraryLink, var AVariationKind : TVariationKind, const ATestSchComp : IInterface, ALibLinkOnly : Boolean) : Boolean;

## IEditGridLinkObserver (15 members)
property Active : Boolean
procedure BeginUpdate;
property Current : TVarRec
function Edit : Boolean;
procedure EndUpdate;
property IsEditing : Boolean
function IsModified : Boolean;
property IsReadOnly : Boolean
function IsRequired : Boolean;
function IsValidChar(AKey : Char) : Boolean;
procedure Modified;
procedure Removed;
procedure Reset;
procedure Update;
property Updating : Boolean

## IEditLinkObserver (14 members)
property Active : Boolean
procedure BeginUpdate;
function Edit : Boolean;
procedure EndUpdate;
property IsEditing : Boolean
function IsModified : Boolean;
property IsReadOnly : Boolean
function IsRequired : Boolean;
function IsValidChar(AKey : Char) : Boolean;
procedure Modified;
procedure Removed;
procedure Reset;
procedure Update;
property Updating : Boolean

## IEditVHDLWaveNotify (2 members)
function DocumentClosing : Boolean;
function RemoveFromWave(SignalName : PWideChar) : Boolean;

## IEDM_Notification (4 members)
property Code : Integer
property ContentTypeGUID : WideString
property DItemGUID : WideString
property DItemRevisionGUID : WideString

## IEDMS_CommentThreadHolder (5 members)
property CommentThreadData : WideString
property CommentThreadGUID : WideString
property IsSharedWithMeProject : LongBool
property ManagedProjectGUID : WideString
property ServerGUID : WideString

## IElectronicsSystemDesignDocument (187 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AnnotationOptions : IDocumentAnnotationOptions;
function DM_BlanketCount : Integer;
function DM_Blankets(Index : Integer) : IBlanket;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusCount : Integer;
function DM_Buses(Index : Integer) : IBus;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChannelClassCount : Integer;
function DM_ChannelClasses(Index : Integer) : IChannelClass;
function DM_ChannelIndex : Integer;
function DM_ChannelPrefix : WideString;
function DM_ChannelRoomNamingStyle : TChannelRoomNamingStyle;
function DM_ChildDocumentCount : Integer;
function DM_ChildDocumentCountIgnoreScope : Integer;
function DM_ChildDocuments(Index : Integer) : IDocument;
function DM_ChildDocumentsIgnoreScope(Index : Integer) : IDocument;
function DM_ClassClusterCount : Integer;
function DM_ClassClusters(Index : Integer) : IObjectClassCluster;
function DM_ClearancesMatrix : IClearancesMatrix;
function DM_Compile : LongBool;
function DM_ComponentClassCount : Integer;
function DM_ComponentClasses(Index : Integer) : IComponentClass;
function DM_ComponentCount : Integer;
function DM_Components(Index : Integer) : IComponent;
function DM_ConstraintGroupCount : Integer;
function DM_ConstraintGroups(Index : Integer) : IConstraintGroup;
function DM_ConstraintManagerData(Index : Integer) : IConstraintManagerData;
function DM_ConstraintManagerDatasCount : Integer;
function DM_CreateViolation(AErrorKind : TErrorKind, AErrorString : WideString) : IViolation;
function DM_CrossSheetConnectorCount : Integer;
function DM_CrossSheetConnectors(Index : Integer) : ICrossSheet;
function DM_CurrentInstanceNumber : Integer;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DifferentialPairClassCount : Integer;
function DM_DifferentialPairClasses(Index : Integer) : IDifferentialPairClass;
function DM_DifferentialPairCount : Integer;
function DM_DifferentialPairs(Index : Integer) : IDifferentialPair;
procedure DM_DoCrossProbeBase;
function DM_DocumentID : WideString;
function DM_DocumentIsLoaded : Boolean;
function DM_DocumentIsTextual : Boolean;
function DM_DocumentKind : WideString;
procedure DM_DocumentLoaded;
function DM_FileName : WideString;
function DM_FSMClockPort : INetItem;
function DM_FSMResetPort : INetItem;
function DM_FSMState(Index : Integer) : IDM_FSMState;
function DM_FSMStateCount : Integer;
function DM_FSMTransition(Index : Integer) : IDM_FSMTransition;
function DM_FSMTransitionCount : Integer;
function DM_FullCrossProbeString : WideString;
function DM_FullPath : WideString;
function DM_Function(Index : Integer) : IFunction;
function DM_FunctionsCount : Integer;
function DM_GeneralField : Integer;
function DM_GetDirectiveProperties(const ObjectHandle : WideString) : IDirectiveProperties;
function DM_GetDocumentForECO : IDocument;
function DM_GetItemRevisionGUID : WideString;
function DM_GetNet(const ObjectHandle : WideString) : INet;
function DM_GetNetNamesForObject(const ObjectHandle : WideString) : IStrings;
function DM_GetNetProperties(const ObjectHandle : WideString) : INetProperties;
function DM_GetOriginalDocumentHash : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPartDesignatorsForObject(const ObjectHandle : WideString) : IStrings;
function DM_GetRequiredCapabilities(ACapabilities : ICapabilityList) : Boolean;
function DM_GetSchConstraintsManager : ISchConstraintsManager;
function DM_GetState_DocDisplayName : WideString;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_HarnessConnectorCount : Integer;
function DM_HarnessConnectors(Index : Integer) : ISheetSymbol;
function DM_HarnessNetCount : Integer;
function DM_HarnessNets(Index : Integer) : INet;
function DM_ImageIndex : Integer;
function DM_IndentLevel : Integer;
function DM_Interface(Index : Integer) : IDMInterface;
function DM_InterfacesCount : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsDeviceSheet : Boolean;
function DM_IsDocumentFileLessEditing : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsPhysicalDocument : Boolean;
function DM_IsPrimaryImplementationDocument : Boolean;
function DM_IsRequired : Boolean;
function DM_IsVirtualDocument : Boolean;
function DM_LoadDocument : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDocument : IDocument;
function DM_LongDescriptorString : WideString;
function DM_ModelKind : WideString;
function DM_NeedsScrapCompile : Boolean;
function DM_NetClassCount : Integer;
function DM_NetClasses(Index : Integer) : INetClass;
function DM_NetCount : Integer;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_Nets(Index : Integer) : INet;
function DM_NoteCount : Integer;
function DM_Notes(Index : Integer) : INote;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_ObjectRevisionId : WideString;
function DM_OpenAndFocusDocument : Boolean;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentDocumentCount : Integer;
function DM_ParentDocuments(Index : Integer) : IDocument;
function DM_ParentSheetSymbolCount : Integer;
function DM_ParentSheetSymbols(Index : Integer) : ISheetSymbol;
function DM_PartAnnotateCount : Integer;
function DM_PartCount : Integer;
function DM_Parts(Index : Integer) : IPart;
function DM_PartsAnnotate(Index : Integer) : IPart;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDocument(Index : Integer) : IDocument;
function DM_PhysicalDocumentCount : Integer;
function DM_PhysicalDocumentParent : IDocument;
function DM_PhysicalInstanceName : WideString;
function DM_PhysicalInstancePath : WideString;
function DM_PhysicalRoomName : WideString;
function DM_PinPair(Index : Integer) : IPinPair;
function DM_PinPairsCount : Integer;
function DM_PortCount : Integer;
function DM_Ports(Index : Integer) : INetItem;
function DM_PrimaryCrossProbeString : WideString;
function DM_Project : IProject;
function DM_ReuseBlocks : IReuseBlocks;
function DM_RoomCount : Integer;
function DM_Rooms(Index : Integer) : IRoom;
function DM_RuleCount : Integer;
function DM_Rules(Index : Integer) : IRule;
function DM_SameClearancesMatrix : IClearancesMatrix;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_ScrapCompile(ForceCompile : Boolean) : LongBool;
function DM_ScrapCompileWithOptions(ForceCompile : Boolean, AOptions : WideString) : LongBool;
function DM_SecondaryCrossProbeString : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetItemRevisionGUID(S : WideString);
procedure DM_SetOriginalDocumentHash(const AValue : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_SheetSizeX : Integer;
function DM_SheetSizey : Integer;
function DM_SheetSymbolCount : Integer;
function DM_SheetSymbols(Index : Integer) : ISheetSymbol;
function DM_ShortDescriptorString : WideString;
function DM_SignalManager : ISignalManager;
function DM_SmartLoad : Boolean;
function DM_SpatialAnalysis(Force : Boolean, AllowAbort : Boolean, AbortOnMouseMove : Boolean) : Boolean;
function DM_SpatialAnalysisForTest : Integer;
function DM_SystemFunction(Index : Integer) : ISystemFunction;
function DM_SystemFunctionsCount : Integer;
function DM_TextFrameCount : Integer;
function DM_TextFrames(Index : Integer) : ITextFrame;
function DM_UniqueComponentCount : Integer;
function DM_UniqueComponents(Index : Integer) : IComponent;
function DM_UniquePartCount : Integer;
function DM_UniqueParts(Index : Integer) : IPart;
procedure DM_UpdateDateModified;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntities(Index : Integer) : IVHDLEntity;
function DM_VHDLEntity : IVHDLEntity;
function DM_VHDLEntityCount : Integer;
function DM_xNet(Index : Integer) : IxNet;
function DM_xNetClass(Index : Integer) : IxNetClass;
function DM_xNetClassesCount : Integer;
function DM_xNetsCount : Integer;
function DM_xSignalClass(Index : Integer) : IxSignalClass;
function DM_xSignalClassesCount : Integer;
property VCSProject : IInterface

## IElectronicsSystemDesignNet (114 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AllNetItemCount : Integer;
function DM_AllNetItems(Index : Integer) : INetItem;
function DM_AutoNumber : Integer;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusIndex : Integer;
function DM_BusKind : TBusKind;
function DM_BusPrefix : WideString;
function DM_BusRange1 : WideString;
function DM_BusRange2 : WideString;
function DM_BusRangeValue1 : Integer;
function DM_BusRangeValue2 : Integer;
function DM_BusSectionParent : INet;
function DM_BusWidth : Integer;
function DM_CalculatedNetName : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CountOfElectricalType(AElectric : TPinElectrical) : Integer;
function DM_CountOfNonPinItems : Integer;
function DM_CrossSheetConnectorCount : Integer;
function DM_CrossSheetConnectors(Index : Integer) : ICrossSheet;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DesignatorLocationX : Integer;
function DM_DesignatorLocationY : Integer;
function DM_DirectiveCount : Integer;
function DM_Directives(Index : Integer) : INetItem;
procedure DM_DoCrossProbe;
procedure DM_DoCrossProbeBase;
function DM_Electric : TPinElectrical;
function DM_ElectricalString : WideString;
function DM_FullCrossProbeString : WideString;
function DM_FullNetName : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_HarnessType : WideString;
function DM_HasItemOnDocument(Document : IDocument) : Boolean;
function DM_HiddenNetName : WideString;
function DM_ImageIndex : Integer;
function DM_Implementation : IElectronicsSystemDesignNetImplementation;
function DM_InlineSpliceCount : Integer;
function DM_InlineSplices(Index : Integer) : IInlineSplice;
function DM_IsAutoGenerated : Boolean;
function DM_IsBusElement : Boolean;
function DM_IsBusMember : Boolean;
function DM_IsBusSection : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsLocal : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsPowerOrGroundNet : Boolean;
function DM_LineCount : Integer;
function DM_Lines(Index : Integer) : ILine;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetColor : TColor;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetLabelCount : Integer;
function DM_NetLabels(Index : Integer) : INetItem;
function DM_NetName : WideString;
function DM_NetNumber : WideString;
function DM_NoConnectCount : Integer;
function DM_NoConnects(Index : Integer) : INoConnect;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PinCount : Integer;
function DM_Pins(Index : Integer) : INetItem;
function DM_PortCount : Integer;
function DM_Ports(Index : Integer) : INetItem;
function DM_PowerObjectCount : Integer;
function DM_PowerObjects(Index : Integer) : INetItem;
function DM_PrimaryCrossProbeString : WideString;
function DM_RangeDefinedByValue : Boolean;
function DM_RemovedHarnessEntries(Index : Integer) : INetItem;
function DM_RemovedHarnessEntryCount : Integer;
function DM_RemovedNetItemCount : Integer;
function DM_RemovedNetItems(Index : Integer) : INetItem;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_Scope : TNetScope;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetEntryCount : Integer;
function DM_SheetEntrys(Index : Integer) : INetItem;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SignalType : WideString;
function DM_SpliceCount : Integer;
function DM_Splices(Index : Integer) : ISplice;
function DM_SubWireCount : Integer;
function DM_SubWires(Index : Integer) : INet;
function DM_SuppressERC : Boolean;
function DM_TooltipText(PhysicalRoomName : WideString) : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IElectronicsSystemDesignNetImplementation (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AssignedInterfaceName : WideString;
function DM_AssignedNetName : WideString;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DisplayName : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IEmbeddableDocument (3 members)
property FileNameForSave : WideString
property LibReferences : WideString
property ParentDocumentFileName : WideString

## IEmbeddedConfiguration (82 members)
procedure DM_AddConstraintFile(AConstraintFilePath : WideString);
procedure DM_AddOutputJobDocument(APath : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CheckForErrors : WideString;
function DM_ConstraintGroupCount : Integer;
function DM_ConstraintGroups(Index : Integer) : IConstraintGroup;
function DM_ConstraintsFileCount : Integer;
function DM_ConstraintsFilePath(Index : Integer) : WideString;
procedure DM_CreateStorageConstraintFile;
function DM_CurrentRevision : IULB_ItemRevision;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DeviceFullName : WideString;
function DM_DeviceMemory : WideString;
function DM_DeviceName : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GenerateRawBOM : Boolean;
function DM_GetCurrentRevisionGUID : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetReleaseItemGUID : WideString;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTargetDeviceName : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OptionsStorage : IOptionsStorage;
function DM_OutputJobDocumentCount : Integer;
function DM_OutputJobDocumentFilePath(Index : Integer) : WideString;
function DM_OutputJobDocumentReferenceCount : Integer;
function DM_OutputJobDocumentReferenceCreateItemRevisionLink(AIndex : Integer, AVault : IEDMS_Vault, AParentRevision : IULB_ItemRevision) : IULB_ItemRevisionLink;
function DM_OutputJobDocumentReferenceFileDir(Index : Integer) : WideString;
function DM_OutputJobDocumentReferenceFileName(Index : Integer) : WideString;
procedure DM_OutputJobDocumentReferencesAddDocumentReference(ADocument : IDocument);
procedure DM_OutputJobDocumentReferencesClear;
procedure DM_OutputJobDocumentReferencesCopyFrom(AConfiguration : IVaultConfiguration);
procedure DM_OutputJobDocumentReferencesRemoveByIndex(Index : Integer);
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_ReleaseItem : IULB_Item;
procedure DM_ResetCache;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetCurrentRevisionGUID(Value : WideString);
procedure DM_SetName(Value : WideString);
procedure DM_SetReleaseItemGUID(Value : WideString);
procedure DM_SetVariant(Value : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_Variant : WideString;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IEmbeddedDebugConsole (2 members)
function Command_ExecuteInternal(aCommand : WideString) : WideString;
function WaitForDebugger(aMilliseconds : Cardinal) : Boolean;

## IEmbeddedDebugger (49 members)
function BreakPoint_Add(aFileName : WideString, aLine : Integer) : IBreakpoint;
function BreakPoint_At(anIndex : Integer) : IBreakpoint;
function BreakPoint_AtForFile(aFileName : WideString, anIndex : Integer) : IBreakpoint;
procedure Breakpoint_Changed(aBreakpoint : IBreakpoint);
function BreakPoint_Count : Integer;
function BreakPoint_CountForFile(aFileName : WideString) : Integer;
procedure Breakpoint_EnabledChanged(aBreakpoint : IBreakpoint);
function BreakPoint_Find(aFileName : WideString, aLine : Integer) : IBreakpoint;
procedure Breakpoint_Focused(aBreakpoint : IBreakpoint);
procedure BreakPoint_Moved(aBreakpoint : IBreakpoint, aOldFileName : WideString, aOldLine : Integer);
procedure BreakPoint_Remove(aFileName : WideString, aLine : Integer);
procedure Breakpoint_ValidChanged(aBreakpoint : IBreakpoint);
function CodePoint_At(aFileName : WideString, anIndex : Integer) : Integer;
function CodePoint_Count(aFileName : WideString) : Integer;
function CodePoint_IsCodePoint(aFileName : WideString, aLine : Integer) : Boolean;
procedure Configure;
function CurrentSourceFullPath : WideString;
procedure Execution_Break;
function Execution_GetExectionPoint(var aFileName : WideString, var aLine : Integer) : Boolean;
procedure Execution_Reset;
procedure Execution_Run;
procedure Execution_RunTo(AFile : WideString, aLine : Integer);
procedure Execution_ShowExecutionPoint;
procedure Execution_StepInto;
procedure Execution_StepOver;
function Previous_State : TDebuggerState;
procedure Session_Begin;
function Session_DeviceIsRunning(const ADeviceID : WideString) : Boolean;
procedure Session_End;
function Session_IsDebugging(const AProjectSource : WideString) : Boolean;
function Session_IsRunning(const AProjectSource : WideString, const ADeviceID : WideString, AIsSimulation : Boolean) : Boolean;
function Session_ProjectIsRunning(const AProjectSource : WideString) : Boolean;
function State : TDebuggerState;
procedure View_AttachBreakpointMonitor(aMonitor : IBreakpointMonitor);
procedure View_AttachStatusMonitor(aMonitor : IDebugStatusMonitor);
procedure View_AttachWatchMonitor(aMonitor : IWatchMonitor);
procedure View_DetachBreakpointMonitor(aMonitor : IBreakpointMonitor);
procedure View_DetachStatusMonitor(aMonitor : IDebugStatusMonitor);
procedure View_DetachWatchMonitor(aMonitor : IWatchMonitor);
function Watch_Add(aExpression : WideString) : IWatch;
procedure Watch_Add_BeginUpdate;
procedure Watch_Add_EndUpdate;
function Watch_Add_Ext(aExpression : WideString, aFullPath : WideString, aLineNumber : Integer) : IWatch;
function Watch_At(anIndex : Integer) : IWatch;
procedure Watch_ClearAll;
function Watch_Count : Integer;
function Watch_Find(aExpression : WideString) : IWatch;
procedure Watch_Remove(aExpression : WideString);
procedure Watch_UpdateAllValues;

## IEmbeddedParser (1 members)
function GetModuleInfo(const aFileName : WideString) : IModuleInfo;

## IEmbeddedProject (288 members)
procedure DM_Abort;
function DM_AddAsDeviceSheet(const ADocumentPath : WideString) : IDocument;
function DM_AddConfiguration(Configuration : WideString) : IConfiguration;
procedure DM_AddConfigurationParameters(Configuration : WideString);
procedure DM_AddConfigurationParameters_Physical(Configuration : WideString);
procedure DM_AddControlPanel(Filename : WideString);
procedure DM_AddDeviceSheetFolder(FolderPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddGeneratedDocument(Filename : WideString);
procedure DM_AddMissingAutoCrossRefs;
procedure DM_AddOrSetUniqueIdMapping(const ASchHandle : WideString, const AUniqueIdMapping : WideString);
procedure DM_AddParameter(AName : WideString, AValue : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AddProjectVariant : IProjectVariant;
procedure DM_AddSearchPath(SearchPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddSourceDocument(Filename : WideString);
procedure DM_AddSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_AddVirtualDocument(const APath : WideString);
procedure DM_ApplyChangesFromSystemDataModel;
function DM_AvailableDatabaseLinks : Boolean;
procedure DM_BeginUpdate;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateFormula(const DMObject : IDMObject, const AFormula : WideString, ForComponentVariation : Boolean, const ProjectVariant : IProjectVariant, const Variations : ISafeInterfaceList) : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChannelDesignatorFormat : WideString;
function DM_ChannelRoomLevelSeperator : WideString;
function DM_ChannelRoomNamingStyle : TChannelRoomNamingStyle;
procedure DM_ClearAllNetColors;
procedure DM_ClearSchematicObjectsErrorFields(const SchematicId : WideString);
procedure DM_ClearViolations;
function DM_Compile : LongBool;
function DM_CompileASP(ARebuild : LongBool) : LongBool;
function DM_CompileAspWithParameters(const Parameters : WideString, ARebuild : LongBool) : LongBool;
function DM_CompileEx(All : LongBool, var Cancelled : LongBool) : LongBool;
function DM_CompileProjectOrDocument(ADocument : IDocument) : Boolean;
function DM_ComponentMappings(AnImplementationDocument : WideString) : IComponentMappings;
function DM_ConfigurationCount : Integer;
function DM_Configurations(Index : Integer) : IConfiguration;
function DM_CrossRefCrossSheets : Boolean;
function DM_CrossRefLocationStyle : TCrossRefLocationStyle;
function DM_CrossRefPorts : TCrossRefPorts;
function DM_CrossRefSheetEntries : Boolean;
function DM_CrossRefSheetStyle : TCrossRefSheetStyle;
function DM_CurrentProjectVariant : IProjectVariant;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DataModel : IUnifiedDataModel;
function DM_DeviceSheetFolderCount : Integer;
function DM_DeviceSheetFolders(Index : Integer) : IDeviceSheetFolder;
procedure DM_DeviceSheetRemoved(const Filename : WideString);
function DM_DiffPairSuffixCount : Integer;
procedure DM_DiffPairSuffixes(Index : Integer, var Positive : WideString, var Negative : WideString);
procedure DM_DisableOnlineSynchronization(AUpdateParameters : Boolean);
procedure DM_DoCrossProbeBase;
procedure DM_DoCrossSelection;
function DM_DocumentBackups : IDocumentBackups;
function DM_DocumentClassGenerationOptions(const ADocumentPath : WideString) : IDocumentClassGenerationOptions;
function DM_DocumentFlattened : IDocument;
function DM_DocumentIsGenerated(const ADocumentFileName : WideString) : Boolean;
function DM_EditConfigurations : LongBool;
function DM_EditOptions(DefaultPage : WideString) : LongBool;
procedure DM_EndUpdate;
procedure DM_EnsureAllCachedManagedOutputJobs;
procedure DM_EnsureStandardConfigurations;
function DM_ErrorLevels(AErrorKind : TErrorKind) : TErrorLevel;
procedure DM_Export_ToFile(const AFileName : WideString);
function DM_FileLessItemGUID : WideString;
function DM_FileLessVaultGUID : WideString;
function DM_FindProjectVariant(ADescription : WideString) : IProjectVariant;
procedure DM_FixDesignatorAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ALogicalDesignator : WideString, ARemoveOriginal : Boolean);
procedure DM_FixSheetNumberAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ADocumentFileName : WideString, ARemoveOriginal : Boolean);
procedure DM_FixVariationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const APhysicalDesignator : WideString, const AProjectVariantUniqueId : WideString, const AProjectVariantDescription : WideString, ARemoveOriginal : Boolean);
procedure DM_ForceIncludeRequiredOutJobs(const AConfigurationManager : IDMS_ConfigurationManager, const AVaultGUID : WideString);
function DM_FSMCodingStyle : TFSMCodingStyle_DropDownList;
function DM_FSMEncodingStyle : TFSMEncodingStyle_DropDownList;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GeneratedDocumentCount : Integer;
function DM_GeneratedDocuments(Index : Integer) : IDocument;
procedure DM_GenerateSystemDataModel;
function DM_GetAllowPortNetNames : Boolean;
function DM_GetAllowSheetEntryNetNames : Boolean;
function DM_GetAnnotationManager : IAnnotationManager;
function DM_GetAnnotationOptions : IAnnotateOptions;
function DM_GetAppendSheetNumberToLocalNets : Boolean;
function DM_GetAutomaticSheetsNumbers : IAutomaticSheetsNumbers;
function DM_GetConfigurationByName(Configuration : WideString) : IConfiguration;
function DM_GetDefaultConfiguration : IConfiguration;
function DM_GetDefaultConfigurationName : WideString;
function DM_GetDefaultPcbType : WideString;
function DM_GetDeviceMemory : WideString;
function DM_GetDeviceName : WideString;
function DM_GetDocumentByDocumentId(const ADocumentId : WideString) : IDocument;
function DM_GetDocumentFromName(DocumentName : WideString) : IDocument;
function DM_GetDocumentFromPath(DocumentPath : WideString) : IDocument;
function DM_GetECOInterface : IECO;
function DM_GetEmbeddedStackPath : WideString;
function DM_GetHasWriteAccessAsync : Boolean;
function DM_GetIncludeDesignInRelease : Boolean;
function DM_GetIsActiveOnlineSynchronization : Boolean;
function DM_GetLinkedManagedProjectGUID : WideString;
function DM_GetNetColorByName(const ANetName : WideString) : TColor;
function DM_GetNetInfosToExportCount : Integer;
function DM_GetNetInfoToExport(AIndex : Integer) : WideString;
function DM_GetNotificationService : IEDMS_NotificationService;
function DM_GetOpenOutputs : Boolean;
function DM_GetOrCreateLibraryPart(const AComponentLibraryLink : IComponentLibraryLink) : IPart;
function DM_GetOriginalDocumentFromPath(const ADocumentPath : WideString) : IDocument;
function DM_GetOutputPath : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPinSwapBy_Netlabel : Boolean;
function DM_GetPinSwapBy_Pin : Boolean;
function DM_GetProjectClassGenerationOptions : IProjectClassGenerationOptions;
function DM_GetRelativeOutputPath : WideString;
function DM_GetReleaseFolderPath : WideString;
function DM_GetReleaseMode : TProjectReleaseMode;
function DM_GetReleaseNamings : WideString;
function DM_GetReleaseNamingTemplates : WideString;
function DM_GetReleaseVaultGUID : WideString;
function DM_GetReleaseZipPath : WideString;
function DM_GetReportFactory : IReportFactory;
function DM_GetRequiredCapabilities(ACapabilities : ICapabilityList) : Boolean;
function DM_GetScrapDocument(DocumentPath : WideString) : IDocument;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTemplateLink : WideString;
function DM_GetTimeStampedOutputFolder : Boolean;
function DM_GetToolchain : WideString;
function DM_GetToolchainManager : IInterface;
function DM_GetTopLevelDocumentStructure : IDocumentStructure;
function DM_GetVariantSchLibrary : WideString;
function DM_GetVirtualParametersManager : IVirtualParametersManager;
function DM_GetWebURL(const APage : WideString, const AOpenedFrom : WideString, AIncludeAuthToken : Boolean) : WideString;
function DM_GlobalPreferencesRevisionGUID : WideString;
function DM_GlobalPreferencesVaultGUID : WideString;
function DM_HierarchyMode : TFlattenMode;
function DM_HierarchyModeForCompile : TFlattenMode;
function DM_ImageIndex : Integer;
function DM_InCompilation : Boolean;
function DM_IndexOfSourceDocument(Filename : WideString) : Integer;
function DM_InitializeOutputPath(AnOutputType : WideString) : WideString;
procedure DM_InvalidateToolchain;
function DM_IsActive : Boolean;
function DM_IsConnectiveSelectedNow(AConnective : IDMObject) : Boolean;
function DM_IsCrossRefAddedToProject : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFileLessClone : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsManagedDocument(ADocument : IDocument) : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsReuseBlock : Boolean;
function DM_IsSharedWithMe : Boolean;
function DM_IsSolution : Boolean;
function DM_IsTemplate : Boolean;
function DM_IsVaultFileLessEditing : Boolean;
function DM_IsViewOnly : Boolean;
procedure DM_LoadAllLogicalDocuments;
procedure DM_LoadManagedParameters;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDocumentCount : Integer;
function DM_LogicalDocuments(Index : Integer) : IDocument;
function DM_LogicalDocumentsIsDeviceSheet(const ADocument : IDocument) : Boolean;
function DM_LongDescriptorString : WideString;
function DM_ManagedParameterCount : Integer;
function DM_ManagedParameters(Index : Integer) : IParameter;
function DM_ManagedProjectGUID : WideString;
procedure DM_MoveSourceDocument(Filename : WideString, NewIndex : Integer);
function DM_NeedsCompile : LongBool;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OfflineProjectGUID : WideString;
function DM_OptionsStorage : IOptionsStorage;
function DM_Outputers(Name : WideString) : IOutputer;
function DM_OwnedProjectCount : Integer;
function DM_OwnedProjects(Index : Integer) : IProject;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentProject : IProject;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDocumentCount : Integer;
function DM_PhysicalDocuments(Index : Integer) : IDocument;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrimaryImplementationDocument : IDocument;
function DM_ProjectContainsOutputJobs : Boolean;
function DM_ProjectFileName : WideString;
function DM_ProjectFullPath : WideString;
procedure DM_ProjectStructureChanged;
function DM_ProjectTemplateLocation : WideString;
procedure DM_ProjectVariantChanged;
function DM_ProjectVariantCount : Integer;
function DM_ProjectVariants(Index : Integer) : IProjectVariant;
procedure DM_RefreshHarnessDefinitions;
procedure DM_RefreshInWorkspaceForm;
function DM_ReleaseProjectCopy : IProject;
function DM_RemoveAllConfigurations : Boolean;
function DM_RemoveConfigurationByName(Configuration : WideString) : Boolean;
procedure DM_RemoveHarnessFile(const HarnessFileFullPath : WideString);
procedure DM_RemoveParameter(const AParameter : IParameter);
procedure DM_RemoveParameterByName(const AParameterName : WideString);
procedure DM_RemoveProjectVariant(Index : Integer);
procedure DM_RemoveSourceDocument(Filename : WideString);
procedure DM_RemoveSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_RemoveVirtualDocument(const APath : WideString);
function DM_ReportSuppressedErrorsInMessages : Boolean;
procedure DM_ResetLastCompileTimeForAllDocuments;
procedure DM_ResetReleaseProject;
function DM_ResumeContinuousCompilation : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SearchPathCount : Integer;
function DM_SearchPaths(Index : Integer) : ISearchPath;
function DM_SecondaryCrossProbeString : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetAllowPortNetNames(AAllow : Boolean);
procedure DM_SetAllowSheetEntryNetNames(AAllow : Boolean);
procedure DM_SetAppendSheetNumberToLocalNets(AAppend : Boolean);
procedure DM_SetAsCurrentProject;
procedure DM_SetConnectedNetsColor(const ANet : INet, AColor : TColor);
procedure DM_SetCurrentProjectVariant(AProjVariant : IProjectVariant);
procedure DM_SetCurrentProjectVariantSilent(AProjectVariant : IProjectVariant);
procedure DM_SetDefaultConfigurationName(Configuration : WideString);
procedure DM_SetDefaultPcbType(PcbType : WideString);
procedure DM_SetDeviceName(const ADeviceName : WideString);
procedure DM_SetErrorLevels(AErrorKind : TErrorKind, AErrorLevel : TErrorLevel);
procedure DM_SetGlobalPreferencesRevisionGUID(AValue : WideString);
procedure DM_SetGlobalPreferencesVaultGUID(AValue : WideString);
procedure DM_SetHierarchyMode(AFlatten : TFlattenMode);
procedure DM_SetIncludeDesignInRelease(AValue : Boolean);
procedure DM_SetLinkedManagedProjectGUID(const AValue : WideString);
procedure DM_SetManagedProjectGUID(const AValue : WideString);
procedure DM_SetModified;
procedure DM_SetNetColorByName(const ANetName : WideString, AColor : TColor);
procedure DM_SetOfflineProjectGUID(const AValue : WideString);
procedure DM_SetOpenOutputs(AValue : Boolean);
procedure DM_SetOutputPath(AnOutputPath : WideString);
procedure DM_SetPinSwapBy_Netlabel(AAllow : Boolean);
procedure DM_SetPinSwapBy_Pin(AAllow : Boolean);
procedure DM_SetRelativeOutputPath(AValue : WideString);
procedure DM_SetReleaseFolderPath(AValue : WideString);
procedure DM_SetReleaseMode(AValue : TProjectReleaseMode);
procedure DM_SetReleaseNamings(const AValue : WideString);
procedure DM_SetReleaseNamingTemplates(const AValue : WideString);
procedure DM_SetReleaseProjectCopy(AProject : IProject);
procedure DM_SetReleaseVaultGUID(const Value : WideString);
procedure DM_SetReleaseZipPath(AValue : WideString);
procedure DM_SetTimeStampedOutputFolder(AValue : Boolean);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ShowVariantsDrawingStylesDialog(const AValue : IVariantOption) : IVariantOption;
procedure DM_StartCrossProbing(CtrlDoesSwitch : Boolean);
procedure DM_StartNavigation;
function DM_SuspendContinuousCompilation : Boolean;
function DM_ToDoManager : IToDoManager;
function DM_TopLevelLogicalDocument : IDocument;
function DM_TopLevelPhysicalDocument : IDocument;
function DM_TryToResolveDocumentSpecialString(const AName : WideString, const ADocumentFileName : WideString, out AValue : WideString) : Boolean;
function DM_TryToResolveSpecialString(const AName : WideString, out AValue : WideString) : Boolean;
function DM_UpdateConstraints : LongBool;
procedure DM_UpdateSchObjectErrorFields(const SchHandle : WideString, ErrorKind : TErrorKind, Suppressed : Boolean);
function DM_UserID : WideString;
procedure DM_Validate;
function DM_ValidateManagedOutputJobs : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VariantManager : IVariantManager;
function DM_Vault : IEDMS_Vault;
function DM_VaultGUID : WideString;
function DM_VaultHRID : WideString;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViolationCount : Integer;
function DM_Violations(Index : Integer) : IViolation;
function GetNavigationHistory : INavigationHistory;
property VCSProject : IInterface

## IEncryptUtils (6 members)
function DecryptPassword(const EncryptedPassword : WideString) : WideString;
function DecryptPasswordPerSystem(const EncryptedPassword : WideString) : WideString;
function DecryptPasswordPerUser(const EncryptedPassword : WideString) : WideString;
function EncryptPassword(const PlainPassword : WideString) : WideString;
function EncryptPasswordPerSystem(const PlainPassword : WideString) : WideString;
function EncryptPasswordPerUser(const PlainPassword : WideString) : WideString;

## IEntityPort (68 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusIndex : Integer;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ConstantExpression : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Direction : TSignalDirection;
procedure DM_DoCrossProbeBase;
function DM_DriverLinkCount : Integer;
function DM_DriverLinks(Index : Integer) : ISignalLink;
function DM_EntityPort : IEntityPort;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetDescription : WideString;
function DM_GetName : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsDriver : LongBool;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetItem : INetItem;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_Range1 : WideString;
function DM_Range2 : WideString;
function DM_RangeMax : Integer;
function DM_RangeMin : Integer;
function DM_RangeValue1 : Integer;
function DM_RangeValue2 : Integer;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_Signal : ISignal;
function DM_SubNet : ISubNet;
function DM_TargetLinkCount : Integer;
function DM_TargetLinks(Index : Integer) : ISignalLink;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
function DM_Width : Integer;
property VCSProject : IInterface

## IEvent (1 members)
function GetLogicSimValue : Pointer;

## IEventNavigated (2 members)
property Code : Integer
property Wnd : THandle

## IExportDocument (1 members)
function FileExport(const AFileName : WideString, const AFormat : WideString) : LongBool;

## IExternalActionItem (18 members)
property Items[Index: Integer] : IInterface
property ActionItem[AIndex: Integer] : IExternalActionItem
property ActionItemCount : Integer
property Capacity : Integer
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);
procedure Exchange(Index1 : Integer, Index2 : Integer);
function Execute : LongBool;
function First : IInterface;
function GetCaption : WideString;
function GetEnabled : LongBool;
function GetVisible : LongBool;
function IndexOf(const Item : IInterface) : Integer;
procedure Insert(Index : Integer, const Item : IInterface);
function Last : IInterface;
function Remove(const Item : IInterface) : Integer;
procedure Unlock;

## IExternalActionItemList (18 members)
property Items[Index: Integer] : IInterface
property ActionItem[AIndex: Integer] : IExternalActionItem
property ActionItemCount : Integer
property Capacity : Integer
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);
procedure Exchange(Index1 : Integer, Index2 : Integer);
function Execute : LongBool;
function First : IInterface;
function GetCaption : WideString;
function GetEnabled : LongBool;
function GetVisible : LongBool;
function IndexOf(const Item : IInterface) : Integer;
procedure Insert(Index : Integer, const Item : IInterface);
function Last : IInterface;
function Remove(const Item : IInterface) : Integer;
procedure Unlock;

## IExternalFileInfo (2 members)
function FileName : WideString;
function UsedIn : WideString;

## IExternalFiles (2 members)
function Count : Integer;
function GetFileInfo(AIndex : Integer) : IExternalFileInfo;

## IExternalForm (11 members)
property Caption : WideString
procedure FocusFirstTabStop;
procedure GetBounds(var ALeft : Integer, var ATop : Integer, var AWidth : Integer, var AHeight : Integer);
property Handle : HWND
procedure Hide;
procedure ParentWindowCreated;
procedure ParentWindowDestroyed;
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetFocus;
procedure SetParentWindow(const ParentWindow : IExternalFormHolder);
procedure Show;

## IExternalForm2 (12 members)
property Caption : WideString
procedure FocusFirstTabStop;
procedure GetBounds(var ALeft : Integer, var ATop : Integer, var AWidth : Integer, var AHeight : Integer);
property Handle : HWND
procedure Hide;
property OwnerId : Integer
procedure ParentWindowCreated;
procedure ParentWindowDestroyed;
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetFocus;
procedure SetParentWindow(const ParentWindow : IExternalFormHolder);
procedure Show;

## IExternalFormHolder (3 members)
function GetParentWindow : NativeUInt;
procedure SetDialogHandle(AHandle : NativeUInt);
procedure UpdateCaption;

## IExternalFormHolderControl (1 members)
property Visible : Boolean

## IExternalPaint (2 members)
function GetIconName : WideString;
function PaintThumbnail(ADC : HDC) : Boolean;

## IExternalParameter (4 members)
function DM_GetName : WideString;
function DM_GetSection : WideString;
function DM_GetValue : WideString;
procedure DM_SetValue(AValue : WideString);

## IFeatureChecker (2 members)
procedure CheckFeature(const AData : WideString);
function IsEnabled : Boolean;

## IFieldLink (11 members)
function GetAddMode : TParameterAddMode;
function GetDataType : TFieldType;
function GetFieldName : WideString;
function GetFieldType : TFieldKeyType;
function GetLookupValue : WideString;
function GetParameterName : WideString;
function GetRemoveMode : TParameterRemoveMode;
function GetUpdateMode : TParameterUpdateMode;
function GetVisibleOnAdd : Boolean;
function IsDefault : Boolean;
function IsSystemParameter : Boolean;

## IFileLessViolationDescription (8 members)
function Clone : IFileLessViolationDescription;
property Description : WideString
property Group : TFileLessViolationGroup
property GUID : WideString
property Implementer : WideString
property IsExternal : Boolean
property Kind : TFileLessViolationKind
property Level : TErrorLevel

## IFloatingWindow (5 members)
procedure DoneTransparent;
function GetHandle : NativeUInt;
function GetVisible : Boolean;
procedure InitTransparent;
procedure SetTransparencyLevel(Value : Integer);

## IFoldBasicOnlineRules (1 members)
procedure RunFoldBasicOnlineRulesCheck;

## IFPGAProject (293 members)
procedure DM_Abort;
function DM_AddAsDeviceSheet(const ADocumentPath : WideString) : IDocument;
function DM_AddConfiguration(Configuration : WideString) : IConfiguration;
procedure DM_AddConfigurationParameters(Configuration : WideString);
procedure DM_AddConfigurationParameters_Physical(Configuration : WideString);
procedure DM_AddControlPanel(Filename : WideString);
procedure DM_AddDeviceSheetFolder(FolderPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddGeneratedDocument(Filename : WideString);
procedure DM_AddMissingAutoCrossRefs;
procedure DM_AddOrSetUniqueIdMapping(const ASchHandle : WideString, const AUniqueIdMapping : WideString);
procedure DM_AddParameter(AName : WideString, AValue : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AddProjectVariant : IProjectVariant;
procedure DM_AddSearchPath(SearchPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddSourceDocument(Filename : WideString);
procedure DM_AddSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_AddVirtualDocument(const APath : WideString);
procedure DM_ApplyChangesFromSystemDataModel;
function DM_AvailableDatabaseLinks : Boolean;
procedure DM_BeginUpdate;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateFormula(const DMObject : IDMObject, const AFormula : WideString, ForComponentVariation : Boolean, const ProjectVariant : IProjectVariant, const Variations : ISafeInterfaceList) : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChannelDesignatorFormat : WideString;
function DM_ChannelRoomLevelSeperator : WideString;
function DM_ChannelRoomNamingStyle : TChannelRoomNamingStyle;
procedure DM_ClearAllNetColors;
procedure DM_ClearSchematicObjectsErrorFields(const SchematicId : WideString);
procedure DM_ClearViolations;
function DM_Compile : LongBool;
function DM_CompileEx(All : LongBool, var Cancelled : LongBool) : LongBool;
function DM_CompileProjectOrDocument(ADocument : IDocument) : Boolean;
function DM_ComponentMappings(AnImplementationDocument : WideString) : IComponentMappings;
function DM_ConfigurationCount : Integer;
function DM_Configurations(Index : Integer) : IConfiguration;
function DM_CrossRefCrossSheets : Boolean;
function DM_CrossRefLocationStyle : TCrossRefLocationStyle;
function DM_CrossRefPorts : TCrossRefPorts;
function DM_CrossRefSheetEntries : Boolean;
function DM_CrossRefSheetStyle : TCrossRefSheetStyle;
function DM_CurrentProjectVariant : IProjectVariant;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DataModel : IUnifiedDataModel;
function DM_DeviceSheetFolderCount : Integer;
function DM_DeviceSheetFolders(Index : Integer) : IDeviceSheetFolder;
procedure DM_DeviceSheetRemoved(const Filename : WideString);
function DM_DiffPairSuffixCount : Integer;
procedure DM_DiffPairSuffixes(Index : Integer, var Positive : WideString, var Negative : WideString);
procedure DM_DisableOnlineSynchronization(AUpdateParameters : Boolean);
procedure DM_DoCrossProbeBase;
procedure DM_DoCrossSelection;
function DM_DocumentBackups : IDocumentBackups;
function DM_DocumentClassGenerationOptions(const ADocumentPath : WideString) : IDocumentClassGenerationOptions;
function DM_DocumentFlattened : IDocument;
function DM_DocumentIsGenerated(const ADocumentFileName : WideString) : Boolean;
function DM_EditConfigurations : LongBool;
function DM_EditOptions(DefaultPage : WideString) : LongBool;
procedure DM_EndUpdate;
procedure DM_EnsureAllCachedManagedOutputJobs;
procedure DM_EnsureStandardConfigurations;
function DM_ErrorLevels(AErrorKind : TErrorKind) : TErrorLevel;
procedure DM_Export_ToFile(const AFileName : WideString);
function DM_FileLessItemGUID : WideString;
function DM_FileLessVaultGUID : WideString;
function DM_FindProjectVariant(ADescription : WideString) : IProjectVariant;
procedure DM_FixDesignatorAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ALogicalDesignator : WideString, ARemoveOriginal : Boolean);
procedure DM_FixSheetNumberAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ADocumentFileName : WideString, ARemoveOriginal : Boolean);
procedure DM_FixVariationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const APhysicalDesignator : WideString, const AProjectVariantUniqueId : WideString, const AProjectVariantDescription : WideString, ARemoveOriginal : Boolean);
procedure DM_ForceIncludeRequiredOutJobs(const AConfigurationManager : IDMS_ConfigurationManager, const AVaultGUID : WideString);
function DM_FSMCodingStyle : TFSMCodingStyle_DropDownList;
function DM_FSMEncodingStyle : TFSMEncodingStyle_DropDownList;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GeneratedDocumentCount : Integer;
function DM_GeneratedDocuments(Index : Integer) : IDocument;
function DM_GenerateHDL(Parameters : WideString, ARebuild : LongBool) : LongBool;
procedure DM_GenerateSystemDataModel;
function DM_GetAllowPortNetNames : Boolean;
function DM_GetAllowSheetEntryNetNames : Boolean;
function DM_GetAnnotationManager : IAnnotationManager;
function DM_GetAnnotationOptions : IAnnotateOptions;
function DM_GetAppendSheetNumberToLocalNets : Boolean;
function DM_GetAutomaticSheetsNumbers : IAutomaticSheetsNumbers;
function DM_GetConfigurationByName(Configuration : WideString) : IConfiguration;
function DM_GetDefaultConfiguration : IConfiguration;
function DM_GetDefaultConfigurationName : WideString;
function DM_GetDefaultPcbType : WideString;
function DM_GetDocumentByDocumentId(const ADocumentId : WideString) : IDocument;
function DM_GetDocumentFromName(DocumentName : WideString) : IDocument;
function DM_GetDocumentFromPath(DocumentPath : WideString) : IDocument;
function DM_GetECOInterface : IECO;
function DM_GetGeneratedHDLFilenames(ConfigurationName : WideString) : WideString;
function DM_GetHarnessDefinitionList : IHarnessDefinitionList;
function DM_GetHasWriteAccessAsync : Boolean;
function DM_GetIncludeDesignInRelease : Boolean;
function DM_GetIsActiveOnlineSynchronization : Boolean;
function DM_GetLinkedManagedProjectGUID : WideString;
function DM_GetNetColorByName(const ANetName : WideString) : TColor;
function DM_GetNetInfosToExportCount : Integer;
function DM_GetNetInfoToExport(AIndex : Integer) : WideString;
function DM_GetNotificationService : IEDMS_NotificationService;
function DM_GetOpenOutputs : Boolean;
function DM_GetOrCreateLibraryPart(const AComponentLibraryLink : IComponentLibraryLink) : IPart;
function DM_GetOriginalDocumentFromPath(const ADocumentPath : WideString) : IDocument;
function DM_GetOutputPath : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPinSwapBy_Netlabel : Boolean;
function DM_GetPinSwapBy_Pin : Boolean;
function DM_GetProjectClassGenerationOptions : IProjectClassGenerationOptions;
function DM_GetRelativeOutputPath : WideString;
function DM_GetReleaseFolderPath : WideString;
function DM_GetReleaseMode : TProjectReleaseMode;
function DM_GetReleaseNamings : WideString;
function DM_GetReleaseNamingTemplates : WideString;
function DM_GetReleaseVaultGUID : WideString;
function DM_GetReleaseZipPath : WideString;
function DM_GetReportFactory : IReportFactory;
function DM_GetRequiredCapabilities(ACapabilities : ICapabilityList) : Boolean;
function DM_GetRequiresHDLGeneration : LongBool;
function DM_GetSchematicNetlister : TSchematicNetlister;
function DM_GetScrapDocument(DocumentPath : WideString) : IDocument;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTargetBoardName(ConfigurationName : WideString) : WideString;
function DM_GetTargetDeviceName(ConfigurationName : WideString) : WideString;
function DM_GetTemplateLink : WideString;
function DM_GetTimeStampedOutputFolder : Boolean;
function DM_GetTopLevelDocumentStructure : IDocumentStructure;
function DM_GetVariantSchLibrary : WideString;
function DM_GetVerilog95 : LongBool;
function DM_GetVHDL87 : LongBool;
function DM_GetVirtualParametersManager : IVirtualParametersManager;
function DM_GetWebURL(const APage : WideString, const AOpenedFrom : WideString, AIncludeAuthToken : Boolean) : WideString;
function DM_GlobalPreferencesRevisionGUID : WideString;
function DM_GlobalPreferencesVaultGUID : WideString;
function DM_HierarchyMode : TFlattenMode;
function DM_HierarchyModeForCompile : TFlattenMode;
function DM_ImageIndex : Integer;
function DM_IncludePath(Index : Integer) : WideString;
function DM_IncludePathCount : Integer;
function DM_InCompilation : Boolean;
function DM_IndexOfSourceDocument(Filename : WideString) : Integer;
function DM_InitializeOutputPath(AnOutputType : WideString) : WideString;
function DM_IsActive : Boolean;
function DM_IsConnectiveSelectedNow(AConnective : IDMObject) : Boolean;
function DM_IsCrossRefAddedToProject : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFileLessClone : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsManagedDocument(ADocument : IDocument) : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsReuseBlock : Boolean;
function DM_IsSharedWithMe : Boolean;
function DM_IsSolution : Boolean;
function DM_IsTemplate : Boolean;
function DM_IsVaultFileLessEditing : Boolean;
function DM_IsViewOnly : Boolean;
procedure DM_LoadAllLogicalDocuments;
procedure DM_LoadManagedParameters;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDocumentCount : Integer;
function DM_LogicalDocuments(Index : Integer) : IDocument;
function DM_LogicalDocumentsIsDeviceSheet(const ADocument : IDocument) : Boolean;
function DM_LongDescriptorString : WideString;
function DM_MacroCount : Integer;
function DM_MacroName(Index : Integer) : WideString;
function DM_MacroValue(Index : Integer) : WideString;
function DM_ManagedParameterCount : Integer;
function DM_ManagedParameters(Index : Integer) : IParameter;
function DM_ManagedProjectGUID : WideString;
procedure DM_MoveSourceDocument(Filename : WideString, NewIndex : Integer);
function DM_NeedsCompile : LongBool;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OfflineProjectGUID : WideString;
function DM_OptionsStorage : IOptionsStorage;
function DM_Outputers(Name : WideString) : IOutputer;
function DM_OwnedProjectCount : Integer;
function DM_OwnedProjects(Index : Integer) : IProject;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentProject : IProject;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDocumentCount : Integer;
function DM_PhysicalDocuments(Index : Integer) : IDocument;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrimaryImplementationDocument : IDocument;
function DM_ProjectContainsOutputJobs : Boolean;
function DM_ProjectFileName : WideString;
function DM_ProjectFullPath : WideString;
procedure DM_ProjectStructureChanged;
function DM_ProjectTemplateLocation : WideString;
procedure DM_ProjectVariantChanged;
function DM_ProjectVariantCount : Integer;
function DM_ProjectVariants(Index : Integer) : IProjectVariant;
procedure DM_RefreshHarnessDefinitions;
procedure DM_RefreshInWorkspaceForm;
function DM_ReleaseProjectCopy : IProject;
function DM_RemoveAllConfigurations : Boolean;
function DM_RemoveConfigurationByName(Configuration : WideString) : Boolean;
procedure DM_RemoveHarnessFile(const HarnessFileFullPath : WideString);
procedure DM_RemoveParameter(const AParameter : IParameter);
procedure DM_RemoveParameterByName(const AParameterName : WideString);
procedure DM_RemoveProjectVariant(Index : Integer);
procedure DM_RemoveSourceDocument(Filename : WideString);
procedure DM_RemoveSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_RemoveVirtualDocument(const APath : WideString);
function DM_ReportSuppressedErrorsInMessages : Boolean;
procedure DM_ResetLastCompileTimeForAllDocuments;
procedure DM_ResetReleaseProject;
function DM_ResumeContinuousCompilation : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SearchPathCount : Integer;
function DM_SearchPaths(Index : Integer) : ISearchPath;
function DM_SecondaryCrossProbeString : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetAllowPortNetNames(AAllow : Boolean);
procedure DM_SetAllowSheetEntryNetNames(AAllow : Boolean);
procedure DM_SetAppendSheetNumberToLocalNets(AAppend : Boolean);
procedure DM_SetAsCurrentProject;
procedure DM_SetConnectedNetsColor(const ANet : INet, AColor : TColor);
procedure DM_SetCurrentProjectVariant(AProjVariant : IProjectVariant);
procedure DM_SetCurrentProjectVariantSilent(AProjectVariant : IProjectVariant);
procedure DM_SetDefaultConfigurationName(Configuration : WideString);
procedure DM_SetDefaultPcbType(PcbType : WideString);
procedure DM_SetErrorLevels(AErrorKind : TErrorKind, AErrorLevel : TErrorLevel);
procedure DM_SetGlobalPreferencesRevisionGUID(AValue : WideString);
procedure DM_SetGlobalPreferencesVaultGUID(AValue : WideString);
procedure DM_SetHierarchyMode(AFlatten : TFlattenMode);
procedure DM_SetIncludeDesignInRelease(AValue : Boolean);
procedure DM_SetLinkedManagedProjectGUID(const AValue : WideString);
procedure DM_SetManagedProjectGUID(const AValue : WideString);
procedure DM_SetModified;
procedure DM_SetNetColorByName(const ANetName : WideString, AColor : TColor);
procedure DM_SetOfflineProjectGUID(const AValue : WideString);
procedure DM_SetOpenOutputs(AValue : Boolean);
procedure DM_SetOutputPath(AnOutputPath : WideString);
procedure DM_SetPinSwapBy_Netlabel(AAllow : Boolean);
procedure DM_SetPinSwapBy_Pin(AAllow : Boolean);
procedure DM_SetRelativeOutputPath(AValue : WideString);
procedure DM_SetReleaseFolderPath(AValue : WideString);
procedure DM_SetReleaseMode(AValue : TProjectReleaseMode);
procedure DM_SetReleaseNamings(const AValue : WideString);
procedure DM_SetReleaseNamingTemplates(const AValue : WideString);
procedure DM_SetReleaseProjectCopy(AProject : IProject);
procedure DM_SetReleaseVaultGUID(const Value : WideString);
procedure DM_SetReleaseZipPath(AValue : WideString);
procedure DM_SetTimeStampedOutputFolder(AValue : Boolean);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ShowVariantsDrawingStylesDialog(const AValue : IVariantOption) : IVariantOption;
procedure DM_StartCrossProbing(CtrlDoesSwitch : Boolean);
procedure DM_StartNavigation;
function DM_SuspendContinuousCompilation : Boolean;
function DM_ToDoManager : IToDoManager;
function DM_TopLevelLogicalDocument : IDocument;
function DM_TopLevelPhysicalDocument : IDocument;
function DM_TryToResolveDocumentSpecialString(const AName : WideString, const ADocumentFileName : WideString, out AValue : WideString) : Boolean;
function DM_TryToResolveSpecialString(const AName : WideString, out AValue : WideString) : Boolean;
function DM_UpdateConstraints : LongBool;
procedure DM_UpdateSchObjectErrorFields(const SchHandle : WideString, ErrorKind : TErrorKind, Suppressed : Boolean);
function DM_UserID : WideString;
procedure DM_Validate;
function DM_ValidateManagedOutputJobs : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VariantManager : IVariantManager;
function DM_Vault : IEDMS_Vault;
function DM_VaultGUID : WideString;
function DM_VaultHRID : WideString;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViolationCount : Integer;
function DM_Violations(Index : Integer) : IViolation;
function GetNavigationHistory : INavigationHistory;
property VCSProject : IInterface

## IFreeDocumentsProject (279 members)
function DM_AddAsDeviceSheet(const ADocumentPath : WideString) : IDocument;
function DM_AddConfiguration(Configuration : WideString) : IConfiguration;
procedure DM_AddConfigurationParameters(Configuration : WideString);
procedure DM_AddConfigurationParameters_Physical(Configuration : WideString);
procedure DM_AddControlPanel(Filename : WideString);
procedure DM_AddDeviceSheetFolder(FolderPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddGeneratedDocument(Filename : WideString);
procedure DM_AddMissingAutoCrossRefs;
procedure DM_AddOrSetUniqueIdMapping(const ASchHandle : WideString, const AUniqueIdMapping : WideString);
procedure DM_AddParameter(AName : WideString, AValue : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AddProjectVariant : IProjectVariant;
procedure DM_AddSearchPath(SearchPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddSourceDocument(Filename : WideString);
procedure DM_AddSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_AddVirtualDocument(const APath : WideString);
procedure DM_ApplyChangesFromSystemDataModel;
function DM_AvailableDatabaseLinks : Boolean;
procedure DM_BeginUpdate;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateFormula(const DMObject : IDMObject, const AFormula : WideString, ForComponentVariation : Boolean, const ProjectVariant : IProjectVariant, const Variations : ISafeInterfaceList) : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChannelDesignatorFormat : WideString;
function DM_ChannelRoomLevelSeperator : WideString;
function DM_ChannelRoomNamingStyle : TChannelRoomNamingStyle;
procedure DM_ClearAllNetColors;
procedure DM_ClearSchematicObjectsErrorFields(const SchematicId : WideString);
procedure DM_ClearViolations;
function DM_Compile : LongBool;
function DM_CompileEx(All : LongBool, var Cancelled : LongBool) : LongBool;
function DM_CompileProjectOrDocument(ADocument : IDocument) : Boolean;
function DM_ComponentMappings(AnImplementationDocument : WideString) : IComponentMappings;
function DM_ConfigurationCount : Integer;
function DM_Configurations(Index : Integer) : IConfiguration;
function DM_CrossRefCrossSheets : Boolean;
function DM_CrossRefLocationStyle : TCrossRefLocationStyle;
function DM_CrossRefPorts : TCrossRefPorts;
function DM_CrossRefSheetEntries : Boolean;
function DM_CrossRefSheetStyle : TCrossRefSheetStyle;
function DM_CurrentProjectVariant : IProjectVariant;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DataModel : IUnifiedDataModel;
function DM_DeviceSheetFolderCount : Integer;
function DM_DeviceSheetFolders(Index : Integer) : IDeviceSheetFolder;
procedure DM_DeviceSheetRemoved(const Filename : WideString);
function DM_DiffPairSuffixCount : Integer;
procedure DM_DiffPairSuffixes(Index : Integer, var Positive : WideString, var Negative : WideString);
procedure DM_DisableOnlineSynchronization(AUpdateParameters : Boolean);
procedure DM_DoCrossProbeBase;
procedure DM_DoCrossSelection;
function DM_DocumentBackups : IDocumentBackups;
function DM_DocumentClassGenerationOptions(const ADocumentPath : WideString) : IDocumentClassGenerationOptions;
function DM_DocumentFlattened : IDocument;
function DM_DocumentIsGenerated(const ADocumentFileName : WideString) : Boolean;
function DM_EditConfigurations : LongBool;
function DM_EditOptions(DefaultPage : WideString) : LongBool;
procedure DM_EndUpdate;
procedure DM_EnsureAllCachedManagedOutputJobs;
procedure DM_EnsureStandardConfigurations;
function DM_ErrorLevels(AErrorKind : TErrorKind) : TErrorLevel;
procedure DM_Export_ToFile(const AFileName : WideString);
function DM_FileLessItemGUID : WideString;
function DM_FileLessVaultGUID : WideString;
function DM_FindProjectVariant(ADescription : WideString) : IProjectVariant;
procedure DM_FixDesignatorAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ALogicalDesignator : WideString, ARemoveOriginal : Boolean);
procedure DM_FixSheetNumberAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ADocumentFileName : WideString, ARemoveOriginal : Boolean);
procedure DM_FixVariationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const APhysicalDesignator : WideString, const AProjectVariantUniqueId : WideString, const AProjectVariantDescription : WideString, ARemoveOriginal : Boolean);
procedure DM_ForceIncludeRequiredOutJobs(const AConfigurationManager : IDMS_ConfigurationManager, const AVaultGUID : WideString);
function DM_FSMCodingStyle : TFSMCodingStyle_DropDownList;
function DM_FSMEncodingStyle : TFSMEncodingStyle_DropDownList;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GeneratedDocumentCount : Integer;
function DM_GeneratedDocuments(Index : Integer) : IDocument;
procedure DM_GenerateSystemDataModel;
function DM_GetAllowPortNetNames : Boolean;
function DM_GetAllowSheetEntryNetNames : Boolean;
function DM_GetAnnotationManager : IAnnotationManager;
function DM_GetAnnotationOptions : IAnnotateOptions;
function DM_GetAppendSheetNumberToLocalNets : Boolean;
function DM_GetAutomaticSheetsNumbers : IAutomaticSheetsNumbers;
function DM_GetConfigurationByName(Configuration : WideString) : IConfiguration;
function DM_GetDefaultConfiguration : IConfiguration;
function DM_GetDefaultConfigurationName : WideString;
function DM_GetDefaultPcbType : WideString;
function DM_GetDocumentByDocumentId(const ADocumentId : WideString) : IDocument;
function DM_GetDocumentFromName(DocumentName : WideString) : IDocument;
function DM_GetDocumentFromPath(DocumentPath : WideString) : IDocument;
function DM_GetECOInterface : IECO;
function DM_GetHarnessDefinitionList : IHarnessDefinitionList;
function DM_GetHasWriteAccessAsync : Boolean;
function DM_GetIncludeDesignInRelease : Boolean;
function DM_GetIsActiveOnlineSynchronization : Boolean;
function DM_GetLinkedManagedProjectGUID : WideString;
function DM_GetNetColorByName(const ANetName : WideString) : TColor;
function DM_GetNetInfosToExportCount : Integer;
function DM_GetNetInfoToExport(AIndex : Integer) : WideString;
function DM_GetNotificationService : IEDMS_NotificationService;
function DM_GetOpenOutputs : Boolean;
function DM_GetOrCreateLibraryPart(const AComponentLibraryLink : IComponentLibraryLink) : IPart;
function DM_GetOriginalDocumentFromPath(const ADocumentPath : WideString) : IDocument;
function DM_GetOutputPath : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPinSwapBy_Netlabel : Boolean;
function DM_GetPinSwapBy_Pin : Boolean;
function DM_GetProjectClassGenerationOptions : IProjectClassGenerationOptions;
function DM_GetRelativeOutputPath : WideString;
function DM_GetReleaseFolderPath : WideString;
function DM_GetReleaseMode : TProjectReleaseMode;
function DM_GetReleaseNamings : WideString;
function DM_GetReleaseNamingTemplates : WideString;
function DM_GetReleaseVaultGUID : WideString;
function DM_GetReleaseZipPath : WideString;
function DM_GetReportFactory : IReportFactory;
function DM_GetRequiredCapabilities(ACapabilities : ICapabilityList) : Boolean;
function DM_GetScrapDocument(DocumentPath : WideString) : IDocument;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTemplateLink : WideString;
function DM_GetTimeStampedOutputFolder : Boolean;
function DM_GetTopLevelDocumentStructure : IDocumentStructure;
function DM_GetVariantSchLibrary : WideString;
function DM_GetVirtualParametersManager : IVirtualParametersManager;
function DM_GetWebURL(const APage : WideString, const AOpenedFrom : WideString, AIncludeAuthToken : Boolean) : WideString;
function DM_GlobalPreferencesRevisionGUID : WideString;
function DM_GlobalPreferencesVaultGUID : WideString;
function DM_HierarchyMode : TFlattenMode;
function DM_HierarchyModeForCompile : TFlattenMode;
function DM_ImageIndex : Integer;
function DM_InCompilation : Boolean;
function DM_IndexOfSourceDocument(Filename : WideString) : Integer;
function DM_InitializeOutputPath(AnOutputType : WideString) : WideString;
function DM_IsActive : Boolean;
function DM_IsConnectiveSelectedNow(AConnective : IDMObject) : Boolean;
function DM_IsCrossRefAddedToProject : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFileLessClone : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsManagedDocument(ADocument : IDocument) : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsReuseBlock : Boolean;
function DM_IsSharedWithMe : Boolean;
function DM_IsSolution : Boolean;
function DM_IsTemplate : Boolean;
function DM_IsVaultFileLessEditing : Boolean;
function DM_IsViewOnly : Boolean;
procedure DM_LoadAllLogicalDocuments;
procedure DM_LoadManagedParameters;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDocumentCount : Integer;
function DM_LogicalDocuments(Index : Integer) : IDocument;
function DM_LogicalDocumentsIsDeviceSheet(const ADocument : IDocument) : Boolean;
function DM_LongDescriptorString : WideString;
function DM_ManagedParameterCount : Integer;
function DM_ManagedParameters(Index : Integer) : IParameter;
function DM_ManagedProjectGUID : WideString;
procedure DM_MoveSourceDocument(Filename : WideString, NewIndex : Integer);
function DM_NeedsCompile : LongBool;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OfflineProjectGUID : WideString;
function DM_OptionsStorage : IOptionsStorage;
function DM_Outputers(Name : WideString) : IOutputer;
function DM_OwnedProjectCount : Integer;
function DM_OwnedProjects(Index : Integer) : IProject;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentProject : IProject;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDocumentCount : Integer;
function DM_PhysicalDocuments(Index : Integer) : IDocument;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrimaryImplementationDocument : IDocument;
function DM_ProjectContainsOutputJobs : Boolean;
function DM_ProjectFileName : WideString;
function DM_ProjectFullPath : WideString;
procedure DM_ProjectStructureChanged;
function DM_ProjectTemplateLocation : WideString;
procedure DM_ProjectVariantChanged;
function DM_ProjectVariantCount : Integer;
function DM_ProjectVariants(Index : Integer) : IProjectVariant;
procedure DM_RefreshHarnessDefinitions;
procedure DM_RefreshInWorkspaceForm;
function DM_ReleaseProjectCopy : IProject;
function DM_RemoveAllConfigurations : Boolean;
function DM_RemoveConfigurationByName(Configuration : WideString) : Boolean;
procedure DM_RemoveHarnessFile(const HarnessFileFullPath : WideString);
procedure DM_RemoveParameter(const AParameter : IParameter);
procedure DM_RemoveParameterByName(const AParameterName : WideString);
procedure DM_RemoveProjectVariant(Index : Integer);
procedure DM_RemoveSourceDocument(Filename : WideString);
procedure DM_RemoveSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_RemoveVirtualDocument(const APath : WideString);
function DM_ReportSuppressedErrorsInMessages : Boolean;
procedure DM_ResetLastCompileTimeForAllDocuments;
procedure DM_ResetReleaseProject;
function DM_ResumeContinuousCompilation : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SearchPathCount : Integer;
function DM_SearchPaths(Index : Integer) : ISearchPath;
function DM_SecondaryCrossProbeString : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetAllowPortNetNames(AAllow : Boolean);
procedure DM_SetAllowSheetEntryNetNames(AAllow : Boolean);
procedure DM_SetAppendSheetNumberToLocalNets(AAppend : Boolean);
procedure DM_SetAsCurrentProject;
procedure DM_SetConnectedNetsColor(const ANet : INet, AColor : TColor);
procedure DM_SetCurrentProjectVariant(AProjVariant : IProjectVariant);
procedure DM_SetCurrentProjectVariantSilent(AProjectVariant : IProjectVariant);
procedure DM_SetDefaultConfigurationName(Configuration : WideString);
procedure DM_SetDefaultPcbType(PcbType : WideString);
procedure DM_SetErrorLevels(AErrorKind : TErrorKind, AErrorLevel : TErrorLevel);
procedure DM_SetGlobalPreferencesRevisionGUID(AValue : WideString);
procedure DM_SetGlobalPreferencesVaultGUID(AValue : WideString);
procedure DM_SetHierarchyMode(AFlatten : TFlattenMode);
procedure DM_SetIncludeDesignInRelease(AValue : Boolean);
procedure DM_SetLinkedManagedProjectGUID(const AValue : WideString);
procedure DM_SetManagedProjectGUID(const AValue : WideString);
procedure DM_SetModified;
procedure DM_SetNetColorByName(const ANetName : WideString, AColor : TColor);
procedure DM_SetOfflineProjectGUID(const AValue : WideString);
procedure DM_SetOpenOutputs(AValue : Boolean);
procedure DM_SetOutputPath(AnOutputPath : WideString);
procedure DM_SetPinSwapBy_Netlabel(AAllow : Boolean);
procedure DM_SetPinSwapBy_Pin(AAllow : Boolean);
procedure DM_SetRelativeOutputPath(AValue : WideString);
procedure DM_SetReleaseFolderPath(AValue : WideString);
procedure DM_SetReleaseMode(AValue : TProjectReleaseMode);
procedure DM_SetReleaseNamings(const AValue : WideString);
procedure DM_SetReleaseNamingTemplates(const AValue : WideString);
procedure DM_SetReleaseProjectCopy(AProject : IProject);
procedure DM_SetReleaseVaultGUID(const Value : WideString);
procedure DM_SetReleaseZipPath(AValue : WideString);
procedure DM_SetTimeStampedOutputFolder(AValue : Boolean);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ShowVariantsDrawingStylesDialog(const AValue : IVariantOption) : IVariantOption;
procedure DM_StartCrossProbing(CtrlDoesSwitch : Boolean);
procedure DM_StartNavigation;
function DM_SuspendContinuousCompilation : Boolean;
function DM_ToDoManager : IToDoManager;
function DM_TopLevelLogicalDocument : IDocument;
function DM_TopLevelPhysicalDocument : IDocument;
function DM_TryToResolveDocumentSpecialString(const AName : WideString, const ADocumentFileName : WideString, out AValue : WideString) : Boolean;
function DM_TryToResolveSpecialString(const AName : WideString, out AValue : WideString) : Boolean;
function DM_UpdateConstraints : LongBool;
procedure DM_UpdateSchObjectErrorFields(const SchHandle : WideString, ErrorKind : TErrorKind, Suppressed : Boolean);
function DM_UserID : WideString;
procedure DM_Validate;
function DM_ValidateManagedOutputJobs : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VariantManager : IVariantManager;
function DM_Vault : IEDMS_Vault;
function DM_VaultGUID : WideString;
function DM_VaultHRID : WideString;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViolationCount : Integer;
function DM_Violations(Index : Integer) : IViolation;
function GetNavigationHistory : INavigationHistory;
property VCSProject : IInterface

## IFrequencyCounterChannel (7 members)
property EdgePolarity : TEdgePolarity
property Gating : Double
function IsReset : LongBool;
property Measured : Double
property MeasureMode : TMeasureMode
procedure Reset;
property Suspended : LongBool

## IFrequencyCounterInstrument (4 members)
property ChannelA : IFrequencyCounterChannel
property ChannelB : IFrequencyCounterChannel
function GetDesignator : WideString;
property TimeBase : Cardinal

## IFrequencyCounterInstrumentManager (4 members)
function GetInstrument(Index : Integer) : IFrequencyCounterInstrument;
function GetInstrumentByDesignator(const ADesignator : WideString) : IFrequencyCounterInstrument;
function GetInstrumentByJtagIndex(AJtagIndex : Integer) : IFrequencyCounterInstrument;
function GetInstrumentCount : Integer;

## IFrequencyGeneratorInstrument (5 members)
property Frequency : Double
function GetDesignator : WideString;
procedure SetTimeBaseEx(AValue : Cardinal, AEvenDutyCycle : LongBool);
property Suspended : LongBool
property TimeBase : Cardinal

## IFrequencyGeneratorInstrumentManager (4 members)
function GetInstrument(Index : Integer) : IFrequencyGeneratorInstrument;
function GetInstrumentByDesignator(const ADesignator : WideString) : IFrequencyGeneratorInstrument;
function GetInstrumentByJtagIndex(AJtagIndex : Integer) : IFrequencyGeneratorInstrument;
function GetInstrumentCount : Integer;

## IFSM_Document (141 members)
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
property DefaultStateID : WideString
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
property PortID_Clock : WideString
property PortID_Reset : WideString
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

## IFSM_State (59 members)
property Actions_Text : WideString
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
property DelayedClock : Integer
property DelayedEnable : Boolean
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
function Import_FromUser_Parameters : Boolean;
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
procedure SetState_xSizeySize;
property Text : WideString
property UniqueId : WideString

## IFSM_Transition (65 members)
property Vertex[I: Integer] : TLocation
property Actions_Text : WideString
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
procedure ClearAllVertices;
property Color : TColor
property Comment : ISch_Parameter
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
property FromStateId : WideString
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
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
property Priority : Integer
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function RemoveVertex(var Index : Integer) : Boolean;
function Replicate : ISch_BasicContainer;
procedure ResetErrorFields;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_xSizeySize;
property ToStateId : WideString
property Transparent : Boolean
property UniqueId : WideString
property VerticesCount : Integer

## IFunction (55 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_ImplementingDocument(Index : Integer) : IDocument;
function DM_ImplementingDocumentsCount : Integer;
function DM_Interface(Index : Integer) : IDMInterface;
function DM_InterfacesCount : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_KeyComponent(Index : Integer) : IKeyComponent;
function DM_KeyComponentsCount : Integer;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchematicFileName : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IGeneralReport (10 members)
function DM_ObjectAdress : Pointer;
procedure EndReport;
procedure EndSection;
procedure EndTable;
procedure StartReport;
procedure StartSection(const SectionName : WideString);
procedure StartTable(const Title : WideString);
procedure StartTableWithHeading(const Title : WideString, const ColumnHeadings : WideString);
procedure WriteRow(const Values : WideString, const HtmlStyles : WideString);
function WriteToFile(const Filename : WideString) : WideString;

## IGenerateReport (1 members)
procedure GenerateComponentReportAdvanced(const GetLibInfo : IGetLibraryReportInfo, const FileName : WideString, const LibType : WideString);

## IGenericDeviceManager (9 members)
function GetAssociatedBSDLFileName(AIdCode : Cardinal, AJTagIndex : Integer) : WideString;
function GetAssociatedDeviceSettingsDescription(AIdCode : Cardinal, AJTagIndex : Integer) : WideString;
function GetAssociatedLibraryFileName(AIdCode : Cardinal, AJTagIndex : Integer) : WideString;
function GetAssociatedLibraryReference(AIdCode : Cardinal, AJTagIndex : Integer) : WideString;
function GetInstructionLength(AIdCode : Cardinal) : Integer;
function GetNonAssociatedBSDLFileNamesForIdCode(AIdCode : Cardinal, AJTagIndex : Integer) : WideString;
procedure Import_FromUser_JTAGIdMapping(AIdCode : Cardinal);
procedure SetAssociatedBSDLFileName(AIdCode : Cardinal, AJTagIndex : Integer, ABSDLFileName : WideString);
procedure SetInstructionLength(AIdCode : Cardinal, AInstructionLength : Integer);

## IGetImplementor (1 members)
function GetImplementor : TObject;

## IGetLibraryReportInfo (5 members)
function GetLibraryReportInfo(const AFilePath : WideString, const ALibType : WideString) : ILibraryReportInfo;
function GetModelReportInfo(const ACompFilePath : WideString, const ACompLibRef : WideString, const AModelFilePath : WideString, const AModelName : WideString) : ILibObjectReportInfo;
function GetReportSettings(const ALibType : WideString) : ILibraryReportExternalSettings;
procedure ReleaseReportSettings;
procedure UseReportSettings(const ASettings : ILibraryReportExternalSettings);

## IGPIOChannel (5 members)
procedure CloseChannel;
function GPIO_GetValue(APort : Integer) : Byte;
procedure GPIO_SetPinsDir(APort : Integer, APinsDir : Byte);
procedure GPIO_SetValue(APort : Byte, AValue : Byte);
function OpenChannel : LongBool;

## IGridSetting (8 members)
procedure CopyTo(AGridSetting : IGridSetting);
property HotspotGridOn : Boolean
property HotspotGridSize : TCoord
function SameAs(AGridSetting : IGridSetting) : Boolean;
property SnapGridOn : Boolean
property SnapGridSize : TCoord
property VisibleGridOn : Boolean
property VisibleGridSize : TCoord

## IGUIManager (66 members)
function AddKeyStrokeAndLaunch(AKey : Word) : LongBool;
function AddKeyToBuffer(KeyId : Integer, Alt : LongBool, Shift : LongBool, Ctrl : LongBool) : LongBool;
procedure BeginBulkClose;
procedure BeginDragDrop(ADragDropInfo : IDragDropObject);
procedure BringMainWindowToTop;
function CanMovePanel(const AViewName : WideString) : LongBool;
function CanResizePanel(const AViewName : WideString) : LongBool;
procedure CloseTreeAsPopup;
function CurrentProcessLauncherAvailable : LongBool;
procedure DoneTransparentToolbars;
function Dragging : LongBool;
function DraggingAny : LongBool;
function DXPShortcutToDelphiShortcut(const AShortcutText : WideString) : WideString;
function EditorVisibleForDocument(const ADocument : IServerDocument) : Boolean;
procedure EndBulkClose;
function GetActionListFromTree(const TreeID : WideString) : IExternalActionItemList;
function GetActiveBarBtnRect(const AView : IServerDocumentView, const ABtnCommandID : WideString, const AActiveBarRect : IDispatch) : IDispatch;
function GetActivePLByCommand(const DocumentKind : WideString, const ACommand : WideString, const AParams : WideString) : IProcessLauncherInfo;
procedure GetAllAvailableHotkeys(out Hotkeys : WideString, out Descriptions : WideString);
function GetCurrentFormHandle : HWND;
function GetFocusedPanelName : WideString;
function GetInUseUserRect(const AView : IServerDocumentView, const AUserId : WideString) : IDispatch;
function GetNodeInfoByID(const ANodeName : WideString) : WideString;
function GetPanelDockedHeight(const AViewName : WideString) : Integer;
function GetPanelDockedWidth(const AViewName : WideString) : Integer;
function GetPanelIsOpen(const AViewName : WideString) : LongBool;
function GetPanelIsOpenInAnyForm(const AViewName : WideString) : LongBool;
function GetPanelIsVisibleInAnyForm(const AViewName : WideString) : LongBool;
function GetProcessLauncherInfoByID(const PLID : WideString) : IProcessLauncherInfo;
function GetShortcutTextForPLID(const PLID : WideString) : WideString;
function HasTreeShownAsPopup : LongBool;
procedure HideDragImage;
procedure InitTransparentToolbars(const ViewRect : IDispatch);
function IsPanelPinned(const AViewName : WideString) : LongBool;
function IsPanelValidInCurrentForm(const AViewName : WideString) : LongBool;
function IsPanelVisibleInCurrentForm(const AViewName : WideString) : LongBool;
function IsSysLevelHotKey(KeyId : Integer, Alt : LongBool, Shift : LongBool, Ctrl : LongBool) : LongBool;
procedure LaunchCurrentHotkey;
procedure MovePanelTo(const AViewName : WideString, ALeft : Integer, ATop : Integer);
function ProcessMessage(const Msg : IDispatch) : LongBool;
procedure RegisterFloatingWindow(const FloatingWindow : IFloatingWindow);
function RegisterUserProcessLauncher(const APreferredID : WideString, const AServerCommand : WideString, const AParameters : WideString, const ACaption : WideString, const ADescription : WideString, const AImageFile : WideString, const AShortcutText : WideString, const AShortcut2Text : WideString) : IProcessLauncherInfo;
procedure ResizePanel(const AViewName : WideString, AWidth : Integer, AHeight : Integer);
procedure SetFocusLock(Locked : LongBool);
procedure SetPanelActiveInCurrentForm(const AViewName : WideString);
procedure SetPanelDockedHeight(const AViewName : WideString, AHeight : Integer);
procedure SetPanelDockedWidth(const AViewName : WideString, AWidth : Integer);
procedure SetPanelPinned(const AViewName : WideString, AIsPinned : LongBool);
procedure SetPanelVisibleInCurrentForm(const AViewName : WideString, IsVisible : LongBool);
procedure SetTitleBarErrorMessage(const ErrorMessage : WideString);
procedure SetTransparentToolbarsSettings(const ABarNameList : WideString, AFullTransparent : LongBool);
function ShowCurrentProcessLauncherHelp : LongBool;
procedure ShowDragImage;
function ShowProcessLauncherHelp(const APLID : WideString) : LongBool;
procedure ShowStandardMenuAsPopup(const AMenuWrapper : IMenuWrapper, const APosition : IDispatch);
procedure ShowTreeAsPopup(const TreeID : WideString);
procedure ShowTreeAsPopupAt(const TreeID : WideString, const Position : IDispatch);
function StatusBar_GetState(Index : Integer) : WideString;
procedure StatusBar_SetState(Index : Integer, const S : WideString);
function StatusBarManager : IStatusBarManager;
procedure SwitchDocumentActiveView(const ADocument : IServerDocument, const AOldView : IExternalForm, const ANewView : IExternalForm);
procedure UnregisterFloatingWindow(const FloatingWindow : IFloatingWindow);
procedure UnregisterUserProcessLauncher(const APLID : WideString);
procedure UpdateActionsForCurrentTreeAsPopup;
procedure UpdateInterfaceState;
procedure UpdateTransparentToolbars;

## IGUIManager2 (5 members)
procedure ContinueUpdateActions;
function CreatePreferencesEditorView(const AOwnerDocument : IServerDocument) : IServerDocumentView;
procedure ForceUpdateRibbonActions;
procedure PauseUpdateActions;
procedure ViewAvailabilityChanged(const AView : IServerView, AAvailable : Boolean);

## IGUIManagerNotification (2 members)
property Code : Integer
property Data : IStrings

## IHardBreakpoint (15 members)
property Address : TMemoryAddress
property AddressMask : TMemoryAddress
property Control : TMemoryAddress
property ControlMask : TMemoryAddress
property Data : TMemoryAddress
property DataMask : TMemoryAddress
function Disable : LongBool;
function Enable : LongBool;
procedure Export_ToCore;
function GetNexusDevice : INexusDevice;
function GetReplaced : Cardinal;
procedure Import_FromCore;
property MemorySpace : Integer
procedure Reset;
procedure SetReplaced(Value : Cardinal);

## IHardDeviceLink (1 members)
procedure SetHardDeviceProject(Project : IProject, Configuration : WideString);

## IHarnessComponent (121 members)
procedure DM_AddConfigurationParameters;
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AllPinCount : Integer;
function DM_AssignedDesignator : WideString;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculatedDesignator : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CenterLocationX : Integer;
function DM_CenterLocationY : Integer;
function DM_ChannelOffset : Integer;
function DM_ChildProjectSheet : IDocument;
function DM_ChildVHDLEntity : WideString;
function DM_Comment : WideString;
function DM_ComponentKind : TComponentKind;
function DM_ConfigurationParameters : WideString;
function DM_ConfiguratorName : WideString;
function DM_CurrentImplementation(AType : WideString) : IComponentImplementation;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DatabaseTableName : WideString;
function DM_Description : WideString;
function DM_DesignatorLocationX : Integer;
function DM_DesignatorLocationY : Integer;
function DM_DesignatorLocked : Boolean;
function DM_DisplayMode : Byte;
procedure DM_DoCrossProbe;
procedure DM_DoCrossProbeBase;
function DM_ExternalPartHandle : WideString;
function DM_FirstPinLocationX : Integer;
function DM_FirstPinLocationY : Integer;
function DM_Footprint : WideString;
function DM_FullCrossProbeString : WideString;
function DM_FullLogicalDesignator : WideString;
function DM_FullLogicalDesignatorForDisplay : WideString;
function DM_FullPhysicalDesignator : WideString;
function DM_FullPhysicalDesignatorForDisplay : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_Height : Integer;
function DM_ImageIndex : Integer;
function DM_ImplementationCount : Integer;
function DM_Implementations(Index : Integer) : IComponentImplementation;
procedure DM_IncrementallyUpdatePhysicalDesignators(NewHasDesignatorRecord : LongBool, NewDesignatorLocked : LongBool, NewPhysicalDesignator : WideString);
function DM_InstanceCount : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsWireTermination : Boolean;
function DM_Layer : WideString;
function DM_LibraryReference : WideString;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDesignator : WideString;
function DM_LogicalOwnerDocument : IDocument;
function DM_LongDescriptorString : WideString;
function DM_MaxPartCount : Integer;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NewDesignator : WideString;
function DM_NewPartId : Integer;
function DM_NexusDeviceId : WideString;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_ObjectType : THarnessObjectType;
function DM_OldPartId : Integer;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PartID : Integer;
function DM_PartIdLocked : Boolean;
function DM_PartType : WideString;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalComponentCount : Integer;
function DM_PhysicalComponents(Index : Integer) : IComponent;
function DM_PhysicalDesignator : WideString;
function DM_PhysicalPath : WideString;
function DM_PinCount : Integer;
function DM_Pins(Index : Integer) : INetItem;
function DM_PrimaryCrossProbeString : WideString;
function DM_ReferenceLocationX : Integer;
function DM_ReferenceLocationY : Integer;
function DM_Replicate(const ADocument : IDMObject) : IPart;
function DM_Rotation : Double;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetExternalPartHandle(APCBComponentHandle : WideString);
procedure DM_SetFootprintItemGUID(const AValue : WideString);
procedure DM_SetFootprintRevisionGUID(const AValue : WideString);
procedure DM_SetNewPartId(Value : Integer);
procedure DM_SetOldPartId(Value : Integer);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SourceDesignator : WideString;
function DM_SourceHierarchicalPath : WideString;
function DM_SourceLibraryName : WideString;
function DM_SourceUniqueId : WideString;
function DM_SubPartCount : Integer;
function DM_SubParts(Index : Integer) : IPart;
function DM_SubProject : WideString;
function DM_UniqueId : WideString;
function DM_UniqueIdFromFlatComponent : WideString;
function DM_UniqueIdName : WideString;
function DM_UniqueIdPath : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IHarnessConfiguration (57 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentRevision : IULB_ItemRevision;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DefaultContentTypeGUID : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetConfigurationType : WideString;
function DM_GetLocalReleaseTarget : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_ReleaseItem : IULB_Item;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetConfigurationType(const AValue : WideString);
procedure DM_SetLocalReleaseTarget(const AValue : WideString);
procedure DM_SetName(Value : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SupportedContentTypes : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IHarnessCoreAccess (4 members)
function GetDDMProject(const AProjectFilePath : WideString) : IDDMHarnessProject;
function GetDMObjectHelper : IInterface;
function GetHarnessUtils : IInterface;
procedure SetOriginalProject(const AProjectFilePath : WideString, const AOriginalProject : IProject);

## IHarnessDefinition (4 members)
function DM_GetState_Entry(AIndex : Integer) : WideString;
function DM_GetState_EntryCount : Integer;
function DM_GetState_HarnessID : WideString;
function DM_ObjectAddress : Pointer;

## IHarnessDefinitionList (7 members)
function DM_AdaptedObjectAddress : Pointer;
function DM_GetState_HarnessDefinition_ByIndex(AIndex : Integer) : IHarnessDefinition;
function DM_GetState_HarnessDefinition_ByType(AType : WideString) : IHarnessDefinition;
function DM_GetState_HarnessDefinitionCount : Integer;
function DM_GetState_Name : WideString;
procedure DM_LoadHarnessDefinitions;
function DM_ObjectAddress : Pointer;

## IHarnessDocument (204 members)
function DM_AdditionalPartCount : Integer;
function DM_AdditionalParts(Index : Integer) : IPart;
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AnnotationOptions : IDocumentAnnotationOptions;
function DM_BlanketCount : Integer;
function DM_Blankets(Index : Integer) : IBlanket;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusCount : Integer;
function DM_Buses(Index : Integer) : IBus;
function DM_CableCount : Integer;
function DM_Cables(Index : Integer) : ICable;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChannelClassCount : Integer;
function DM_ChannelClasses(Index : Integer) : IChannelClass;
function DM_ChannelIndex : Integer;
function DM_ChannelPrefix : WideString;
function DM_ChannelRoomNamingStyle : TChannelRoomNamingStyle;
function DM_ChildDocumentCount : Integer;
function DM_ChildDocumentCountIgnoreScope : Integer;
function DM_ChildDocuments(Index : Integer) : IDocument;
function DM_ChildDocumentsIgnoreScope(Index : Integer) : IDocument;
function DM_ClassClusterCount : Integer;
function DM_ClassClusters(Index : Integer) : IObjectClassCluster;
function DM_ClearancesMatrix : IClearancesMatrix;
function DM_Compile : LongBool;
function DM_ComponentClassCount : Integer;
function DM_ComponentClasses(Index : Integer) : IComponentClass;
function DM_ComponentCount : Integer;
function DM_Components(Index : Integer) : IComponent;
function DM_ConnectionPointCount : Integer;
function DM_ConnectionPoints(Index : Integer) : IConnectionPoint;
function DM_ConstraintGroupCount : Integer;
function DM_ConstraintGroups(Index : Integer) : IConstraintGroup;
function DM_ConstraintManagerData(Index : Integer) : IConstraintManagerData;
function DM_ConstraintManagerDatasCount : Integer;
function DM_CreateViolation(AErrorKind : TErrorKind, AErrorString : WideString) : IViolation;
function DM_CrossSheetConnectorCount : Integer;
function DM_CrossSheetConnectors(Index : Integer) : ICrossSheet;
function DM_CurrentInstanceNumber : Integer;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DifferentialPairClassCount : Integer;
function DM_DifferentialPairClasses(Index : Integer) : IDifferentialPairClass;
function DM_DifferentialPairCount : Integer;
function DM_DifferentialPairs(Index : Integer) : IDifferentialPair;
procedure DM_DoCrossProbeBase;
function DM_DocumentID : WideString;
function DM_DocumentIsLoaded : Boolean;
function DM_DocumentIsTextual : Boolean;
function DM_DocumentKind : WideString;
procedure DM_DocumentLoaded;
function DM_FileName : WideString;
function DM_FSMClockPort : INetItem;
function DM_FSMResetPort : INetItem;
function DM_FSMState(Index : Integer) : IDM_FSMState;
function DM_FSMStateCount : Integer;
function DM_FSMTransition(Index : Integer) : IDM_FSMTransition;
function DM_FSMTransitionCount : Integer;
function DM_FullCrossProbeString : WideString;
function DM_FullPath : WideString;
function DM_GeneralField : Integer;
function DM_GetDirectiveProperties(const ObjectHandle : WideString) : IDirectiveProperties;
function DM_GetDocumentForECO : IDocument;
function DM_GetItemRevisionGUID : WideString;
function DM_GetNet(const ObjectHandle : WideString) : INet;
function DM_GetNetNamesForObject(const ObjectHandle : WideString) : IStrings;
function DM_GetNetProperties(const ObjectHandle : WideString) : INetProperties;
function DM_GetOriginalDocumentHash : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPartDesignatorsForObject(const ObjectHandle : WideString) : IStrings;
function DM_GetRequiredCapabilities(ACapabilities : ICapabilityList) : Boolean;
function DM_GetSchConstraintsManager : ISchConstraintsManager;
function DM_GetState_DocDisplayName : WideString;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
procedure DM_GraphicallyInvalidateReferenceItems;
function DM_HarnessConnectorCount : Integer;
function DM_HarnessConnectors(Index : Integer) : ISheetSymbol;
function DM_HarnessNetCount : Integer;
function DM_HarnessNets(Index : Integer) : INet;
function DM_ImageIndex : Integer;
function DM_IndentLevel : Integer;
function DM_InlineSpliceCount : Integer;
function DM_InlineSplices(Index : Integer) : IInlineSplice;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsDeviceSheet : Boolean;
function DM_IsDocumentFileLessEditing : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsPhysicalDocument : Boolean;
function DM_IsPrimaryImplementationDocument : Boolean;
function DM_IsRequired : Boolean;
function DM_IsVirtualDocument : Boolean;
function DM_LayoutCoveringCount : Integer;
function DM_LayoutCoverings(Index : Integer) : ILayoutCovering;
function DM_LayoutLabelCount : Integer;
function DM_LayoutLabels(Index : Integer) : ILayoutLabel;
function DM_LoadDocument : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDocument : IDocument;
function DM_LongDescriptorString : WideString;
function DM_ModelKind : WideString;
function DM_NeedsScrapCompile : Boolean;
function DM_NetClassCount : Integer;
function DM_NetClasses(Index : Integer) : INetClass;
function DM_NetCount : Integer;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_Nets(Index : Integer) : INet;
function DM_NoConnectCount : Integer;
function DM_NoConnects(Index : Integer) : INoConnect;
function DM_NoteCount : Integer;
function DM_Notes(Index : Integer) : INote;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_ObjectRevisionId : WideString;
function DM_OpenAndFocusDocument : Boolean;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentDocumentCount : Integer;
function DM_ParentDocuments(Index : Integer) : IDocument;
function DM_ParentSheetSymbolCount : Integer;
function DM_ParentSheetSymbols(Index : Integer) : ISheetSymbol;
function DM_PartAnnotateCount : Integer;
function DM_PartCount : Integer;
function DM_Parts(Index : Integer) : IPart;
function DM_PartsAnnotate(Index : Integer) : IPart;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDocument(Index : Integer) : IDocument;
function DM_PhysicalDocumentCount : Integer;
function DM_PhysicalDocumentParent : IDocument;
function DM_PhysicalInstanceName : WideString;
function DM_PhysicalInstancePath : WideString;
function DM_PhysicalRoomName : WideString;
function DM_PinPair(Index : Integer) : IPinPair;
function DM_PinPairsCount : Integer;
function DM_PortCount : Integer;
function DM_Ports(Index : Integer) : INetItem;
function DM_PrimaryCrossProbeString : WideString;
function DM_Project : IProject;
function DM_ReuseBlocks : IReuseBlocks;
function DM_RoomCount : Integer;
function DM_Rooms(Index : Integer) : IRoom;
function DM_RuleCount : Integer;
function DM_Rules(Index : Integer) : IRule;
function DM_SameClearancesMatrix : IClearancesMatrix;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_ScrapCompile(ForceCompile : Boolean) : LongBool;
function DM_ScrapCompileWithOptions(ForceCompile : Boolean, AOptions : WideString) : LongBool;
function DM_SecondaryCrossProbeString : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetItemRevisionGUID(S : WideString);
procedure DM_SetOriginalDocumentHash(const AValue : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_SheetSizeX : Integer;
function DM_SheetSizey : Integer;
function DM_SheetSymbolCount : Integer;
function DM_SheetSymbols(Index : Integer) : ISheetSymbol;
function DM_ShieldCount : Integer;
function DM_Shields(Index : Integer) : IShield;
function DM_ShortDescriptorString : WideString;
function DM_SignalManager : ISignalManager;
function DM_SmartLoad : Boolean;
function DM_SpatialAnalysis(Force : Boolean, AllowAbort : Boolean, AbortOnMouseMove : Boolean) : Boolean;
function DM_SpatialAnalysisForTest : Integer;
function DM_SpliceCount : Integer;
function DM_Splices(Index : Integer) : ISplice;
function DM_SystemFunction(Index : Integer) : ISystemFunction;
function DM_SystemFunctionsCount : Integer;
function DM_TextFrameCount : Integer;
function DM_TextFrames(Index : Integer) : ITextFrame;
function DM_TwistCount : Integer;
function DM_Twists(Index : Integer) : ITwist;
function DM_UniqueComponentCount : Integer;
function DM_UniqueComponents(Index : Integer) : IComponent;
function DM_UniquePartCount : Integer;
function DM_UniqueParts(Index : Integer) : IPart;
procedure DM_UpdateDateModified;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntities(Index : Integer) : IVHDLEntity;
function DM_VHDLEntity : IVHDLEntity;
function DM_VHDLEntityCount : Integer;
function DM_xNet(Index : Integer) : IxNet;
function DM_xNetClass(Index : Integer) : IxNetClass;
function DM_xNetClassesCount : Integer;
function DM_xNetsCount : Integer;
function DM_xSignalClass(Index : Integer) : IxSignalClass;
function DM_xSignalClassesCount : Integer;
property VCSProject : IInterface

## IHarnessGeneralOptionsPageParams (6 members)
function GetIsModified : LongBool;
function GetLengthUnit : Integer;
function GetSheetStyle : Integer;
procedure SetIsModified(AIsModified : LongBool);
procedure SetLengthUnit(ALengthUnit : Integer);
procedure SetSheetStyle(ASheetStyle : Integer);

## IHarnessProject (280 members)
function DM_AddAsDeviceSheet(const ADocumentPath : WideString) : IDocument;
function DM_AddConfiguration(Configuration : WideString) : IConfiguration;
procedure DM_AddConfigurationParameters(Configuration : WideString);
procedure DM_AddConfigurationParameters_Physical(Configuration : WideString);
procedure DM_AddControlPanel(Filename : WideString);
procedure DM_AddDeviceSheetFolder(FolderPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddGeneratedDocument(Filename : WideString);
procedure DM_AddMissingAutoCrossRefs;
procedure DM_AddOrSetUniqueIdMapping(const ASchHandle : WideString, const AUniqueIdMapping : WideString);
procedure DM_AddParameter(AName : WideString, AValue : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AddProjectVariant : IProjectVariant;
procedure DM_AddSearchPath(SearchPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddSourceDocument(Filename : WideString);
procedure DM_AddSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_AddVirtualDocument(const APath : WideString);
procedure DM_ApplyChangesFromSystemDataModel;
function DM_AvailableDatabaseLinks : Boolean;
procedure DM_BeginUpdate;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateFormula(const DMObject : IDMObject, const AFormula : WideString, ForComponentVariation : Boolean, const ProjectVariant : IProjectVariant, const Variations : ISafeInterfaceList) : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChannelDesignatorFormat : WideString;
function DM_ChannelRoomLevelSeperator : WideString;
function DM_ChannelRoomNamingStyle : TChannelRoomNamingStyle;
procedure DM_ClearAllNetColors;
procedure DM_ClearSchematicObjectsErrorFields(const SchematicId : WideString);
procedure DM_ClearViolations;
function DM_Compile : LongBool;
function DM_CompileEx(All : LongBool, var Cancelled : LongBool) : LongBool;
function DM_CompileProjectOrDocument(ADocument : IDocument) : Boolean;
function DM_ComponentMappings(AnImplementationDocument : WideString) : IComponentMappings;
function DM_ConfigurationCount : Integer;
function DM_Configurations(Index : Integer) : IConfiguration;
function DM_CrossRefCrossSheets : Boolean;
function DM_CrossRefLocationStyle : TCrossRefLocationStyle;
function DM_CrossRefPorts : TCrossRefPorts;
function DM_CrossRefSheetEntries : Boolean;
function DM_CrossRefSheetStyle : TCrossRefSheetStyle;
function DM_CurrentProjectVariant : IProjectVariant;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DataModel : IUnifiedDataModel;
function DM_DeviceSheetFolderCount : Integer;
function DM_DeviceSheetFolders(Index : Integer) : IDeviceSheetFolder;
procedure DM_DeviceSheetRemoved(const Filename : WideString);
function DM_DiffPairSuffixCount : Integer;
procedure DM_DiffPairSuffixes(Index : Integer, var Positive : WideString, var Negative : WideString);
procedure DM_DisableOnlineSynchronization(AUpdateParameters : Boolean);
procedure DM_DoCrossProbeBase;
procedure DM_DoCrossSelection;
function DM_DocumentBackups : IDocumentBackups;
function DM_DocumentClassGenerationOptions(const ADocumentPath : WideString) : IDocumentClassGenerationOptions;
function DM_DocumentFlattened : IDocument;
function DM_DocumentIsGenerated(const ADocumentFileName : WideString) : Boolean;
function DM_EditConfigurations : LongBool;
function DM_EditOptions(DefaultPage : WideString) : LongBool;
procedure DM_EndUpdate;
procedure DM_EnsureAllCachedManagedOutputJobs;
procedure DM_EnsureStandardConfigurations;
function DM_ErrorLevels(AErrorKind : TErrorKind) : TErrorLevel;
procedure DM_Export_ToFile(const AFileName : WideString);
function DM_FileLessItemGUID : WideString;
function DM_FileLessVaultGUID : WideString;
function DM_FindProjectVariant(ADescription : WideString) : IProjectVariant;
procedure DM_FixDesignatorAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ALogicalDesignator : WideString, ARemoveOriginal : Boolean);
procedure DM_FixSheetNumberAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ADocumentFileName : WideString, ARemoveOriginal : Boolean);
procedure DM_FixVariationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const APhysicalDesignator : WideString, const AProjectVariantUniqueId : WideString, const AProjectVariantDescription : WideString, ARemoveOriginal : Boolean);
procedure DM_ForceIncludeRequiredOutJobs(const AConfigurationManager : IDMS_ConfigurationManager, const AVaultGUID : WideString);
function DM_FSMCodingStyle : TFSMCodingStyle_DropDownList;
function DM_FSMEncodingStyle : TFSMEncodingStyle_DropDownList;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GeneratedDocumentCount : Integer;
function DM_GeneratedDocuments(Index : Integer) : IDocument;
procedure DM_GenerateSystemDataModel;
function DM_GetAllowPortNetNames : Boolean;
function DM_GetAllowSheetEntryNetNames : Boolean;
function DM_GetAnnotationManager : IAnnotationManager;
function DM_GetAnnotationOptions : IAnnotateOptions;
function DM_GetAppendSheetNumberToLocalNets : Boolean;
function DM_GetAutomaticSheetsNumbers : IAutomaticSheetsNumbers;
function DM_GetConfigurationByName(Configuration : WideString) : IConfiguration;
function DM_GetDefaultConfiguration : IConfiguration;
function DM_GetDefaultConfigurationName : WideString;
function DM_GetDefaultPcbType : WideString;
function DM_GetDocumentByDocumentId(const ADocumentId : WideString) : IDocument;
function DM_GetDocumentFromName(DocumentName : WideString) : IDocument;
function DM_GetDocumentFromPath(DocumentPath : WideString) : IDocument;
function DM_GetECOInterface : IECO;
function DM_GetHasWriteAccessAsync : Boolean;
function DM_GetIncludeDesignInRelease : Boolean;
function DM_GetIsActiveOnlineSynchronization : Boolean;
function DM_GetLinkedManagedProjectGUID : WideString;
function DM_GetNetColorByName(const ANetName : WideString) : TColor;
function DM_GetNetInfosToExportCount : Integer;
function DM_GetNetInfoToExport(AIndex : Integer) : WideString;
function DM_GetNotificationService : IEDMS_NotificationService;
function DM_GetOpenOutputs : Boolean;
function DM_GetOrCreateLibraryPart(const AComponentLibraryLink : IComponentLibraryLink) : IPart;
function DM_GetOriginalDocumentFromPath(const ADocumentPath : WideString) : IDocument;
function DM_GetOutputPath : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPinSwapBy_Netlabel : Boolean;
function DM_GetPinSwapBy_Pin : Boolean;
function DM_GetProjectClassGenerationOptions : IProjectClassGenerationOptions;
function DM_GetRelativeOutputPath : WideString;
function DM_GetReleaseFolderPath : WideString;
function DM_GetReleaseMode : TProjectReleaseMode;
function DM_GetReleaseNamings : WideString;
function DM_GetReleaseNamingTemplates : WideString;
function DM_GetReleaseVaultGUID : WideString;
function DM_GetReleaseZipPath : WideString;
function DM_GetReportFactory : IReportFactory;
function DM_GetRequiredCapabilities(ACapabilities : ICapabilityList) : Boolean;
function DM_GetScrapDocument(DocumentPath : WideString) : IDocument;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTemplateLink : WideString;
function DM_GetTimeStampedOutputFolder : Boolean;
function DM_GetTopLevelDocumentStructure : IDocumentStructure;
function DM_GetVariantSchLibrary : WideString;
function DM_GetVirtualParametersManager : IVirtualParametersManager;
function DM_GetWebURL(const APage : WideString, const AOpenedFrom : WideString, AIncludeAuthToken : Boolean) : WideString;
function DM_GlobalPreferencesRevisionGUID : WideString;
function DM_GlobalPreferencesVaultGUID : WideString;
function DM_HarnessDocumentFlattened : IDocument;
function DM_HierarchyMode : TFlattenMode;
function DM_HierarchyModeForCompile : TFlattenMode;
function DM_ImageIndex : Integer;
function DM_InCompilation : Boolean;
function DM_IndexOfSourceDocument(Filename : WideString) : Integer;
function DM_InitializeOutputPath(AnOutputType : WideString) : WideString;
function DM_IsActive : Boolean;
function DM_IsConnectiveSelectedNow(AConnective : IDMObject) : Boolean;
function DM_IsCrossRefAddedToProject : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFileLessClone : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsManagedDocument(ADocument : IDocument) : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsReuseBlock : Boolean;
function DM_IsSharedWithMe : Boolean;
function DM_IsSolution : Boolean;
function DM_IsTemplate : Boolean;
function DM_IsVaultFileLessEditing : Boolean;
function DM_IsViewOnly : Boolean;
procedure DM_LoadAllLogicalDocuments;
procedure DM_LoadManagedParameters;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDocumentCount : Integer;
function DM_LogicalDocuments(Index : Integer) : IDocument;
function DM_LogicalDocumentsIsDeviceSheet(const ADocument : IDocument) : Boolean;
function DM_LongDescriptorString : WideString;
function DM_ManagedParameterCount : Integer;
function DM_ManagedParameters(Index : Integer) : IParameter;
function DM_ManagedProjectGUID : WideString;
procedure DM_MoveSourceDocument(Filename : WideString, NewIndex : Integer);
function DM_NeedsCompile : LongBool;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OfflineProjectGUID : WideString;
function DM_OptionsStorage : IOptionsStorage;
function DM_Outputers(Name : WideString) : IOutputer;
function DM_OwnedProjectCount : Integer;
function DM_OwnedProjects(Index : Integer) : IProject;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentProject : IProject;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDocumentCount : Integer;
function DM_PhysicalDocuments(Index : Integer) : IDocument;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrimaryImplementationDocument : IDocument;
function DM_ProjectContainsOutputJobs : Boolean;
function DM_ProjectFileName : WideString;
function DM_ProjectFullPath : WideString;
procedure DM_ProjectStructureChanged;
function DM_ProjectTemplateLocation : WideString;
procedure DM_ProjectVariantChanged;
function DM_ProjectVariantCount : Integer;
function DM_ProjectVariants(Index : Integer) : IProjectVariant;
function DM_ReferenceObjectManager : IInterface;
procedure DM_RefreshHarnessDefinitions;
procedure DM_RefreshInWorkspaceForm;
function DM_ReleaseProjectCopy : IProject;
function DM_RemoveAllConfigurations : Boolean;
function DM_RemoveConfigurationByName(Configuration : WideString) : Boolean;
procedure DM_RemoveHarnessFile(const HarnessFileFullPath : WideString);
procedure DM_RemoveParameter(const AParameter : IParameter);
procedure DM_RemoveParameterByName(const AParameterName : WideString);
procedure DM_RemoveProjectVariant(Index : Integer);
procedure DM_RemoveSourceDocument(Filename : WideString);
procedure DM_RemoveSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_RemoveVirtualDocument(const APath : WideString);
function DM_ReportSuppressedErrorsInMessages : Boolean;
procedure DM_ResetLastCompileTimeForAllDocuments;
procedure DM_ResetReleaseProject;
function DM_ResumeContinuousCompilation : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SearchPathCount : Integer;
function DM_SearchPaths(Index : Integer) : ISearchPath;
function DM_SecondaryCrossProbeString : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetAllowPortNetNames(AAllow : Boolean);
procedure DM_SetAllowSheetEntryNetNames(AAllow : Boolean);
procedure DM_SetAppendSheetNumberToLocalNets(AAppend : Boolean);
procedure DM_SetAsCurrentProject;
procedure DM_SetConnectedNetsColor(const ANet : INet, AColor : TColor);
procedure DM_SetCurrentProjectVariant(AProjVariant : IProjectVariant);
procedure DM_SetCurrentProjectVariantSilent(AProjectVariant : IProjectVariant);
procedure DM_SetDefaultConfigurationName(Configuration : WideString);
procedure DM_SetDefaultPcbType(PcbType : WideString);
procedure DM_SetErrorLevels(AErrorKind : TErrorKind, AErrorLevel : TErrorLevel);
procedure DM_SetGlobalPreferencesRevisionGUID(AValue : WideString);
procedure DM_SetGlobalPreferencesVaultGUID(AValue : WideString);
procedure DM_SetHierarchyMode(AFlatten : TFlattenMode);
procedure DM_SetIncludeDesignInRelease(AValue : Boolean);
procedure DM_SetLinkedManagedProjectGUID(const AValue : WideString);
procedure DM_SetManagedProjectGUID(const AValue : WideString);
procedure DM_SetModified;
procedure DM_SetNetColorByName(const ANetName : WideString, AColor : TColor);
procedure DM_SetOfflineProjectGUID(const AValue : WideString);
procedure DM_SetOpenOutputs(AValue : Boolean);
procedure DM_SetOutputPath(AnOutputPath : WideString);
procedure DM_SetPinSwapBy_Netlabel(AAllow : Boolean);
procedure DM_SetPinSwapBy_Pin(AAllow : Boolean);
procedure DM_SetRelativeOutputPath(AValue : WideString);
procedure DM_SetReleaseFolderPath(AValue : WideString);
procedure DM_SetReleaseMode(AValue : TProjectReleaseMode);
procedure DM_SetReleaseNamings(const AValue : WideString);
procedure DM_SetReleaseNamingTemplates(const AValue : WideString);
procedure DM_SetReleaseProjectCopy(AProject : IProject);
procedure DM_SetReleaseVaultGUID(const Value : WideString);
procedure DM_SetReleaseZipPath(AValue : WideString);
procedure DM_SetTimeStampedOutputFolder(AValue : Boolean);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ShowVariantsDrawingStylesDialog(const AValue : IVariantOption) : IVariantOption;
procedure DM_StartCrossProbing(CtrlDoesSwitch : Boolean);
procedure DM_StartNavigation;
function DM_SuspendContinuousCompilation : Boolean;
function DM_ToDoManager : IToDoManager;
function DM_TopLevelLogicalDocument : IDocument;
function DM_TopLevelPhysicalDocument : IDocument;
function DM_TryToResolveDocumentSpecialString(const AName : WideString, const ADocumentFileName : WideString, out AValue : WideString) : Boolean;
function DM_TryToResolveSpecialString(const AName : WideString, out AValue : WideString) : Boolean;
function DM_UpdateConstraints : LongBool;
procedure DM_UpdateSchObjectErrorFields(const SchHandle : WideString, ErrorKind : TErrorKind, Suppressed : Boolean);
function DM_UserID : WideString;
procedure DM_Validate;
function DM_ValidateManagedOutputJobs : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VariantManager : IVariantManager;
function DM_Vault : IEDMS_Vault;
function DM_VaultGUID : WideString;
function DM_VaultHRID : WideString;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViolationCount : Integer;
function DM_Violations(Index : Integer) : IViolation;
function GetNavigationHistory : INavigationHistory;
property VCSProject : IInterface

## IHarnessTypeHolder (3 members)
property HarnessType : WideString
property HarnessTypeInferred : Boolean
property IsHarnessObject : Boolean

## IHDLDocument (1 members)
procedure HighLight_Port(AHDLEntity : WideString, APortName : WideString);

## IHDLLibDocument (11 members)
procedure AddDocument(ADocument : WideString, ACategory : THDLLibCategory);
function Compile : LongBool;
function FileReallyExists(AFileName : WideString) : LongBool;
function GetAllDocuments(AIndex : Integer) : WideString;
function GetAllDocumentsCount : Integer;
function GetDocument(ACategory : THDLLibCategory, AIndex : Integer) : WideString;
function GetDocumentCount(ACategory : THDLLibCategory) : Integer;
function GetFileName : WideString;
procedure ProcessCommand(ACommand : THDLLibCommand, Parameters : WideString);
procedure RemoveDocument(ADocument : WideString);
procedure SetModified(const Value : LongBool);

## IHealthCheckIssueCategory (2 members)
function GetState_Identity : THealthCheckId;
function GetState_IssuesCount : Integer;

## IHealthCheckIssuesSettings (9 members)
function GetState_AdditionalCommandName : WideString;
function GetState_GetIssueCategory(const AIndex : Integer) : IHealthCheckIssueCategory;
function GetState_GetIssuesCategoriesCount : Integer;
function GetState_IsAdditionalCommandAvailable : Boolean;
function GetState_IssuesDescription : WideString;
function GetState_IssuesNote : WideString;
function GetState_MainCommandName : WideString;
procedure RunAdditionalCommand;
procedure RunMainCommand;

## IHighlightedDocument (63 members)
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
procedure HL_Begin;
function HL_ChooseObjectGraphically(var ADmObject : IDMObject) : Boolean;
procedure HL_End;
function HL_GetLinkedObject(const ADmObject : IDMObject) : IDMObject;
property HL_HighlightedNet : INet
procedure HL_HighlightMethod_Add(AHighlightMethod : THighlightMethod);
procedure HL_HighlightMethod_Clear(AHighlightMethod : THighlightMethod);
function HL_HighlightMethod_IsApplicable(AHighlightMethod : THighlightMethod) : Boolean;
procedure HL_HighlightMethod_Remove(AHighlightMethod : THighlightMethod);
function HL_ObjectCount : Integer;
function HL_Objects(AnIndex : Integer) : IDMObject;
procedure HL_Perform;
procedure HL_Register_Area(const AnArea : IDispatch);
procedure HL_Register_Bus(const ABus : IBus);
procedure HL_Register_Component(const AComponent : IComponent);
procedure HL_Register_DMObject(const AnObject : IDMObject);
procedure HL_Register_Net(const ANet : INet);
procedure HL_Register_NetItem(const ANetItem : INetItem);
procedure HL_Register_Part(const APart : IPart);
procedure HL_Register_VHDLEntity(const AVHDLEntity : IVHDLEntity);
procedure HL_UnRegister_AllObjects;
procedure HL_UnRegister_Object(const AnObject : IDMObject);
function HL_XProbeChooseObject(var ADmObject : IDMObject) : Boolean;
property IsShown : LongBool
property Kind : WideString
property Modified : LongBool
procedure NotifyViews(ANotification : INotification);
function OwnsFile : Boolean;
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

## IHighlightedModelEditor (21 members)
function CreateDatafile(ADatafilePath : PWideChar) : IModelDatafile;
function CreateServerModel(AModel : IComponentImplementation) : IServerModel;
procedure CrossProbeEntity(AEntityName : WideString, ADatafilePath : WideString);
procedure DrawModel(AExternalForm : IExternalForm, AModelName : PWideChar, ADatafilePath : PWideChar);
function DrawModel_FromModel(AExternalForm : IExternalForm, AModel : IModel) : Boolean;
function DrawModel_FromSchImpl(AExternalForm : IExternalForm, ASchComp : ISch_Component, ASchImpl : ISch_Implementation) : Boolean;
function DrawModel_FromStepFile(AExternalForm : IExternalForm, AStepFilePath : WideString) : Boolean;
procedure DrawModel_PinsSelected(AExternalForm : IExternalForm, AModelName : WideString, ADatafilePath : WideString, APinNameList : WideString);
procedure DrawModelToMetaFile(const AFileName : WideString, const AModelName : WideString, const ADatafilePath : WideString, APaintColorMode : TPaintColorMode, APaintScaleMode : TPaintScaleMode);
function EditModel(SchModel : ISch_Implementation, SchComp : ISch_Component, Context : TModelEditContext) : Boolean;
function EditModelMap(const AModelRevision : IULB_ItemRevision, const AVault : IEDMS_Vault, const ASchComp : ISch_Component, var AMapAsString : WideString, var AExcludedParts : WideString) : Boolean;
procedure FinishedLibraryCompile;
function GetEntityParameters(AEntityName : WideString, ADatafilePath : WideString) : WideString;
function GetExternalForm : IExternalForm;
procedure HighlightComponentPins(AExternalForm : IExternalForm, APinNameList : WideString, AHighlightColor : TColor, ANonHighlightColor : TColor);
function PrepareModel(AModel : IComponentImplementation) : Boolean;
procedure RegisterListener(AExternalForm : IExternalForm, AListener : IModelEditorSelectionListener);
function SetDefaultModelState(SchModel : ISch_Implementation, SchComp : ISch_Component, IsLibrary : Boolean) : Boolean;
procedure ShowPinsAsSelected(AExternalForm : IExternalForm, APinNameList : WideString);
procedure ShowSpecifiedPinsOnly(AExternalForm : IExternalForm, APinNameList : WideString);
procedure StartingLibraryCompile;

## IHighlighter (23 members)
procedure HL_Begin;
function HL_ChooseObjectGraphically(var ADmObject : IDMObject) : Boolean;
procedure HL_End;
function HL_GetHighlightedNet : INet;
function HL_GetLinkedObject(const ADmObject : IDMObject) : IDMObject;
procedure HL_HighlightMethod_Add(AHighlightMethod : THighlightMethod);
procedure HL_HighlightMethod_Clear(AHighlightMethod : THighlightMethod);
function HL_HighlightMethod_IsApplicable(AHighlightMethod : THighlightMethod) : Boolean;
procedure HL_HighlightMethod_Remove(AHighlightMethod : THighlightMethod);
function HL_ObjectCount : Integer;
function HL_Objects(AnIndex : Integer) : IDMObject;
procedure HL_Perform;
procedure HL_Register_Area(const AnArea : IDispatch);
procedure HL_Register_Bus(const ABus : IBus);
procedure HL_Register_Component(const AComponent : IComponent);
procedure HL_Register_DMObject(const AnObject : IDMObject);
procedure HL_Register_Net(const ANet : INet);
procedure HL_Register_NetItem(const ANetItem : INetItem);
procedure HL_Register_Part(const APart : IPart);
procedure HL_SetHighlightedNet(const ANet : INet);
procedure HL_UnRegister_AllObjects;
procedure HL_UnRegister_Object(const AnObject : IDMObject);
function HL_XProbeChooseObject(var ADmObject : IDMObject) : Boolean;

## IHTMLViewExternalForm (3 members)
property AlwaysInNewWindow : LongBool
property CtrlClickInNewWindow : LongBool
procedure NavigateTo(const Url : WideString);

## IHTMLViewJavascriptMessageReceivedEvent (1 members)
procedure Invoke(const AType : WideString, out AAction : TJavascriptAction, out AName : WideString, out AData : WideString);

## IHTMLViewLoadingStateChangedEvent (1 members)
procedure Invoke(const ALoadingState : Boolean);

## IHTMLViewLocationChangeEvent (1 members)
procedure Invoke(const ANewLocation : WideString);

## IHTMLViewSetOnResourceResponseEvent (1 members)
procedure Invoke(const AResponseCode : Integer);

## IHTMLViewWithEvents (4 members)
procedure SetOnJavascriptMessageReceived(const AValue : IHTMLViewJavascriptMessageReceivedEvent);
procedure SetOnLoadingStateChanged(const AValue : IHTMLViewLoadingStateChangedEvent);
procedure SetOnLocationChange(const AValue : IHTMLViewLocationChangeEvent);
procedure SetOnResourceResponse(const AValue : IHTMLViewSetOnResourceResponseEvent);

## IID32 (1 members)
function ID32 : Integer;

## IIdleHandler (1 members)
procedure Invoke;

## IIdleHandlerRegistrator (2 members)
procedure RegisterHandler(const AHandler : IIdleHandler);
procedure RemoveHandler;

## IImplementationFile (17 members)
property ParameterValue[Index: Integer] : WideString
property ParameterName[Index: Integer] : WideString
procedure ClearParameters;
procedure DeleteParameter(Index : Integer);
procedure DeleteParameterByName(AName : WideString);
property Description : WideString
function GetParameterByName(AName : WideString) : IItemParameter;
function GetParameterValueByName(AName : WideString) : WideString;
property ItemRevisionGUID : WideString
property ModelFilename : WideString
property ModelName : WideString
property ModelType : WideString
property ParameterCount : Integer
property ReleaseItemGUID : WideString
property ReleaseVaultGUID : WideString
function SaveToFile(AFileName : WideString) : Boolean;
procedure SetParameterValueByName(AName : WideString, AValue : WideString);

## IImportDocument (1 members)
function FileImport(const AFileName : WideString, const AFormat : WideString) : LongBool;

## IInlineSplice (113 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusIndex : Integer;
function DM_BusKind : TBusKind;
function DM_BusPrefix : WideString;
function DM_BusRange1 : WideString;
function DM_BusRange2 : WideString;
function DM_BusRangeValue1 : Integer;
function DM_BusRangeValue2 : Integer;
function DM_BusWidth : Integer;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ComponentUniqueId : WideString;
function DM_CrossSheetText : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DefaultSearchID : WideString;
function DM_DesignatorLocationX : Integer;
function DM_DesignatorLocationY : Integer;
function DM_DisplayMode : Byte;
procedure DM_DoCrossProbeBase;
function DM_Electric : TPinElectrical;
function DM_Electrical : TPinElectrical;
function DM_ElectricalString : WideString;
function DM_FlattenedNetName : WideString;
function DM_Footprint : WideString;
function DM_FullCrossProbeString : WideString;
function DM_FullLogicalPartDesignator : WideString;
function DM_FullPhysicalPartDesignator : WideString;
function DM_FullPinName : WideString;
function DM_FullUniqueId : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_Id : WideString;
function DM_ImageIndex : Integer;
function DM_IsAutoGenerated : Boolean;
function DM_IsBusElement : Boolean;
function DM_IsBusMember : Boolean;
function DM_IsBusSection : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredFromHarness : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LinkObject : INetItem;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalPartDesignator : WideString;
function DM_LongDescriptorString : WideString;
function DM_MatchesPadName(const PadName : WideString) : Boolean;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetLabelText : WideString;
function DM_NetName : WideString;
function DM_NetNumber : WideString;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
function DM_OwnerHarnessNetLogical : INet;
function DM_OwnerHarnessNetPhysical : INet;
function DM_OwnerNetLogical : INet;
function DM_OwnerNetPhysical : INet;
function DM_OwnerPartID : Integer;
function DM_PairSwapId : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentID : WideString;
function DM_ParentSheetSymbolName : WideString;
function DM_ParentSheetSymbolSheetName : WideString;
function DM_Part : IPart;
function DM_PartID : Integer;
function DM_PartPinSwapId : WideString;
function DM_PartSwapId : WideString;
function DM_PartType : WideString;
function DM_PartUniqueId : WideString;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalPartDesignator : WideString;
function DM_PinName : WideString;
function DM_PinNameNoPartId : WideString;
function DM_PinNumber : WideString;
function DM_PinPackageLength : Integer;
function DM_PinPropagationDelay : Double;
function DM_PinSwapId : WideString;
function DM_PortName : WideString;
function DM_PowerText : WideString;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrintableNetName(out ShouldBeUsed : Boolean) : WideString;
function DM_RangeDefinedByValue : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_SheetName : WideString;
function DM_SheetSymbol : ISheetSymbol;
function DM_ShortDescriptorString : WideString;
function DM_SignalType : WideString;
function DM_UniqueIdName : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IInstalledConstraintFiles (5 members)
function ConstraintFileIsInstalled(APath : WideString) : LongBool;
function DefaultConstraintFile : WideString;
function EditInstalledConstraintFiles : LongBool;
function InstalledConstraintFile(AIndex : Integer) : WideString;
function InstalledConstraintFileCount : Integer;

## IInstance (53 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Designator : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_InstanceType : WideString;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_Part : IPart;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PortCount : Integer;
function DM_Ports(Index : Integer) : IInstancePort;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_SheetSymbol : ISheetSymbol;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IInstancePort (68 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusIndex : Integer;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ConstantExpression : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Direction : TSignalDirection;
procedure DM_DoCrossProbeBase;
function DM_DriverLinkCount : Integer;
function DM_DriverLinks(Index : Integer) : ISignalLink;
function DM_EntityPort : IEntityPort;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetDescription : WideString;
function DM_GetName : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsDriver : LongBool;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetItem : INetItem;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_Range1 : WideString;
function DM_Range2 : WideString;
function DM_RangeMax : Integer;
function DM_RangeMin : Integer;
function DM_RangeValue1 : Integer;
function DM_RangeValue2 : Integer;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_Signal : ISignal;
function DM_SubNet : ISubNet;
function DM_TargetLinkCount : Integer;
function DM_TargetLinks(Index : Integer) : ISignalLink;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
function DM_Width : Integer;
property VCSProject : IInterface

## IInstancesFactory (3 members)
function CreateLibraryPart(const ASheet : IDocument, const AReferencePart : IPart) : IPart;
function CreatePart(const ADocument : IDocument, const APartType : WideString, const ADesignitemID : WideString, const ASourceLibraryName : WideString, const AVaultGUID : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString) : IPart;
function CreateSheetSymbol(const ADocument : IDocument, const ARawSheetSymbolFileName : WideString, const ASheetSymbolFileName : WideString, const ADesignitemID : WideString, const ASourceLibraryName : WideString, const AVaultGUID : WideString, const AItemGUID : WideString, const ARevisionGUID : WideString) : ISheetSymbol;

## IInstructionOpCode (5 members)
function GetDescription : WideString;
function GetEntity : IBSDLEntity;
function GetInstructionName : WideString;
function GetOpCodePattern : WideString;
function GetShortDescription : WideString;

## IInstrumentView (19 members)
property Caption : WideString
procedure FocusFirstTabStop;
procedure GetBounds(var ALeft : Integer, var ATop : Integer, var AWidth : Integer, var AHeight : Integer);
procedure GetInstrumentBounds(out ALeft : Integer, out ATop : Integer, out AWidth : Integer, out AHeight : Integer);
procedure GetProjectDetails(out AProjectPath : WideString, out ATarget : WideString);
property Handle : HWND
procedure Hidden;
procedure Hide;
function LiveUpdateNet(const ANet : INet, AUpdateEnabled : Boolean) : Boolean;
procedure ParentWindowCreated;
procedure ParentWindowDestroyed;
procedure ReceiveNotification(const ANotification : INotification);
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetFocus;
procedure SetInstrumentBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetParentWindow(const ParentWindow : IExternalFormHolder);
procedure SetProjectDetails(const AProjectPath : WideString, const ATarget : WideString);
procedure Show;
procedure UpdateDisplay;

## IIntegratedLibraryManager (80 members)
procedure ActivateLibrary(const ALibraryPath : WideString);
procedure AddRemoveLibraries;
function AvailableLibraryCount : Integer;
function AvailableLibraryPath(LibraryIndex : Integer) : WideString;
function AvailableLibraryType(LibraryIndex : Integer) : TLibraryType;
function BrowseComponent(ALibIdentifierKind : TLibIdentifierKind, var ALibraryIdentifier : WideString, var ADesignItemID : WideString, var APartID : Integer, out ASymbolReference : WideString, out ASymbolLibraryPath : WideString, var AModelName : WideString, const AModelType : WideString, out AModelLibraryPath : WideString) : Boolean;
function BrowseDatafileEntity(ALibIdentifierKind : TLibIdentifierKind, var ALibraryIdentifier : WideString, var ADatafileEntityName : WideString, const ADatafileType : WideString, out ADatafilePath : WideString) : Boolean;
function BrowseDatafileEntityInDatafile(ALibIdentifierKind : TLibIdentifierKind, var ALibraryIdentifier : WideString, var ADatafileEntityName : WideString, const ADatafileType : WideString, out ADatafilePath : WideString, AUseIntAndDBLibrary : Boolean) : Boolean;
procedure BrowseForComponent(ALibReference : PWideChar, ASCHLibraryPath : PWideChar, SelModelName : PWideChar, SelModelLib : PWideChar, LibPath : PWideChar, ModelType : PWideChar);
procedure BrowseForComponentAndPart(ALibReference : PWideChar, ASCHLibraryPath : PWideChar, SelModelName : PWideChar, SelModelLib : PWideChar, LibPath : PWideChar, ModelType : PWideChar, var PartID : Integer);
procedure BrowseForComponentAndPartCheckDBLibs(ALibReference : PWideChar, ASCHLibraryPath : PWideChar, SelModelName : PWideChar, SelModelLib : PWideChar, LibPath : PWideChar, ModelType : PWideChar, ADatabaseTableName : PWideChar, ADatabaseKeys : PWideChar, var PartID : Integer);
procedure BrowseForComponentCheckDBLibs(ALibReference : PWideChar, ASCHLibraryPath : PWideChar, SelModelName : PWideChar, SelModelLib : PWideChar, LibPath : PWideChar, ModelType : PWideChar, ADatabaseTable : PWideChar, ADatabaseKeys : PWideChar);
procedure BrowseForDatafile(AModelName : PWideChar, AModelPath : PWideChar, LibPath : PWideChar, ModelType : PWideChar, ForComponentInstance : LongBool);
function BrowseModel(ALibIdentifierKind : TLibIdentifierKind, var ALibraryIdentifier : WideString, var ADesignItemID : WideString, var AModelName : WideString, const AModelType : WideString, out AModelLibraryPath : WideString) : Boolean;
function BrowseSimModel(ALibIdentifierKind : TLibIdentifierKind, var ALibraryIdentifier : WideString, var ADatafileEntityName : WideString, var ADatafileModelType : Integer, const ADatafileType : WideString, out ADatafilePath : WideString, AUseIntAndDBLibrary : Boolean, AGenericLibrary : Boolean) : Boolean;
function BrowseSimModelFromFile(ADatafilePath : WideString, var ADatafileEntityName : WideString, var ADatafileModelType : Integer, const ADatafileType : WideString) : Boolean;
function BrowseSymbol(ALibIdentifierKind : TLibIdentifierKind, var ALibraryIdentifier : WideString, var ADesignItemID : WideString, out ASymbolReference : WideString, out ASymbolLibraryPath : WideString) : Boolean;
function BrowseSymbolRevision(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, var ADesignItemID : WideString, out ASymbolReference : WideString, out ASymbolLibraryPath : WideString, out ARevisionStatus : WideString) : Boolean;
procedure CheckModelPathAndPattern(var ALibraryPath : WideString, var AModelName : WideString);
function ComponentHasModelOfType(LibraryPath : WideString, ComponentIndex : Integer, AModelType : WideString) : Boolean;
procedure CreateIntegratedLibrary(AProject : IProject, AnOutputPath : WideString, Install : Boolean);
procedure DeactivateLibrary(const ALibraryPath : WideString);
procedure ExtractSources(ALibraryPath : WideString);
function ExtractSourcesToDatabaseLib(ALibraryPath : WideString, ADatabaseLib : IDatabaseLibDocument, AnAbsoluteOutputPath : WideString, ARelativeOutputPath : WideString) : WideString;
function ExtractSourcesToDesignItemManager(ALibraryPath : WideString, ADestinationPath : WideString, out Parameters : WideString) : WideString;
procedure ExtractSourcesToPath(ALibraryPath : WideString, ADestinationPath : WideString);
function FindComponentDesignItemDeviceSheet(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString, out ADeviceSheetPath : WideString) : Boolean;
function FindComponentDisplayPath(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString) : WideString;
function FindComponentDisplayPathEx(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString, AIgnoreNotLoadedLibs : Boolean) : WideString;
function FindComponentLibraryPath(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString) : WideString;
function FindComponentSymbol(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString, out ASymbolLibraryPath : WideString, out ASymbolReference : WideString) : Boolean;
function FindDatafileEntityDatafilePath(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADatafileEntityName : WideString, const ADatafileType : WideString, AUseIntAndDBLibrary : Boolean) : WideString;
function FindDatafileEntityDatafilePathEx(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADatafileEntityName : WideString, const ADatafileType : WideString, AUseIntAndDBLibrary : Boolean, AIgnoreNotLoadedLibs : Boolean) : WideString;
function FindDatafileEntityLibraryPath(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADatafileEntityName : WideString, const ADatafileType : WideString) : WideString;
function FindDatafileEntitySourceDatafilePath(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADatafileEntityName : WideString, const ADatafileType : WideString, AUseIntAndDBLibrary : Boolean) : WideString;
function FindDatafileEntitySourceDatafilePathEx(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADatafileEntityName : WideString, const ADatafileType : WideString, AUseIntAndDBLibrary : Boolean, AIgnoreNotLoadedLibs : Boolean) : WideString;
function FindDatafileEntitySourceLibraryPath(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADatafileEntityName : WideString, const ADatafileType : WideString) : WideString;
function FindDatafileInStandardLibs(ADatafileEntityName : WideString, ADatafileType : WideString, ADatafileLocation : WideString, ForComponentInstance : Boolean, var FoundInLibraryPath : WideString) : WideString;
function FindDeviceSheetByFileName(const AFileName : WideString, out ADesignItemID : WideString, out ALibraryIdentifier : WideString) : Boolean;
function FindLibraryInformation(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString, out ALibraryPath : WideString, out ADBTableName : WideString) : Boolean;
function FindModelLibraryPath(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString, const AModelName : WideString, const AModelType : WideString) : WideString;
function FindModelLibraryPathEx(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString, const AModelName : WideString, const AModelType : WideString, AIgnoreNotLoadedLibs : Boolean) : WideString;
function GetAllParametersFromSourceLib(ALibraryPath : WideString) : WideString;
function GetAvailableDBLibDocAtPath(ALibraryPath : WideString) : IDatabaseLibDocument;
function GetCachedFullFilePathFromExplicitFileName(ARepositoryURL : WideString, AExplicitFileName : WideString, var ACachedFileName : WideString) : Boolean;
function GetComponentCount(LibraryPath : WideString) : Integer;
function GetComponentDatafileLocation(DatafileIndex : Integer, AModelName : WideString, AModelType : WideString, AComponentName : WideString, AComponentLibraryName : WideString, var FoundInLibraryPath : WideString) : WideString;
function GetComponentLocation(ALibraryName : WideString, AComponentName : WideString, var FoundInLibraryPath : WideString) : WideString;
function GetComponentLocationFromDatabase(ALibraryName : WideString, ATableName : WideString, ADatabaseKeys : WideString, var FoundInLibraryPath : WideString) : WideString;
function GetComponentName(LibraryPath : WideString, ComponentIndex : Integer) : WideString;
function GetComponentPlacementParameters(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString) : WideString;
function GetDatabaseDatafileLocation(ADatafileIndex : Integer, AModelName : WideString, AModelType : WideString, AComponentKeys : WideString, ATableName : WideString, ADatabaseLibraryName : WideString, var FoundInLibraryPath : WideString) : WideString;
function GetDatabaseModelFullLibPath(const ADatabaseLibraryPath : WideString, const ALibPath : WideString, const AModelName : WideString, const AModelType : WideString) : WideString;
function GetDatafileEntityCount(LibraryPath : WideString, ComponentIndex : Integer, ModelIndex : Integer) : Integer;
function GetDatafilePath(LibraryPath : WideString, ComponentIndex : Integer, ModelIndex : Integer, DatafileIndex : Integer) : WideString;
function GetFirstLibraryFullPathForLibRef(ADirectory : WideString, ALibRef : WideString, AExtension : WideString) : WideString;
function GetLifeCycleState(ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString) : WideString;
function GetModel(LibraryPath : WideString, ComponentIndex : Integer, ModelIndex : Integer) : IModel;
function GetModelCount(LibraryPath : WideString, ComponentIndex : Integer) : Integer;
function GetModelName(LibraryPath : WideString, ComponentIndex : Integer, ModelIndex : Integer) : WideString;
function GetModelType(LibraryPath : WideString, ComponentIndex : Integer, ModelIndex : Integer) : IModelType;
function GetOrderedRevisionList(const ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const ADesignItemID : WideString, out ACommaTextList : WideString) : Boolean;
function GetParameterCount(LibraryPath : WideString, ComponentIndex : Integer) : Integer;
function GetParameterName(LibraryPath : WideString, ComponentIndex : Integer, ParameterIndex : Integer) : WideString;
function GetParametersForDBComponent(ALibraryName : WideString, ATableName : WideString, ADatabaseKeys : WideString) : WideString;
function GetParameterValue(LibraryPath : WideString, ComponentIndex : Integer, ParameterIndex : Integer) : WideString;
function GetSchLibPathForDBComponent(ALibraryPath : WideString, ATableName : WideString, ADatabaseKeys : WideString) : WideString;
function GetSchLibRefForDBComponent(ALibraryPath : WideString, ATableName : WideString, ADatabaseKeys : WideString) : WideString;
function GetWorkingFileNameFromCacheFileName(ACacheFileName : WideString) : WideString;
function InstalledLibraryCount : Integer;
function InstalledLibraryPath(AnIndex : Integer) : WideString;
procedure InstallLibrary(ALibraryPath : WideString);
function IsParameterDatabaseKey(ALibraryPath : WideString, ADatabaseTableName : WideString, AParameterName : WideString) : Boolean;
procedure MakeCurrentProject(AProject : IProject);
function ModelCount(AComponentName : WideString, AComponentLibraryName : WideString, AModelType : WideString) : Integer;
function ModelName(AComponentName : WideString, AComponentLibraryName : WideString, AModelType : WideString, AnIndex : Integer) : WideString;
function ParseDatabaseKeys(AKeys : WideString, ADelimiter : WideString) : WideString;
function PlaceLibraryComponent(ALibReference : PWideChar, ALibraryPath : PWideChar, Parameters : PWideChar) : Boolean;
procedure UninstallLibrary(ALibraryPath : WideString);
procedure UpdateCachedFileIfNecessary(ACachedLibraryPath : WideString);

## IIntegratedLibraryProject (278 members)
function DM_AddAsDeviceSheet(const ADocumentPath : WideString) : IDocument;
function DM_AddConfiguration(Configuration : WideString) : IConfiguration;
procedure DM_AddConfigurationParameters(Configuration : WideString);
procedure DM_AddConfigurationParameters_Physical(Configuration : WideString);
procedure DM_AddControlPanel(Filename : WideString);
procedure DM_AddDeviceSheetFolder(FolderPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddGeneratedDocument(Filename : WideString);
procedure DM_AddMissingAutoCrossRefs;
procedure DM_AddOrSetUniqueIdMapping(const ASchHandle : WideString, const AUniqueIdMapping : WideString);
procedure DM_AddParameter(AName : WideString, AValue : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AddProjectVariant : IProjectVariant;
procedure DM_AddSearchPath(SearchPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddSourceDocument(Filename : WideString);
procedure DM_AddSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_AddVirtualDocument(const APath : WideString);
procedure DM_ApplyChangesFromSystemDataModel;
function DM_AvailableDatabaseLinks : Boolean;
procedure DM_BeginUpdate;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateFormula(const DMObject : IDMObject, const AFormula : WideString, ForComponentVariation : Boolean, const ProjectVariant : IProjectVariant, const Variations : ISafeInterfaceList) : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChannelDesignatorFormat : WideString;
function DM_ChannelRoomLevelSeperator : WideString;
function DM_ChannelRoomNamingStyle : TChannelRoomNamingStyle;
procedure DM_ClearAllNetColors;
procedure DM_ClearSchematicObjectsErrorFields(const SchematicId : WideString);
procedure DM_ClearViolations;
function DM_Compile : LongBool;
function DM_CompileEx(All : LongBool, var Cancelled : LongBool) : LongBool;
function DM_CompileProjectOrDocument(ADocument : IDocument) : Boolean;
function DM_ComponentMappings(AnImplementationDocument : WideString) : IComponentMappings;
function DM_ConfigurationCount : Integer;
function DM_Configurations(Index : Integer) : IConfiguration;
function DM_CrossRefCrossSheets : Boolean;
function DM_CrossRefLocationStyle : TCrossRefLocationStyle;
function DM_CrossRefPorts : TCrossRefPorts;
function DM_CrossRefSheetEntries : Boolean;
function DM_CrossRefSheetStyle : TCrossRefSheetStyle;
function DM_CurrentProjectVariant : IProjectVariant;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DataModel : IUnifiedDataModel;
function DM_DeviceSheetFolderCount : Integer;
function DM_DeviceSheetFolders(Index : Integer) : IDeviceSheetFolder;
procedure DM_DeviceSheetRemoved(const Filename : WideString);
function DM_DiffPairSuffixCount : Integer;
procedure DM_DiffPairSuffixes(Index : Integer, var Positive : WideString, var Negative : WideString);
procedure DM_DisableOnlineSynchronization(AUpdateParameters : Boolean);
procedure DM_DoCrossProbeBase;
procedure DM_DoCrossSelection;
function DM_DocumentBackups : IDocumentBackups;
function DM_DocumentClassGenerationOptions(const ADocumentPath : WideString) : IDocumentClassGenerationOptions;
function DM_DocumentFlattened : IDocument;
function DM_DocumentIsGenerated(const ADocumentFileName : WideString) : Boolean;
function DM_EditConfigurations : LongBool;
function DM_EditOptions(DefaultPage : WideString) : LongBool;
procedure DM_EndUpdate;
procedure DM_EnsureAllCachedManagedOutputJobs;
procedure DM_EnsureStandardConfigurations;
function DM_ErrorLevels(AErrorKind : TErrorKind) : TErrorLevel;
procedure DM_Export_ToFile(const AFileName : WideString);
function DM_FileLessItemGUID : WideString;
function DM_FileLessVaultGUID : WideString;
function DM_FindProjectVariant(ADescription : WideString) : IProjectVariant;
procedure DM_FixDesignatorAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ALogicalDesignator : WideString, ARemoveOriginal : Boolean);
procedure DM_FixSheetNumberAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ADocumentFileName : WideString, ARemoveOriginal : Boolean);
procedure DM_FixVariationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const APhysicalDesignator : WideString, const AProjectVariantUniqueId : WideString, const AProjectVariantDescription : WideString, ARemoveOriginal : Boolean);
procedure DM_ForceIncludeRequiredOutJobs(const AConfigurationManager : IDMS_ConfigurationManager, const AVaultGUID : WideString);
function DM_FSMCodingStyle : TFSMCodingStyle_DropDownList;
function DM_FSMEncodingStyle : TFSMEncodingStyle_DropDownList;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GeneratedDocumentCount : Integer;
function DM_GeneratedDocuments(Index : Integer) : IDocument;
procedure DM_GenerateSystemDataModel;
function DM_GetAllowPortNetNames : Boolean;
function DM_GetAllowSheetEntryNetNames : Boolean;
function DM_GetAnnotationManager : IAnnotationManager;
function DM_GetAnnotationOptions : IAnnotateOptions;
function DM_GetAppendSheetNumberToLocalNets : Boolean;
function DM_GetAutomaticSheetsNumbers : IAutomaticSheetsNumbers;
function DM_GetConfigurationByName(Configuration : WideString) : IConfiguration;
function DM_GetDefaultConfiguration : IConfiguration;
function DM_GetDefaultConfigurationName : WideString;
function DM_GetDefaultPcbType : WideString;
function DM_GetDocumentByDocumentId(const ADocumentId : WideString) : IDocument;
function DM_GetDocumentFromName(DocumentName : WideString) : IDocument;
function DM_GetDocumentFromPath(DocumentPath : WideString) : IDocument;
function DM_GetECOInterface : IECO;
function DM_GetHasWriteAccessAsync : Boolean;
function DM_GetIncludeDesignInRelease : Boolean;
function DM_GetIsActiveOnlineSynchronization : Boolean;
function DM_GetLinkedManagedProjectGUID : WideString;
function DM_GetNetColorByName(const ANetName : WideString) : TColor;
function DM_GetNetInfosToExportCount : Integer;
function DM_GetNetInfoToExport(AIndex : Integer) : WideString;
function DM_GetNotificationService : IEDMS_NotificationService;
function DM_GetOpenOutputs : Boolean;
function DM_GetOrCreateLibraryPart(const AComponentLibraryLink : IComponentLibraryLink) : IPart;
function DM_GetOriginalDocumentFromPath(const ADocumentPath : WideString) : IDocument;
function DM_GetOutputPath : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPinSwapBy_Netlabel : Boolean;
function DM_GetPinSwapBy_Pin : Boolean;
function DM_GetProjectClassGenerationOptions : IProjectClassGenerationOptions;
function DM_GetRelativeOutputPath : WideString;
function DM_GetReleaseFolderPath : WideString;
function DM_GetReleaseMode : TProjectReleaseMode;
function DM_GetReleaseNamings : WideString;
function DM_GetReleaseNamingTemplates : WideString;
function DM_GetReleaseVaultGUID : WideString;
function DM_GetReleaseZipPath : WideString;
function DM_GetReportFactory : IReportFactory;
function DM_GetRequiredCapabilities(ACapabilities : ICapabilityList) : Boolean;
function DM_GetScrapDocument(DocumentPath : WideString) : IDocument;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTemplateLink : WideString;
function DM_GetTimeStampedOutputFolder : Boolean;
function DM_GetTopLevelDocumentStructure : IDocumentStructure;
function DM_GetVariantSchLibrary : WideString;
function DM_GetVirtualParametersManager : IVirtualParametersManager;
function DM_GetWebURL(const APage : WideString, const AOpenedFrom : WideString, AIncludeAuthToken : Boolean) : WideString;
function DM_GlobalPreferencesRevisionGUID : WideString;
function DM_GlobalPreferencesVaultGUID : WideString;
function DM_HierarchyMode : TFlattenMode;
function DM_HierarchyModeForCompile : TFlattenMode;
function DM_ImageIndex : Integer;
function DM_InCompilation : Boolean;
function DM_IndexOfSourceDocument(Filename : WideString) : Integer;
function DM_InitializeOutputPath(AnOutputType : WideString) : WideString;
function DM_IsActive : Boolean;
function DM_IsConnectiveSelectedNow(AConnective : IDMObject) : Boolean;
function DM_IsCrossRefAddedToProject : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFileLessClone : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsManagedDocument(ADocument : IDocument) : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsReuseBlock : Boolean;
function DM_IsSharedWithMe : Boolean;
function DM_IsSolution : Boolean;
function DM_IsTemplate : Boolean;
function DM_IsVaultFileLessEditing : Boolean;
function DM_IsViewOnly : Boolean;
procedure DM_LoadAllLogicalDocuments;
procedure DM_LoadManagedParameters;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDocumentCount : Integer;
function DM_LogicalDocuments(Index : Integer) : IDocument;
function DM_LogicalDocumentsIsDeviceSheet(const ADocument : IDocument) : Boolean;
function DM_LongDescriptorString : WideString;
function DM_ManagedParameterCount : Integer;
function DM_ManagedParameters(Index : Integer) : IParameter;
function DM_ManagedProjectGUID : WideString;
procedure DM_MoveSourceDocument(Filename : WideString, NewIndex : Integer);
function DM_NeedsCompile : LongBool;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OfflineProjectGUID : WideString;
function DM_OptionsStorage : IOptionsStorage;
function DM_Outputers(Name : WideString) : IOutputer;
function DM_OwnedProjectCount : Integer;
function DM_OwnedProjects(Index : Integer) : IProject;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentProject : IProject;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDocumentCount : Integer;
function DM_PhysicalDocuments(Index : Integer) : IDocument;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrimaryImplementationDocument : IDocument;
function DM_ProjectContainsOutputJobs : Boolean;
function DM_ProjectFileName : WideString;
function DM_ProjectFullPath : WideString;
procedure DM_ProjectStructureChanged;
function DM_ProjectTemplateLocation : WideString;
procedure DM_ProjectVariantChanged;
function DM_ProjectVariantCount : Integer;
function DM_ProjectVariants(Index : Integer) : IProjectVariant;
procedure DM_RefreshHarnessDefinitions;
procedure DM_RefreshInWorkspaceForm;
function DM_ReleaseProjectCopy : IProject;
function DM_RemoveAllConfigurations : Boolean;
function DM_RemoveConfigurationByName(Configuration : WideString) : Boolean;
procedure DM_RemoveHarnessFile(const HarnessFileFullPath : WideString);
procedure DM_RemoveParameter(const AParameter : IParameter);
procedure DM_RemoveParameterByName(const AParameterName : WideString);
procedure DM_RemoveProjectVariant(Index : Integer);
procedure DM_RemoveSourceDocument(Filename : WideString);
procedure DM_RemoveSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_RemoveVirtualDocument(const APath : WideString);
function DM_ReportSuppressedErrorsInMessages : Boolean;
procedure DM_ResetLastCompileTimeForAllDocuments;
procedure DM_ResetReleaseProject;
function DM_ResumeContinuousCompilation : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SearchPathCount : Integer;
function DM_SearchPaths(Index : Integer) : ISearchPath;
function DM_SecondaryCrossProbeString : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetAllowPortNetNames(AAllow : Boolean);
procedure DM_SetAllowSheetEntryNetNames(AAllow : Boolean);
procedure DM_SetAppendSheetNumberToLocalNets(AAppend : Boolean);
procedure DM_SetAsCurrentProject;
procedure DM_SetConnectedNetsColor(const ANet : INet, AColor : TColor);
procedure DM_SetCurrentProjectVariant(AProjVariant : IProjectVariant);
procedure DM_SetCurrentProjectVariantSilent(AProjectVariant : IProjectVariant);
procedure DM_SetDefaultConfigurationName(Configuration : WideString);
procedure DM_SetDefaultPcbType(PcbType : WideString);
procedure DM_SetErrorLevels(AErrorKind : TErrorKind, AErrorLevel : TErrorLevel);
procedure DM_SetGlobalPreferencesRevisionGUID(AValue : WideString);
procedure DM_SetGlobalPreferencesVaultGUID(AValue : WideString);
procedure DM_SetHierarchyMode(AFlatten : TFlattenMode);
procedure DM_SetIncludeDesignInRelease(AValue : Boolean);
procedure DM_SetLinkedManagedProjectGUID(const AValue : WideString);
procedure DM_SetManagedProjectGUID(const AValue : WideString);
procedure DM_SetModified;
procedure DM_SetNetColorByName(const ANetName : WideString, AColor : TColor);
procedure DM_SetOfflineProjectGUID(const AValue : WideString);
procedure DM_SetOpenOutputs(AValue : Boolean);
procedure DM_SetOutputPath(AnOutputPath : WideString);
procedure DM_SetPinSwapBy_Netlabel(AAllow : Boolean);
procedure DM_SetPinSwapBy_Pin(AAllow : Boolean);
procedure DM_SetRelativeOutputPath(AValue : WideString);
procedure DM_SetReleaseFolderPath(AValue : WideString);
procedure DM_SetReleaseMode(AValue : TProjectReleaseMode);
procedure DM_SetReleaseNamings(const AValue : WideString);
procedure DM_SetReleaseNamingTemplates(const AValue : WideString);
procedure DM_SetReleaseProjectCopy(AProject : IProject);
procedure DM_SetReleaseVaultGUID(const Value : WideString);
procedure DM_SetReleaseZipPath(AValue : WideString);
procedure DM_SetTimeStampedOutputFolder(AValue : Boolean);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ShowVariantsDrawingStylesDialog(const AValue : IVariantOption) : IVariantOption;
procedure DM_StartCrossProbing(CtrlDoesSwitch : Boolean);
procedure DM_StartNavigation;
function DM_SuspendContinuousCompilation : Boolean;
function DM_ToDoManager : IToDoManager;
function DM_TopLevelLogicalDocument : IDocument;
function DM_TopLevelPhysicalDocument : IDocument;
function DM_TryToResolveDocumentSpecialString(const AName : WideString, const ADocumentFileName : WideString, out AValue : WideString) : Boolean;
function DM_TryToResolveSpecialString(const AName : WideString, out AValue : WideString) : Boolean;
function DM_UpdateConstraints : LongBool;
procedure DM_UpdateSchObjectErrorFields(const SchHandle : WideString, ErrorKind : TErrorKind, Suppressed : Boolean);
function DM_UserID : WideString;
procedure DM_Validate;
function DM_ValidateManagedOutputJobs : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VariantManager : IVariantManager;
function DM_Vault : IEDMS_Vault;
function DM_VaultGUID : WideString;
function DM_VaultHRID : WideString;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViolationCount : Integer;
function DM_Violations(Index : Integer) : IViolation;
function GetNavigationHistory : INavigationHistory;
property VCSProject : IInterface

## IInterfaceComponentReference (1 members)
function GetComponent : TComponent;

## IInterfaceList (12 members)
property Items[Index: Integer] : IInterface
property Capacity : Integer
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);
procedure Exchange(Index1 : Integer, Index2 : Integer);
function First : IInterface;
function IndexOf(const Item : IInterface) : Integer;
procedure Insert(Index : Integer, const Item : IInterface);
function Last : IInterface;
function Remove(const Item : IInterface) : Integer;
procedure Unlock;

## IInterfaceListEx (13 members)
property Items[Index: Integer] : IInterface
property Capacity : Integer
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);
procedure Exchange(Index1 : Integer, Index2 : Integer);
function First : IInterface;
function GetEnumerator : TInterfaceListEnumerator;
function IndexOf(const Item : IInterface) : Integer;
procedure Insert(Index : Integer, const Item : IInterface);
function Last : IInterface;
function Remove(const Item : IInterface) : Integer;
procedure Unlock;

## IInternalOptionRegistryInteger (3 members)
function WithMaxValue(AValue : Integer) : IInternalOptionRegistryInteger;
function WithMinValue(AValue : Integer) : IInternalOptionRegistryInteger;
function WithRange(AMinValue : Integer, AMaxValue : Integer) : IInternalOptionRegistryInteger;

## IInternalOptions (21 members)
function InDevelopment(const ValueName : WideString) : Boolean;
function IsBetaFeaturesEnabled : Boolean;
function IsDevFeaturesEnabled : Boolean;
function IsOptionInBetaStage(const ValueName : WideString) : Boolean;
function IsReleased(const ValueName : WideString) : Boolean;
function OptionExists(const ValueName : WideString) : Boolean;
function OptionVisible(const ValueName : WideString) : Boolean;
function ReadBoolean(const ValueName : WideString) : LongBool;
function ReadDouble(const ValueName : WideString) : Double;
function ReadFeatureBoolean(const AName : WideString, const ADefaultValue : LongBool) : LongBool;
function ReadFeatureDouble(const AName : WideString, const ADefaultValue : Double) : Double;
function ReadFeatureInteger(const AName : WideString, const ADefaultValue : Integer) : Integer;
function ReadFeatureState(const AName : WideString, const ADefaultValue : TStateOfFeature) : TStateOfFeature;
function ReadFeatureString(const AName : WideString, const ADefaultValue : WideString) : WideString;
function ReadInteger(const ValueName : WideString) : Integer;
function ReadString(const ValueName : WideString) : WideString;
procedure RemoveFeature(const AName : WideString);
procedure WriteBoolean(const ValueName : WideString, Value : LongBool);
procedure WriteDouble(const ValueName : WideString, Value : Double);
procedure WriteInteger(const ValueName : WideString, Value : Integer);
procedure WriteString(const ValueName : WideString, const Value : WideString);

## IInternalOptionsFactory (1 members)
function GetInternalOptions : IInternalOptions;

## IInternalOptionsReader (11 members)
function GetOptionDescription(const ValueName : WideString) : WideString;
function GetOptions : IStrings;
function GetOptionType(const ValueName : WideString) : WideString;
function ReadBoolean(const ValueName : WideString) : LongBool;
function ReadDefaultBoolean(const ValueName : WideString) : LongBool;
function ReadDefaultDouble(const ValueName : WideString) : Double;
function ReadDefaultInteger(const ValueName : WideString) : Integer;
function ReadDefaultString(const ValueName : WideString) : WideString;
function ReadDouble(const ValueName : WideString) : Double;
function ReadInteger(const ValueName : WideString) : Integer;
function ReadString(const ValueName : WideString) : WideString;

## IInternalOptionsWriter (4 members)
procedure WriteBoolean(const ValueName : WideString, Value : LongBool);
procedure WriteDouble(const ValueName : WideString, Value : Double);
procedure WriteInteger(const ValueName : WideString, Value : Integer);
procedure WriteString(const ValueName : WideString, const Value : WideString);

## IIOSignal (5 members)
procedure ForceGetSetValue;
function GetSignalInstrument : ISignalInstrument;
property Name : WideString
property Value : TSignalValueType
property Width : Integer

## IItemManagerFactory (1 members)
procedure RunItemManagerSilently(const AProject : IProject, const ADocument : IDocument, const AParameters : WideString);

## IItemParameter (3 members)
property Name : WideString
property ParameterUnit : WideString
property Value : WideString

## IJlinkDriver (1 members)
function GetJlinkHandle : Cardinal;

## IJlinkPort (19 members)
property BoardMask_TCK : Integer
property BoardMask_TDI : Integer
property BoardMask_TDO : Integer
property BoardMask_TMS : Integer
procedure EPM_CyclePort;
function GetGPIOChannel : IGPIOChannel;
function GetJlinkDriver : IJlinkDriver;
function GetJTagChannel_Board : IJTagChannel;
function GetJTagChannel_Hard : IJTagChannel;
function GetJTagChannel_Soft : IJTagChannel;
function GetLongDescription : WideString;
function GetShortDescription : WideString;
function GetSPIChannel : ISPIChannel;
function GetSPROMChannel : ISPROMChannel;
function GetUniqueId : WideString;
function InitializeJTagPort : LongBool;
function IsConfigured : LongBool;
function IsConnected : LongBool;
function Scan(ForceFullScan : Boolean) : LongBool;

## IJTagChannel (36 members)
procedure AddJtagDelay(AValue : Byte);
procedure CloseChannel;
function CurrentTapState : TTapState;
function DeviceOnline(ADeviceIndex : Integer) : LongBool;
procedure FlushJTAGBuffer;
procedure ForceToState(AState : TTapState);
function GetChainLength : Integer;
function GetDevice(AIndex : Integer) : IJTagDevice;
function GetDeviceCount : Integer;
function GetOwnerJtagPort : IJtagPort;
function GetStringForDevicesOnChain : WideString;
procedure LoadDR_In(AData : Cardinal, ABitCount : Integer, ADeviceIndex : Integer);
function LoadDR_InOut(AData : Cardinal, ABitCount : Integer, ADeviceIndex : Integer) : Cardinal;
function LoadDR_Out(ARepeatBit : Cardinal, ABitCount : Integer, ADeviceIndex : Integer) : WideString;
procedure LoadIR_In(AInstruction : Cardinal, ADeviceIndex : Integer);
function LoadIR_InOut(AInstruction : Cardinal, ADeviceIndex : Integer) : Cardinal;
function LoadIR_Out(ARepeatBit : Cardinal, ADeviceIndex : Integer) : WideString;
procedure MoveFromStateToState(AStateFrom : TTapState, AStateTo : TTapState);
procedure MoveToState(AState : TTapState);
procedure NextState(ATMS : Integer);
function OpenChannel : LongBool;
procedure PlaceAllDevicesInBypass;
procedure RescanChain;
procedure ResetTAP;
procedure ScanChain;
procedure SelectChain(AMode : TSelectMode);
function ShiftDR_Out(ARepeatBit : Cardinal, ABitCount : Integer, ADeviceIndex : Integer) : WideString;
procedure ShiftDR_String_In(AData : WideString, ADeviceIndex : Integer);
function ShiftDR_String_InOut(AData : WideString, ADeviceIndex : Integer) : WideString;
procedure ShiftDR_Word_In(AData : Cardinal, ABitCount : Integer, ADeviceIndex : Integer);
function ShiftDR_Word_InOut(AData : Cardinal, ABitCount : Integer, ADeviceIndex : Integer) : Cardinal;
function ShiftIR_Out(ARepeatBit : Cardinal, ADeviceIndex : Integer) : WideString;
procedure ShiftIR_String_In(AInstruction : WideString, ADeviceIndex : Integer);
function ShiftIR_String_InOut(AInstruction : WideString, ADeviceIndex : Integer) : WideString;
procedure ShiftIR_Word_In(AInstruction : Cardinal, ADeviceIndex : Integer);
function ShiftIR_Word_InOut(AInstruction : Cardinal, ADeviceIndex : Integer) : Cardinal;

## IJTagDevice (23 members)
function GetBoundaryCell(AIndex : Integer) : IBoundaryCell;
function GetBoundaryCellCount : Integer;
function GetBoundaryLength : Integer;
function GetBSDL : IBSDLEntity;
function GetCurrentDeviceName : WideString;
function GetDeviceInformation : IDeviceInformation;
function GetFilename : WideString;
function GetIdCodeFromBSDL : Cardinal;
function GetIdCodeFromDevice : Cardinal;
function GetIndex : Integer;
function GetInstructionLength : Integer;
function GetInstructionOpcode(AIndex : Integer) : IInstructionOpCode;
function GetInstructionOpcodeCount : Integer;
function GetPin(AIndex : Integer) : IScanPin;
function GetPinCount : Integer;
function GetPinMapping(AIndex : Integer) : IPinMapping;
function GetPinMappingCount : Integer;
function GetRegisterAssociation(AIndex : Integer) : IRegisterAssociation;
function GetRegisterAssociationCount : Integer;
function ReadPinStatesFromChain(ABSDLEntity : IBSDLEntity) : LongBool;
procedure ReloadBSDL;
procedure SetIndex(AIndex : Integer);
function UpdateWithPreferredDeviceName(ANewName : WideString) : LongBool;

## IJtagParallelPort (19 members)
property BoardMask_TCK : Integer
property BoardMask_TDI : Integer
property BoardMask_TDO : Integer
property BoardMask_TMS : Integer
procedure EPM_CyclePort;
function GetGPIOChannel : IGPIOChannel;
function GetJTagChannel_Board : IJTagChannel;
function GetJTagChannel_Hard : IJTagChannel;
function GetJTagChannel_Soft : IJTagChannel;
function GetLongDescription : WideString;
function GetParallelPort : IParallelPort;
function GetShortDescription : WideString;
function GetSPIChannel : ISPIChannel;
function GetSPROMChannel : ISPROMChannel;
function GetUniqueId : WideString;
function InitializeJTagPort : LongBool;
function IsConfigured : LongBool;
function IsConnected : LongBool;
function Scan(ForceFullScan : Boolean) : LongBool;

## IJtagParallelPort_ChannelMapping (4 members)
property Mask_TCK : Integer
property Mask_TDI : Integer
property Mask_TDO : Integer
property Mask_TMS : Integer

## IJtagPort (18 members)
property BoardMask_TCK : Integer
property BoardMask_TDI : Integer
property BoardMask_TDO : Integer
property BoardMask_TMS : Integer
procedure EPM_CyclePort;
function GetGPIOChannel : IGPIOChannel;
function GetJTagChannel_Board : IJTagChannel;
function GetJTagChannel_Hard : IJTagChannel;
function GetJTagChannel_Soft : IJTagChannel;
function GetLongDescription : WideString;
function GetShortDescription : WideString;
function GetSPIChannel : ISPIChannel;
function GetSPROMChannel : ISPROMChannel;
function GetUniqueId : WideString;
function InitializeJTagPort : LongBool;
function IsConfigured : LongBool;
function IsConnected : LongBool;
function Scan(ForceFullScan : Boolean) : LongBool;

## IJtagProxyPort (18 members)
property BoardMask_TCK : Integer
property BoardMask_TDI : Integer
property BoardMask_TDO : Integer
property BoardMask_TMS : Integer
procedure EPM_CyclePort;
function GetGPIOChannel : IGPIOChannel;
function GetJTagChannel_Board : IJTagChannel;
function GetJTagChannel_Hard : IJTagChannel;
function GetJTagChannel_Soft : IJTagChannel;
function GetLongDescription : WideString;
function GetShortDescription : WideString;
function GetSPIChannel : ISPIChannel;
function GetSPROMChannel : ISPROMChannel;
function GetUniqueId : WideString;
function InitializeJTagPort : LongBool;
function IsConfigured : LongBool;
function IsConnected : LongBool;
function Scan(ForceFullScan : Boolean) : LongBool;

## IJtagUsbPort (18 members)
property BoardMask_TCK : Integer
property BoardMask_TDI : Integer
property BoardMask_TDO : Integer
property BoardMask_TMS : Integer
procedure EPM_CyclePort;
function GetGPIOChannel : IGPIOChannel;
function GetJTagChannel_Board : IJTagChannel;
function GetJTagChannel_Hard : IJTagChannel;
function GetJTagChannel_Soft : IJTagChannel;
function GetLongDescription : WideString;
function GetShortDescription : WideString;
function GetSPIChannel : ISPIChannel;
function GetSPROMChannel : ISPROMChannel;
function GetUniqueId : WideString;
function InitializeJTagPort : LongBool;
function IsConfigured : LongBool;
function IsConnected : LongBool;
function Scan(ForceFullScan : Boolean) : LongBool;

## IKeyComponent (52 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FamilyDescription : WideString;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_Implementation : IKeyComponentImplementation;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PinConfiguration(Index : Integer) : IPinConfiguration;
function DM_PinConfigurationsCount : Integer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_UniqueId : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IKeyComponentImplementation (48 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AssignedKeyComponentId : WideString;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IKeywordHighlight (1 members)
procedure SetKeywords(const ACommaList : WideString);

## ILayerInfo (11 members)
function GetState_CustomProperty(APropertyName : WideString) : WideString;
function GetState_DielectricConstant : WideString;
function GetState_Enabled : Boolean;
function GetState_GUID : WideString;
function GetState_Id : Integer;
function GetState_Material : WideString;
function GetState_Name : WideString;
function GetState_Number : WideString;
function GetState_Thickness : Integer;
function GetState_TypeId : WideString;
function GetState_Weight : WideString;

## ILayersMap (6 members)
property Layer[ALayer: Integer] : TLayer
function ExportMapToString : WideString;
property Hash : Integer
procedure ImportMapFromString(AValue : WideString);
function LayerExists(ALayer : Integer) : Boolean;
function Replicate : ILayersMap;

## ILayerStackDocument (10 members)
procedure ApplyToPcb(const BoardPath : WideString);
procedure CloseDialog;
procedure ComputeImpedance;
function GetDocumentEditor : ILsmSdkDocumentEditor;
procedure LoadFromFile(const Path : WideString, const Format : TLayerStackDocumentFormat);
procedure LoadFromPcb(const BoardPath : WideString);
procedure SaveToFile(const Path : WideString, const Format : TLayerStackDocumentFormat);
function SerializeToString(const Format : TLayerStackDocumentFormat) : WideString;
procedure ShowDialog;
property Stackup : ILsmSdkStackup

## ILayerStackFeatureInfo (4 members)
function GetState_GUID : WideString;
function GetState_IsDefault : Boolean;
function GetState_IsHidden : Boolean;
function GetState_Name : WideString;

## ILayerStackInfo (9 members)
function GetDrillPairCount : Integer;
function GetDrillPairInfo(const ADrillNum : Integer) : IDrillPairInfo;
function GetLayerInfo(const ALayerNum : Integer) : ILayerInfo;
function GetLayerPropertiesCount : Integer;
function GetLayerProperty(APropertyNum : Integer) : WideString;
function GetLayersCount : Integer;
function GetState_Name : WideString;
function GetState_TotalThickness : Integer;
function IsLayerInLayerStack(const ALayerInfo : ILayerInfo) : Boolean;

## ILayerStackManager (5 members)
function CreateDocument : ILayerStackDocument;
function CreateLayerStackPainterView : IPCB_LayerStackupDocumentPainterView;
function GetLayerStackProvider(const ABoard : IPCB_Board) : ILayerStackProvider;
function OpenDocumentFromPcb(const ABoard : IPCB_Board) : ILayerStackDocument;
procedure RemoveLayerStackProvider(const ABoard : IPCB_Board);

## ILayerStackProvider (10 members)
procedure ExportLayerStackToImage(const AHeight : Integer, const APath : WideString, const ASettings : IBoardStackReportSettings);
procedure ExportToFile(const APath : WideString, const AFormat : TLayerStackDocumentFormat, ImperialPrecision : Integer, MetricPrecision : Integer);
function ExportToString(const AFormat : TLayerStackDocumentFormat, ImperialPrecision : Integer, MetricPrecision : Integer) : WideString;
procedure ExportToXLSX(const APath : WideString, const ASettings : IBoardStackReportSettings);
function GetDefaultStack : ILayerStackInfo;
function GetLayerStackFeatures(AFeatureNum : Integer) : ILayerStackFeatureInfo;
function GetLayerStackFeaturesCount : Integer;
function GetLayerStackInfo(AStackNum : Integer) : ILayerStackInfo;
function GetLayerStacksCount : Integer;
procedure PopulateLayerStackColumns(const ASettings : IBoardStackReportSettings);

## ILayerStackServerDocument (1 members)
procedure ComputeImpedance;

## ILayerStackServerDocumentHelper (4 members)
procedure AddToDxpWorkspace;
function GetBoard : IPCB_Board;
function GetParentPcbDocument : IServerDocument;
procedure RemoveDocumentFromWorkspace;

## ILayerValueIterator (11 members)
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
property Value : Pointer

## ILayoutCovering (49 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DesignatorLocationX : Integer;
function DM_DesignatorLocationY : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ILayoutLabel (49 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DesignatorLocationX : Integer;
function DM_DesignatorLocationY : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ILibCompFullInfoReader (8 members)
property ComponentInfos[I: Integer] : IComponentInfo
property ComponentFullInfos[I: Integer] : IComponentFullInfo
property FileName : WideString
function I_ObjectAddress : Pointer;
function IsSupportFullLoad : Boolean;
function NumComponentInfos : Integer;
procedure ReadAllComponentFullInfo;
procedure ReadAllComponentInfo;

## ILibCompInfoReader (5 members)
property ComponentInfos[I: Integer] : IComponentInfo
property FileName : WideString
function I_ObjectAddress : Pointer;
function NumComponentInfos : Integer;
procedure ReadAllComponentInfo;

## ILibObjectIterator (2 members)
function GetFirstLibObject(out AInfo : ILibObjectReportInfo) : Boolean;
function GetNextLibObject(out AInfo : ILibObjectReportInfo) : Boolean;

## ILibObjectReportInfo (7 members)
function GetChildrenIterator : ILibObjectIterator;
function GetChildrenTitle : WideString;
function GetParameterCount : Integer;
function GetParameterName(AIndex : Integer) : WideString;
function GetParameterValue(AIndex : Integer) : WideString;
function GetTableCount : Integer;
function GetTableInfo(AIndex : Integer) : IReportTableInfo;

## ILibObjectReportPaint (3 members)
function GetPreviewCount : Integer;
function GetPreviewName(AIndex : Integer) : WideString;
procedure PaintPreviewToMetafile(AIndex : Integer, const AFileName : WideString, APaintColorMode : TPaintColorMode, APaintScaleMode : TPaintScaleMode);

## ILibraryComponent (4 members)
property LibIdentifierKind : TLibIdentifierKind
property LibraryIdentifier : WideString
property LibraryName : WideString
property LibReference : WideString

## ILibraryComponentData (17 members)
function CanEditPCBModels : Boolean;
function CanEditSCHSymbol : Boolean;
procedure EditPCBModel(const AModelGuid : WideString);
procedure EditSCHSymbol;
function GetModel(const AIndex : Integer) : ILibraryModelData;
function GetParameter(const AIndex : Integer) : ILibraryParameterData;
function GetParametersAsString : WideString;
function GetPart(const AIndex : Integer) : ILibraryPartData;
function GUID : WideString;
function IsLoaded : Boolean;
procedure Load;
function ModelCount : Integer;
function Name : WideString;
function ParamCount : Integer;
function PartCount : Integer;
function SymbolName : WideString;
function SymbolPath : WideString;

## ILibraryData (12 members)
function Activated : Boolean;
function FilePath : WideString;
function FindComponentByGUID(const AGUID : WideString) : ILibraryComponentData;
function First : ILibraryComponentData;
function GetKeyField(const AIndex : Integer) : WideString;
function GetVisibleColumns : WideString;
function GUID : WideString;
function KeyFieldCount : Integer;
function Kind : TLibraryType;
function Name : WideString;
function Next : ILibraryComponentData;
function SubLibraryList : ISubLibraryDataList;

## ILibraryDataReader (18 members)
function AdvancedSearchComponents(var ASearchType : WideString, const AInterruptor : IInterruptor, const AEventHandler : ISearchLibraryEventHandler) : Boolean;
function Count : Integer;
function CreateLibraryLoadContext : ILibraryLoadContext;
function ExportVFSFile(const ASourceFilePath : WideString, const ADestinationFilePath : WideString) : Boolean;
function Get(const AIndex : Integer) : ILibraryData;
function GetComponentByDesignItemID(const ALibraryName : WideString, const ASubLibraryName : WideString, const ADesignItemID : WideString, AForceLoadLibrary : LongBool) : ILibraryComponentData;
function GetComponentSymbolExtParameters(const ALibraryGUID : WideString, const AComponentGUID : WideString) : WideString;
function GetMetadata(const AIndex : Integer) : ILibraryMetadata;
function GetMetadataByGUID(const AGUID : WideString) : ILibraryMetadata;
function GetSpiceComponentPosition(const ALibraryGUID : WideString, const AComponentName : WideString, out AFileName : WideString, out APrevComponentPosition : Int64, out APosition : Int64) : Boolean;
function IsVFSFile(const AFilePath : WideString) : Boolean;
function LoadLibrary(const AFullFileName : WideString) : ILibraryData;
function LoadLibraryWithContext(const AFullFileName : WideString, AAllowEmptyParameters : Boolean, const AContext : ILibraryLoadContext) : ILibraryData;
procedure Refresh;
function RegisterLibrary(const AFullFileName : WideString) : ILibraryData;
function SearchComponents(const ALibraryGUIDs : WideString, const AText : WideString) : ISearchComponentResultList;
function SearchComponentsEx(const ALibraryGUIDs : WideString, const AText : WideString, const AParameters : WideString) : ISearchComponentResultList;
procedure UnregisterLibrary(const AGUID : WideString);

## ILibraryLoadContext (3 members)
procedure Clear;
function FindEntityDatafilePath(const ASourceLibraryPath : WideString, const ASourceComponentName : WideString, ALibIdentifierKind : TLibIdentifierKind, const ALibraryIdentifier : WideString, const AEntityName : WideString, const ADatafileType : WideString) : WideString;
function RegisterLibrary(const AFilePath : WideString) : Boolean;

## ILibraryMetadata (7 members)
function Activated : Boolean;
function FilePath : WideString;
function GetKeyField(const AIndex : Integer) : WideString;
function GUID : WideString;
function KeyFieldCount : Integer;
function Kind : TLibraryType;
function Name : WideString;

## ILibraryModelData (12 members)
function Description : WideString;
function DisplayFilePath : WideString;
function ExportVFSDataToFile(const AFilePath : WideString) : Boolean;
function FilePath : WideString;
function GUID : WideString;
function IsDefault : Boolean;
function IsVFSFile : Boolean;
function Kind : WideString;
function Location : WideString;
function LocationType : TLibIdentifierKind;
function Name : WideString;
function Parameters : WideString;

## ILibraryParameterData (3 members)
function IsVisible : Boolean;
function Name : WideString;
function Value : WideString;

## ILibraryPartData (1 members)
function Name : WideString;

## ILibraryReportExternalSettings (15 members)
property Caption : WideString
property DrawPreviews : Boolean
procedure FocusFirstTabStop;
procedure GetBounds(var ALeft : Integer, var ATop : Integer, var AWidth : Integer, var AHeight : Integer);
function GetLibraryType : WideString;
procedure GetStateControls;
property Handle : HWND
procedure Hide;
procedure ParentWindowCreated;
procedure ParentWindowDestroyed;
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetFocus;
procedure SetParentWindow(const ParentWindow : IExternalFormHolder);
procedure SetStateControls;
procedure Show;

## ILibraryReportInfo (7 members)
function GetComponentCount : Integer;
function GetComponentList : WideString;
function GetLibraryIterator : ILibObjectIterator;
function GetParameterCount : Integer;
function GetParameterName(AIndex : Integer) : WideString;
function GetParameterValue(AIndex : Integer) : WideString;
function GetTitle : WideString;

## ILibraryServer (5 members)
function GetDataReader : ILibraryDataReader;
function GetDragDropLibraryComponent(const AParams : WideString, const AModelKind : WideString) : IDragDropLibraryComponent;
function GetDragDropLibraryComponent2(const ASymbolParams : WideString, const AFootprintParams : WideString) : IDragDropLibraryComponent;
function GetDragDropOfflineVaultComponent : IDragDropOfflineVaultComponent;
function GetDragDropVaultComponent(const AVaultGUID : WideString, const AItemGUID : WideString, const AItemHRID : WideString, const ARevisionGUID : WideString, const ARevisionHRID : WideString, const AContentTypeGUID : WideString, ASelectedItems : IInterfaceList, ASelectedRevisions : IInterfaceList) : IDragDropVaultComponent;

## ILibraryUpdatePartOptions (20 members)
property CreatedModelChanges : Boolean
property CreatedParamChanges : Boolean
property DeviceSheet : ISheetSymbol
property DoGraphics : Boolean
property DoModels : Boolean
property DoParameters : Boolean
property DoUpdate : Boolean
property FullReplace : Boolean
property LibraryPart : IPart
property NewDesignItemID : WideString
property NewFootprint : WideString
property NewLibFullIdentifier : WideString
property NewLifeCycleState : WideString
property NewSymbolLibraryPath : WideString
property NewSymbolReference : WideString
property PreserveParameterLocations : Boolean
property PreserveParameterVisibility : Boolean
procedure SetState_Default;
property UpdateDesignatorLock : Boolean
property UpdatePartIDLock : Boolean

## ILibToSVNOption (15 members)
property ConvertDBLib : Boolean
procedure ExportToOptions(const AWriter : IOptionsWriter, const ASection : WideString);
procedure ImportFromOptions(const AReader : IOptionsReader, const ASection : WideString);
property OutputFilePath : WideString
property OverwriteFile : TOption_OverwriteFile
property RemoveModel : Boolean
property RemoveParameter : Boolean
property SVNBaseRepository : WideString
property SVNLocation : WideString
property SVNMethod : WideString
property SVNPCBFolder : WideString
property SVNPortDefault : Boolean
property SVNPortNumber : WideString
property SVNSCHFolder : WideString
property SVNServer : WideString

## ILicense (4 members)
function CanbeUsedWithThisBuild : LongBool;
property CanRoam : LongBool
property LicenseType : Integer
property SerialNumber : Int64

## ILicenseExpirationInfo (2 members)
property DaysLeft : Integer
property RightName : WideString

## ILicenseManager (11 members)
procedure ChangeToNetwork(const ServerName : WideString);
procedure ChangeToStandalone;
procedure GetCurrentLicenseInfo(out ALicenseIds : WideString, out ALicenseNames : WideString);
procedure GetLicenses(Licenses : TList);
function IsSubscriptionCurrent : Boolean;
procedure ReleaseLicense(const LicenseFileName : WideString);
procedure ReturnLeasedEVSLicensesOnLogout;
procedure ReturnLeasedLicensesOnLogout;
function SubscriptionExpiryDate : TDateTime;
procedure UseLicense(const LicenseFileName : WideString);
procedure UseLicenseByName(const LicenseName : WideString);

## ILine (52 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_HX : Integer;
function DM_HY : Integer;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredFromHarness : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_LX : Integer;
function DM_LY : Integer;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ILocalSnippet (5 members)
property DataFullFileName : WideString
property Description : WideString
property Kind : TReuseModelKind
property Name : WideString
property PreviewFullFileName : WideString

## ILocalSnippetFolder (8 members)
property SubFolder[AIndex: Integer] : ILocalSnippetFolder
property Snippet[AIndex: Integer] : ILocalSnippet
procedure AddSnippet(const ASnippet : ILocalSnippet);
procedure AddSubFolder(const AFolder : ILocalSnippetFolder);
property Name : WideString
property Path : WideString
property SnippetCount : Integer
property SubFolderCount : Integer

## ILocalSnippetManager (11 members)
property Folder[AIndex: Integer] : ILocalSnippetFolder
function CanPlaceSnippet(const ADataFullFileName : WideString) : Boolean;
function ChooseFolder(const ABasePath : WideString) : WideString;
function ConfigFolders : Boolean;
function CreateSnippet(const AName : WideString, const ADescription : WideString, const APath : WideString) : Boolean;
property DefaultPath : WideString
function DeleteSnippet(const ADataFullFileName : WideString) : Boolean;
function EditSnippet(const ADataFullFileName : WideString, const AName : WideString, const AComment : WideString, const APath : WideString) : Boolean;
property FolderCount : Integer
procedure PlaceSnippet(const ADataFullFileName : WideString, APlaceAsBlock : Boolean);
procedure RefreshFoldersStructure;

## ILogicSimType (18 members)
function Sim_GetArrayLeftBound(Value : Pointer) : Integer;
function Sim_GetArrayRightBound(Value : Pointer) : Integer;
function Sim_GetAsString(Value : Pointer, Radix : TLogicSimRadix) : WideString;
function Sim_GetDynamicTypeSize(Value : Pointer) : Integer;
function Sim_GetElement(Index : Integer, Value : Pointer) : Pointer;
function Sim_GetElementCount(Value : Pointer) : Integer;
function Sim_GetElementName(Index : Integer) : WideString;
function Sim_GetElementString(Index : Integer, Value : Pointer, Radix : TLogicSimRadix) : WideString;
function Sim_GetElementType(Index : Integer, Value : Pointer) : ILogicSimType;
function Sim_GetEnum(Index : Integer) : WideString;
function Sim_GetEnumCount : Integer;
function Sim_GetModelSimString(Value : Pointer) : WideString;
function Sim_GetModelSimStringLength(Value : Pointer) : Integer;
function Sim_GetName : PWideChar;
function Sim_GetStaticTypeSize : Integer;
function Sim_GetTypeID : TLogicSimDataTypeID;
function Sim_IsConstrained : Boolean;
function Sim_IsWaveConstrained : Boolean;

## ILsmSdkDocumentEditor (4 members)
function GetLayerEditor : ILsmSdkLayerEditor;
function GetLayerStackEditor : ILsmSdkLayerStackEditor;
function GetStackupEditor : ILsmSdkStackupEditor;
function GetViaSpanEditor : ILsmSdkViaSpanEditor;

## ILsmSdkDrillSpan (5 members)
property AutoName : WideString
property CustomName : WideString
property DrillSpanType : TLsmSdkDrillSpanType
property Id : WideString
property IsSymmetric : Boolean

## ILsmSdkDrillSpanCollection (3 members)
property ItemsById[AId: WideString] : ILsmSdkDrillSpan
property Items[AIndex: Integer] : ILsmSdkDrillSpan
property Count : Integer

## ILsmSdkImpedanceProfile (6 members)
property AutoName : WideString
property CustomName : WideString
property Id : WideString
property Impedance_ohm : Double
property ImpedanceProfileType : TLsmSdkImpedanceProfileType
property TolerancePercent : Double

## ILsmSdkImpedanceProfileCollection (3 members)
property ItemsById[AId: WideString] : ILsmSdkImpedanceProfile
property Items[AIndex: Integer] : ILsmSdkImpedanceProfile
property Count : Integer

## ILsmSdkLayer (3 members)
property HasPrimitives : Boolean
property IsEnabled : Boolean
property Name : WideString

## ILsmSdkLayer2 (18 members)
property Comment : WideString
property ComponentPlacement : TLsmSdkComponentPlacement
property CopperOrientation : TLsmSdkCopperOrientation
property CoverlayExpansion : TLsmSdkLengthValue
property DielectricConstant : TLsmSdkNullableDouble
function GetState_PositionInStack : Integer;
property HasPrimitives : Boolean
property IsEnabled : Boolean
property LossTangent : TLsmSdkNullableDouble
property MaterialName : WideString
property Name : WideString
property Note : WideString
property ParentStack : ILsmSdkLayerStack
property PullbackDistance : TLsmSdkLengthValue
procedure SetState_IsEnabled(const AValue : Boolean);
procedure SetState_Name(const AValue : WideString);
property Thickness : TLsmSdkLengthValue
property Weight : TLsmSdkMassValue

## ILsmSdkLayerCollection (3 members)
property ItemsById[AId: WideString] : ILsmSdkLayer
property Items[AIndex: Integer] : ILsmSdkLayer
property Count : Integer

## ILsmSdkLayerEditor (18 members)
function CanDeleteLayer(const LayerId : WideString, const StackId : WideString) : Boolean;
function CanInsertDefaultLayer(const LayerTypeId : WideString, const StackId : WideString, const RefLayerId : WideString, InsertBefore : Boolean) : Boolean;
function CanInsertLayer(const Layer : ILsmSdkLayer, const StackId : WideString, const RefLayerId : WideString, InsertBefore : Boolean) : Boolean;
function CanIntelliAddLayer(const LayerTypeId : WideString, const StackId : WideString, const RefLayerId : WideString) : Boolean;
function CanIntelliMoveLayerDown(const LayerId : WideString, const StackId : WideString) : Boolean;
function CanIntelliMoveLayerUp(const LayerId : WideString, const StackId : WideString) : Boolean;
function CanMoveLayer(const LayerId : WideString, const StackId : WideString, const RefLayerId : WideString, InsertBefore : Boolean) : Boolean;
function CanMoveLayerOnePositionDown(const LayerId : WideString, const StackId : WideString) : Boolean;
function CanMoveLayerOnePositionUp(const LayerId : WideString, const StackId : WideString) : Boolean;
procedure DeleteLayer(const LayerId : WideString, const StackId : WideString);
procedure InsertLayer(const Layer : ILsmSdkLayer, const StackId : WideString, const RefLayerId : WideString, InsertBefore : Boolean);
function IntelliAddLayer(const LayerTypeId : WideString, const StackId : WideString, const RefLayerId : WideString) : ILsmSdkLayer;
procedure IntelliMoveLayerDown(const LayerId : WideString, const StackId : WideString);
procedure IntelliMoveLayerUp(const LayerId : WideString, const StackId : WideString);
procedure MoveLayer(const LayerId : WideString, const StackId : WideString, const RefLayerId : WideString, InsertBefore : Boolean);
procedure MoveLayerOnePositionDown(const LayerId : WideString, const StackId : WideString);
procedure MoveLayerOnePositionUp(const LayerId : WideString, const StackId : WideString);
procedure UpdateLayer(const Layer : ILsmSdkLayer, const StackId : WideString);

## ILsmSdkLayerStack (12 members)
property DrillSpans : ILsmSdkDrillSpanCollection
property Id : WideString
property IsFlex : Boolean
property IsManaged : Boolean
property IsSymmetric : Boolean
property Layers : ILsmSdkLayerCollection
property LayerStackType : TLayerStackType
property Name : WideString
procedure SetState_IsFlex(const AValue : Boolean);
procedure SetState_IsSymmetric(const AValue : Boolean);
procedure SetState_Name(const AName : WideString);
property ViaSpans : ILsmSdkViaSpanCollection

## ILsmSdkLayerStackCollection (3 members)
property ItemsById[AId: WideString] : ILsmSdkLayerStack
property Items[AIndex: Integer] : ILsmSdkLayerStack
property Count : Integer

## ILsmSdkLayerStackEditor (9 members)
function CanDeleteStack(const StackId : WideString) : Boolean;
function CanInsertDefaultStack(const RefStackId : WideString, InsertBefore : Boolean) : Boolean;
function CanInsertStack(const LayerStack : ILsmSdkLayerStack, const RefStackId : WideString, InsertBefore : Boolean) : Boolean;
function CanMoveStack(const StackId : WideString, const RefStackId : WideString, InsertBefore : Boolean) : Boolean;
function CanUpdateStack(const LayerStack : ILsmSdkLayerStack) : Boolean;
procedure DeleteStack(const StackId : WideString);
function InsertStack(const LayerStack : ILsmSdkLayerStack, const RefStackId : WideString, InsertBefore : Boolean) : ILsmSdkLayerStack;
procedure MoveStack(const StackId : WideString, const RefStackId : WideString, InsertBefore : Boolean);
procedure UpdateStack(const LayerStack : ILsmSdkLayerStack);

## ILsmSdkStackup (11 members)
property ImpedanceProfiles : ILsmSdkImpedanceProfileCollection
property IsSymmetric : Boolean
property RoughnessFactorModelRFPercent : Double
property RoughnessFactorModelSR_mm : Double
property RoughnessModelType : TLsmSdkRoughnessModelType
procedure SetState_RoughnessFactorModelRFPercent(const AValue : Double);
procedure SetState_RoughnessFactorModelSR_mm(const AValue : Double);
procedure SetState_RoughnessModelType(const ARoughnessModelType : TLsmSdkRoughnessModelType);
property Stacks : ILsmSdkLayerStackCollection
property StackupType : TLsmSdkStackupType
property TransmissionLines : ILsmSdkTransmissionLineCollection

## ILsmSdkStackup2 (19 members)
property AmbientTemperature : TDouble
property CopperResistance : TDouble
property ImpedanceProfiles : ILsmSdkImpedanceProfileCollection
property IsSymmetric : Boolean
property RoughnessFactorModelRFPercent : Double
property RoughnessFactorModelSR_mm : Double
property RoughnessModelType : TLsmSdkRoughnessModelType
procedure SetState_AmbientTemperature(const AValue : Double);
procedure SetState_CopperResistance(const AValue : Double);
procedure SetState_RoughnessFactorModelRFPercent(const AValue : Double);
procedure SetState_RoughnessFactorModelSR_mm(const AValue : Double);
procedure SetState_RoughnessModelType(const ARoughnessModelType : TLsmSdkRoughnessModelType);
procedure SetState_TemperatureRise(const AValue : Double);
procedure SetState_ViaPlatingThickness_mil(const AValue : Double);
property Stacks : ILsmSdkLayerStackCollection
property StackupType : TLsmSdkStackupType
property TemperatureRise : TDouble
property TransmissionLines : ILsmSdkTransmissionLineCollection
property ViaPlatingThickness_mil : TDouble

## ILsmSdkStackupEditor (3 members)
function CanUpdateStackup(const Stackup : ILsmSdkStackup) : Boolean;
procedure MakeStackupSymmetric(const Stackup : ILsmSdkStackup, SymmetricOptions : TLsmSdkStackupSymmetricOptions);
procedure UpdateStackup(const Stackup : ILsmSdkStackup);

## ILsmSdkTransmissionLine (19 members)
property BottomRefLayerId : WideString
property CalcMode : TLsmSdkTLCalcMode
property ClearanceToPlane_mm : TLsmSdkNullableDouble
property CoatedHeight1_mm : TLsmSdkNullableDouble
property CoatedHeight2_mm : TLsmSdkNullableDouble
property CoatedLayerId : WideString
property ElectricParameters : TLsmSdkTLElectricParams
property EtchFactor : TLsmSdkNullableDouble
property HasPlating : Boolean
property Id : TLsmSdkTLId
property ImpedanceErrorPercent : TLsmSdkNullableDouble
property IsCoated : Boolean
property IsCoplanar : Boolean
property IsDifferential : Boolean
property IsEnabled : Boolean
property TLTypeName : WideString
property TopRefLayerId : WideString
property TraceGap_mm : TLsmSdkNullableDouble
property TraceWidth_mm : TLsmSdkNullableDouble

## ILsmSdkTransmissionLineCollection (3 members)
property ItemsById[AId: IDispatch] : ILsmSdkTransmissionLine
property Items[AIndex: Integer] : ILsmSdkTransmissionLine
property Count : Integer

## ILsmSdkViaSpan (8 members)
property AutoName : WideString
property CustomName : WideString
property Id : WideString
property IsSymmetric : Boolean
property StackId : WideString
property StartLayerId : WideString
property StopLayerId : WideString
property ViaSpanType : TLsmSdkViaSpanType

## ILsmSdkViaSpanCollection (3 members)
property ItemsById[AId: WideString] : ILsmSdkViaSpan
property Items[AIndex: Integer] : ILsmSdkViaSpan
property Count : Integer

## ILsmSdkViaSpanEditor (10 members)
function CanDeleteViaSpan(const ViaSpanId : WideString, const StackId : WideString) : Boolean;
function CanInsertDefaultViaSpan(ViaSpanType : TLsmSdkViaSpanType, const StackId : WideString, const RefViaSpanId : WideString, InsertBefore : Boolean) : Boolean;
function CanInsertViaSpan(const ViaSpan : ILsmSdkViaSpan, const StackId : WideString, const RefViaSpanId : WideString, InsertBefore : Boolean) : Boolean;
function CanMoveViaSpan(const ViaSpanId : WideString, const StackId : WideString, const RefViaSpanId : WideString, InsertBefore : Boolean) : Boolean;
function CanUpdateViaSpan(const ViaSpan : ILsmSdkViaSpan, const StackId : WideString) : Boolean;
function CanViaSpanBeSymmetric(const ViaSpanId : WideString, const StackId : WideString, out Reason : WideString) : Boolean;
procedure DeleteViaSpan(const ViaSpanId : WideString, const StackId : WideString);
function InsertViaSpan(const ViaSpan : ILsmSdkViaSpan, const StackId : WideString, const RefViaSpanId : WideString, InsertBefore : Boolean) : ILsmSdkViaSpan;
procedure MoveViaSpan(const ViaSpanId : WideString, const StackId : WideString, const RefViaSpanId : WideString, InsertBefore : Boolean);
procedure UpdateViaSpan(const ViaSpan : ILsmSdkViaSpan, const StackId : WideString);

## IMacroEventListener (2 members)
procedure AfterRecordPlayback(const ARecordId : WideString);
procedure BeforeRecordPlayback(const ARecordId : WideString);

## IMacroManager (5 members)
function AddRecord(const AServer : WideString, const ACode : WideString, const AData : WideString) : Integer;
procedure ExportToPlaybackFile(const AFile : WideString);
procedure Poke;
property State : TMacroManagerState
procedure UpdateRecord(ID : Integer, const ACode : WideString, const AData : WideString);

## IMacroManager2 (14 members)
function AddRecord(const AServer : WideString, const ACode : WideString, const AData : WideString) : Integer;
function AddRecordEx(const AServer : WideString, const ACode : WideString, const AData : WideString, const AComment : WideString) : Integer;
procedure ClearRecords;
procedure DeleteRecord(AIndex : Integer);
procedure ExportToPlaybackFile(const AFile : WideString);
procedure ExportToPlaybackFileEx(const AFile : WideString, ASavePreferences : Boolean);
procedure GetRecord(AIndex : Integer, var ALineNumber : Integer, var ADelay : Cardinal, var AServer : WideString, var ACode : WideString, var AData : WideString, var AComment : WideString);
function GetRecordCount : Integer;
function GetRecordIndex : Integer;
procedure Poke;
procedure SetRecordIndex(AIndex : Integer);
property State : TMacroManagerState
procedure UpdateRecord(ID : Integer, const ACode : WideString, const AData : WideString);
procedure UpdateRecordEx(AIndex : Integer, ALineNumber : Integer, ADelay : Cardinal, AServer : WideString, ACode : WideString, AData : WideString, AComment : WideString);

## IMacroProcessor (1 members)
procedure PlayRecord(const ACode : WideString, const AData : WideString);

## IManagedSheetParentSymbolsInfo (6 members)
function GetParentSymbolHandle(AIndex : Integer) : WideString;
property Name : WideString
property ParentSymbolsHandlesCount : Integer
property ProjectFilePath : WideString
procedure RemoveParentSymbolHandle(AParentSymbolHandle : WideString);
property RevisionGUID : WideString

## IMBA_ServerDocument (63 members)
property View[Index: Integer] : IServerDocumentView
procedure AcquireDataFileHandle;
procedure AcquireFileOwnership;
procedure AddView(const AView : IServerDocumentView);
procedure BeginCompilationLock;
property BeingClosed : LongBool
property CanClose : LongBool
function CanCreateSnippet(const AView : IServerDocumentView, AMode : TSnippetCreationMode, AContextSensitive : Boolean) : Boolean;
function CanPlaceSnippet(const ASnippetPath : WideString) : Boolean;
function CompareWithShadow(AShadowDoc : IServerDocument, ACompareView : IServerView) : LongBool;
property Controller : IMBA_DocumentController
property Count : Integer
function CreateSnippetFile(const AView : IServerDocumentView, ASnippetFilePath : WideString, AMode : TSnippetCreationMode, AContextSensitive : Boolean) : Boolean;
property DataModel : IMBA_DocumentDataModel
procedure DocumentDirectoryChanged;
property DocumentID : Integer
property DocumentModifiedDate : TDateTime
function DoFileLoad : LongBool;
function DoFileSave(const AKind : WideString) : LongBool;
function DoSafeChangeFileNameAndSave(const ANewFileName : WideString, const AKind : WideString) : LongBool;
function DoSafeFileSave(const AKind : WideString) : LongBool;
procedure EndCompilationLock;
procedure Export3D(const AFileName : WideString, AFormat : TMBAExport3DFormat);
procedure ExportMbaBin(const AFileName : WideString);
function ExportPartToGraphite(AUid : Integer, const AFileName : WideString) : Boolean;
property FileName : WideString
procedure Focus;
function GetContextHelpTopicName : WideString;
function GetExternalFiles(ACheckForExistence : Boolean) : IExternalFiles;
function GetFileModifiedDate : TDateTime;
procedure GetPartBoundingBox(const APartId : Integer, out MinX : Double, out MinY : Double, out MinZ : Double, out MaxX : Double, out MaxY : Double, out MaxZ : Double);
function GetSnippetView : IServerDocumentView;
function GetViewByName(const ViewName : WideString) : IServerDocumentView;
function HasUniqueIDLoadedFromFile : Boolean;
procedure InvalidateDataModel;
property IsShown : LongBool
property Kind : WideString
function LoadPCBModel(const FileName : WideString) : IMBA_PartDataModel;
function LoadPCBModel_ForPreview(const FileName : WideString) : IMBA_PartDataModel;
function LoadStepModel(const FileName : WideString, NeedToCache : Boolean) : IMBA_PartDataModel;
function LoadStepModel_ForPreview(const FileName : WideString) : IMBA_PartDataModel;
property Modified : LongBool
property NotificationPublisher : IMBA_NotificationPublisher
procedure NotifyViews(ANotification : INotification);
function OwnsFile : Boolean;
procedure PlaceSnippet(ASnippetAddress : WideString, const AView : IServerDocumentView);
procedure ReleaseDataFileHandle;
procedure ReleaseFileOwnership;
function RemoveModel_ForPreview(PartId : Integer) : Boolean;
property ServerModule : IServerModule
procedure SetFileModifiedDate(const AValue : TDateTime);
function SetFileName(const AFileName : WideString) : WideString;
procedure SetModelTransparent_ForPreview(PartId : Integer, Transparent : Boolean);
procedure SetPartVisible(APartId : Integer, AVisible : Boolean);
property SupportsOwnSave : LongBool
function SupportsReload : LongBool;
procedure ToggleMeasurementSystem;
property UniqueID : WideString
procedure UpdateModifiedDate;
procedure UpdateStepPartByStepPart_ForPreview(const DestStepPart : IMBA_PartDataModel, const SourceStepPart : IMBA_PartDataModel);
property ViewConfiguration : IMBA_ViewConfiguration
function WarnIfOwnedByOther(AWarningLevel : TFileOwnershipWarningLevel) : LongBool;
procedure ZoomSnippetContents;

## IMBA_ServerDocumentStates (1 members)
function GetServerDocumentState(AState : TMBA_ServerDocumentStates) : TMBA_ServerDocumentStateResult;

## IMBA_ServerModule (28 members)
property Views[Index: Integer] : IServerView
property Documents[Index: Integer] : IServerDocument
procedure AddServerView(const AView : IServerView);
procedure ApplicationIdle;
property Client : IClient
property CommandLauncher : ICommandLauncher
function CreateDataModelFactory : IMBA_DataModelFactory;
function CreateDocument(const AKind : WideString, const AFileName : WideString) : IServerDocument;
function CreateDocumentFromDataModel(const ADataModel : IMBA_DocumentDataModel) : IMBA_ServerDocument;
function CreateDocumentShowOrHide(const AKind : WideString, const AFileName : WideString, AShowInTree : Boolean) : IServerDocument;
function CreateOptionsView(const AName : WideString) : IDocumentOptionsView;
function CreateServerDocView(const AName : WideString, const ADocument : IServerDocument) : IServerDocumentView;
function CreateServerView(const AName : WideString) : IServerView;
procedure DestroyDocument(const ADocument : IServerDocument);
property DocumentCount : Integer
function GetAssemblyByDocumentId(const ADocumentID : Integer) : IMBA_ServerDocument;
function GetAssemblyByPath(const AFullPath : WideString) : IMBA_ServerDocument;
function GetShadowDocument(const AFileName : WideString) : IServerDocument;
property GlobalGeneralConfiguration : IMBA_GeneralConfiguration
property GlobalViewConfiguration : IMBA_ViewConfiguration
property Handle : THandle
function LoadAssemblyByPath(const AFullPath : WideString) : IMBA_ServerDocument;
property ModuleName : WideString
property ProcessControl : IProcessControl
procedure ReceiveNotification(const ANotification : INotification);
procedure RemoveServerView(const AView : IServerView);
procedure SetAutoSwitchingC3dOcc(const AVal : Boolean);
property ViewCount : Integer

## IMechanicalLayerKindMap (2 members)
property Hash : Cardinal
function Replicate : IMechanicalLayerKindMap;

## IMemoryInstrument (17 members)
function GetDesignator : WideString;
procedure LoadFromFile(const AFileName : WideString, AStartAddress : Cardinal, ALength : Cardinal);
procedure Read(Buffer : PByte, Address : Cardinal, Length : Integer);
function ReadInt16(AAddress : Cardinal, ABigEndian : LongBool) : SmallInt;
function ReadInt32(AAddress : Cardinal, ABigEndian : LongBool) : Integer;
function ReadInt8(AAddress : Cardinal, ABigEndian : LongBool) : ShortInt;
function ReadUInt16(AAddress : Cardinal, ABigEndian : LongBool) : Word;
function ReadUInt32(AAddress : Cardinal, ABigEndian : LongBool) : Cardinal;
function ReadUInt8(AAddress : Cardinal, ABigEndian : LongBool) : Byte;
procedure SaveToFile(const AFileName : WideString, AStartAddress : Cardinal, ALength : Cardinal);
procedure Write(Buffer : PByte, Address : Cardinal, Length : Integer);
procedure WriteInt16(AAddress : Cardinal, ABigEndian : LongBool, AValue : SmallInt);
procedure WriteInt32(AAddress : Cardinal, ABigEndian : LongBool, AValue : Integer);
procedure WriteInt8(AAddress : Cardinal, ABigEndian : LongBool, AValue : ShortInt);
procedure WriteUInt16(AAddress : Cardinal, ABigEndian : LongBool, AValue : Word);
procedure WriteUInt32(AAddress : Cardinal, ABigEndian : LongBool, AValue : Cardinal);
procedure WriteUInt8(AAddress : Cardinal, ABigEndian : LongBool, AValue : Byte);

## IMemoryInstrumentManager (4 members)
function GetMemoryInstrument(Index : Integer) : IMemoryInstrument;
function GetMemoryInstrumentByDesignator(const ADesignator : WideString) : IMemoryInstrument;
function GetMemoryInstrumentByJtagIndex(AJtagIndex : Integer) : IMemoryInstrument;
function GetMemoryInstrumentCount : Integer;

## IMemorySpace (10 members)
function FinishDownload : Boolean;
function GetBytesPerUnit : Integer;
function GetIndex : Integer;
function GetKind : TMemoryKind;
function GetLength : Int64;
function GetName : WideString;
function GetNexusDevice : INexusDevice;
function GetShortName : WideString;
function GetWidth : Integer;
function InitDownload : Boolean;

## IMenuItemInvoke (1 members)
procedure InvokeItem;

## IMenuItemWrapper (13 members)
property AutoCheck : LongBool
property Bitmap : HBITMAP
property Caption : WideString
property Checked : LongBool
property Enabled : LongBool
property GroupIndex : Integer
property Hint : WideString
property ImageIndex : Integer
function Item(Index : Integer) : IMenuItemWrapper;
function ItemCount : Integer;
property OnInvoke : IMenuItemInvoke
property ShortCut : Word
property Visible : LongBool

## IMenuWrapper (3 members)
function ImageListHandle : NativeUInt;
function Item(Index : Integer) : IMenuItemWrapper;
function ItemCount : Integer;

## IMessagesNotification (1 members)
property Code : Integer

## IMessageView (3 members)
function CanRunActionFromParameters(const Parameters : WideString, var ACaption : WideString, var AImage : WideString) : ByteBool;
function MessageGrouping : WideString;
procedure RunActionFromParameters(const Parameters : WideString);

## IModel (17 members)
property ModelParameters[Index: Integer] : IItemParameter
property ModelParameterValue[Index: Integer] : WideString
property DataFileEntityName[Index: Integer] : WideString
property ModelParameterName[Index: Integer] : WideString
property DataFileEntityLocation[Index: Integer] : WideString
property DataFileEntityCount : Integer
procedure DeleteModelParameter(Index : Integer);
procedure DeleteModelParameterByName(AName : WideString);
function GetModelParameterByName(AName : WideString) : IItemParameter;
function GetModelParameterValueByName(AName : WideString) : WideString;
property ModelDescription : WideString
property ModelMapAsString : WideString
property ModelName : WideString
property ModelParameterCount : Integer
property Owner : ILibraryComponent
procedure SetModelParameterValueByName(AName : WideString, AValue : WideString);
property UseComponentLibrary : Boolean

## IModelChange (12 members)
function Description : WideString;
property Enabled : Boolean
function Exists : Boolean;
function IsAdd : Boolean;
function IsDisabledAdd : Boolean;
function IsDisabledRemove : Boolean;
function IsRemove : Boolean;
property ModelName : WideString
property NewDescr : WideString
property NewModel : IComponentImplementation
property OrigDescr : WideString
property OrigModel : IComponentImplementation

## IModelChanges (9 members)
property Changes[AKind: WideString, Index: Integer] : IModelChange
property Kinds[Index: Integer] : WideString
procedure AddChange(const OrigModel : IComponentImplementation, const NewModel : IComponentImplementation, const OrigDescr : WideString, const NewDescr : WideString, Enabled : Boolean);
procedure AddCurrentChange(const OrigName : WideString, const NewName : WideString, const ModelType : WideString, const NewModel : IComponentImplementation, Enabled : Boolean);
function ChangeForName(const AKind : WideString, const Name : WideString) : IModelChange;
function ChangesCount(const AKind : WideString) : Integer;
procedure Clear;
function CurrentChange(const AKind : WideString) : ICurrentModelChange;
function KindsCount : Integer;

## IModelDatafile (4 members)
property EntityNames[AnIndex: Integer] : WideString
procedure AddEntity(AName : WideString);
function EntityCount : Integer;
function FullPath : WideString;

## IModelDatafileType (6 members)
function Description : PWideChar;
function EntityType : PWideChar;
function ExtensionFilter : PWideChar;
function FileKind : PWideChar;
function ModelType : IModelType;
function SupportsParameters : Boolean;

## IModelEditor (16 members)
function CreateDatafile(ADatafilePath : PWideChar) : IModelDatafile;
function CreateServerModel(AModel : IComponentImplementation) : IServerModel;
procedure CrossProbeEntity(AEntityName : WideString, ADatafilePath : WideString);
procedure DrawModel(AExternalForm : IExternalForm, AModelName : PWideChar, ADatafilePath : PWideChar);
function DrawModel_FromModel(AExternalForm : IExternalForm, AModel : IModel) : Boolean;
function DrawModel_FromSchImpl(AExternalForm : IExternalForm, ASchComp : ISch_Component, ASchImpl : ISch_Implementation) : Boolean;
function DrawModel_FromStepFile(AExternalForm : IExternalForm, AStepFilePath : WideString) : Boolean;
procedure DrawModelToMetaFile(const AFileName : WideString, const AModelName : WideString, const ADatafilePath : WideString, APaintColorMode : TPaintColorMode, APaintScaleMode : TPaintScaleMode);
function EditModel(SchModel : ISch_Implementation, SchComp : ISch_Component, Context : TModelEditContext) : Boolean;
function EditModelMap(const AModelRevision : IULB_ItemRevision, const AVault : IEDMS_Vault, const ASchComp : ISch_Component, var AMapAsString : WideString, var AExcludedParts : WideString) : Boolean;
procedure FinishedLibraryCompile;
function GetEntityParameters(AEntityName : WideString, ADatafilePath : WideString) : WideString;
function GetExternalForm : IExternalForm;
function PrepareModel(AModel : IComponentImplementation) : Boolean;
function SetDefaultModelState(SchModel : ISch_Implementation, SchComp : ISch_Component, IsLibrary : Boolean) : Boolean;
procedure StartingLibraryCompile;

## IModelEditor2 (3 members)
procedure Config(AExternalForm : IExternalForm, Parameters : WideString);
procedure DrawModel_FromHandle(AExternalForm : IExternalForm, AComponentHandle : Pointer);
procedure DrawModel_FromPCBPrimitive(AExternalForm : IExternalForm, APCBPrimitive : IInterface);

## IModelEditor3 (3 members)
function EditModel_ReadOnly(SchModel : ISch_Implementation, SchComp : ISch_Component, Context : TModelEditContext) : Boolean;
function GetEntityParametersSkipModels(AEntityName : WideString, ADatafilePath : WideString) : WideString;
function ReadComponentParamsTOCFromLibraryFile(const ADatafilePath : WideString) : WideString;

## IModelEditor4 (1 members)
function InitModel(SchModel : ISch_Implementation, SchComp : ISch_Component) : Boolean;

## IModelEditorSelectionListener (1 members)
procedure PinSelectionChanged(NewSelectedPins : WideString);

## IModelEditorSelectionManager (5 members)
procedure ClearPinSelection;
procedure NotifyPinSelectionChanged(const ANewSelectedPins : WideString, const AModelID : WideString);
procedure RegisterSelectionListener(const AListener : IModelEditorSelectionListener, const AModelID : WideString);
procedure Reset;
procedure UnregisterSelectionListener(const AListener : IModelEditorSelectionListener);

## IModelEditorSelectionManagerController (2 members)
procedure ResetManager;
procedure SetManager(const AManager : IModelEditorSelectionManager);

## IModelType (10 members)
function Description : PWideChar;
function DescriptionW : WideString;
function Editor : IModelEditor;
function Highlightable : Boolean;
function Name : PWideChar;
function NameW : WideString;
function PortDescriptor : PWideChar;
function Previewable : Boolean;
function ServerName : PWideChar;
function ViewableDocKind : PWideChar;

## IModelTypeManager (7 members)
property ModelDatafileTypes[AnIndex: Integer] : IModelDatafileType
property ModelTypes[AnIndex: Integer] : IModelType
function ModelDatafileTypeCount : Integer;
function ModelDatafileTypeFromKind(AKind : PWideChar) : IModelDatafileType;
function ModelTypeCount : Integer;
function ModelTypeFromName(AName : PWideChar) : IModelType;
function ModelTypeFromServerName(AName : PWideChar) : IModelType;

## IModification (20 members)
function ECO_Action(AMode : TECO_Mode) : Boolean;
property Enabled : Boolean
function GetState_AffectedDocumentDescriptorString : string;
function GetState_AffectedObjectDescriptorString : string;
function GetState_CrossProbeDescriptor1 : string;
function GetState_CrossProbeDescriptor2 : string;
function GetState_CrossProbeDescriptor3 : string;
function GetState_CrossProbeObject1 : IDMObject;
function GetState_CrossProbeObject2 : IDMObject;
function GetState_CrossProbeObject3 : IDMObject;
function GetState_DirectionDescriptorString : string;
function GetState_ModificationDetails : string;
function GetState_VerbString : string;
function ImageIndex : Integer;
procedure LoadDocument(AMode : TECO_Mode, const ARefObject : IDMObject);
property ModificationKind : TModificationKind
property OwnerDocument : IDocument
property Status : TModificationStatus
property TargetDocument : IDocument
property Used : Boolean

## IModuleNotification (2 members)
property Code : Integer
property ModuleName : WideString

## IMotionBlurredPaint (1 members)
procedure PaintOnPanel(APanel : TCustomInstrumentBackgroundPanel);

## IMultiboardAssemblyPanelFactory (1 members)
function GetTreeViewPanel : IServerView;

## IMultiCastObserver (2 members)
property Active : Boolean
procedure Removed;

## INanoBoardController (1 members)
procedure SetFrequency(Frequency : Double);

## INavigateAttributes (4 members)
property Address : WideString
property Caption : WideString
function IsSameAddress(const AnAddress : WideString) : Boolean;
function SupportsProtocol(const AProtocol : WideString) : Boolean;

## INavigationDocument (1 members)
function GetDocumentScene : IExternalForm;

## INavigationHistory (6 members)
procedure AddDMObject(const ADmObject : IDMObject, AnActionSet : TNavigationActionSet);
function CanMoveBackward : LongBool;
function CanMoveForward : LongBool;
procedure MoveBackward;
procedure MoveForward;
procedure Reset;

## INavigationProvider (1 members)
function NavigateTo(const Protocol : WideString, const Target : WideString, const Parameters : WideString, const SourceView : IExternalForm, out TargetView : IExternalForm, out TargetHeaderView : IExternalForm) : LongBool;

## INavigationSystem (11 members)
procedure DisableHistory;
procedure EnableHistory;
procedure ExpandTargets(var Target : WideString);
function IsHistoryEnabled : Boolean;
function IsProtocolSupported(const Protocol : WideString) : LongBool;
function NavigateTo(const CurrentView : IExternalForm, var Destination : WideString, out TargetView : IExternalForm) : LongBool;
function NavigateToScene(const CurrentView : IExternalForm, var Destination : WideString, out TargetView : IExternalForm, out TargetHeaderView : IExternalForm) : LongBool;
procedure ParseDestinationString(const Destination : WideString, var Protocol : WideString, var Target : WideString, var Parameters : WideString);
function RegisterNavigationProvider(const ProtocolName : WideString, const NavigationProvider : INavigationProvider) : NativeUInt;
procedure UnregisterNavigationProtocol(const Protocol : WideString, Handle : NativeUInt);
function ValidatedTarget(Target : WideString) : WideString;

## INavigator (1 members)
function NavigateTo(const AnAddress : WideString) : LongBool;

## INavigatorView (15 members)
property Caption : WideString
procedure Close;
procedure FocusFirstTabStop;
function GetAddress : WideString;
procedure GetBounds(var ALeft : Integer, var ATop : Integer, var AWidth : Integer, var AHeight : Integer);
property Handle : HWND
procedure Hide;
procedure ParentWindowCreated;
procedure ParentWindowDestroyed;
procedure Refresh;
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetFocus;
procedure SetParentWindow(const ParentWindow : IExternalFormHolder);
procedure Show;
procedure Stop;

## INet (113 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AllNetItemCount : Integer;
function DM_AllNetItems(Index : Integer) : INetItem;
function DM_AutoNumber : Integer;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusIndex : Integer;
function DM_BusKind : TBusKind;
function DM_BusPrefix : WideString;
function DM_BusRange1 : WideString;
function DM_BusRange2 : WideString;
function DM_BusRangeValue1 : Integer;
function DM_BusRangeValue2 : Integer;
function DM_BusSectionParent : INet;
function DM_BusWidth : Integer;
function DM_CalculatedNetName : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CountOfElectricalType(AElectric : TPinElectrical) : Integer;
function DM_CountOfNonPinItems : Integer;
function DM_CrossSheetConnectorCount : Integer;
function DM_CrossSheetConnectors(Index : Integer) : ICrossSheet;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DesignatorLocationX : Integer;
function DM_DesignatorLocationY : Integer;
function DM_DirectiveCount : Integer;
function DM_Directives(Index : Integer) : INetItem;
procedure DM_DoCrossProbe;
procedure DM_DoCrossProbeBase;
function DM_Electric : TPinElectrical;
function DM_ElectricalString : WideString;
function DM_FullCrossProbeString : WideString;
function DM_FullNetName : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_HarnessType : WideString;
function DM_HasItemOnDocument(Document : IDocument) : Boolean;
function DM_HiddenNetName : WideString;
function DM_ImageIndex : Integer;
function DM_InlineSpliceCount : Integer;
function DM_InlineSplices(Index : Integer) : IInlineSplice;
function DM_IsAutoGenerated : Boolean;
function DM_IsBusElement : Boolean;
function DM_IsBusMember : Boolean;
function DM_IsBusSection : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsLocal : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsPowerOrGroundNet : Boolean;
function DM_LineCount : Integer;
function DM_Lines(Index : Integer) : ILine;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetColor : TColor;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetLabelCount : Integer;
function DM_NetLabels(Index : Integer) : INetItem;
function DM_NetName : WideString;
function DM_NetNumber : WideString;
function DM_NoConnectCount : Integer;
function DM_NoConnects(Index : Integer) : INoConnect;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PinCount : Integer;
function DM_Pins(Index : Integer) : INetItem;
function DM_PortCount : Integer;
function DM_Ports(Index : Integer) : INetItem;
function DM_PowerObjectCount : Integer;
function DM_PowerObjects(Index : Integer) : INetItem;
function DM_PrimaryCrossProbeString : WideString;
function DM_RangeDefinedByValue : Boolean;
function DM_RemovedHarnessEntries(Index : Integer) : INetItem;
function DM_RemovedHarnessEntryCount : Integer;
function DM_RemovedNetItemCount : Integer;
function DM_RemovedNetItems(Index : Integer) : INetItem;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_Scope : TNetScope;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetEntryCount : Integer;
function DM_SheetEntrys(Index : Integer) : INetItem;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SignalType : WideString;
function DM_SpliceCount : Integer;
function DM_Splices(Index : Integer) : ISplice;
function DM_SubWireCount : Integer;
function DM_SubWires(Index : Integer) : INet;
function DM_SuppressERC : Boolean;
function DM_TooltipText(PhysicalRoomName : WideString) : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## INetClass (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MemberCount : Integer;
function DM_Members(Index : Integer) : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## INetItem (111 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusIndex : Integer;
function DM_BusKind : TBusKind;
function DM_BusPrefix : WideString;
function DM_BusRange1 : WideString;
function DM_BusRange2 : WideString;
function DM_BusRangeValue1 : Integer;
function DM_BusRangeValue2 : Integer;
function DM_BusWidth : Integer;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ComponentUniqueId : WideString;
function DM_CrossSheetText : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DefaultSearchID : WideString;
function DM_DisplayMode : Byte;
procedure DM_DoCrossProbeBase;
function DM_Electric : TPinElectrical;
function DM_Electrical : TPinElectrical;
function DM_ElectricalString : WideString;
function DM_FlattenedNetName : WideString;
function DM_Footprint : WideString;
function DM_FullCrossProbeString : WideString;
function DM_FullLogicalPartDesignator : WideString;
function DM_FullPhysicalPartDesignator : WideString;
function DM_FullPinName : WideString;
function DM_FullUniqueId : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_Id : WideString;
function DM_ImageIndex : Integer;
function DM_IsAutoGenerated : Boolean;
function DM_IsBusElement : Boolean;
function DM_IsBusMember : Boolean;
function DM_IsBusSection : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredFromHarness : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LinkObject : INetItem;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalPartDesignator : WideString;
function DM_LongDescriptorString : WideString;
function DM_MatchesPadName(const PadName : WideString) : Boolean;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetLabelText : WideString;
function DM_NetName : WideString;
function DM_NetNumber : WideString;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
function DM_OwnerHarnessNetLogical : INet;
function DM_OwnerHarnessNetPhysical : INet;
function DM_OwnerNetLogical : INet;
function DM_OwnerNetPhysical : INet;
function DM_OwnerPartID : Integer;
function DM_PairSwapId : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentID : WideString;
function DM_ParentSheetSymbolName : WideString;
function DM_ParentSheetSymbolSheetName : WideString;
function DM_Part : IPart;
function DM_PartID : Integer;
function DM_PartPinSwapId : WideString;
function DM_PartSwapId : WideString;
function DM_PartType : WideString;
function DM_PartUniqueId : WideString;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalPartDesignator : WideString;
function DM_PinName : WideString;
function DM_PinNameNoPartId : WideString;
function DM_PinNumber : WideString;
function DM_PinPackageLength : Integer;
function DM_PinPropagationDelay : Double;
function DM_PinSwapId : WideString;
function DM_PortName : WideString;
function DM_PowerText : WideString;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrintableNetName(out ShouldBeUsed : Boolean) : WideString;
function DM_RangeDefinedByValue : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_SheetName : WideString;
function DM_SheetSymbol : ISheetSymbol;
function DM_ShortDescriptorString : WideString;
function DM_SignalType : WideString;
function DM_UniqueIdName : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## INetworkConnector (1 members)
function CreateMessageToServer : INetworkMessage;

## INetworkMessage (2 members)
procedure Send(FreeAfterSent : LongBool);
procedure WriteString(const Data : AnsiString);

## INexusBreakpoint (22 members)
procedure Export_ToCore;
function GetAddressHigh : Word;
function GetAddressLow : Word;
function GetBreakOnRead : LongBool;
function GetBreakOnWrite : LongBool;
function GetData : Byte;
function GetDataMask : Byte;
function GetDescription : WideString;
function GetEnabled : LongBool;
function GetIndex : Integer;
function GetKind : TNexusBreakpointKind;
function GetNexusDevice : INexusDevice;
function GetStopped : LongBool;
procedure Import_FromCore;
procedure SetAddressHigh(Value : Word);
procedure SetAddressLow(Value : Word);
procedure SetBreakOnRead(Value : LongBool);
procedure SetBreakOnWrite(Value : LongBool);
procedure SetData(Value : Byte);
procedure SetDataMask(Value : Byte);
procedure SetEnabled(Value : LongBool);
procedure SetKind(Value : TNexusBreakpointKind);

## INexusCore (40 members)
procedure CrossProbe;
procedure DownloadProgramMemory(NexusDevice : INexusDevice);
procedure Export_CoreGenParameters(Parameters : PWideChar);
function Export_CoreGenParametersToString : WideString;
procedure Export_ToParameters(Parameters : PWideChar);
function Export_ToParameterString : WideString;
function FindFileInProjectPaths(FileName : WideString) : WideString;
function GetAspComponentDesignator : WideString;
function GetBaseComponentDesignator : WideString;
function GetChildCore(Index : Integer) : INexusCore;
function GetChildCoreCount : Integer;
function GetChildCoreDesignator(Index : Integer) : WideString;
function GetChildProgramMemoryCoreCount : Integer;
function GetComponentDesignator : WideString;
function GetComponentDocumentPath : WideString;
function GetCoreKind : TNexusCoreKind;
function GetCrossViewProcessId : Integer;
function GetDescription : WideString;
function GetDeviceName : WideString;
function GetEmbeddedProject : IProject;
function GetEmbeddedProjectPath : WideString;
function GetFPGAProject : IProject;
function GetFPGAProjectPath : WideString;
function GetHexFileEndianness : WideString;
function GetHexFilename : WideString;
function GetHexFilePath : WideString;
function GetHexFileState : TFlowState;
function GetJTagIndex_FromCore : Integer;
function GetLibraryReference : WideString;
function GetNexusWorkbench : INexusWorkbench;
function GetParameterValue(Name : WideString) : WideString;
function GetUniqueId : WideString;
procedure Import_FromParameters(Parameters : PWideChar);
procedure Import_FromParameterString(const Parameters : WideString);
function MatchesOtherCore(ACore : INexusCore) : Boolean;
procedure SetCrossViewProcessId(ProcessID : NativeUInt);
procedure SetEmbeddedProjectPath(AProjectPath : WideString);
function SupportsParameter(Name : WideString) : Boolean;
procedure UpdateHexFileState;
procedure VerifyProgramMemory(NexusDevice : INexusDevice);

## INexusDevice (117 members)
function AddSoftBreakpoint(MemorySpace : Integer, Address : Int64) : ISoftBreakpoint;
function BitmapHandle : NativeUInt;
procedure ClearAllSoftBreakpoints;
function ConfigureFpgaProject(const AProject : IProject) : Boolean;
procedure ContinueFromTemporarySuspend;
procedure ContinueProcessor;
function CoreGen_OutputExtension : WideString;
function CreateViewer : Boolean;
procedure CustomAction_Execute(Index : Integer);
procedure CustomAction_GetState(Index : Integer, var Enabled : LongBool, var Checked : LongBool, var Visible : LongBool, Caption : PWideChar, ImageFile : PWideChar);
function EPM_Download(Address : string, Filename : string, Location : string) : Boolean;
function EPM_GetTestResult(TestReg : Integer) : Integer;
function EPM_InititateTest : Boolean;
procedure EPM_SetPercentCallBack(const ACallBack : IPercentCallback);
procedure Flash_Configure;
function Flash_Program(BitFilename : WideString) : Integer;
function Flash_Reset : LongBool;
function Flash_ResetForBitStream : LongBool;
function FlowStage_Build : IProcessFlow;
function FlowStage_Download : IProcessFlow;
function GetBaseName : WideString;
function GetBSDLEntity : IBSDLEntity;
function GetBSDLFilename : WideString;
function GetClockManagerCount : Integer;
function GetConfigMemorySize : Integer;
function GetDeviceDescription : WideString;
function GetDeviceDisplayName : WideString;
function GetDeviceIOCount : Integer;
function GetDeviceName : WideString;
function GetDeviceParameter(ParameterName : WideString) : WideString;
function GetDevicePin(Index : Integer) : IDevicePin;
function GetDevicePinCount : Integer;
function GetDeviceState : TDeviceState;
function GetDiffPairCount : Integer;
function GetDownloadFileExtensions : WideString;
function GetDriverStatus : TNexusDriverStatus;
function GetDSPMultiplierCount : Integer;
function GetEquivalentGatesForBase : Integer;
function GetFamilyDescription : WideString;
function GetFamilyName : WideString;
function GetGlobalClockCount : Integer;
function GetHexFilePath : WideString;
function GetHighSpeedDiffPairCount : Integer;
function GetIdCode : Cardinal;
function GetInstructionLength : Integer;
function GetIOStandard(Index : Integer) : IDeviceIOStandard;
function GetIOStandardCount : Integer;
function GetLibraryName : WideString;
function GetMaxIOForBase : Integer;
function GetMemorySize : Integer;
function GetMemorySpace(Index : Integer) : IMemorySpace;
function GetMemorySpace_Program : IMemorySpace;
function GetOptionDesignatorDescription : WideString;
function GetOptionDesignatorId : WideString;
function GetOptionDesignatorName : WideString;
function GetPackageDescription : WideString;
function GetPackageDimensions : WideString;
function GetPackageId : WideString;
function GetPackageName : WideString;
function GetPackageTypeDescription : WideString;
function GetPackageTypeId : WideString;
function GetPackageTypeName : WideString;
function GetProcessorRegister(Index : Integer) : IProcessorRegister;
function GetProcessorRegister_PC : IProcessorRegister;
function GetProcessorRegister_SP : IProcessorRegister;
function GetSoftBreakpoint(MemorySpace : Integer, Address : Int64) : ISoftBreakpoint;
function GetSpeedGradeDescription : WideString;
function GetSpeedGradeId : WideString;
function GetSpeedGradeName : WideString;
function GetTemperatureGradeDescription : WideString;
function GetTemperatureGradeId : WideString;
function GetTemperatureGradeName : WideString;
function GetTerminationSupport : Boolean;
function GetUniqueId : WideString;
function GetVendorName : WideString;
function GetVendorPrimitiveLibraryName : WideString;
function GetViewer : IInstrumentView;
function InvalidateResources : Boolean;
function JTagChannel : IJTagChannel;
function JTagIndex : Integer;
function JtagPort : IJtagPort;
function LittleEndian : LongBool;
function MemorySpaceCount : Integer;
function NexusDriver : INexusDriver;
procedure PauseProcessor;
function ProcessorIsPaused : LongBool;
function ProcessorIsReset : LongBool;
function ProcessorIsRunning : LongBool;
function ProcessorRegisterCount : Integer;
function ProgramDevice(BitFilename : WideString) : Integer;
function ReadNexusRegisterAtAddress(Address : Byte, BitCount : Integer) : Cardinal;
function ReadStringNexusRegisterAtAddress(Address : Byte, BitCount : Integer) : WideString;
function ReadUserCode : Cardinal;
procedure ReleaseResources;
function RemoveSoftBreakpoint(MemorySpace : Integer, Address : Int64) : LongBool;
function ResetDevice : LongBool;
procedure ResetNexusRegisters;
procedure ResetProcessor;
function RunDiagnostic : LongBool;
procedure RunSingleStepInSubstitutionRegister;
procedure RunSteps(StepCount : Integer);
procedure SetJTagChannel(const AJTagChannel : IJTagChannel);
procedure SetJTagIndex(AJTagIndex : Integer);
procedure SetJtagPort(const APort : IJtagPort);
procedure ShowAboutDialog;
function ShowConfiguration : Boolean;
procedure ShowCurrentSensePanel;
procedure SingleStepProcessor;
function SoftBreakpointCount : Integer;
function StatusString : WideString;
function Supports(Action : PWideChar) : LongBool;
procedure TemporarySuspend;
function VendorToolsDescriptor : WideString;
function VendorToolsPresent : LongBool;
function VendorToolsUpToDate : LongBool;
procedure WriteNexusRegisterAtAddress(Address : Byte, BitCount : Integer, Data : Cardinal);
procedure WriteStringNexusRegisterAtAddress(Address : Byte, Data : WideString);

## INexusDeviceConfigurator (1 members)
function GetDeviceName(AConfiguratorString : WideString) : WideString;

## INexusDevicesView (21 members)
property Caption : WideString
procedure FocusFirstTabStop;
procedure GetBounds(var ALeft : Integer, var ATop : Integer, var AWidth : Integer, var AHeight : Integer);
function GetFavoritesViewState(const AAddFavoriteView : LongBool) : WideString;
function GetViewState : WideString;
property Handle : HWND
procedure Hide;
property IsPanel : LongBool
property OwnerDocument : IServerDocument
procedure ParentWindowCreated;
procedure ParentWindowDestroyed;
procedure PerformAutoZoom;
procedure ReceiveNotification(const ANotification : INotification);
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetFavoritesViewState(const Astate : WideString);
procedure SetFocus;
procedure SetParentWindow(const ParentWindow : IExternalFormHolder);
procedure SetViewState(const Astate : WideString);
procedure Show;
procedure UpdateStatusBar;
property ViewName : WideString

## INexusDongle (8 members)
function ND_FlushWrite(WantTdo : Boolean) : HRESULT;
procedure ND_InitWithDriver(Driver : INexusFTDIDriver);
function ND_JTAG_ReadBit(var ATDO : Byte) : HRESULT;
function ND_JTAG_ReadBuf(var Data : WideString) : HRESULT;
function ND_JTAG_Write(TCK : Byte, TMS : Byte, TDI : Byte, ReadTdo : Boolean) : HRESULT;
function ND_JTAG_WriteBuf(const Data : WideString) : HRESULT;
procedure ND_SelectJtagChain(AJTAGChain : Integer);
procedure ND_SetJtagTicks(AJtagTicks : Integer);

## INexusDriver (125 members)
function AddSoftBreakpoint(MemorySpace : Integer, Address : Int64) : Cardinal;
function ClockCoreGenerator : IClockCoreGenerator;
function ClockCoreTemplateGenerator : IClockCoreTemplateGenerator;
function ClockGeneratorTargetCore : ITargetCoreGenerator;
function ConfigureFpgaProject(const Project : IProject) : Boolean;
procedure ContinueProcessor;
function CoreGen_OutputExtension : WideString;
procedure CreateRackViewer;
procedure CustomAction_Execute(Index : Integer);
procedure CustomAction_GetState(Index : Integer, var Enabled : LongBool, var Checked : LongBool, var Visible : LongBool, Caption : PWideChar, ImageFile : PWideChar);
function CustomCoreGenerator(AModuleType : TModuleType) : ICustomCoreGenerator;
function EPM_Download(Address : string, Filename : string, Location : string) : Boolean;
function EPM_GetTestResult(TestReg : Integer) : Integer;
function EPM_InititateTest : Boolean;
procedure EPM_SetPercentCallBack(const ACallBack : IPercentCallback);
function Finalize : LongBool;
function FinishDownload(MemorySpaceIndex : Integer) : LongBool;
procedure Flash_Configure;
function Flash_Program(Filename : WideString) : Integer;
function Flash_Reset : LongBool;
function Flash_ResetForBitStream : LongBool;
function FlowStage_Build : IProcessFlow;
function FlowStage_Download : IProcessFlow;
function GetBaseName : WideString;
function GetBitmapHandle : NativeUInt;
function GetBSDLEntity : IBSDLEntity;
function GetBSDLFilename : WideString;
function GetClockManagerCount : Integer;
function GetConfigMemorySize : Integer;
function GetDeviceDescription : WideString;
function GetDeviceDisplayName : WideString;
function GetDeviceIOCount : Integer;
function GetDeviceName : WideString;
function GetDeviceParameter(ParameterName : WideString) : WideString;
function GetDevicePin(Index : Integer) : IDevicePin;
function GetDevicePinCount : Integer;
function GetDeviceState : TDeviceState;
function GetDeviceTypeForLicenseCheck : WideString;
function GetDiffPairCount : Integer;
function GetDownloadFileExtensions : WideString;
function GetDSPMultiplierCount : Integer;
function GetEmbeddedConstraintFile : WideString;
function GetEquivalentGatesForBase : Integer;
function GetFamilyDescription : WideString;
function GetFamilyName : WideString;
function GetFolder_Library : WideString;
function GetGlobalClockCount : Integer;
function GetHighSpeedDiffPairCount : Integer;
function GetIdCode : Cardinal;
function GetInstructionLength : Integer;
function GetIOStandard(Index : Integer) : IDeviceIOStandard;
function GetIOStandardCount : Integer;
function GetLibraryName : WideString;
function GetMaxIOForBase : Integer;
function GetMemorySize : Integer;
function GetMemorySpace_Program : Integer;
function GetMemorySpaceBytesPerUnit(MemorySpaceIndex : Integer) : Cardinal;
function GetMemorySpaceCount : Integer;
function GetMemorySpaceKind(MemorySpaceIndex : Integer) : TMemoryKind;
function GetMemorySpaceLength(MemorySpaceIndex : Integer) : Int64;
function GetMemorySpaceName(MemorySpaceIndex : Integer) : WideString;
function GetMemorySpaceShortName(MemorySpaceIndex : Integer) : WideString;
function GetMemorySpaceWidth(MemorySpaceIndex : Integer) : Cardinal;
function GetNexusDevice : INexusDevice;
function GetOptionDesignatorDescription : WideString;
function GetOptionDesignatorId : WideString;
function GetOptionDesignatorName : WideString;
function GetPackageDescription : WideString;
function GetPackageDimensions : WideString;
function GetPackageId : WideString;
function GetPackageName : WideString;
function GetPackageTypeDescription : WideString;
function GetPackageTypeId : WideString;
function GetPackageTypeName : WideString;
function GetProcessorRegisterCount : Integer;
function GetProcessorRegisterName(RegisterIndex : Integer) : WideString;
function GetProcessorRegisterShortName(RegisterIndex : Integer) : WideString;
function GetProcessorRegisterValue(RegisterIndex : Integer) : Cardinal;
function GetProcessorRegisterWideValue(RegisterIndex : Integer) : WideString;
function GetProcessorRegisterWidth(RegisterIndex : Integer) : Cardinal;
function GetRackViewer : IInstrumentView;
function GetRegisterIndex_PC : Integer;
function GetRegisterIndex_SP : Integer;
function GetSoftBreakpointAddressByteAlign : Integer;
function GetSpeedGradeDescription : WideString;
function GetSpeedGradeId : WideString;
function GetSpeedGradeName : WideString;
function GetTemperatureGradeDescription : WideString;
function GetTemperatureGradeId : WideString;
function GetTemperatureGradeName : WideString;
function GetTerminationSupport : Boolean;
function GetVendorName : WideString;
function GetVendorPrimitiveLibraryName : WideString;
function InitDownload(MemorySpaceIndex : Integer) : LongBool;
function InvalidateResources : Boolean;
function LittleEndian : LongBool;
procedure PauseProcessor;
function ProcessorIsPaused : LongBool;
function ProcessorIsReset : LongBool;
function ProcessorIsRunning : LongBool;
function ProcessorIsUsingReducedInstructionSet : LongBool;
function ProgramDevice(Filename : WideString) : Integer;
function ReadUserCode : Cardinal;
procedure ReleaseResources;
function RemoveSoftBreakpoint(MemorySpace : Integer, Address : Int64, Replaced : Cardinal) : LongBool;
function ResetDevice : LongBool;
procedure ResetNexusRegisters;
procedure ResetProcessor;
function RestoreProcessorState : LongBool;
function RunDiagnostic : LongBool;
procedure RunSingleStepInSubstitutionRegister;
procedure RunSteps(StepCount : Integer);
function SaveProcessorState : LongBool;
procedure SetEmbeddedConstraintFile(AConstraintFile : WideString);
function SetNexusDevice(ANexusDevice : INexusDevice) : LongBool;
function SetProcessorRegisterValue(RegisterIndex : Integer, Value : Cardinal) : LongBool;
function SetProcessorRegisterWideValue(RegisterIndex : Integer, const Value : WideString) : LongBool;
procedure ShowAboutDialog;
function ShowConfiguration : Boolean;
procedure ShowCurrentSensePanel;
procedure SingleStepProcessor;
function Supports(Action : PWideChar) : LongBool;
function VendorToolsDescriptor : WideString;
function VendorToolsPresent : LongBool;
function VendorToolsUpToDate : LongBool;

## INexusFTDIDriver (8 members)
function ND_FT_GetDriverParam(Param : Integer, var Data : WideString) : HRESULT;
function ND_FT_GetQueueStatus(var QueueCount : Integer) : HRESULT;
function ND_FT_Purge(Mask : Cardinal) : HRESULT;
function ND_FT_Read(Size : Integer, var Data : WideString) : HRESULT;
function ND_FT_ResetDevice : HRESULT;
function ND_FT_SetBaudRate(Rate : Cardinal) : HRESULT;
function ND_FT_SetLatencyTimer(Latency : Byte) : HRESULT;
function ND_FT_Write(const Data : WideString) : HRESULT;

## INexusNotification (1 members)
property Code : Integer

## INexusNotificationWithInterface (2 members)
property Code : Integer
property Data : IInterface

## INexusNotificationWithObject (2 members)
property Code : Integer
property Data : IInterface

## INexusPort (11 members)
property SoftDevices[Index: Integer] : IDeviceLink
property ProcessorDevices[Index: Integer] : IDeviceLink
property BoardDevices[Index: Integer] : IDeviceLink
property HardDevices[Index: Integer] : IDeviceLink
property BoardDeviceCount : Integer
function GetShortDescription : WideString;
function GetUniqueId : WideString;
property HardDeviceCount : Integer
property JtagPort : IJtagPort
property ProcessorDeviceCount : Integer
property SoftDeviceCount : Integer

## INexusWorkbench (17 members)
property ProjectLinks[Index: Integer] : IProjectLink
property JtagPorts[Index: Integer] : IJtagPort
property PCBProjectLinks[Index: Integer] : IPCBProjectLink
property NexusPorts[Index: Integer] : INexusPort
function GetCoreFromDesignator(const Designator : WideString, const Project : IProject) : INexusCore;
function GetCoreFromDevice(const ANexusDevice : INexusDevice) : INexusCore;
function GetIsConnected : LongBool;
function GetProcessorDeviceFromDeviceId(const AnId : WideString) : IDeviceLink;
function GetProjectFromDevice(const ANexusDevice : INexusDevice) : IProject;
function GetSoftDeviceFromDeviceId(const AnId : WideString) : IDeviceLink;
property JtagPortCount : Integer
property NexusPortCount : Integer
property PCBProjectLinkCount : Integer
function Preferences : INexusWorkbenchPreferences;
function ProcessFlowRunner : IProcessFlowRunner;
property ProjectLinkCount : Integer
procedure SynthesizeCoresForProject(const Project : IAbstractVHDLProject, const Configuration : WideString);

## INexusWorkbenchPreferences (4 members)
function GetParameter(const ParamName : WideString) : WideString;
property GoLiveAtStartup : Boolean
property Live : Boolean
property Release : Boolean

## INoConnect (111 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusIndex : Integer;
function DM_BusKind : TBusKind;
function DM_BusPrefix : WideString;
function DM_BusRange1 : WideString;
function DM_BusRange2 : WideString;
function DM_BusRangeValue1 : Integer;
function DM_BusRangeValue2 : Integer;
function DM_BusWidth : Integer;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ComponentUniqueId : WideString;
function DM_CrossSheetText : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DefaultSearchID : WideString;
function DM_DisplayMode : Byte;
procedure DM_DoCrossProbeBase;
function DM_Electric : TPinElectrical;
function DM_Electrical : TPinElectrical;
function DM_ElectricalString : WideString;
function DM_FlattenedNetName : WideString;
function DM_Footprint : WideString;
function DM_FullCrossProbeString : WideString;
function DM_FullLogicalPartDesignator : WideString;
function DM_FullPhysicalPartDesignator : WideString;
function DM_FullPinName : WideString;
function DM_FullUniqueId : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_Id : WideString;
function DM_ImageIndex : Integer;
function DM_IsAutoGenerated : Boolean;
function DM_IsBusElement : Boolean;
function DM_IsBusMember : Boolean;
function DM_IsBusSection : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredFromHarness : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LinkObject : INetItem;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalPartDesignator : WideString;
function DM_LongDescriptorString : WideString;
function DM_MatchesPadName(const PadName : WideString) : Boolean;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetLabelText : WideString;
function DM_NetName : WideString;
function DM_NetNumber : WideString;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
function DM_OwnerHarnessNetLogical : INet;
function DM_OwnerHarnessNetPhysical : INet;
function DM_OwnerNetLogical : INet;
function DM_OwnerNetPhysical : INet;
function DM_OwnerPartID : Integer;
function DM_PairSwapId : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentID : WideString;
function DM_ParentSheetSymbolName : WideString;
function DM_ParentSheetSymbolSheetName : WideString;
function DM_Part : IPart;
function DM_PartID : Integer;
function DM_PartPinSwapId : WideString;
function DM_PartSwapId : WideString;
function DM_PartType : WideString;
function DM_PartUniqueId : WideString;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalPartDesignator : WideString;
function DM_PinName : WideString;
function DM_PinNameNoPartId : WideString;
function DM_PinNumber : WideString;
function DM_PinPackageLength : Integer;
function DM_PinPropagationDelay : Double;
function DM_PinSwapId : WideString;
function DM_PortName : WideString;
function DM_PowerText : WideString;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrintableNetName(out ShouldBeUsed : Boolean) : WideString;
function DM_RangeDefinedByValue : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_SheetName : WideString;
function DM_SheetSymbol : ISheetSymbol;
function DM_ShortDescriptorString : WideString;
function DM_SignalType : WideString;
function DM_UniqueIdName : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## INonProjectDocumentSavedNotification (4 members)
property Code : Integer
property OldFileName : WideString
property ProjectFileName : WideString
property ServerDocument : IServerDocument

## INoRefCountedObj (1 members)
function GetObject : Pointer;

## INote (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_Text : WideString;
function DM_TextReferenceItem(AIndex : Integer) : ITextReferenceItem;
function DM_TextReferenceItemsCount : Integer;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## INotificationCodeList (1 members)
procedure AddNotificationCode(ACode : Integer);

## INotificationContext (1 members)
function GetParameters : WideString;

## INotificationHandler (1 members)
procedure HandleNotification(const ANotification : INotification);

## IObjectClass (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MemberCount : Integer;
function DM_Members(Index : Integer) : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IObjectClassCluster (53 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MemberCount(Kind : TPCBClassMemberKind) : Integer;
function DM_MemberCountAllKinds : Integer;
function DM_MemberObjects(Kind : TPCBClassMemberKind, Index : Integer) : IDMObject;
function DM_Members(Kind : TPCBClassMemberKind, Index : Integer) : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SameAs(Other : IObjectClassCluster) : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IObserver (2 members)
property Active : Boolean
procedure Removed;

## IObserverTrack (1 members)
property Track : Boolean

## IOleForm (2 members)
procedure OnDestroy;
procedure OnResize;

## IOpenBus_Component (72 members)
function Add_Parameter(const AName : WideString, const AValue : WideString, out AParameter : ISch_Parameter) : LongBool;
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchObject(AObject : ISch_BasicContainer);
property ArbiterRoundRobin : Boolean
property AreaColor : TColor
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
property Color : TColor
property CompilationMasked : Boolean
property ConfiguratorName : WideString
procedure Connect(const APort1 : IOpenBus_Port, const APort2 : IOpenBus_Port);
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
function CreatePort(const ASide : WideString) : IOpenBus_Port;
procedure DeleteAll;
property Designator : ISch_Designator
procedure DestroyPort(var APort : IOpenBus_Port);
property Dimmed : Boolean
property Disabled : Boolean
procedure Disconnect(const APort : IOpenBus_Port);
property DisplayError : Boolean
property EnableDraw : Boolean
property ErrorColor : TColor
property ErrorKind : TErrorKind
property ErrorString : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function GetContainer_InternalPins(APinType : TOpenBusInternalPinType) : ISch_BasicContainer;
function GetHash : WideString;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_SchPorts : IOpenBus_PortCollection;
function GetState_WiringDiagramOriginUniqueId : WideString;
procedure GraphicallyInvalidate;
property GraphicallyLocked : Boolean
property Handle : WideString
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
function Import_FromUser_Parameters : Boolean;
property InterfaceType : TOpenBusComponentInterfaceType
property IsUserConfigurable : Boolean
property Kind : TOpenBusComponentKind
procedure LayoutPorts;
property LiveHighlightValue : WideString
property Location : TLocation
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
property Name : WideString
property ObjectId : TObjectId
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
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
procedure SetState_xSizeySize;
property SubProject : WideString
property UniqueId : WideString
property XSize : TCoord
property YSize : TCoord

## IOpenBus_Document (10 members)
procedure AutoConfigure;
property DefaultClock : WideString
property DefaultReset : WideString
procedure DisableAutoConfigure;
procedure EnableAutoConfigure;
function GetAllConnectedMemories(const AComp : IOpenBus_Component) : IInterfaceList;
function GetAllConnectedPeripherals(const AComp : IOpenBus_Component) : IInterfaceList;
function GetAllProcessors : IInterfaceList;
function RunSignalManager : LongBool;
procedure UpdateConnectors;

## IOpenBus_Link (65 members)
property Vertex[I: Integer] : TLocation
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
procedure ClearAllVertices;
property Color : TColor
property CompilationMasked : Boolean
procedure ConnectPorts(const APortOutId : WideString, const APortInId : WideString);
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
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
property PortIn : IOpenBus_Port
property PortInId : WideString
property PortOut : IOpenBus_Port
property PortOutId : WideString
procedure PostProcess_Import_FromUser;
procedure PreProcess_Import_FromUser;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function RemoveVertex(var Index : Integer) : Boolean;
function Replicate : ISch_BasicContainer;
procedure ResetErrorFields;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_xSizeySize;
property Transparent : Boolean
property UniqueId : WideString
property VerticesCount : Integer

## IOpenBus_PinGroup (26 members)
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddSchObject(AObject : ISch_BasicContainer);
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
procedure DeleteAll;
property Designator : WideString
function ExportToParameters : WideString;
procedure FreeAllContainedObjects;
function GetState_DescriptionString : WideString;
function GetState_IdentifierString : WideString;
function GetState_SchParameterByName(const AName : WideString) : ISch_Parameter;
function GetState_WiringDiagramOriginUniqueId : WideString;
property Handle : WideString
property HarnessType : WideString
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
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

## IOpenBus_Port (73 members)
procedure AddAndPositionSchObject(AObject : ISch_BasicContainer);
procedure AddErrorString(const AErrorString : WideString, AtEnd : LongBool);
property AddrBase : Integer
property AddrDecodeWidth : Integer
property AddrMode : Integer
property AddrWidth : Integer
procedure AddSchObject(AObject : ISch_BasicContainer);
property AreaColor : TColor
function BoundingRectangle : IDispatch;
function BoundingRectangle_Full : IDispatch;
property Caption : WideString
property Color : TColor
property CompilationMasked : Boolean
property Container : ISch_BasicContainer
procedure CopyTo(const AContainer : ISch_BasicContainer);
property DataWidth : Integer
procedure DeleteAll;
property Dimmed : Boolean
property Disabled : Boolean
property DisplayError : Boolean
function Duplicate : IOpenBus_Port;
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
property HasInputData : Boolean
property HasOutputData : Boolean
property HasSelectLines : Boolean
property HasText : Boolean
function I_ObjectAddress : IInterface;
function Import_FromUser : Boolean;
property Link : IOpenBus_Link
property LinkId : WideString
property LiveHighlightValue : WideString
property Location : TLocation
procedure Mirror(const Axis : IDispatch);
procedure MoveByXY(X : Integer, Y : Integer);
procedure MoveToXY(X : Integer, Y : Integer);
property Name : WideString
property Number : Integer
property ObjectId : TObjectId
property Owner : ISch_GraphicalObject
property OwnerDocument : ISch_Document
property OwnerPartDisplayMode : TDisplayMode
property OwnerPartId : Integer
property PortType : TOpenBusPortType
procedure PostProcess_Import_FromUser;
property Prefix : WideString
procedure PreProcess_Import_FromUser;
procedure RemoveSchObject(AObject : ISch_BasicContainer);
function Replicate : ISch_BasicContainer;
procedure ResetErrorFields;
procedure RotateBy90(const Center : IDispatch, A : TRotationBy90);
function SchIterator_Create : ISch_Iterator;
procedure SchIterator_Destroy(var AIterator : ISch_Iterator);
property Selection : Boolean
procedure SetState_Default(AUnit : TUnitSystem);
procedure SetState_Rotation(const AValue : TRotationBy90);
procedure SetState_xSizeySize;
property UniqueId : WideString
property X : TCoord
property Y : TCoord
property ZeroDelay : Boolean

## IOpenBus_PortCollection (3 members)
property Ports[AIndex: Integer] : IOpenBus_Port
property Count : Integer
procedure SetPortIndexInSection(const APort : IOpenBus_Port, AIndex : Integer);

## IOpenBusComponentConfigurator (1 members)
procedure AutoUpdateConfiguration(const ASchComponent : ISch_Component);

## IOptionPageActions (8 members)
procedure Apply;
function GetDataManager : IOptionsFormDataManager;
function GetOptionPageParams : IOptionPageParams;
procedure Load(const AFileName : WideString);
procedure ResetToDefault;
procedure Save(const AFileName : WideString);
procedure SetInitialState;
procedure UpdateDefaultPrimitivesBoard;

## IOptionsFormDataManager (3 members)
procedure LoadSettingsFromPreR10DXPPrefs(const ARegistryPath : WideString, const AExtractedPath : WideString);
procedure LoadSettingsFromPreviousVersion(APreviousVersionIndex : Integer);
procedure SaveSettingsToFiles(const ASettingsFiles : IStrings);

## IOptionsFormDataManagerExt (1 members)
procedure LoadSettingsFromFilesByMode(const ASettingsFiles : IStrings, const ADocumentsInstallPath : WideString, AImportMode : TOptionsRecImportMode);

## IOptionsManager (10 members)
function GetGlobalOptionsReader(const AServerName : WideString) : IOptionsReader;
function GetGlobalOptionsWriter(const AServerName : WideString) : IOptionsWriter;
function GetOptionsReader(const ServerName : WideString, const OldSettingsPath : WideString) : IOptionsReader;
function GetOptionsReader_FromIniFile(const AFullPath : WideString) : IOptionsReader;
function GetOptionsReader_FromRegistry(const AKey : WideString) : IOptionsReader;
function GetOptionsWriter(const ServerName : WideString) : IOptionsWriter;
function GetOptionsWriter_ForIniFile(const AFullPath : WideString) : IOptionsWriter;
function OptionsExist(const ServerName : WideString, const OldSettingsPath : WideString) : LongBool;
procedure RegisterMessageListenerIntf(ListenerId : Integer, MessageCode : Integer, const CallbackRecv : IOptionsMessageCallbackRecv);
procedure UnregisterMessageListener(ListenerId : Integer, MessageCode : Integer);

## IOptionsManagerFactory (1 members)
function GetOptionsManager : IOptionsManager;

## IOptionsMessageCallbackRecv (1 members)
procedure Notify(SenderId : Integer, MessageCode : Integer, const Parameters : WideString);

## IOptionsPage (9 members)
function CreateOptionsPage(const AServerName : WideString, const AOptionsPageName : WideString, const AOptionsPageActions : IOptionPageActions) : IOptionsPage;
function GetNotificationCode : Integer;
procedure GetStateControls;
property Modified : Boolean
function OptionsFormDataManager : IOptionsFormDataManager;
procedure PostEditControls;
procedure SetDefaultState;
procedure SetStateControls;
function TryApplyFormOptions : Boolean;

## IOptionsPage2 (1 members)
property StatusChecker : IOptionsStatusChecker

## IOptionsPageFactory (9 members)
function CreateOptionsPage(const AServerName : WideString, const AOptionsPageName : WideString, const AOptionsPageActions : IOptionPageActions) : IOptionsPage;
function GetNotificationCode : Integer;
procedure GetStateControls;
property Modified : Boolean
function OptionsFormDataManager : IOptionsFormDataManager;
procedure PostEditControls;
procedure SetDefaultState;
procedure SetStateControls;
function TryApplyFormOptions : Boolean;

## IOptionsReader (9 members)
function GetSections(const Path : WideString) : IStrings;
function ReadAllValues(const SectionName : WideString) : IStrings;
function ReadBoolean(const SectionName : WideString, const ValueName : WideString, DefaultValue : LongBool) : LongBool;
function ReadDouble(const SectionName : WideString, const ValueName : WideString, DefaultValue : Double) : Double;
function ReadInteger(const SectionName : WideString, const ValueName : WideString, DefaultValue : Integer) : Integer;
function ReadSection(const SectionName : WideString) : WideString;
function ReadString(const SectionName : WideString, const ValueName : WideString, const DefaultValue : WideString) : WideString;
function SectionExists(const SectionName : WideString) : LongBool;
function ValueExists(const SectionName : WideString, const ValueName : WideString) : LongBool;

## IOptionsStatusChecker (1 members)
property Modified : Boolean

## IOptionsWriter (6 members)
procedure EraseSection(const SectionName : WideString);
procedure Flush;
procedure WriteBoolean(const SectionName : WideString, const ValueName : WideString, Value : LongBool);
procedure WriteDouble(const SectionName : WideString, const ValueName : WideString, Value : Double);
procedure WriteInteger(const SectionName : WideString, const ValueName : WideString, Value : Integer);
procedure WriteString(const SectionName : WideString, const ValueName : WideString, const Value : WideString);

## IOutputer (71 members)
procedure DM_AddParameter(AName : WideString, AValue : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
procedure DM_ClearConfigurationLevelVariant;
procedure DM_ClearParameters;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DeleteParameter(Index : Integer);
procedure DM_DoCrossProbeBase;
function DM_EditProperties : Boolean;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_Generate_OutputFiles(AGeneratedFilename : PWideChar) : Boolean;
function DM_Generate_OutputFilesTo(OutputDirectory : WideString, ParameterOverrides : PWideChar) : Boolean;
function DM_Generate_Report(var AGeneratedFilename : WideString, var ATemplateFilename : WideString) : Boolean;
function DM_GeneratorName : WideString;
function DM_GetDescription : WideString;
function DM_GetDocumentKind : WideString;
function DM_GetDocumentPath : WideString;
function DM_GetOutputCategory : TOutputCategory;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetViewName : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PredefinedOutput : IPredefinedOutput;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetConfigurationLevelVariant(AVariant : WideString);
procedure DM_SetDocumentPath(ADocPath : WideString);
procedure DM_SetPrintMode(AFitPrintToPage : Boolean);
procedure DM_SetPrintScale(APrintScale : Double);
procedure DM_SetViewName(const AValue : WideString);
function DM_SharedConfiguration : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SupportsVariants : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViewName : WideString;
property VariantName : WideString
property VCSProject : IInterface

## IOutputJob (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_JobName : WideString;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_Outputer(Index : Integer) : IOutputer;
function DM_OutputerCount : Integer;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IOutputManager (1 members)
function DM_GetPredefinedOutputForCategory(Category : TOutputCategory, Index : Integer) : IPredefinedOutput;

## IOutputMedium (57 members)
procedure BeginRunCategories;
function CanBeReleaseManaged : Boolean;
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
procedure EndRunCategories;
function FindConfiguration : IOutputer;
function GetOutputPathByOutputer(AOutputer : IOutputer) : WideString;
property Name : WideString
property OutputPath : WideString
procedure PredictOutputFileNames(AConfigurations : IInterfaceList, AOutJobFileName : WideString, AFiles : IStrings);
function ReleaseManaged : Boolean;
property TypeString : WideString
property VCSProject : IInterface

## IOutputRunner (4 members)
procedure AddOutputConfiguration(AOutputConfiguration : IOutputer);
procedure GetLastOutputFileNames(Strings : IStrings);
function GetLastRunResult : TOutputResult;
function Run : TOutputResult;

## IOutputView (8 members)
property Lines[AIndex: Integer] : WideString
procedure Clear;
function Count : Integer;
function GetText : WideString;
function HandleAllocated : ByteBool;
procedure HighlightCharLine(CharNum : Integer);
procedure ScrollToChar(CharNum : Integer);
procedure UpdateWindow;

## IOverriddenOptions (4 members)
function GetValue(const AOptionName : WideString, out AValue : Boolean) : Boolean;
function IsEmpty : Boolean;
procedure RegisterListenerForServer(const AServerName : WideString, const ACallbackRecv : IOptionsMessageCallbackRecv);
procedure UnregisterListenerForServer(const AServerName : WideString);

## IParameter (73 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AreVariedValuesEqual(const Other : IParameter) : Boolean;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CalculatingFormula : Boolean;
function DM_ConfigurationName : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Description : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_FullName : WideString;
function DM_GeneralField : Integer;
function DM_GetAllowDatabaseSynchronize : Boolean;
function DM_GetAllowLibrarySynchronize : Boolean;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsSystemParameter : Boolean;
function DM_IsVirtual : Boolean;
function DM_Kind : TParameterKind;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NewName : WideString;
function DM_NewValue : WideString;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OriginalOwner : IDMObject;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_RawText : WideString;
function DM_Replicate : IParameter;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetCalculatingFormula(AValue : Boolean);
procedure DM_SetName(const AName : WideString);
procedure DM_SetNewName(const AValue : WideString);
procedure DM_SetNewValue(const AValue : WideString);
procedure DM_SetValue(const Value : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_UniqueId : WideString;
function DM_ValidForNavigation : Boolean;
function DM_Value : WideString;
function DM_VariedValueItemCount : Integer;
function DM_VariedValueItems(Index : Integer) : IVariedValueItem;
function DM_VHDLEntity : IVHDLEntity;
function DM_Visible : Boolean;
property VCSProject : IInterface

## IParameterChange (21 members)
property Enabled : Boolean
function Exists : Boolean;
function IsAdd : Boolean;
function IsDisabledAdd : Boolean;
function IsDisabledRemove : Boolean;
function IsDisabledValueChange : Boolean;
function IsNull : Boolean;
function IsRemove : Boolean;
function IsRename : Boolean;
property IsSystem : Boolean
function IsValueChange : Boolean;
property NewExists : Boolean
property NewName : WideString
property NewValue : WideString
property OrigExists : Boolean
property OrigName : WideString
property OrigValue : WideString
property Parameter : IParameter
procedure Revert;
function Value : WideString;
property VisibleOnAdd : Boolean

## IParameterChanges (6 members)
procedure AddChange(const OrigName : WideString, const NewName : WideString, const NewValue : WideString, NewExists : Boolean, Enabled : Boolean, VisibleOnAdd : Boolean);
function ChangeForOrigName(const OrigName : WideString) : IParameterChange;
function ChangesCount : Integer;
procedure Clear;
function GetChange(AIndex : Integer) : IParameterChange;
function NonNullChangesCount : Integer;

## IParameterVariation (61 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculatedValue(const Component : IComponent, const ComponentVariation : IComponentVariation) : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CalculatingFormula : Boolean;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NewParameterName : WideString;
function DM_NewVariedValue : WideString;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_ParameterName : WideString;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetCalculatingFormula(Value : Boolean);
procedure DM_SetNewParameterName(const Value : WideString);
procedure DM_SetNewVariedValue(const Value : WideString);
procedure DM_SetParameterName(const Value : WideString);
procedure DM_SetState_NotUsed;
procedure DM_SetState_Used;
procedure DM_SetVariedValue(const Value : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_Used : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VariedValue : WideString;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IParametricView (1 members)
procedure InitFromParameters(const Parameters : WideString);

## IParametricViewRaw (1 members)
procedure InitFromParameters(const Parameters : WideString);

## IParamObject (1 members)
function GetDataType : TFieldType;

## IParamStreamObject (3 members)
function GetBytes : TArray<System.Byte>;
function GetDataType : TFieldType;
procedure SetKnownSize(KnownSize : Integer);

## IPart (111 members)
procedure DM_AddConfigurationParameters;
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AllPinCount : Integer;
function DM_AssignedDesignator : WideString;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculatedDesignator : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CenterLocationX : Integer;
function DM_CenterLocationY : Integer;
function DM_ChannelOffset : Integer;
function DM_ChildProjectSheet : IDocument;
function DM_ChildVHDLEntity : WideString;
function DM_Comment : WideString;
function DM_ComponentKind : TComponentKind;
function DM_ConfigurationParameters : WideString;
function DM_ConfiguratorName : WideString;
function DM_CurrentImplementation(AType : WideString) : IComponentImplementation;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DatabaseTableName : WideString;
function DM_Description : WideString;
function DM_DesignatorLocationX : Integer;
function DM_DesignatorLocationY : Integer;
function DM_DesignatorLocked : Boolean;
function DM_DisplayMode : Byte;
procedure DM_DoCrossProbeBase;
function DM_ExternalPartHandle : WideString;
function DM_FirstPinLocationX : Integer;
function DM_FirstPinLocationY : Integer;
function DM_Footprint : WideString;
function DM_FullCrossProbeString : WideString;
function DM_FullLogicalDesignator : WideString;
function DM_FullLogicalDesignatorForDisplay : WideString;
function DM_FullPhysicalDesignator : WideString;
function DM_FullPhysicalDesignatorForDisplay : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_Height : Integer;
function DM_ImageIndex : Integer;
function DM_ImplementationCount : Integer;
function DM_Implementations(Index : Integer) : IComponentImplementation;
function DM_InstanceCount : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsWireTermination : Boolean;
function DM_Layer : WideString;
function DM_LibraryReference : WideString;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDesignator : WideString;
function DM_LogicalOwnerDocument : IDocument;
function DM_LongDescriptorString : WideString;
function DM_MaxPartCount : Integer;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NewDesignator : WideString;
function DM_NewPartId : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OldPartId : Integer;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PartID : Integer;
function DM_PartIdLocked : Boolean;
function DM_PartType : WideString;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDesignator : WideString;
function DM_PinCount : Integer;
function DM_Pins(Index : Integer) : INetItem;
function DM_PrimaryCrossProbeString : WideString;
function DM_ReferenceLocationX : Integer;
function DM_ReferenceLocationY : Integer;
function DM_Replicate(const ADocument : IDMObject) : IPart;
function DM_Rotation : Double;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetExternalPartHandle(APCBComponentHandle : WideString);
procedure DM_SetFootprintItemGUID(const AValue : WideString);
procedure DM_SetFootprintRevisionGUID(const AValue : WideString);
procedure DM_SetNewPartId(Value : Integer);
procedure DM_SetOldPartId(Value : Integer);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SourceDesignator : WideString;
function DM_SourceHierarchicalPath : WideString;
function DM_SourceLibraryName : WideString;
function DM_SourceUniqueId : WideString;
function DM_SubProject : WideString;
function DM_UniqueId : WideString;
function DM_UniqueIdName : WideString;
function DM_UniqueIdPath : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IPartProperties (65 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DesignItemID : WideString;
procedure DM_DoCrossProbeBase;
function DM_FootprintItemGUID : WideString;
function DM_FootprintRevisionGUID : WideString;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsGenericComponent : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_ItemGUID : WideString;
function DM_LibIdentifierKind : TLibIdentifierKind;
function DM_LibraryIdentifier : WideString;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NewHasDesignatorRecord : Boolean;
function DM_NewPhysicalDesignator : WideString;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_RevisionGUID : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetNewDesignatorLocked(AValue : Boolean);
procedure DM_SetNewHasDesignatorRecord(AValue : Boolean);
procedure DM_SetNewPhysicalDesignator(AValue : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SymbolReference : WideString;
function DM_UseDBTableName : Boolean;
function DM_UseLibraryName : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VariationUniqueID : WideString;
function DM_VaultGUID : WideString;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IPartSearch (1 members)
function GetSelectedSupplierLinks : ISupplierSourceRelationshipList;

## IPasswordsManager (4 members)
function DecryptPassword(const APassword : WideString) : WideString;
function DecryptPasswordPerUser(const APassword : WideString) : WideString;
function EncryptPassword(const APassword : WideString) : WideString;
function EncryptPasswordPerUser(const APassword : WideString) : WideString;

## IPCBConfiguration (57 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentRevision : IULB_ItemRevision;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DefaultContentTypeGUID : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetConfigurationType : WideString;
function DM_GetLocalReleaseTarget : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_ReleaseItem : IULB_Item;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetConfigurationType(const AValue : WideString);
procedure DM_SetLocalReleaseTarget(const AValue : WideString);
procedure DM_SetName(Value : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SupportedContentTypes : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IPCBProjectLink (7 members)
function ContainsProjectLink(AProjectLink : IProjectLink) : Boolean;
procedure CrossProbe;
function DocumentKind : WideString;
function GetProject : IProject;
function GetProjectFullPath : WideString;
function GetSchComponentLink(Index : Integer) : ISchComponentLink;
function GetSchComponentLinkCount : Integer;

## IPercentState (4 members)
property CurrentPercentCount : Integer
property Marquee : Boolean
property OldPercent : Integer
property TotalPercentCount : Integer

## IPhysicalAnnotateOptions (8 members)
function GetDocumentName : WideString;
function GetIndexEnabled : Boolean;
function GetIndexStartValue : Integer;
function GetIsEnabled : Boolean;
function GetOrder : Integer;
function GetSelectionScope : TDocAnnotationScope;
function GetSuffix : WideString;
function GetUniqueIDPath : WideString;

## IPinConfiguration (51 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_Function(Index : Integer) : WideString;
function DM_FunctionsCount : Integer;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PinDesignator : WideString;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SymbolicName : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IPinMapping (6 members)
function GetDescription : WideString;
function GetEntity : IBSDLEntity;
function GetPinName : WideString;
function GetPinNumber : WideString;
function GetScanPin : IScanPin;
function GetShortDescription : WideString;

## IPinPair (51 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsSource : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_Primitive(Index : Integer) : IDMObject;
function DM_PrimitivesCount : Integer;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IPluginsPlatformVersions (4 members)
property Platforms[Index: Integer] : WideString
property Versions[PlatformName: WideString] : WideString
procedure Clear;
property Count : Integer

## IPluginsRegistry (11 members)
property Items[AIndex: Integer] : IPluginsRegistryItem
procedure AddItem(const APluginRegistryItem : IPluginsRegistryItem);
property Count : Integer
function CreatePluginsRegistryItem : IPluginsRegistryItem;
function FindItemByGuid(const AGuid : WideString) : IPluginsRegistryItem;
function FindItemByHRID(const HRID : WideString) : IPluginsRegistryItem;
function IsBetaExtensionExists : Boolean;
procedure RemoveItem(const APluginRegistryItem : IPluginsRegistryItem);
procedure Save;
procedure Unlock;
procedure UpdateItem(const APluginRegistryItem : IPluginsRegistryItem);

## IPluginsRegistryItem (25 members)
property CategoryGuid : WideString
property CategoryName : WideString
property CreatedBy : WideString
property DateInstalled : TDateTime
property GUID : WideString
property Help : WideString
property HRID : WideString
property IsSystem : Boolean
property LargeImage : WideString
property LongDescription : WideString
property Path : WideString
property PlatformVersions : IPluginsPlatformVersions
property ReadMe : WideString
property ReleasedDate : TDateTime
property ReleaseNotes : WideString
property Requirements : WideString
property ShortDescription : WideString
property SmallImage : WideString
procedure StartAutoRun(AutoRunAction : TPluginAutoRunAction);
property Status : TPluginsStatus
property Title : WideString
procedure Validate;
property VaultGuid : WideString
property Version : WideString
property VersionGuid : WideString

## IPolyArcMap (1 members)
function GetPoly(const AShape : IPCB_PolygonalShapesWithHoles, const UnTranslate : IDispatch, const UnRotate : Double) : IPCB_CopperPolyArc;

## IPositionLinkObserver (2 members)
procedure PosChanged;
procedure PosChanging;

## IPositionLinkObserver170 (1 members)
procedure PosChanged;

## IPredefinedOutput (6 members)
function DM_GroupOrder : WideString;
function DM_SetCaption : WideString;
function DM_SetCategory : TOutputCategory;
function DM_SetName : WideString;
function DM_SortOrder : WideString;
function DM_VisibleOrder : WideString;

## IPreferencesView (1 members)
procedure Apply;

## IPreviewableDocument (2 members)
property FileName : WideString
function GenerateDocumentPreview(const APreviewImage : IPreviewImage) : Boolean;

## IPreviewImage (8 members)
procedure BuildAllImagesFromFullsizePicture;
procedure BuildLargeImageFromFullsizePicture;
procedure BuildMediumImageFromFullsizePicture;
procedure BuildSmallImageFromFullsizePicture;
function CreateFullsizePictureBitmap : HBITMAP;
procedure DrawLargeImageProportional(ADC : HDC, const ARect : IDispatch);
procedure FinalizeFullsizeDrawing;
function InitializeFullsizeDrawing(AMetaMMWidth : Integer, AMetaMMHeight : Integer) : HDC;

## IPrimitiveDefaultItemSupportMeasureUnits (1 members)
function GetMeasureUnit : Integer;

## IPrimitiveDefaultsItem (4 members)
function GetCaption : WideString;
function GetGroupName : WideString;
function GetImageSource : WideString;
function GetPrimitive : IInterface;

## IPrintedElectronics (11 members)
procedure Clear;
function GetDielectricalLayers : IPCB_LayerSet;
function GetDielectricBetweenTwoLayers(AUpperLayer : Integer, ALowerLayer : Integer) : IPCB_LayerSet;
function GetElectricalLayers : IPCB_LayerSet;
function GetLowerDielectricBetweenTwoLayers(AUpperLayer : Integer, ALowerLayer : Integer) : IPCB_LayerObject;
function GetMaxClearance : Integer;
function GetMaxViaSizeOnElectricalLayers(const APrimitive : IPCB_Primitive) : Integer;
function GetState_ArcApproximation : Integer;
function ProducePrimitiveToCheck(APrimitive1 : IPCB_Primitive, APrimitive2 : IPCB_Primitive, var AUpperPrimitive : IPCB_Primitive, var ALowerPrimitive : IPCB_Primitive) : Boolean;
function ProducePrimitiveToCheckOnTopLayerInGroup(APrimitive1 : IPCB_Primitive, APrimitive2 : IPCB_Primitive, var AUpperPrimitive : IPCB_Primitive, var ALowerPrimitive : IPCB_Primitive) : Boolean;
procedure RemovePrimitive(APrimitive : IPCB_Primitive);

## IProcessControl (3 members)
procedure PostProcess(const AContext : IInterface, AParameters : PWideChar);
procedure PreProcess(const AContext : IInterface, AParameters : PWideChar);
property ProcessDepth : Integer

## IProcessFlow (35 members)
procedure AddChildStage(AStage : IProcessFlow);
procedure AddDependency(AStage : IProcessFlow);
function CanEditProperties : LongBool;
function CanRun : LongBool;
procedure ClearChildren;
procedure ClearDependencies;
procedure ClearLastRunResult;
procedure EditProperties;
function FlowState : TProcessFlowState;
function GetBasePath : WideString;
function GetChildStage(AIndex : Integer) : IProcessFlow;
function GetChildStageCount : Integer;
function GetDependenciesCount : Integer;
function GetDependency(AIndex : Integer) : IProcessFlow;
function GetParentStage : IProcessFlow;
function InputDescription : WideString;
function IsCategory : LongBool;
function IsRunning : LongBool;
function LastRunResult : TFlowRunResult;
function OutputDescription : WideString;
procedure ProjectChanged(AProjectPath : WideString);
function ReportCount : Integer;
function ReportPath(AIndex : Integer) : WideString;
function Run(ARunner : IProcessFlowRunner) : TFlowRunResult;
function RunAll(ARunner : IProcessFlowRunner) : TFlowRunResult;
function RunIfOutOfDate(ARunner : IProcessFlowRunner) : TFlowRunResult;
function RunningStage : IProcessFlow;
function RunWholeStage(ARunner : IProcessFlowRunner) : TFlowRunResult;
procedure SetBasePath(aPath : WideString);
procedure SetParentStage(AStage : IProcessFlow);
function StageCaption : WideString;
function StageDescription : WideString;
function StageName : WideString;
procedure Stop;
function UpdateFlowState : LongBool;

## IProcessFlowRunner (7 members)
procedure AddError(AType : WideString, AFullErrorText : WideString);
procedure AddSummaryLine(ASection : WideString, AKey : WideString, AValue : WideString, AReportPath : WideString);
property CurrentHardDevice : IInterface
function FlowRunning : LongBool;
procedure FlowStageStarting(AStage : IProcessFlow);
procedure RunEnded;
procedure RunStarted;

## IProcessLauncher (3 members)
procedure GetCommandState(AProcess : PWideChar, AParameters : PWideChar, const AContext : IServerDocumentView, var Enabled : LongBool, var Checked : LongBool, var Visible : LongBool, Caption : PWideChar, ImageFile : PWideChar);
procedure PostMessage(AProcess : PWideChar, AParameters : PWideChar, MaxParameterSize : Integer, const AContext : IServerDocumentView);
procedure SendMessage(AProcess : PWideChar, AParameters : PWideChar, MaxParameterSize : Integer, const AContext : IServerDocumentView);

## IProcessLauncher2 (1 members)
procedure SetCommandGetStateCallback(const AProcess : WideString, const AGetStateCallback : ICommandGetState);

## IProcessLauncherInfo (10 members)
property Caption : WideString
property Description : WideString
property ImageFile : WideString
property Key : Integer
property Key2 : Integer
property Parameters : WideString
property ServerCommand : WideString
property Shift : TShiftState
property Shift2 : TShiftState
property ShortcutText : WideString

## IProcessorRegister (15 members)
procedure Export_ToCore;
function GetByte0 : Byte;
function GetByte1 : Byte;
function GetByte2 : Byte;
function GetByte3 : Byte;
function GetIndex : Integer;
function GetName : WideString;
function GetNexusDevice : INexusDevice;
function GetShortName : WideString;
function GetValue : Cardinal;
function GetWideValue : WideString;
function GetWidth : Integer;
procedure Import_FromCore;
procedure SetValue(NewValue : Cardinal);
procedure SetWideValue(const NewValue : WideString);

## IProductInfo (8 members)
function CustomSplash : IDXPSplash;
function GetLicenseExpirationInfo(const ALicenseExpirationList : IInterfaceList, out AMinDaysLeft : Integer, out AInfo : WideString) : LongBool;
function GetPCBDocumentKind : WideString;
function GetValue(const ASectionName : WideString, const AValueName : WideString) : WideString;
function ImplementingServerName : WideString;
function MainImageListHandle : NativeUInt;
function SupportsOptionsPage(const APageName : WideString, ADefault : Boolean) : LongBool;
function TryGetValue(const ASectionName : WideString, const AValueName : WideString, out AValue : WideString) : LongBool;

## IProject (278 members)
function DM_AddAsDeviceSheet(const ADocumentPath : WideString) : IDocument;
function DM_AddConfiguration(Configuration : WideString) : IConfiguration;
procedure DM_AddConfigurationParameters(Configuration : WideString);
procedure DM_AddConfigurationParameters_Physical(Configuration : WideString);
procedure DM_AddControlPanel(Filename : WideString);
procedure DM_AddDeviceSheetFolder(FolderPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddGeneratedDocument(Filename : WideString);
procedure DM_AddMissingAutoCrossRefs;
procedure DM_AddOrSetUniqueIdMapping(const ASchHandle : WideString, const AUniqueIdMapping : WideString);
procedure DM_AddParameter(AName : WideString, AValue : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AddProjectVariant : IProjectVariant;
procedure DM_AddSearchPath(SearchPath : WideString, IncludeSubFolders : Boolean);
procedure DM_AddSourceDocument(Filename : WideString);
procedure DM_AddSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_AddVirtualDocument(const APath : WideString);
procedure DM_ApplyChangesFromSystemDataModel;
function DM_AvailableDatabaseLinks : Boolean;
procedure DM_BeginUpdate;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateFormula(const DMObject : IDMObject, const AFormula : WideString, ForComponentVariation : Boolean, const ProjectVariant : IProjectVariant, const Variations : ISafeInterfaceList) : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChannelDesignatorFormat : WideString;
function DM_ChannelRoomLevelSeperator : WideString;
function DM_ChannelRoomNamingStyle : TChannelRoomNamingStyle;
procedure DM_ClearAllNetColors;
procedure DM_ClearSchematicObjectsErrorFields(const SchematicId : WideString);
procedure DM_ClearViolations;
function DM_Compile : LongBool;
function DM_CompileEx(All : LongBool, var Cancelled : LongBool) : LongBool;
function DM_CompileProjectOrDocument(ADocument : IDocument) : Boolean;
function DM_ComponentMappings(AnImplementationDocument : WideString) : IComponentMappings;
function DM_ConfigurationCount : Integer;
function DM_Configurations(Index : Integer) : IConfiguration;
function DM_CrossRefCrossSheets : Boolean;
function DM_CrossRefLocationStyle : TCrossRefLocationStyle;
function DM_CrossRefPorts : TCrossRefPorts;
function DM_CrossRefSheetEntries : Boolean;
function DM_CrossRefSheetStyle : TCrossRefSheetStyle;
function DM_CurrentProjectVariant : IProjectVariant;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DataModel : IUnifiedDataModel;
function DM_DeviceSheetFolderCount : Integer;
function DM_DeviceSheetFolders(Index : Integer) : IDeviceSheetFolder;
procedure DM_DeviceSheetRemoved(const Filename : WideString);
function DM_DiffPairSuffixCount : Integer;
procedure DM_DiffPairSuffixes(Index : Integer, var Positive : WideString, var Negative : WideString);
procedure DM_DisableOnlineSynchronization(AUpdateParameters : Boolean);
procedure DM_DoCrossProbeBase;
procedure DM_DoCrossSelection;
function DM_DocumentBackups : IDocumentBackups;
function DM_DocumentClassGenerationOptions(const ADocumentPath : WideString) : IDocumentClassGenerationOptions;
function DM_DocumentFlattened : IDocument;
function DM_DocumentIsGenerated(const ADocumentFileName : WideString) : Boolean;
function DM_EditConfigurations : LongBool;
function DM_EditOptions(DefaultPage : WideString) : LongBool;
procedure DM_EndUpdate;
procedure DM_EnsureAllCachedManagedOutputJobs;
procedure DM_EnsureStandardConfigurations;
function DM_ErrorLevels(AErrorKind : TErrorKind) : TErrorLevel;
procedure DM_Export_ToFile(const AFileName : WideString);
function DM_FileLessItemGUID : WideString;
function DM_FileLessVaultGUID : WideString;
function DM_FindProjectVariant(ADescription : WideString) : IProjectVariant;
procedure DM_FixDesignatorAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ALogicalDesignator : WideString, ARemoveOriginal : Boolean);
procedure DM_FixSheetNumberAnnotationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const ADocumentFileName : WideString, ARemoveOriginal : Boolean);
procedure DM_FixVariationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const APhysicalDesignator : WideString, const AProjectVariantUniqueId : WideString, const AProjectVariantDescription : WideString, ARemoveOriginal : Boolean);
procedure DM_ForceIncludeRequiredOutJobs(const AConfigurationManager : IDMS_ConfigurationManager, const AVaultGUID : WideString);
function DM_FSMCodingStyle : TFSMCodingStyle_DropDownList;
function DM_FSMEncodingStyle : TFSMEncodingStyle_DropDownList;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GeneratedDocumentCount : Integer;
function DM_GeneratedDocuments(Index : Integer) : IDocument;
procedure DM_GenerateSystemDataModel;
function DM_GetAllowPortNetNames : Boolean;
function DM_GetAllowSheetEntryNetNames : Boolean;
function DM_GetAnnotationManager : IAnnotationManager;
function DM_GetAnnotationOptions : IAnnotateOptions;
function DM_GetAppendSheetNumberToLocalNets : Boolean;
function DM_GetAutomaticSheetsNumbers : IAutomaticSheetsNumbers;
function DM_GetConfigurationByName(Configuration : WideString) : IConfiguration;
function DM_GetDefaultConfiguration : IConfiguration;
function DM_GetDefaultConfigurationName : WideString;
function DM_GetDefaultPcbType : WideString;
function DM_GetDocumentByDocumentId(const ADocumentId : WideString) : IDocument;
function DM_GetDocumentFromName(DocumentName : WideString) : IDocument;
function DM_GetDocumentFromPath(DocumentPath : WideString) : IDocument;
function DM_GetECOInterface : IECO;
function DM_GetHasWriteAccessAsync : Boolean;
function DM_GetIncludeDesignInRelease : Boolean;
function DM_GetIsActiveOnlineSynchronization : Boolean;
function DM_GetLinkedManagedProjectGUID : WideString;
function DM_GetNetColorByName(const ANetName : WideString) : TColor;
function DM_GetNetInfosToExportCount : Integer;
function DM_GetNetInfoToExport(AIndex : Integer) : WideString;
function DM_GetNotificationService : IEDMS_NotificationService;
function DM_GetOpenOutputs : Boolean;
function DM_GetOrCreateLibraryPart(const AComponentLibraryLink : IComponentLibraryLink) : IPart;
function DM_GetOriginalDocumentFromPath(const ADocumentPath : WideString) : IDocument;
function DM_GetOutputPath : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPinSwapBy_Netlabel : Boolean;
function DM_GetPinSwapBy_Pin : Boolean;
function DM_GetProjectClassGenerationOptions : IProjectClassGenerationOptions;
function DM_GetRelativeOutputPath : WideString;
function DM_GetReleaseFolderPath : WideString;
function DM_GetReleaseMode : TProjectReleaseMode;
function DM_GetReleaseNamings : WideString;
function DM_GetReleaseNamingTemplates : WideString;
function DM_GetReleaseVaultGUID : WideString;
function DM_GetReleaseZipPath : WideString;
function DM_GetReportFactory : IReportFactory;
function DM_GetRequiredCapabilities(ACapabilities : ICapabilityList) : Boolean;
function DM_GetScrapDocument(DocumentPath : WideString) : IDocument;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTemplateLink : WideString;
function DM_GetTimeStampedOutputFolder : Boolean;
function DM_GetTopLevelDocumentStructure : IDocumentStructure;
function DM_GetVariantSchLibrary : WideString;
function DM_GetVirtualParametersManager : IVirtualParametersManager;
function DM_GetWebURL(const APage : WideString, const AOpenedFrom : WideString, AIncludeAuthToken : Boolean) : WideString;
function DM_GlobalPreferencesRevisionGUID : WideString;
function DM_GlobalPreferencesVaultGUID : WideString;
function DM_HierarchyMode : TFlattenMode;
function DM_HierarchyModeForCompile : TFlattenMode;
function DM_ImageIndex : Integer;
function DM_InCompilation : Boolean;
function DM_IndexOfSourceDocument(Filename : WideString) : Integer;
function DM_InitializeOutputPath(AnOutputType : WideString) : WideString;
function DM_IsActive : Boolean;
function DM_IsConnectiveSelectedNow(AConnective : IDMObject) : Boolean;
function DM_IsCrossRefAddedToProject : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFileLessClone : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsManagedDocument(ADocument : IDocument) : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsReuseBlock : Boolean;
function DM_IsSharedWithMe : Boolean;
function DM_IsSolution : Boolean;
function DM_IsTemplate : Boolean;
function DM_IsVaultFileLessEditing : Boolean;
function DM_IsViewOnly : Boolean;
procedure DM_LoadAllLogicalDocuments;
procedure DM_LoadManagedParameters;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDocumentCount : Integer;
function DM_LogicalDocuments(Index : Integer) : IDocument;
function DM_LogicalDocumentsIsDeviceSheet(const ADocument : IDocument) : Boolean;
function DM_LongDescriptorString : WideString;
function DM_ManagedParameterCount : Integer;
function DM_ManagedParameters(Index : Integer) : IParameter;
function DM_ManagedProjectGUID : WideString;
procedure DM_MoveSourceDocument(Filename : WideString, NewIndex : Integer);
function DM_NeedsCompile : LongBool;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OfflineProjectGUID : WideString;
function DM_OptionsStorage : IOptionsStorage;
function DM_Outputers(Name : WideString) : IOutputer;
function DM_OwnedProjectCount : Integer;
function DM_OwnedProjects(Index : Integer) : IProject;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentProject : IProject;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDocumentCount : Integer;
function DM_PhysicalDocuments(Index : Integer) : IDocument;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrimaryImplementationDocument : IDocument;
function DM_ProjectContainsOutputJobs : Boolean;
function DM_ProjectFileName : WideString;
function DM_ProjectFullPath : WideString;
procedure DM_ProjectStructureChanged;
function DM_ProjectTemplateLocation : WideString;
procedure DM_ProjectVariantChanged;
function DM_ProjectVariantCount : Integer;
function DM_ProjectVariants(Index : Integer) : IProjectVariant;
procedure DM_RefreshHarnessDefinitions;
procedure DM_RefreshInWorkspaceForm;
function DM_ReleaseProjectCopy : IProject;
function DM_RemoveAllConfigurations : Boolean;
function DM_RemoveConfigurationByName(Configuration : WideString) : Boolean;
procedure DM_RemoveHarnessFile(const HarnessFileFullPath : WideString);
procedure DM_RemoveParameter(const AParameter : IParameter);
procedure DM_RemoveParameterByName(const AParameterName : WideString);
procedure DM_RemoveProjectVariant(Index : Integer);
procedure DM_RemoveSourceDocument(Filename : WideString);
procedure DM_RemoveSubManagedProject(ProjectGUID : WideString, RevisionGUID : WideString, LocalPath : WideString);
procedure DM_RemoveVirtualDocument(const APath : WideString);
function DM_ReportSuppressedErrorsInMessages : Boolean;
procedure DM_ResetLastCompileTimeForAllDocuments;
procedure DM_ResetReleaseProject;
function DM_ResumeContinuousCompilation : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SearchPathCount : Integer;
function DM_SearchPaths(Index : Integer) : ISearchPath;
function DM_SecondaryCrossProbeString : WideString;
function DM_ServerDocument : IServerDocument;
procedure DM_SetAllowPortNetNames(AAllow : Boolean);
procedure DM_SetAllowSheetEntryNetNames(AAllow : Boolean);
procedure DM_SetAppendSheetNumberToLocalNets(AAppend : Boolean);
procedure DM_SetAsCurrentProject;
procedure DM_SetConnectedNetsColor(const ANet : INet, AColor : TColor);
procedure DM_SetCurrentProjectVariant(AProjVariant : IProjectVariant);
procedure DM_SetCurrentProjectVariantSilent(AProjectVariant : IProjectVariant);
procedure DM_SetDefaultConfigurationName(Configuration : WideString);
procedure DM_SetDefaultPcbType(PcbType : WideString);
procedure DM_SetErrorLevels(AErrorKind : TErrorKind, AErrorLevel : TErrorLevel);
procedure DM_SetGlobalPreferencesRevisionGUID(AValue : WideString);
procedure DM_SetGlobalPreferencesVaultGUID(AValue : WideString);
procedure DM_SetHierarchyMode(AFlatten : TFlattenMode);
procedure DM_SetIncludeDesignInRelease(AValue : Boolean);
procedure DM_SetLinkedManagedProjectGUID(const AValue : WideString);
procedure DM_SetManagedProjectGUID(const AValue : WideString);
procedure DM_SetModified;
procedure DM_SetNetColorByName(const ANetName : WideString, AColor : TColor);
procedure DM_SetOfflineProjectGUID(const AValue : WideString);
procedure DM_SetOpenOutputs(AValue : Boolean);
procedure DM_SetOutputPath(AnOutputPath : WideString);
procedure DM_SetPinSwapBy_Netlabel(AAllow : Boolean);
procedure DM_SetPinSwapBy_Pin(AAllow : Boolean);
procedure DM_SetRelativeOutputPath(AValue : WideString);
procedure DM_SetReleaseFolderPath(AValue : WideString);
procedure DM_SetReleaseMode(AValue : TProjectReleaseMode);
procedure DM_SetReleaseNamings(const AValue : WideString);
procedure DM_SetReleaseNamingTemplates(const AValue : WideString);
procedure DM_SetReleaseProjectCopy(AProject : IProject);
procedure DM_SetReleaseVaultGUID(const Value : WideString);
procedure DM_SetReleaseZipPath(AValue : WideString);
procedure DM_SetTimeStampedOutputFolder(AValue : Boolean);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ShowVariantsDrawingStylesDialog(const AValue : IVariantOption) : IVariantOption;
procedure DM_StartCrossProbing(CtrlDoesSwitch : Boolean);
procedure DM_StartNavigation;
function DM_SuspendContinuousCompilation : Boolean;
function DM_ToDoManager : IToDoManager;
function DM_TopLevelLogicalDocument : IDocument;
function DM_TopLevelPhysicalDocument : IDocument;
function DM_TryToResolveDocumentSpecialString(const AName : WideString, const ADocumentFileName : WideString, out AValue : WideString) : Boolean;
function DM_TryToResolveSpecialString(const AName : WideString, out AValue : WideString) : Boolean;
function DM_UpdateConstraints : LongBool;
procedure DM_UpdateSchObjectErrorFields(const SchHandle : WideString, ErrorKind : TErrorKind, Suppressed : Boolean);
function DM_UserID : WideString;
procedure DM_Validate;
function DM_ValidateManagedOutputJobs : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VariantManager : IVariantManager;
function DM_Vault : IEDMS_Vault;
function DM_VaultGUID : WideString;
function DM_VaultHRID : WideString;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViolationCount : Integer;
function DM_Violations(Index : Integer) : IViolation;
function GetNavigationHistory : INavigationHistory;
property VCSProject : IInterface

## IProjectClassGenerationOptions (8 members)
property CompClassManualEnabled : Boolean
property CompClassManualRoomEnabled : Boolean
property NetClassAutoBusEnabled : Boolean
property NetClassAutoCompEnabled : Boolean
property NetClassAutoNamedHarnessEnabled : Boolean
property NetClassManualEnabled : Boolean
property NetClassSeparateForBusSections : Boolean
procedure ResetToDefaultState;

## IProjectLink (12 members)
property NexusCores_All[Index: Integer] : INexusCore
property NexusCores_Instrument[Index: Integer] : INexusCore
function ContainsEmbeddedProject(AProjectPath : WideString) : Boolean;
procedure CrossProbe;
function DocumentKind : WideString;
function GetCoreFromDesignator(Designator : WideString) : INexusCore;
function GetEmbeddedProject : IEmbeddedProject;
function GetFPGAProject : IFPGAProject;
function GetNexusCoreCount_All : Integer;
function GetNexusCoreCount_Instrument : Integer;
function GetProject : IProject;
function GetProjectFullPath : WideString;

## IProjectPackagerConfig (9 members)
property ArchiveEDIF : Boolean
property ArchiveEntireProjectTree : Boolean
property ArchiveFileName : WideString
property ArchiveGenerated : Boolean
property ArchiveHistory : Boolean
property ArchiveOutputFolder : Boolean
property CopyFilesInDiffDrive : Boolean
property UnlinkFromServer : Boolean
property UseAbsolutePaths : Boolean

## IProjectPanelPreferences (16 members)
function GetClickAction : TProjectPanelClickAction;
function GetComponentsGrouping : TProjectPanelComponentsGrouping;
function GetExpanding : TProjectPanelExpanding;
function GetGrouping : TProjectPanelGrouping;
function GetShowFlags : TProjectPanelShowFlags;
function GetShowStructure : TProjectPanelShowStructure;
function GetSortAscending : Boolean;
function GetSorting : TProjectPanelSorting;
procedure SetClickAction(const Value : TProjectPanelClickAction);
procedure SetComponentsGrouping(const Value : TProjectPanelComponentsGrouping);
procedure SetExpanding(const Value : TProjectPanelExpanding);
procedure SetGrouping(const Value : TProjectPanelGrouping);
procedure SetShowFlags(const Value : TProjectPanelShowFlags);
procedure SetShowStructure(const Value : TProjectPanelShowStructure);
procedure SetSortAscending(const Value : Boolean);
procedure SetSorting(const Value : TProjectPanelSorting);

## IProjectParameter (2 members)
property Name : WideString
property Value : WideString

## IProjectProperties (87 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_Compare(DocumentPath : WideString, ReportFileName : WideString) : LongBool;
function DM_ConstraintManagerFlow : Boolean;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DesignatorRecord_ECOAnnotatePhysicalComponent(const APart : IPart);
procedure DM_DesignatorRecord_ECOBegin;
procedure DM_DesignatorRecord_ECOChangeComponentDesignator(const AReferenceComponent : IComponent, const ATargetComponent : IComponent);
procedure DM_DesignatorRecord_ECOEnd;
function DM_DeviceSheetCount : Integer;
function DM_DeviceSheets(Index : Integer) : IDocument;
procedure DM_DoCrossProbeBase;
function DM_ErrorLevelsForConnections(H : TConnectionCode, V : TConnectionCode) : TErrorLevel;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetAutoCrossReferences : Integer;
function DM_GetAutoSheetNumbering : Boolean;
function DM_GetDifferenceLevel(DifferenceKind : TDifferenceKind) : TDifferenceCheckLevel;
function DM_GetItemRevisionGUID : WideString;
function DM_GetLogFolderPath : WideString;
function DM_GetManagedSheetsPath : WideString;
function DM_GetNameNetsHierarchically : Boolean;
function DM_GetNetlistSinglePinNets : Boolean;
function DM_GetNewIndexingOfSheetSymbols : Boolean;
function DM_GetNoChannelIndex : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetPowerPortNamesTakePriority : Boolean;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetSystemDataModelBaselineVersion : Integer;
function DM_ImageIndex : Integer;
function DM_InitializeLogFolderPath : WideString;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_ProjectDocumentCount : Integer;
function DM_ProjectDocuments(Index : Integer) : IDocument;
function DM_RunComponentVariationForm(Sch_Component : IInterface, PhysicalSheetName : WideString) : Boolean;
function DM_RunDesignatorAnnotationForm(Sch_Designator : IInterface, PhysicalSheetName : WideString) : Boolean;
function DM_RunParameterVariationForm(Sch_Parameter : IInterface, PhysicalSheetName : WideString) : Boolean;
function DM_RunProjectDistributorWizard(PartSet : TReleaseDistributionPartSet) : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetAutoCrossReferences(AValue : Integer);
procedure DM_SetAutoSheetNumbering(AValue : Boolean);
procedure DM_SetDifferenceLevel(DifferenceKind : TDifferenceKind, Value : TDifferenceCheckLevel);
procedure DM_SetErrorLevelsForConnections(H : TConnectionCode, V : TConnectionCode, ErrorLevel : TErrorLevel);
procedure DM_SetItemRevisionGUID(S : WideString);
procedure DM_SetLogFolderPath(ALogFolderPath : WideString);
procedure DM_SetNetlistSinglePinNets(AValue : Boolean);
procedure DM_SetSystemDataModelBaselineVersion(AValue : Integer);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_UpdateBOMDocument(const BOMDocumentFullPath : string, const ReportFileName : string, const BOMToSynch : TBOMTypeSet) : Boolean;
function DM_UpdateBOMFromDatabase(const BOMDocumentFullPath : string, const BOMToSynch : TBOMTypeSet, const CompileBOMDoc : Boolean) : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
function DM_XNetsDiscretesPrefixes : WideString;
function DM_XNetsSourceDestinationPrefixes : WideString;
property VCSProject : IInterface

## IProjectReleaserConfiguration (57 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentRevision : IULB_ItemRevision;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DefaultContentTypeGUID : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetConfigurationType : WideString;
function DM_GetLocalReleaseTarget : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_ReleaseItem : IULB_Item;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetConfigurationType(const AValue : WideString);
procedure DM_SetLocalReleaseTarget(const AValue : WideString);
procedure DM_SetName(Value : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SupportedContentTypes : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IProjectReleaserSource (8 members)
procedure DM_CleanUpConfigurations;
function DM_GetCustomConfigurations : IInterfaceList;
function DM_GetOrCreateAssemblyConfigurations : IInterfaceList;
function DM_GetOrCreateFabricationConfigurations : IInterfaceList;
function DM_GetOrCreateSourceConfigurations : IInterfaceList;
function DM_SupportsAssemblyConfigurations : Boolean;
function DM_SupportsFabricationConfigurations : Boolean;
function DM_SupportsSourceConfigurations : Boolean;

## IProjectVariant (88 members)
function DM_AddComponentVariation : IComponentVariation;
procedure DM_AddParameter(AName : WideString, AValue : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_AddVariant(const AComponent : IPart) : IComponentVariation;
function DM_AllowFabricationOutputs : Boolean;
function DM_AllowVariationPastMask : Boolean;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Description : WideString;
procedure DM_DoCrossProbeBase;
function DM_DocumentKind : WideString;
function DM_DocumentName : WideString;
function DM_DocumentObjectKind : TWorkspaceObjectId;
function DM_DocumentPath : WideString;
function DM_FindComponentVariationByDesignator(const ADesignator : WideString) : IComponentVariation;
function DM_FindComponentVariationByPart(const AComponent : IPart) : IComponentVariation;
function DM_FindComponentVariationByUniqueId(const AUniqueId : WideString) : IComponentVariation;
function DM_FindComponentVariationByUniqueIdName(const AUniqueId : WideString) : IComponentVariation;
function DM_FindComponentVariations(const AComponent : IPart, const AVariations : ISafeInterfaceList) : Boolean;
function DM_FixVariationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const APhysicalDesignator : WideString, ARemoveOriginal : Boolean) : Boolean;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OriginalIndex : Integer;
function DM_OverwritePCBFootprint : Boolean;
function DM_OverwriteSchematicSymbol : Boolean;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_Project : IProject;
procedure DM_RemoveAllParameters;
procedure DM_RemoveComponentVariation(Index : Integer);
procedure DM_RemoveComponentVariationSilently(Index : Integer);
procedure DM_RemoveParameter(const AParameter : IParameter);
procedure DM_RemoveParameterByName(const AParameterName : WideString);
function DM_Replicate : IProjectVariant;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetAllowFabricationOutputs(const Value : Boolean);
procedure DM_SetAllowVariationPastMask(const Value : Boolean);
procedure DM_SetDescription(const Value : WideString);
procedure DM_SetName(const Value : WideString);
procedure DM_SetOriginalIndex(AIndex : Integer);
procedure DM_SetOverwritePCBFootprint(AOverwritePCBFootprint : Boolean);
procedure DM_SetOverwriteSchematicSymbol(AOverwriteSchematicSymbol : Boolean);
procedure DM_SetUniqueId(const AValue : WideString);
procedure DM_SetWasSelected(AValue : Boolean);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_UniqueId : WideString;
function DM_UpdateVaultNameInLibraryLinks : Boolean;
function DM_ValidForNavigation : Boolean;
function DM_VariationCount : Integer;
function DM_Variations(Index : Integer) : IComponentVariation;
function DM_VHDLEntity : IVHDLEntity;
function DM_WasSelected : Boolean;
property VCSProject : IInterface

## IProviderSupport (19 members)
procedure PSEndTransaction(Commit : Boolean);
procedure PSExecute;
procedure PSGetAttributes(List : TList);
function PSGetCommandText : string;
function PSGetCommandType : TPSCommandType;
function PSGetDefaultOrder : TIndexDef;
function PSGetKeyFields : string;
function PSGetParams : TParams;
function PSGetQuoteChar : string;
function PSGetTableName : string;
function PSGetUpdateException(E : Exception, Prev : EUpdateError) : EUpdateError;
function PSInTransaction : Boolean;
function PSIsSQLBased : Boolean;
function PSIsSQLSupported : Boolean;
procedure PSReset;
procedure PSSetCommandText(const CommandText : string);
procedure PSSetParams(AParams : TParams);
procedure PSStartTransaction;
function PSUpdateRecord(UpdateKind : TUpdateKind, Delta : TDataSet) : Boolean;

## IProviderSupportNG (20 members)
procedure PSEndTransaction(Commit : Boolean);
procedure PSExecute;
function PSExecuteStatement(const ASQL : string, AParams : TParams) : Integer;
procedure PSGetAttributes(List : TList);
function PSGetCommandText : string;
function PSGetCommandType : TPSCommandType;
function PSGetDefaultOrder : TIndexDef;
function PSGetKeyFields : string;
function PSGetParams : TParams;
function PSGetQuoteChar : string;
function PSGetTableName : string;
function PSGetUpdateException(E : Exception, Prev : EUpdateError) : EUpdateError;
function PSInTransaction : Boolean;
function PSIsSQLBased : Boolean;
function PSIsSQLSupported : Boolean;
procedure PSReset;
procedure PSSetCommandText(const CommandText : string);
procedure PSSetParams(AParams : TParams);
procedure PSStartTransaction;
function PSUpdateRecord(UpdateKind : TUpdateKind, Delta : TDataSet) : Boolean;

## IPublisher (3 members)
function AppendPage(MetafileHandle : NativeUInt, PageNumber : Integer, PageCount : Integer, Subtitle : WideString, Flags : TPublisherPageFlags) : LongBool;
function AppendPDFObject(ObjFile : WideString) : LongBool;
function AppendU3D(const ModelPage : IU3DModelPage) : LongBool;

## IReadonlySupportDocument (2 members)
function GetReadOnly : Boolean;
procedure SetReadOnly(const Value : Boolean);

## IReadWriteSync (4 members)
procedure BeginRead;
function BeginWrite : Boolean;
procedure EndRead;
procedure EndWrite;

## IRecentFilesManager (3 members)
function GetRecentDocumentPath(Index : Integer) : WideString;
function GetRecentProjectGroupPath(Index : Integer) : WideString;
function GetRecentProjectPath(Index : Integer) : WideString;

## IRecoverySave (1 members)
property SaveRecovery : Boolean

## IReferenceDesignManager (1 members)
function DownloadReferenceDesign(const ADesignID : WideString, const AAccessToken : WideString, const ABaseFolder : WideString, out ADesignFolder : WideString, out AErrorMessage : WideString) : Boolean;

## IReferenceDesignManagerFactory (1 members)
function CreateReferenceDesignManager : IReferenceDesignManager;

## IRegisterAssociation (7 members)
function GetDescription : WideString;
function GetEntity : IBSDLEntity;
function GetInstructionOpcode(Index : Integer) : IInstructionOpCode;
function GetInstructionOpcodeCount : Integer;
function GetRegisterLength : Integer;
function GetRegisterName : WideString;
function GetShortDescription : WideString;

## IReleaseManager (5 members)
function CurrentBaseConfiguration : IBaseConfiguration;
function CurrentReleaseName : WideString;
function GetAllReleasesBasePath(AProject : IProject) : WideString;
function IsReleaseRunning : LongBool;
procedure Log_OutputerMessage(AMessage : WideString);

## IReleaseResources (2 members)
procedure ReleaseResources(AForceRelease : LongBool);
function SupportReleaseResources : LongBool;

## IReleasesDocument (1 members)
procedure Refresh;

## IReleaseViewDocument (1 members)
function DM_ConfigurationReleaseManager : IConfigurationReleaseManager;

## IReportFactory (2 members)
function BuildGeneralReport(const AReportName : WideString) : IGeneralReport;
procedure DestroyReport(const AReport : IBaseReport);

## IReportParameters (3 members)
function GetParameterCount : Integer;
function GetParameterName(AIndex : Integer) : WideString;
function GetParameterValue(AIndex : Integer) : WideString;

## IReportTableInfo (5 members)
function GetColumnCount : Integer;
function GetCurRowCell(AColumn : Integer) : WideString;
function GetTitle : WideString;
function SetFirstRow : Boolean;
function SetNextRow : Boolean;

## IResourceCounter (4 members)
function Decrement(const AResourceName : WideString, AValue : Integer) : Integer;
function GetValue(const AResourceName : WideString) : Integer;
function Increment(const AResourceName : WideString, AValue : Integer) : Integer;
procedure SetValue(const AResourceName : WideString, AValue : Integer);

## IResourceMonitor (5 members)
function GetCommitSizeMB : Cardinal;
function GetGdiHandlesCount : Cardinal;
function GetGlobaAtomsCount : Integer;
function GetResourceCounter : IResourceCounter;
function GetSessionAtoms : Integer;

## IReuseBlock (67 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BlockID : WideString;
function DM_BlockItemGUID : WideString;
function DM_BlockItemRevisionGUID : WideString;
function DM_BlockItemRevisionHRID : WideString;
function DM_BlockName : WideString;
function DM_BlockVaultGUID : WideString;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Description : WideString;
function DM_Designator : WideString;
procedure DM_DoCrossProbeBase;
function DM_FindReuseComponent(const AComponent : IComponent) : IReuseComponent;
function DM_FindReuseNet(const ANet : INet) : IReuseNet;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetReuseComponentByIndex(AIndex : Integer) : IReuseComponent;
function DM_GetReuseComponentCount : Integer;
function DM_GetReuseNetByIndex(AIndex : Integer) : IReuseNet;
function DM_GetReuseNetCount : Integer;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsDissolved : Boolean;
function DM_IsFormal : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDesignator : WideString;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SelectedPCBItemGUID : WideString;
function DM_SelectedPCBItemRevisionGUID : WideString;
function DM_SelectedPCBVaultGUID : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IReuseBlockInstancesInfo (6 members)
function CopyMainFileToReuseFolder : Boolean;
function GetLatestRevisionFileMappings : WideString;
function ReuseBlock(AIndex : Integer) : ISch_ReuseBlockImplementation;
function ReuseBlocksCount : Integer;
function ReuseBlockSheet(AIndex : Integer) : WideString;
function ReuseBlockSheetsCount : Integer;

## IReuseBlocks (51 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FindReuseBlockByComponent(const AComponent : IComponent) : IReuseBlock;
function DM_FindReuseBlockByID(const ABlockID : WideString) : IReuseBlock;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetReuseBlockByIndex(AIndex : Integer) : IReuseBlock;
function DM_GetReuseBlockCount : Integer;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IReuseComponent (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_Component : IComponent;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Net : INet;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SnippetComponentUniqueID : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IReuseNet (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_Component : IComponent;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Net : INet;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SnippetComponentUniqueID : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IRevisionSchemeDocument (1 members)
procedure Refresh;

## IRevisionsView (12 members)
property Caption : WideString
procedure FocusFirstTabStop;
procedure GetBounds(var ALeft : Integer, var ATop : Integer, var AWidth : Integer, var AHeight : Integer);
property Handle : HWND
procedure Hide;
procedure ParentWindowCreated;
procedure ParentWindowDestroyed;
function Refresh(const AFileName : string) : HRESULT;
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetFocus;
procedure SetParentWindow(const ParentWindow : IExternalFormHolder);
procedure Show;

## IRibbonContext (1 members)
function GetRibbonContext : WideString;

## IRoom (55 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_HX : Integer;
function DM_HY : Integer;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_Layer : Integer;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_LX : Integer;
function DM_LY : Integer;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_RoomName : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_Scope1Expression : WideString;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetRoomPCBHandle(APCBRoomHandle : IInterface);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IRule (69 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_Attributes : WideString;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_Comment : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Description : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsAdvanced : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MaxViaHole : Integer;
function DM_MaxViaWidth : Integer;
function DM_MaxWidth : Integer;
function DM_MinViaHole : Integer;
function DM_MinViaWidth : Integer;
function DM_MinWidth : Integer;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PreferedWidth : Integer;
function DM_PrimaryCrossProbeString : WideString;
function DM_Priority : Integer;
function DM_RoutingLayers(IndexLayer : Integer) : Integer;
function DM_RuleKind : Integer;
function DM_RuleName : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_Scope1Expression : WideString;
function DM_Scope2Expression : WideString;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_Topology : Integer;
function DM_UniqueId : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViaHole : Integer;
function DM_ViaStyle : Integer;
function DM_ViaWidth : Integer;
property VCSProject : IInterface

## IRuleCheckNotificationHandler (5 members)
procedure BatchHandleNotifications(const ADRCResultList : IInterfaceList);
procedure BeginUpdate;
procedure ClearBinaryResults;
procedure EndUpdate;
procedure HandleNotification(const DRCResult : IPCB_DRCResult);

## ISaveLoadLayout (8 members)
procedure RestoreLayout_Default;
procedure RestoreLayout_FromFile(ATLTFileName : WideString);
procedure RestoreLayout_FromPreviousVersion(APreviousVersionIndex : Integer);
procedure RestoreLayout_QueryFile;
procedure RestoreLayout_RecentLayout(ARecentLayoutIndex : Integer);
procedure RestoreLayout_Startup;
procedure SaveLayout_QueryFile;
function SaveLayout_ToFileForExport : WideString;

## IScanPin (11 members)
function GetBoundaryCell(Index : Integer) : IBoundaryCell;
function GetBoundaryCellCount : Integer;
function GetCurrentValue : Integer;
function GetDescription : WideString;
function GetDirection : TPinElectrical;
function GetEntity : IBSDLEntity;
function GetKind : TScanPinKind;
function GetPinMapping : IPinMapping;
function GetPinName : WideString;
function GetPinNumber : WideString;
function GetShortDescription : WideString;

## IScene (3 members)
property SceneCaption : WideString
property SceneCategory : WideString
property SceneId : WideString

## ISceneListener (1 members)
procedure SceneReleased;

## ISceneManager (4 members)
procedure GetCategorySceneIds(const SceneCategory : WideString, const CategorySceneIds : IStrings);
function GetSceneById(const SceneId : WideString) : IScene;
procedure GetSceneCategories(const SceneCategories : IStrings);
function NavigateTo(const Protocol : WideString, const Target : WideString, const Parameters : WideString, const SourceView : IExternalForm, out TargetView : IExternalForm, out TargetHeaderView : IExternalForm) : LongBool;

## ISceneView (2 members)
function CanClose : LongBool;
function CanCloseView : LongBool;

## ISchCommandManager (10 members)
procedure AlignToGrid;
function BeginTransaction(ACommandType : TSchCommandType) : Boolean;
procedure EnableRobots(AEnable : Boolean);
procedure Mirror(const AAxis : IDispatch);
procedure Move(Dx : Integer, Dy : Integer);
procedure RevertChanges;
procedure Rotate(const ACenter : IDispatch, ARotation : TRotationBy90);
procedure SetObjects(const AObjects : IWideStrings);
procedure StoreChanges;
procedure UpdateSchData;

## ISchCommandManagerFactory (3 members)
function GetCommandManager(const AProjectPath : WideString, const ADocumentPath : WideString) : ISchCommandManager;
function GetDragDropTarget(const ADocument : IInterface, const APainter : IInterface) : IInterface;
function GetDragGroup : IInterface;

## ISchCompilator (14 members)
function GetDDMProject(const ProjectFullPath : WideString) : IDDMBoardProject;
function GetDMObject(ObjectAddress : Pointer, const ProjectFullPath : WideString) : IDMObject;
function GetDynamicCompilator : IInterface;
function GetIDMObjectHelper : IInterface;
function GetSchDataModelUtils : IInterface;
procedure LogDebug(const Debug : WideString);
procedure LogError(const Error : WideString);
procedure LogInfo(const Info : WideString);
procedure LogWarn(const Warn : WideString);
function RegisterObserver(const DDMObserver : IDDMObserver, ObjectTypes : TWorkspaceObjectIdSet, ClientId : TUdmClient) : Integer;
function ResumeContinuousCompilation(const ProjectFullPath : WideString) : Boolean;
procedure SetOriginalProject(const ProjectFullPath : WideString, const OrgProject : IProject);
function SuspendContinuousCompilation(const ProjectFullPath : WideString) : Boolean;
procedure UnregisterObserver(ObserverId : Integer);

## ISchCompilatorFactory (1 members)
function CreateSchCompilator : ISchCompilator;

## ISchComponentLink (9 members)
procedure CrossProbe;
function GetComponentDesignator : WideString;
function GetComponentDocumentPath : WideString;
function GetDescription : WideString;
function GetLibraryReference : WideString;
function GetProjectLink : IProjectLink;
function GetProjectPath : WideString;
function GetSubProjectPath : WideString;
procedure SetSubProjectPath(AProjectPath : WideString);

## ISchTemplates (15 members)
procedure DoSetTemplateFileName(const DocumentInterface : IServerDocument, const AConfigurationTemplateHRID : WideString);
function LoadedLocalTemplates : Boolean;
function LoadedServerTemplates : Boolean;
function LocalTemplate(Index : Integer) : ITemplateInfo;
function LocalTemplatesCount : Integer;
procedure RefreshLocalTemplates(const ADocument : IServerDocument);
procedure RefreshServerTemplates;
procedure RefreshServerTemplatesAsync;
function ServerTemplate(Index : Integer) : ITemplateInfo;
function ServerTemplateFile(Index : Integer) : WideString;
function ServerTemplateFilesCount : Integer;
function ServerTemplatesCount : Integer;
procedure ServerTemplatesLock;
procedure ServerTemplatesUnLock;
procedure SortTemplateInfoList(const AList : IInterfaceList);

## IScriptedInstrument (1 members)
function GetDesignator : WideString;

## ISdComponent (9 members)
property Comment : WideString
property Designator : WideString
function GetEntries : ISdEntryList;
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
function IsWireTermination : Boolean;
property ParameterCount : Integer
property Path : WideString
property Pins : ISdPinList

## ISdConflict (6 members)
property ConflictKind : TSdConflictKind
property Id : WideString
property IsResolved : Boolean
property IsValid : Boolean
property Path : WideString
property RelatedObject : ISdObject

## ISdConnection (15 members)
property ComponentCount : Integer
property ConnectionType : TSdConnectionType
property Designator : WideString
property EntryCount : Integer
function GetComponent(Index : Integer) : ISdComponent;
function GetEntry(Index : Integer) : ISdEntry;
function GetInternalConnection(Index : Integer) : ISdInternalConnection;
function GetParameter(Index : Integer) : ISdParameter;
function GetPhysicalConnection(Index : Integer) : ISdPhysicalConnection;
property Id : WideString
property InternalConnectionCount : Integer
property ParameterCount : Integer
property Path : WideString
property PhysicalConnectionCount : Integer
property Source : WideString

## ISdConnectionEntry (10 members)
property Comment : WideString
property Designator : WideString
property EntryType : TSdEntryType
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property IsSystem : Boolean
property MatedEntry : ISdEntry
property ParameterCount : Integer
property Path : WideString
property Pins : ISdPinList

## ISdDocument (17 members)
property ConflictCount : Integer
property ConnectionCount : Integer
property DocumentId : Integer
property DocumentPath : WideString
function GetConflict(Index : Integer) : ISdConflict;
function GetConnection(Index : Integer) : ISdConnection;
function GetModule(Index : Integer) : ISdModule;
function GetParameter(Index : Integer) : ISdParameter;
function GetPlaceableComponent(Index : Integer) : ISdPlaceableComponent;
function GetPlaceableComponentCount : Integer;
function GetVirtualModule(Index : Integer) : ISdVirtualModule;
function GetVirtualModuleCount : Integer;
property Id : WideString
property ModuleCount : Integer
property ParameterCount : Integer
property Path : WideString
property UniqueId : WideString

## ISdEntry (9 members)
property Comment : WideString
property Designator : WideString
property EntryType : TSdEntryType
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property MatedEntry : ISdEntry
property ParameterCount : Integer
property Path : WideString
property Pins : ISdPinList

## ISdEntryList (2 members)
property Items[Index: Integer] : ISdEntry
property Count : Integer

## ISdFunctionalBlock (7 members)
property Designator : WideString
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property ParameterCount : Integer
property Path : WideString
property Source : WideString
property Title : WideString

## ISdInternalConnection (8 members)
property Designator : WideString
property Entry1 : ISdEntry
property Entry2 : ISdEntry
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property Net : ISdNet
property ParameterCount : Integer
property Path : WideString

## ISdModule (16 members)
property BoardFileName : WideString
property ComponentCount : Integer
property Designator : WideString
property EntryCount : Integer
property FunctionalBlockCount : Integer
function GetComponent(Index : Integer) : ISdComponent;
function GetEntry(Index : Integer) : ISdModuleEntry;
function GetFunctionalBlock(Index : Integer) : ISdFunctionalBlock;
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property IsSystem : Boolean
property ParameterCount : Integer
property Path : WideString
property Source : WideString
property SourceGUID : WideString
property Title : WideString

## ISdModuleEntry (10 members)
property Comment : WideString
property Designator : WideString
property EntryType : TSdEntryType
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property IsSystem : Boolean
property MatedEntry : ISdEntry
property ParameterCount : Integer
property Path : WideString
property Pins : ISdPinList

## ISdNet (7 members)
property DefinedName : WideString
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property Name : WideString
property ParameterCount : Integer
property Path : WideString
property Pins : ISdPinList

## ISdObject (2 members)
property Id : WideString
property Path : WideString

## ISdParameter (4 members)
property Id : WideString
property Name : WideString
property Path : WideString
property Value : WideString

## ISdParametrizedObject (4 members)
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property ParameterCount : Integer
property Path : WideString

## ISdPhysicalConnection (8 members)
property Designator : WideString
property Entry1 : ISdEntry
property Entry2 : ISdEntry
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property Net : ISdNet
property ParameterCount : Integer
property Path : WideString

## ISdPin (10 members)
property Component : ISdComponent
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property MatedPin : ISdPin
property Name : WideString
property Net : ISdNet
property Number : WideString
property ParameterCount : Integer
property Path : WideString
property PinId : WideString

## ISdPinList (2 members)
property Items[Index: Integer] : ISdPin
property Count : Integer

## ISdPinNetNameConflict (8 members)
property ConflictKind : TSdConflictKind
property CurrentValue : WideString
property Id : WideString
property IsResolved : Boolean
property IsValid : Boolean
property OldValue : WideString
property Path : WideString
property RelatedObject : ISdObject

## ISdPinToPinConnection (8 members)
property Designator : WideString
property Entry1 : ISdEntry
property Entry2 : ISdEntry
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property Net : ISdNet
property ParameterCount : Integer
property Path : WideString

## ISdPlaceableComponent (10 members)
property Comment : WideString
property ComponentCount : Integer
property Designator : WideString
property EntryCount : Integer
function GetComponent(Index : Integer) : ISdComponent;
function GetEntry(Index : Integer) : ISdModuleEntry;
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property ParameterCount : Integer
property Path : WideString

## ISdVirtualModule (10 members)
property ComponentCount : Integer
property Designator : WideString
property EntryCount : Integer
function GetComponent(Index : Integer) : ISdComponent;
function GetEntry(Index : Integer) : ISdModuleEntry;
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property ParameterCount : Integer
property Path : WideString
property Title : WideString

## ISdWire (8 members)
property Designator : WideString
property Entry1 : ISdEntry
property Entry2 : ISdEntry
function GetParameter(Index : Integer) : ISdParameter;
property Id : WideString
property Net : ISdNet
property ParameterCount : Integer
property Path : WideString

## ISearchComponentResult (2 members)
function ComponentData : ILibraryComponentData;
function LibraryGUID : WideString;

## ISearchComponentResultList (13 members)
property Items[I: Integer] : ISearchComponentResult
property Items[Index: Integer] : IInterface
property Capacity : Integer
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);
procedure Exchange(Index1 : Integer, Index2 : Integer);
function First : IInterface;
function IndexOf(const Item : IInterface) : Integer;
procedure Insert(Index : Integer, const Item : IInterface);
function Last : IInterface;
function Remove(const Item : IInterface) : Integer;
procedure Unlock;

## ISearchLibraryEventHandler (2 members)
procedure HandleProgress(const AResult : ISearchComponentResultList, const AMessage : WideString);
procedure HandleStart;

## ISearchPath (51 members)
function DM_AbsolutePath : WideString;
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IncludeSubFolders : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_Path : WideString;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_Project : IProject;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ISecurityManager (24 members)
function AbsoluteSubscriptionActivationCode : WideString;
function AbsoluteSubscriptionExpiryDate : TDateTime;
function AnyFullLicenses : LongBool;
function AnyPlatformLicenses : LongBool;
function AnyUnsupportedLicenseForThisBuild : LongBool;
function AnyValidLicenses : LongBool;
function GetClientVersion : WideString;
function GetHardwareDescriptionString : WideString;
function GetLicenseByLicenseAssignment(const LicenseAssignmentId : WideString) : ILicense;
function GetLicenseBySerialNumber(SerialNumber : Int64) : ILicense;
function GetLicensedState : WideString;
function GetLicenseUsage : WideString;
function GetMaxTrialDateForTechnology(const ATechnologyName : WideString) : TDateTime;
function GetSerialNumberFromLicenseID(const LicenseId : WideString) : WideString;
function GetSubscriptionExpirationDate(const ATechnologyName : WideString) : TDateTime;
function GetTimeZoneOffset : Double;
function IsSubscriptionCurrent : LongBool;
function IsTrial : LongBool;
function IsTrialStart : LongBool;
property LicenseCount : Integer
procedure RefreshLicenseInformation;
procedure RefreshLicensesInformation;
procedure ReturnLease(const License : ILicense);
procedure UseLicense(const SerialNumber : Int64);

## ISecurityServerManager (16 members)
property ServerLicenses[Index: Integer] : IServerLicense
function ActivateStandaloneLicense(const LicenseId : WideString) : IServerLicense;
function AddLicenseFile(AReplaceExisting : Boolean) : IServerLicense;
procedure AutoLeaseNewOnDemandLicensesByTimer(AValue : Boolean);
procedure ClearLicenses;
procedure DeactivateAndRemoveLeasedLicense_BySerialNumber(SerialNumber : Int64, ASilentMode : LongBool);
procedure FreeAllLicenses;
function GetLicenseByLicenseAssignment(const LicenseAssignmentId : WideString) : IServerLicense;
function GetLicenseBySerialNumber(SerialNumber : Int64) : IServerLicense;
function HasActiveSubscription : Boolean;
property IsFreeLicenseMode : Boolean
property LicenseCount : Integer
procedure ResetRenewLicensesOnSignIn;
procedure SaveLicenseFile(SerialNumber : Int64);
procedure UseAvailableOnDemandLicenses(AIsForceLease : Boolean);
function UseOnDemandLicense(const LicenseAssignmentGUID : WideString, const LeaseKind : WideString, ALeaseDuration : TDateTime, AMaxBorrowDuration : Integer) : IServerLicense;

## IServerDocument (40 members)
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
procedure NotifyViews(ANotification : INotification);
function OwnsFile : Boolean;
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

## IServerDocument2 (42 members)
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
property DisplayName : WideString
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
procedure NotifyViews(ANotification : INotification);
property OpenDocumentId : WideString
function OwnsFile : Boolean;
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

## IServerDocumentEx (2 members)
procedure PlaceSnippetAsBlock(const ASnippetAddress : WideString, const AView : IServerDocumentView);
procedure RemoveViewByName(const ViewName : WideString);

## IServerDocumentLocalMetadata (2 members)
function GetValue(const AValueName : WideString, out AValue : WideString) : Boolean;
procedure SetValue(const AValueName : WideString, const AValue : WideString);

## IServerDocumentSaveStatusSupport (2 members)
function CanSaveDocument : LongBool;
function CanSaveDocumentCopy : LongBool;

## IServerDocumentView (21 members)
property Caption : WideString
procedure FocusFirstTabStop;
procedure GetBounds(var ALeft : Integer, var ATop : Integer, var AWidth : Integer, var AHeight : Integer);
function GetFavoritesViewState(const AAddFavoriteView : LongBool) : WideString;
function GetViewState : WideString;
property Handle : HWND
procedure Hide;
property IsPanel : LongBool
property OwnerDocument : IServerDocument
procedure ParentWindowCreated;
procedure ParentWindowDestroyed;
procedure PerformAutoZoom;
procedure ReceiveNotification(const ANotification : INotification);
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetFavoritesViewState(const Astate : WideString);
procedure SetFocus;
procedure SetParentWindow(const ParentWindow : IExternalFormHolder);
procedure SetViewState(const Astate : WideString);
procedure Show;
procedure UpdateStatusBar;
property ViewName : WideString

## IServerDocumentViewRegistry (3 members)
function Count : Integer;
function Get(AIndex : Integer) : IServerDocumentView;
procedure Init(AClient : IClient, AServer : IServerDocument);

## IServerDocumentViewWithWidgets (23 members)
function AddWidget(const AView : IServerDocumentView, const APosition : IDispatch, ACornerRadius : Integer) : Integer;
property Caption : WideString
procedure FocusFirstTabStop;
procedure GetBounds(var ALeft : Integer, var ATop : Integer, var AWidth : Integer, var AHeight : Integer);
function GetFavoritesViewState(const AAddFavoriteView : LongBool) : WideString;
function GetViewState : WideString;
property Handle : HWND
procedure Hide;
property IsPanel : LongBool
property OwnerDocument : IServerDocument
procedure ParentWindowCreated;
procedure ParentWindowDestroyed;
procedure PerformAutoZoom;
procedure ReceiveNotification(const ANotification : INotification);
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetFavoritesViewState(const Astate : WideString);
procedure SetFocus;
procedure SetParentWindow(const ParentWindow : IExternalFormHolder);
procedure SetViewState(const Astate : WideString);
function SetWidgetVisibility(const AWidgetId : Integer, const AVisible : Boolean) : Boolean;
procedure Show;
procedure UpdateStatusBar;
property ViewName : WideString

## IServerEventHandler (3 members)
procedure HandleConnectToServer;
procedure HandleDisconnectFromServer;
procedure HandleReleaseCommited(const AContentTypeGUID : WideString);

## IServerInternalOptions (1 members)
function GetOptionsManager : IServerInternalOptionsManager;

## IServerInternalOptionsManager (3 members)
function GetPageName : WideString;
procedure LoadSettingsFromFiles(const ASettingsFiles : IStrings, const ADocumentsInstallPath : WideString);
procedure SaveSettingsToFiles(const ASettingsFiles : IStrings);

## IServerLicense (13 members)
property ActivationCode : WideString
property CanRoam : LongBool
property EndDate : TDateTime
property Expired : LongBool
property LeaseExpiryTime : TDateTime
property LicenseAssignmentGUID : WideString
property LicenseGUID : WideString
property LicenseType : Integer
property LicenseUsageId : WideString
property ProductName : WideString
property RightToUpgradeExpiryDate : TDateTime
property SerialNumber : Int64
property StatusText : WideString

## IServerModel (6 members)
property PortNames[AnIndex: Integer] : PChar
procedure AddPort(AName : PWideChar);
function CheckModelPins : Boolean;
function CheckSchPins : Boolean;
function Name : PWideChar;
function PortCount : Integer;

## IServerModel2 (1 members)
property Parameters : WideString

## IServerModule (20 members)
property Documents[Index: Integer] : IServerDocument
property Views[Index: Integer] : IServerView
procedure AddServerView(const AView : IServerView);
procedure ApplicationIdle;
property Client : IClient
property CommandLauncher : ICommandLauncher
function CreateDocument(const AKind : WideString, const AFileName : WideString) : IServerDocument;
function CreateDocumentShowOrHide(const AKind : WideString, const AFileName : WideString, AShowInTree : Boolean) : IServerDocument;
function CreateOptionsView(const AName : WideString) : IDocumentOptionsView;
function CreateServerDocView(const AName : WideString, const ADocument : IServerDocument) : IServerDocumentView;
function CreateServerView(const AName : WideString) : IServerView;
procedure DestroyDocument(const ADocument : IServerDocument);
property DocumentCount : Integer
function GetShadowDocument(const AFileName : WideString) : IServerDocument;
property Handle : THandle
property ModuleName : WideString
property ProcessControl : IProcessControl
procedure ReceiveNotification(const ANotification : INotification);
procedure RemoveServerView(const AView : IServerView);
property ViewCount : Integer

## IServerModuleActionsSupport (1 members)
procedure SetServerDocumentView(const Value : IServerDocumentView);

## IServerModuleNativeImport (1 members)
function CreateDocumentWithId(const AKind : WideString, const AFileName : WideString, const AUniqueId : WideString) : IServerDocument;

## IServerModuleOptions (1 members)
function IsRelatedToServer(const AOptionsPageName : WideString) : LongBool;

## IServerOptions (3 members)
function CreateOptionsPageByName(const OptionsPageName : WideString) : IOptionsPage;
procedure FlushOptions;
procedure ReloadOptions;

## IServerPanelInfo (16 members)
property DocumentKinds[Index: Integer] : WideString
property ProjectKinds[Index: Integer] : WideString
property DocumentKindCount : Integer
function GetBitmap : WideString;
function GetButtonVisible : Boolean;
function GetCanDockHorizontal : Boolean;
function GetCanDockVertical : Boolean;
function GetCategory : WideString;
function GetCreationClassName : WideString;
function GetHasCloudFeatures : Boolean;
function GetHotkey : WideString;
function GetMultipleCreation : Boolean;
function GetName : WideString;
property ProjectKindCount : Integer
function SupportsDocumentKind(const AKind : WideString) : Boolean;
function SupportsProjectKind(const AKind : WideString) : Boolean;

## IServerProcess (4 members)
function GetLongSummary : WideString;
function GetOriginalId : WideString;
function GetParameter(Index : Integer) : WideString;
function GetParameterCount : Integer;

## IServerRecord (27 members)
function GetCommand(Index : Integer) : IServerProcess;
function GetCommandCount : Integer;
function GetCopyRight : WideString;
function GetDate : WideString;
function GetDescription : WideString;
procedure GetDocumentFilter(Index : Integer, out Kind : WideString, out Filter : WideString);
function GetDocumentFilterCount : Integer;
function GetExePath : WideString;
function GetGeneralInfo : WideString;
function GetInsPath : WideString;
function GetIsDocumentWizard : LongBool;
function GetName : WideString;
procedure GetOutputHandler(Index : Integer, out Format : WideString, out DocKind : WideString, out ServerName : WideString, out Command : WideString);
function GetOutputHandlerCount : Integer;
function GetPanelInfo(Index : Integer) : IServerPanelInfo;
function GetPanelInfoByName(const Name : WideString) : IServerPanelInfo;
function GetPanelInfoCount : Integer;
function GetRCSFilePath : WideString;
function GetServerFileExist : LongBool;
function GetShowOnSplashScreen : Boolean;
function GetSupportsDDBRead : LongBool;
function GetSupportsDDBWrite : LongBool;
function GetSystemExtension : LongBool;
function GetVersion : WideString;
function GetWindowKind(Index : Integer) : IServerWindowKind;
function GetWindowKindByName(const Name : WideString) : IServerWindowKind;
function GetWindowKindCount : Integer;

## IServerSecurity (1 members)
function IsTechnologySetSupported(const ATechnologySet : WideString) : Boolean;

## IServerView (18 members)
property Caption : WideString
procedure FocusFirstTabStop;
procedure GetBounds(var ALeft : Integer, var ATop : Integer, var AWidth : Integer, var AHeight : Integer);
function GetFavoritesViewState(const AAddFavoriteView : LongBool) : WideString;
function GetViewState : WideString;
property Handle : HWND
procedure Hide;
property IsPanel : LongBool
procedure ParentWindowCreated;
procedure ParentWindowDestroyed;
procedure ReceiveNotification(const ANotification : INotification);
procedure SetBounds(ALeft : Integer, ATop : Integer, AWidth : Integer, AHeight : Integer);
procedure SetFavoritesViewState(const Astate : WideString);
procedure SetFocus;
procedure SetParentWindow(const ParentWindow : IExternalFormHolder);
procedure SetViewState(const Astate : WideString);
procedure Show;
property ViewName : WideString

## IServerViewRegistry (3 members)
function Count : Integer;
function Get(AIndex : Integer) : IServerView;
procedure Init(AClient : IClient, AServer : IServerModule);

## IServerWindowKind (19 members)
function FileExportDescriptionCount : Integer;
function FileImportDescriptionCount : Integer;
function FileLoadDescriptionCount : Integer;
function FileSaveDescriptionCount : Integer;
function GetFileExportDescription(Index : Integer) : WideString;
function GetFileImportDescription(Index : Integer) : WideString;
function GetFileLoadDescription(Index : Integer) : WideString;
function GetFileSaveDescription(Index : Integer) : WideString;
function GetIconName : WideString;
function GetIsDocumentEditor : Boolean;
function GetIsDomain : LongBool;
function GetName : WideString;
function GetNewWindowCaption : WideString;
function GetNewWindowExtension : WideString;
function GetServerRecord : IServerRecord;
function GetWindowKindClass(Index : Integer) : WideString;
function GetWindowKindClassCount : Integer;
function GetWindowKindDescription : WideString;
function IsOfWindowKindClass(const AClass : WideString) : Boolean;

## ISheetNumberRecord (3 members)
function GetDocumentName : WideString;
function GetSheetNumber : WideString;
function GetUniqueIDPath : WideString;

## ISheetSymbol (65 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculatedDesignator : WideString;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChildSheet(Index : Integer) : IDocument;
function DM_ChildSheetCount : Integer;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DesignItemID : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsReuseSheetSymbol : Boolean;
function DM_ItemGUID : WideString;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalDesignator : WideString;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalDesignator : WideString;
function DM_PrimaryCrossProbeString : WideString;
function DM_RawSheetSymbolFileName : WideString;
function DM_Replicate(const ADocument : IDMObject) : ISheetSymbol;
function DM_RevisionGUID : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetEntries(Index : Integer) : INetItem;
function DM_SheetEntryCount : Integer;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_SheetSymbolFileName : WideString;
function DM_ShortDescriptorString : WideString;
function DM_SourceLibraryName : WideString;
function DM_SymbolType : Integer;
function DM_UniqueId : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VaultGUID : WideString;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IShield (49 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DesignatorLocationX : Integer;
function DM_DesignatorLocationY : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ISignal (71 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusKind : TBusKind;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_DriverBitCount(BitNo : Integer) : Integer;
function DM_DriverBits(BitNo : Integer, Index : Integer) : ISignalNode;
function DM_DriverLinkCount : Integer;
function DM_DriverLinks(Index : Integer) : ISignalLink;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NamerCount : Integer;
function DM_Namers(Index : Integer) : ISignalNode;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PowerName : WideString;
function DM_PowerNode : ISignalNode;
function DM_Prefix : WideString;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrimaryNode : ISignalNode;
function DM_Range1 : WideString;
function DM_Range2 : WideString;
function DM_RangeMax : Integer;
function DM_RangeMin : Integer;
function DM_RangeValue1 : Integer;
function DM_RangeValue2 : Integer;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SubNetCount : Integer;
function DM_SubNets(Index : Integer) : ISubNet;
function DM_TargetBitCount(BitNo : Integer) : Integer;
function DM_TargetBits(BitNo : Integer, Index : Integer) : ISignalNode;
function DM_TargetLinkCount : Integer;
function DM_TargetLinks(Index : Integer) : ISignalLink;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
function DM_Width : Integer;
property VCSProject : IInterface

## ISignalHarnessProject (1 members)
function DM_GetHarnessDefinitionList : IHarnessDefinitionList;

## ISignalInstrument (10 members)
procedure BeginUpdate;
procedure EndUpdate;
function GetDesignator : WideString;
function GetInputSignal(Index : Integer) : IIOSignal;
function GetInputSignalCount : Integer;
function GetOutputSignal(Index : Integer) : IIOSignal;
function GetOutputSignalCount : Integer;
function GetSignalByName(const ASignalName : WideString) : IIOSignal;
function IsInUpdate : LongBool;
procedure UpdateSignals(AInput : LongBool, AOutput : LongBool);

## ISignalInstrumentEventHandler (1 members)
procedure Handle_OnPoll;

## ISignalInstrumentManager (11 members)
property AutoPolling : LongBool
procedure BeginUpdate;
procedure EndUpdate;
function GetSignalInstrument(Index : Integer) : ISignalInstrument;
function GetSignalInstrumentByDesignator(const ADesignator : WideString) : ISignalInstrument;
function GetSignalInstrumentByJtagIndex(AJtagIndex : Integer) : ISignalInstrument;
function GetSignalInstrumentCount : Integer;
property PollingInterval : Cardinal
procedure RegisterEventHandler(const AEventHandler : ISignalInstrumentEventHandler);
procedure UnregisterEventHandler(const AEventHandler : ISignalInstrumentEventHandler);
procedure UpdateSignals(AInput : LongBool, AOutput : LongBool);

## ISignalLink (63 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_DriverNode : ISignalNode;
function DM_DriverNodeRange1 : WideString;
function DM_DriverNodeRange2 : WideString;
function DM_DriverNodeRangeValue1 : Integer;
function DM_DriverNodeRangeValue2 : Integer;
function DM_DriverRangeMax : Integer;
function DM_DriverRangeMin : Integer;
function DM_DriverSignal : ISignal;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_TargetNode : ISignalNode;
function DM_TargetNodeRange1 : WideString;
function DM_TargetNodeRange2 : WideString;
function DM_TargetNodeRangeValue1 : Integer;
function DM_TargetNodeRangeValue2 : Integer;
function DM_TargetRangeMax : Integer;
function DM_TargetRangeMin : Integer;
function DM_TargetSignal : ISignal;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ISignalManager (57 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_EntityPortCount : Integer;
function DM_EntityPorts(Index : Integer) : IEntityPort;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_InstanceCount : Integer;
function DM_InstanceKindCount : Integer;
function DM_InstanceKinds(Index : Integer) : IInstance;
function DM_Instances(Index : Integer) : IInstance;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SignalCount : Integer;
function DM_Signals(Index : Integer) : ISignal;
function DM_SubNetCount : Integer;
function DM_SubNets(Index : Integer) : ISubNet;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ISignalNode (68 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusIndex : Integer;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ConstantExpression : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Direction : TSignalDirection;
procedure DM_DoCrossProbeBase;
function DM_DriverLinkCount : Integer;
function DM_DriverLinks(Index : Integer) : ISignalLink;
function DM_EntityPort : IEntityPort;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetDescription : WideString;
function DM_GetName : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsDriver : LongBool;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetItem : INetItem;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_Range1 : WideString;
function DM_Range2 : WideString;
function DM_RangeMax : Integer;
function DM_RangeMin : Integer;
function DM_RangeValue1 : Integer;
function DM_RangeValue2 : Integer;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_Signal : ISignal;
function DM_SubNet : ISubNet;
function DM_TargetLinkCount : Integer;
function DM_TargetLinks(Index : Integer) : ISignalLink;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
function DM_Width : Integer;
property VCSProject : IInterface

## ISilentSupport (1 members)
property SilentMode : Boolean

## ISimWatch (13 members)
procedure Clear;
property Enable : Boolean
function GetAllEvents : IInterfaceList;
function GetCurrentData : Pointer;
function GetEvent(AIndex : Integer) : IEvent;
function GetEventCount : Integer;
function GetLastData : Pointer;
function GetLogicType : ILogicSimType;
function GetName : PWideChar;
function GetOwnerKind : PWideChar;
function GetType : PWideChar;
function GetValid : Boolean;
function IsVariable : Boolean;

## ISingleCastObserver (2 members)
property Active : Boolean
procedure Removed;

## ISizedControl (2 members)
property PreferredHeight : Integer
property PreferredWidth : Integer

## ISoftBreakpoint (10 members)
property Address : TMemoryAddress
function Disable : LongBool;
function Enable : LongBool;
procedure Export_ToCore;
function GetNexusDevice : INexusDevice;
function GetReplaced : Cardinal;
procedure Import_FromCore;
property MemorySpace : Integer
procedure Reset;
procedure SetReplaced(Value : Cardinal);

## ISoftDesignNotification (6 members)
property BoardUniqueIds[AIndex: Integer] : WideString
property FirmwareVersions[AIndex: Integer] : WideString
procedure AddBoardUniqueId(ABoardUniqueId : WideString);
procedure AddFirmwareVersion(AFirmwareVersion : WideString);
property BoardUniqueIdCount : Integer
property Code : Integer

## ISourceRelationship (12 members)
property SupportingDocumentId[i: Integer] : WideString
property ManufacturerName : WideString
property ManufacturerPartNumber : WideString
property PartId : WideString
property ProviderGUID : WideString
property ProviderName : WideString
property RoHS : WideString
property SupplierName : WideString
property SupplierPartNumber : WideString
property SupplierPartNumberAlias : WideString
property SupplierSource : WideString
property SupportingDocumentsIdsCount : Integer

## ISPIChannel (15 members)
procedure CloseChannel;
function OpenChannel : LongBool;
procedure SPI_BitDelay;
function SPI_GetDataPin : Byte;
function SPI_SelectDevice(ABoardAddress : Byte, ADeviceAddress : Byte) : LongBool;
procedure SPI_SendAddress24(AAddress : Integer);
procedure SPI_SendAddress32(AAddress : Integer);
procedure SPI_SendByte(ADataByte : Byte);
procedure SPI_SendData(AData : Pointer, ALength : Integer);
procedure SPI_SendReceiveBits(ACmdBuffer : Pointer, ACmdLength : Integer, ADataBuffer : Pointer, ADataLength : Integer);
function SPI_SendReceiveByte(ADataByte : Byte) : Byte;
procedure SPI_SendReceiveData(AData : Pointer, ALength : Integer);
procedure SPI_SetClockPin(N : Byte);
procedure SPI_SetDataPin(N : Byte);
procedure SPI_SetSelectPin(N : Byte);

## ISplice (113 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_BusIndex : Integer;
function DM_BusKind : TBusKind;
function DM_BusPrefix : WideString;
function DM_BusRange1 : WideString;
function DM_BusRange2 : WideString;
function DM_BusRangeValue1 : Integer;
function DM_BusRangeValue2 : Integer;
function DM_BusWidth : Integer;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ComponentUniqueId : WideString;
function DM_CrossSheetText : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DefaultSearchID : WideString;
function DM_DesignatorLocationX : Integer;
function DM_DesignatorLocationY : Integer;
function DM_DisplayMode : Byte;
procedure DM_DoCrossProbeBase;
function DM_Electric : TPinElectrical;
function DM_Electrical : TPinElectrical;
function DM_ElectricalString : WideString;
function DM_FlattenedNetName : WideString;
function DM_Footprint : WideString;
function DM_FullCrossProbeString : WideString;
function DM_FullLogicalPartDesignator : WideString;
function DM_FullPhysicalPartDesignator : WideString;
function DM_FullPinName : WideString;
function DM_FullUniqueId : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_Id : WideString;
function DM_ImageIndex : Integer;
function DM_IsAutoGenerated : Boolean;
function DM_IsBusElement : Boolean;
function DM_IsBusMember : Boolean;
function DM_IsBusSection : Boolean;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsHidden : Boolean;
function DM_IsInferredFromHarness : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LinkObject : INetItem;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LogicalPartDesignator : WideString;
function DM_LongDescriptorString : WideString;
function DM_MatchesPadName(const PadName : WideString) : Boolean;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetLabelText : WideString;
function DM_NetName : WideString;
function DM_NetNumber : WideString;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
function DM_OwnerHarnessNetLogical : INet;
function DM_OwnerHarnessNetPhysical : INet;
function DM_OwnerNetLogical : INet;
function DM_OwnerNetPhysical : INet;
function DM_OwnerPartID : Integer;
function DM_PairSwapId : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_ParentID : WideString;
function DM_ParentSheetSymbolName : WideString;
function DM_ParentSheetSymbolSheetName : WideString;
function DM_Part : IPart;
function DM_PartID : Integer;
function DM_PartPinSwapId : WideString;
function DM_PartSwapId : WideString;
function DM_PartType : WideString;
function DM_PartUniqueId : WideString;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PhysicalPartDesignator : WideString;
function DM_PinName : WideString;
function DM_PinNameNoPartId : WideString;
function DM_PinNumber : WideString;
function DM_PinPackageLength : Integer;
function DM_PinPropagationDelay : Double;
function DM_PinSwapId : WideString;
function DM_PortName : WideString;
function DM_PowerText : WideString;
function DM_PrimaryCrossProbeString : WideString;
function DM_PrintableNetName(out ShouldBeUsed : Boolean) : WideString;
function DM_RangeDefinedByValue : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_SheetName : WideString;
function DM_SheetSymbol : ISheetSymbol;
function DM_ShortDescriptorString : WideString;
function DM_SignalType : WideString;
function DM_UniqueIdName : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ISPROMChannel (8 members)
procedure CloseChannel;
function OpenChannel : LongBool;
function SPROM_PageSize : Integer;
function SPROM_ReadByte(AAddress : Integer) : Byte;
procedure SPROM_ReadPage(AAddress : Integer, ABuffer : Pointer);
function SPROM_SelectDevice(ABoardAddress : Byte, ADeviceAddress : Byte) : LongBool;
procedure SPROM_WriteByte(AAddress : Integer, AData : Byte);
procedure SPROM_WritePage(AAddress : Integer, ABuffer : Pointer);

## IStackObjectThermalReliefIterator (3 members)
function Current : IDispatch;
function First : Boolean;
function Next : Boolean;

## IStandardPaint (1 members)
procedure PaintOnPanel(APanel : TCustomInstrumentBackgroundPanel);

## IStatusBarManager (5 members)
property State[Index: Integer] : WideString
property MTPercentWeight : Double
function PercentStack_Pop : IPercentState;
procedure PercentStack_Push(const PercentState : IPercentState);
function PercentStack_Top : IPercentState;

## IStreamPersist (2 members)
procedure LoadFromStream(Stream : TStream);
procedure SaveToStream(Stream : TStream);

## IString (1 members)
property Value : WideString

## IStringsAdapter (2 members)
procedure ReferenceStrings(S : TStrings);
procedure ReleaseStrings;

## ISubDataSet (1 members)
property SubDataSet : TDataSet

## ISubLibraryData (9 members)
function FieldCount : Integer;
function FindComponentByGUID(const AGUID : WideString) : ILibraryComponentData;
function First : ILibraryComponentData;
function GetField(const AIndex : Integer) : WideString;
function GetKeyField(const AIndex : Integer) : WideString;
function GUID : WideString;
function KeyFieldCount : Integer;
function Name : WideString;
function Next : ILibraryComponentData;

## ISubLibraryDataList (13 members)
property Items[I: Integer] : ISubLibraryData
property Items[Index: Integer] : IInterface
property Capacity : Integer
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);
procedure Exchange(Index1 : Integer, Index2 : Integer);
function First : IInterface;
function IndexOf(const Item : IInterface) : Integer;
procedure Insert(Index : Integer, const Item : IInterface);
function Last : IInterface;
function Remove(const Item : IInterface) : Integer;
procedure Unlock;

## ISubNet (68 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CrossSheetNodeCount : Integer;
function DM_CrossSheetNodes(Index : Integer) : ISignalNode;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LineCount : Integer;
function DM_Lines(Index : Integer) : ILine;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Net : INet;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_NetLabelNodeCount : Integer;
function DM_NetLabelNodes(Index : Integer) : ISignalNode;
function DM_NodeCount : Integer;
function DM_Nodes(Index : Integer) : ISignalNode;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PinNodeCount : Integer;
function DM_PinNodes(Index : Integer) : ISignalNode;
function DM_PortNodeCount : Integer;
function DM_PortNodes(Index : Integer) : ISignalNode;
function DM_PowerObjectNodeCount : Integer;
function DM_PowerObjectNodes(Index : Integer) : ISignalNode;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetEntryNodeCount : Integer;
function DM_SheetEntryNodes(Index : Integer) : ISignalNode;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SignalCount : Integer;
function DM_SignalLinkCount : Integer;
function DM_SignalLinks(Index : Integer) : ISignalLink;
function DM_Signals(Index : Integer) : ISignal;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ISupplier (18 members)
procedure BackgroundGetCategoryParameters(Category : ISupplierCategory, Handle : HWND);
procedure BackgroundSearchByKeyword(Keywords : WideString, RecordCount : Integer, StartRecord : Integer, SearchFilters : TSupplierSearchFilters, Category : ISupplierCategory, ParametricFilters : ISupplierParametricFilters, Handle : HWND);
procedure BackgroundSearchByManufacturerPartNumber(ManufacturerPartNumber : WideString, Handle : HWND);
procedure BackgroundSearchBySupplierPartNumber(SupplierPartNumber : WideString, SkipOptions : TSkipOptionSet, Handle : HWND);
function CreateSupplierCart : ISupplierCart;
property Enabled : LongBool
function GetCategoryParameters(Category : ISupplierCategory) : ISupplierCategoryParameters;
function GetOptionsPage : IOptionsPage;
function GetSearchUrl(const APartNumber : WideString) : WideString;
property Hidden : LongBool
property IsReadOnly : LongBool
property Options : WideString
property OrderPosition : Integer
function SearchByKeyword(Keywords : WideString, RecordCount : Integer, StartRecord : Integer, SearchFilters : TSupplierSearchFilters, Category : ISupplierCategory, ParametricFilters : ISupplierParametricFilters) : ISupplierSearchResults;
function SearchByManufacturerPartNumber(ManufacturerPartNumber : WideString) : ISupplierSearchResults;
function SearchBySupplierPartNumber(SupplierPartNumber : WideString, SkipOptions : TSkipOptionSet) : ISupplierSourceRelationship;
function SourceName : WideString;
function SupportedSearchFilters : TSupplierSearchFilters;

## ISupplier2 (3 members)
function GetPartNumberSuggestionList(const AKeyword : WideString) : IStrings;
function SearchByManufacturerPartNumber2(const ManufacturerPartNumber : WideString, IncludeData : TSupplierIncludeOptionSet) : ISupplierSearchResults;
property SupplierAliases : ISupplierAliasesList

## ISupplierAggregator (2 members)
function GetSubSupplierNameList : IStrings;
procedure SetActiveNativeSuppliers(SupplierNames : IStrings);

## ISupplierAliases (2 members)
property Aliases : IStrings
property SupplierName : WideString

## ISupplierAliasesList (13 members)
property Items[I: Integer] : ISupplierAliases
property Items[Index: Integer] : IInterface
property Capacity : Integer
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);
procedure Exchange(Index1 : Integer, Index2 : Integer);
function First : IInterface;
function IndexOf(const Item : IInterface) : Integer;
procedure Insert(Index : Integer, const Item : IInterface);
function Last : IInterface;
function Remove(const Item : IInterface) : Integer;
procedure Unlock;

## ISupplierCart (1 members)
function URL : WideString;

## ISupplierCategory (7 members)
property CategoryByName[CategoryName: string] : ISupplierCategory
property Category[I: Integer] : ISupplierCategory
procedure AddCategory(Category : ISupplierCategory);
function CategoryCount : Integer;
function CategoryName : WideString;
function I_ObjectAddress : Pointer;
property RecordCount : Integer

## ISupplierCategoryParameters (13 members)
property Items[I: Integer] : ISupplierParameterKind
property Items[Index: Integer] : IInterface
property Capacity : Integer
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);
procedure Exchange(Index1 : Integer, Index2 : Integer);
function First : IInterface;
function IndexOf(const Item : IInterface) : Integer;
procedure Insert(Index : Integer, const Item : IInterface);
function Last : IInterface;
function Remove(const Item : IInterface) : Integer;
procedure Unlock;

## ISupplierImportParameterPref (9 members)
property Exclude : Boolean
property ImportName : WideString
function LoadFromIni(const AReader : IOptionsReader, AIndex : Integer) : Boolean;
property ParameterAlias : WideString
property ParameterName : WideString
property ParamType : TImportParameterType
procedure SaveToIni(const AWriter : IOptionsWriter, AIndex : Integer);
property Suffix : Boolean
property Visible : Boolean

## ISupplierItemPainter (2 members)
procedure Clear;
procedure Paint(SupplierSourceRelationship : ISupplierSourceRelationship);

## ISupplierLinkDocument (10 members)
procedure AddSupplierDataSheetLinks(ASupplierDataSheets : IDragDropDataSheets);
procedure AddSupplierLinks(ASourceRelationships : IDragDropSupplierSourceRelationships);
procedure AddSupplierLinksAndParameters(ASourceRelationships : IDragDropSupplierSourceRelationships);
procedure AddSupplierParameters(ASupplierParameters : IDragDropParameters);
procedure GetState_AddSupplierDataSheetLinks(ASupplierDataSheets : IDragDropDataSheets, var Enabled : LongBool, var Checked : LongBool, var Visible : LongBool, var ACaption : WideString);
procedure GetState_AddSupplierLinks(ASourceRelationships : IDragDropSupplierSourceRelationships, var Enabled : LongBool, var Checked : LongBool, var Visible : LongBool, var ACaption : WideString);
procedure GetState_AddSupplierLinksAndParameters(ASourceRelationships : IDragDropSupplierSourceRelationships, var Enabled : LongBool, var Checked : LongBool, var Visible : LongBool, var ACaption : WideString);
procedure GetState_AddSupplierParameters(ASupplierParameters : IDragDropParameters, var Enabled : LongBool, var Checked : LongBool, var Visible : LongBool, var ACaption : WideString);
procedure GetState_ImportSupplierSourceRelationships(ASourceRelationships : IDragDropSupplierSourceRelationships, var Enabled : LongBool, var Checked : LongBool, var Visible : LongBool, var ACaption : WideString);
procedure ImportSupplierSourceRelationships(ASourceRelationships : IDragDropSupplierSourceRelationships);

## ISupplierLinksFrame (2 members)
procedure SetListener(Listener : ISupplierLinksListener);
procedure SetState_Controls;

## ISupplierLinksListener (1 members)
procedure OnSourceRelationshipsChanged;

## ISupplierLinksOwner (6 members)
function AddSchParameter : ISch_Parameter;
function GetState_LibReference : WideString;
function GetState_SchDesignator : ISch_Designator;
function InLibrary : Boolean;
function Remove_Parameter(const AParameter : ISch_Parameter) : Boolean;
function SuggestedSearchKeywords : WideString;

## ISupplierManager (18 members)
property SupplierSource[Index: Integer] : ISupplier
property ImportParameterPreferences[Index: Integer] : ISupplierImportParameterPref
procedure BackgroundSearchByManufacturerPartNumber(ManufacturerPartNumber : WideString, Handle : HWND);
function BrowseSupplierLinks(SuggestedKeywords : WideString) : ISupplierSourceRelationshipList;
function ConvertCurrency(const AAmount : Extended, const AFromCode : WideString, const AToCode : WideString) : Extended;
function CreateSupplierItemPainter : ISupplierItemPainter;
function CreateSupplierLinksFrame(ASchComponent : ISch_Component) : ISupplierLinksFrame;
function CreateSupplierSearchFrame : ISupplierSearchFrame;
function EditSupplierLinks(ASchComponent : ISch_Component) : Boolean;
function EditSupplierLinksDB(Parameters : WideString, out OutParams : WideString) : Boolean;
procedure FillCurrencyList(const AList : IStrings);
function FindImportParameterPreferences(ParameterName : WideString) : ISupplierImportParameterPref;
function GetSourceByName(const AName : WideString) : ISupplier;
function GetSuggestedKeywordParameter(Index : Integer) : WideString;
function GetSuggestedKeywordParameterCount : Integer;
function GetSupplierSourceBySubSupplierName(const AName : WideString) : ISupplier;
property ImportParameterPreferencesCount : Integer
property SupplierSourceCount : Integer

## ISupplierParameterKind (5 members)
property Value[I: Integer] : ISupplierParameterValue
procedure AddValue(Value : ISupplierParameterValue);
property ID : Integer
property Name : WideString
function ValueCount : Integer;

## ISupplierParameterValue (2 members)
property ID : Integer
property Value : WideString

## ISupplierParametricFilter (2 members)
property ParameterKindID : Integer
property ParameterValueID : Integer

## ISupplierParametricFilters (13 members)
property Items[I: Integer] : ISupplierParametricFilter
property Items[Index: Integer] : IInterface
property Capacity : Integer
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);
procedure Exchange(Index1 : Integer, Index2 : Integer);
function First : IInterface;
function IndexOf(const Item : IInterface) : Integer;
procedure Insert(Index : Integer, const Item : IInterface);
function Last : IInterface;
function Remove(const Item : IInterface) : Integer;
procedure Unlock;

## ISupplierSearchError (2 members)
function ErrorMessage : WideString;
function SupplierName : WideString;

## ISupplierSearchFrame (5 members)
function CollectAllSourceRelationships : IInterfaceList;
function CollectSelectedSourceRelationships : IInterfaceList;
procedure PerformSearch(ASeachText : WideString);
function SearchKeyword : WideString;
procedure SetKeywords(AValue : WideString);

## ISupplierSearchResults (15 members)
property Items[I: Integer] : ISupplierSourceRelationship
property Items[Index: Integer] : IInterface
property Capacity : Integer
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);
procedure Exchange(Index1 : Integer, Index2 : Integer);
function First : IInterface;
function IndexOf(const Item : IInterface) : Integer;
procedure Insert(Index : Integer, const Item : IInterface);
function Last : IInterface;
function Remove(const Item : IInterface) : Integer;
property SearchError : ISupplierSearchError
property SearchStatistics : ISupplierSearchStatistics
procedure Unlock;

## ISupplierSearchStatistics (8 members)
property CategoryByName[CategoryName: string] : ISupplierCategory
property Category[I: Integer] : ISupplierCategory
procedure AddCategory(Category : ISupplierCategory);
function CategoryCount : Integer;
property ElapsedTime : Integer
property RecordCount : Integer
property SearchResultCount : Integer
function SupplierName : WideString;

## ISupplierSourceRelationship (28 members)
property SupportingDocumentId[i: Integer] : WideString
property UnitPrice[I: Integer] : WideString
property Parameter[I: Integer] : IItemParameter
property ParameterByName[Name: WideString] : IItemParameter
property UnitPriceForQuantity[Quantity: Integer] : WideString
property AvailabilityLeadTime[I: Integer] : WideString
property BreakQuantity[I: Integer] : Integer
property AvailabilityQuantity[I: Integer] : Integer
property AvailabilityCount : Integer
property Category : WideString
property Currency : WideString
property Description : WideString
function I_ObjectAddress : Pointer;
property ManufacturerName : WideString
property ManufacturerPartNumber : WideString
property ParametersCount : Integer
property PartId : WideString
property ProductPhotoURL : WideString
property ProviderGUID : WideString
property ProviderName : WideString
property QuantityInStock : Integer
property RoHS : WideString
property SupplierName : WideString
property SupplierPartNumber : WideString
property SupplierPartNumberAlias : WideString
property SupplierSource : WideString
property SupportingDocumentsIdsCount : Integer
property UnitPriceCount : Integer

## ISupplierSourceRelationship2 (1 members)
property LastUpdated : WideString

## ISupplierSourceRelationship3 (5 members)
property LastUpdatedAt : TDateTime
property LifeCycleStatus : WideString
property LifeCycleStatusName : WideString
property ManufacturerAliases : IStrings
property SupplierURL : WideString

## ISupplierSourceRelationshipError (29 members)
property SupportingDocumentId[i: Integer] : WideString
property UnitPrice[I: Integer] : WideString
property Parameter[I: Integer] : IItemParameter
property ParameterByName[Name: WideString] : IItemParameter
property UnitPriceForQuantity[Quantity: Integer] : WideString
property AvailabilityLeadTime[I: Integer] : WideString
property BreakQuantity[I: Integer] : Integer
property AvailabilityQuantity[I: Integer] : Integer
property AvailabilityCount : Integer
property Category : WideString
property Currency : WideString
property Description : WideString
property ErrorCode : Integer
function I_ObjectAddress : Pointer;
property ManufacturerName : WideString
property ManufacturerPartNumber : WideString
property ParametersCount : Integer
property PartId : WideString
property ProductPhotoURL : WideString
property ProviderGUID : WideString
property ProviderName : WideString
property QuantityInStock : Integer
property RoHS : WideString
property SupplierName : WideString
property SupplierPartNumber : WideString
property SupplierPartNumberAlias : WideString
property SupplierSource : WideString
property SupportingDocumentsIdsCount : Integer
property UnitPriceCount : Integer

## ISupplierSourceRelationshipList (13 members)
property Items[I: Integer] : ISupplierSourceRelationship
property Items[Index: Integer] : IInterface
property Capacity : Integer
procedure Clear;
property Count : Integer
procedure Delete(Index : Integer);
procedure Exchange(Index1 : Integer, Index2 : Integer);
function First : IInterface;
function IndexOf(const Item : IInterface) : Integer;
procedure Insert(Index : Integer, const Item : IInterface);
function Last : IInterface;
function Remove(const Item : IInterface) : Integer;
procedure Unlock;

## ISupportService (1 members)
function SupportsService(aServiceName : WideString) : Boolean;

## ISVNDatabaseLibDocument (43 members)
procedure ClearDatabaseTypeFields;
procedure CreateTableInDatabase(ATableName : WideString, APrimaryKeyColumnName : WideString);
procedure DisposeIfNotShowing;
function DocumentObject : Pointer;
function ExportNewRecordFromIntLib(ATableName : WideString, AFieldParameters : WideString) : WideString;
procedure FinaliseExportFromDatabase;
procedure GetAllComponentKeys(ATableIndex : Integer, AResults : IStrings);
function GetCommandString(ATableIndex : Integer, AFilterText : WideString, ASQLWhereClause : WideString) : WideString;
function GetConnectionString : WideString;
function GetDatafilePath(AName : WideString, AType : WideString, ATableName : WideString, AComponentKeys : WideString) : WideString;
function GetDesignParameterName(ATableIndex : Integer, const AFieldName : WideString) : WideString;
function GetFieldCount(ATableIndex : Integer) : Integer;
function GetFieldNameAt(ATableIndex : Integer, AFieldIndex : Integer) : WideString;
function GetFileName : WideString;
function GetFilterText(ATableIndex : Integer, AFilterColumnNames : WideString, AFilterValue : WideString) : WideString;
function GetItemCount(ACommand : WideString, var AnError : WideString) : Integer;
function GetKeyField(AParameterName : Boolean, ATableIndex : Integer, AKeyIndex : Integer) : WideString;
function GetKeyFieldCount(ATableIndex : Integer) : Integer;
function GetLibraryPathFieldName(ATableIndex : Integer) : WideString;
function GetLibraryRefFieldName(ATableIndex : Integer, var AOrcadLibrary : Boolean) : WideString;
function GetLibrarySearchPath : WideString;
procedure GetModelFieldNamesAt(AnIndex : Integer, ATableIndex : Integer, AModelType : WideString, var AModelPathName : WideString, var AModelRefName : WideString, var AOrcadModel : Boolean);
procedure GetOrcadLibraryDetails(AParseString : WideString, var LibRef : WideString, var LibPath : WideString);
function GetParameterNameAt(ATableIndex : Integer, AFieldIndex : Integer) : WideString;
function GetParametersForComponent(ATableIndex : Integer, AComponentKeys : WideString) : WideString;
function GetRepositoryURL : WideString;
function GetSchLibPathForComponent(ATableIndex : Integer, AComponentKeys : WideString) : WideString;
function GetSchLibRefForComponent(ATableIndex : Integer, AComponentKeys : WideString) : WideString;
function GetSearchSubDirectories : Boolean;
function GetTableCount : Integer;
function GetTableIndex(ATableName : WideString) : Integer;
function GetTableNameAt(AnIndex : Integer) : WideString;
function InitialiseExportFromIntLib(ATableName : WideString) : WideString;
procedure InitialiseExportToDatabase(ADatabaseFileName : WideString);
function IsParameterDatabaseKey(ATableIndex : Integer, AParameterName : WideString) : Boolean;
function IsValidSQLStatementForTable(ATableName : WideString, AQuery : WideString) : Boolean;
function LoadAllRecordsLimit : Integer;
function ObjectAddress : Pointer;
function OrcadDelimiter : Char;
procedure SetConnectionString(AConnectionString : WideString);
function TableContainsColumn(ATableIndex : Integer, AColumnName : WideString) : Boolean;
function TableEnabled(AnIndex : Integer) : Boolean;
function ValidateSQLQuery(ASqlQuery : WideString) : WideString;

## ISymbolGenerator (4 members)
procedure DM_AddParameter(Name : WideString, Value : WideString);
procedure DM_ClearParameters;
procedure DM_GenerateComponent;
procedure DM_GenerateComponentFromUser;

## ISystemDesignServerDocument (1 members)
function GetData : ISdDocument;

## ISystemDesignServerModule (3 members)
function GetDocumentByPath(const Path : WideString) : ISystemDesignServerDocument;
function GetDocumentDataByDocumentId(Id : Integer) : ISdDocument;
function GetDocumentDataByPath(const Path : WideString) : ISdDocument;

## ISystemFunction (56 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_HardwareComponent(Index : Integer) : ISystemHardwareComponent;
function DM_HardwareComponentsCount : Integer;
function DM_ImageIndex : Integer;
function DM_ImplementationId : WideString;
function DM_ImplementationName : WideString;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_Port(Index : Integer) : ISystemPort;
function DM_PortsCount : Integer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_SoftwareComponent(Index : Integer) : ISystemSoftwareComponent;
function DM_SoftwareComponentsCount : Integer;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ISystemHardwareComponent (53 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Designator : WideString;
function DM_DeviceModelId : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_ImplementingComponent : IComponent;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_ManufacturerPartNumber : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_Pin(Index : Integer) : ISystemPin;
function DM_PinCount : Integer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ISystemNotification (1 members)
property Code : Integer

## ISystemPin (51 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Designator : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_Function : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_Value : WideString;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ISystemPort (48 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ISystemPreferences (72 members)
property RecentLayouts[Index: Integer] : WideString
property NoRestoreKind[Index: Integer] : WideString
property AccessFeaturesInDevelopment : Boolean
property ActivateLastActiveOnClose : Boolean
procedure AddNoRestoreKind(const ADocumentKind : WideString);
procedure AddRecentLayout(const ALayoutPath : WideString);
property AlwaysShowNavBarInTasks : Boolean
property AnimationSpeed : Integer
property AutoHideDocumentsBar : Boolean
property AutosaveToolsLayout : Boolean
property AutoShowComponentSymbols : Boolean
property AutoTransparentToolbars : Boolean
property BorrowDurationInHours : Integer
property BuiltInNavigationBar : Boolean
procedure ClearNoRestoreKinds;
property CommandStatusBarVisible : Boolean
property ConnectivityInsightClickPreview : Boolean
property ConnectivityInsightClickTextHint : Boolean
property ConnectivityInsightClickTree : Boolean
property ConnectivityInsightHoverDelay : Integer
property ConnectivityInsightHoverPreview : Boolean
property ConnectivityInsightHoverTextHint : Boolean
property ConnectivityInsightHoverTree : Boolean
property CurrentAllowedNetworkAreas : TAllowedNetworkAreas
property CurrentLookAndFeel : WideString
procedure DeleteRecentLayout(Index : Integer);
function DoRestoreKind(const ADocumentKind : WideString) : Boolean;
property DynamicAutoTransparency : Boolean
property EnableConnectivityInsight : Boolean
property EnableDocumentInsight : Boolean
property EnableHyperlinkInsight : Boolean
property EnableProjectInsight : Boolean
property EqualButtonsInDocumentsBar : Boolean
procedure Export_ToIniFile;
property FavoritesThumbnailSize : TSize
property GroupingInDocumentsBar : TDocumentsBarGrouping
property HelpTrace : Boolean
property HideBinderViewTabs : Boolean
property HideDelay : Integer
property HideFloatingPanels : Boolean
property HyperlinkInsightClickEnabled : Boolean
property HyperlinkInsightHoverEnabled : Boolean
procedure InitProductSpecifiedPrefs;
property IntegratedHelpSystem : Boolean
property MiddleClickClosesDocumentTab : Boolean
property MultilineDocumentsBar : Boolean
property NoRestoreKindCount : Integer
procedure OpenDocumentsRestored;
property OpenTasksIfNothingOpen : Boolean
property PathInTitleBar : Boolean
property PopupDelay : Integer
property RecentLayoutCount : Integer
property ReloadDocumentsModifiedOutside : TConfirmationOption
property RememberFormForDocKind : Boolean
property RestoreOpenDocuments : Boolean
procedure SavePreferencesToFile(const AFileName : WideString);
property StatusBarVisible : Boolean
property SuppressStartupScreen : Boolean
property TransparencyForce : Integer
property TransparencyHighest : Integer
property TransparencyLowest : Integer
property UIThemeName : WideString
property UseAnimatedPanels : Boolean
property UseExternalWebBrowser : Boolean
property UseLocalizedDialogs : Boolean
property UseLocalizedResources : Boolean
property UserAllowedNetworkAreas : TAllowedNetworkAreas
property UseSystemLocaleLanguage : Boolean
property VSStyleCtrlTab : Boolean
property Win7TaskbarJumpLists : Boolean
property Win7TaskbarProgress : Boolean
property Win7TaskbarThumbnails : Boolean

## ISystemPreferencesCallbacks (2 members)
procedure RegisterListener(const AListener : ISystemPreferencesListener);
procedure UnregisterListener(const AListener : ISystemPreferencesListener);

## ISystemPreferencesFactory (1 members)
function GetSystemPreferences : ISystemPreferences;

## ISystemPreferencesListener (1 members)
procedure HideFloatingPanelsChanged;

## ISystemSoftwareComponent (51 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_Designator : WideString;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_ImplementationId : WideString;
function DM_ImplementationName : WideString;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_Type : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ITableLink (3 members)
function FieldLinkCount : Integer;
function FieldLinks(Index : Integer) : IFieldLink;
function GetTableName : WideString;

## ITargetCore (19 members)
property Clock_Enabled[Clock: Char] : Boolean
property Clock_Index[C: Char] : WideString
property Clock_Magnitude[Clock: Char] : Double
property Clock_Operation[Clock: Char] : TClockOperationKind
property VendorParam_String[Name: WideString] : WideString
property VendorParam_Double[Name: WideString] : Double
procedure AddError(S : WideString);
procedure AddInfo(S : WideString);
procedure AddWarning(S : WideString);
property Clock_Count : Integer
property Clock_InputFrequency : Double
property ComponentName : WideString
procedure DependenciesFile_Add(Value : WideString);
property DoSoftError : LongBool
property Endianness : TEndianness
property Filename : WideString
property Info : WideString
property Parameters : WideString
property RWBehavior : TRWBehavior

## ITargetCoreGenerator (1 members)
procedure WriteNetlistBody(const ATextFile : ITextFile, const ATargetCore : ITargetCore);

## ITeardropOptions (10 members)
property SizePercentArray[AObject: TTeardropObject] : TTeardropObjectSize
property ObjectEnabled[AObject: TTeardropObject] : Boolean
property Action : TTeardropActionEx
property Adjust : Boolean
property CreateReport : Boolean
procedure Export_ToParameters(AParameters : IParameterList);
property ForceTeardrops : Boolean
function Import_FromParameters(AParameters : IParameterList) : Boolean;
property SelectedObjectsOnly : Boolean
property Style : TTeardropStyleEx

## ITemplateInfo (20 members)
function Description : WideString;
function DisplayName : WideString;
function FolderGUID : WideString;
function FullFileName : WideString;
function GetParameters : ITemplateParameterList;
function GetTemplateCaption : WideString;
function IsApplicable : Boolean;
function ItemGUID : WideString;
function ItemHRID : WideString;
function ItemRevisionGUID : WideString;
function ItemRevisionHRID : WideString;
function ItemRevisionStateGUID : WideString;
function Kind : TTemplateKind;
function Link : WideString;
function Name : WideString;
function Note : WideString;
procedure SetParameters(const AValue : ITemplateParameterList);
function Source : TTemplateSource;
function SubKind : WideString;
function VaultGUID : WideString;

## ITemplateManager (8 members)
function CreateLocalTemplate(AKind : TTemplateKind, const AFullFileName : WideString) : ITemplateInfo;
function CreateServerTemplate(AKind : TTemplateKind, const AVaultGUID : WideString, const AItemGUID : WideString, const AItemRevisionGUID : WideString, const AItemRevisionHRID : WideString) : ITemplateInfo;
function GetOrCreateTemplateFolder(const AVault : IEDMS_Vault, const AContentTypeGUID : WideString) : IULB_Folder;
function GetServerTemplate(const AVaultGUID : WideString, const AItemRevisionGUID : WideString) : ITemplateInfo;
function GetTemplateList(ASource : TTemplateSource, AKind : TTemplateKind, AForceRefresh : Boolean) : IInterfaces;
function GetTemplateListExt(ASource : TTemplateSource, AKinds : TTemplateKindSet, AForceRefresh : Boolean) : IInterfaces;
function NewTemplateParameter(const AName : WideString, const AValue : WideString) : ITemplateParameter;
function NewTemplateParameterList : ITemplateParameterList;

## ITemplateManagerFactory (1 members)
function CreateTemplateManager : ITemplateManager;

## ITemplateManagerOptions (1 members)
function GetOptionsPage : IOptionsPage;

## ITemplateParameter (4 members)
function GetName : WideString;
function GetValue : WideString;
procedure SetName(const AValue : WideString);
procedure SetValue(const AValue : WideString);

## ITemplateParameterList (7 members)
procedure Clear;
function GetCount : Integer;
function GetParameterByIndex(AIndex : Integer) : ITemplateParameter;
function IndexOf(const AParameter : ITemplateParameter) : Integer;
function NewTemplateParameter(const AName : WideString, const AValue : WideString) : ITemplateParameter;
procedure Remove(const AParameter : ITemplateParameter);
procedure RemoveByIndex(AIndex : Integer);

## ITerminalInstrument (6 members)
procedure Clear;
function GetContent : string;
function GetDesignator : WideString;
procedure PutChar(AValue : Char);
procedure PutString(const AValue : string);
procedure SaveContent(const AFileName : string);

## ITerminalInstrumentManager (4 members)
function GetInstrument(Index : Integer) : ITerminalInstrument;
function GetInstrumentByDesignator(const ADesignator : WideString) : ITerminalInstrument;
function GetInstrumentByJtagIndex(AJtagIndex : Integer) : ITerminalInstrument;
function GetInstrumentCount : Integer;

## ITestDongles (18 members)
property BoardMask_TCK : Integer
property BoardMask_TDI : Integer
property BoardMask_TDO : Integer
property BoardMask_TMS : Integer
procedure EPM_CyclePort;
function GetGPIOChannel : IGPIOChannel;
function GetJTagChannel_Board : IJTagChannel;
function GetJTagChannel_Hard : IJTagChannel;
function GetJTagChannel_Soft : IJTagChannel;
function GetLongDescription : WideString;
function GetShortDescription : WideString;
function GetSPIChannel : ISPIChannel;
function GetSPROMChannel : ISPROMChannel;
function GetUniqueId : WideString;
function InitializeJTagPort : LongBool;
function IsConfigured : LongBool;
function IsConnected : LongBool;
function Scan(ForceFullScan : Boolean) : LongBool;

## ITextFile (1 members)
procedure Writeln(const AString : WideString);

## ITextFrame (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_Text : WideString;
function DM_TextReferenceItem(AIndex : Integer) : ITextReferenceItem;
function DM_TextReferenceItemsCount : Integer;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ITextReferenceItem (8 members)
function GetState_CrossProbe : WideString;
function GetState_Error : Boolean;
function GetState_IsText : Boolean;
function GetState_ObjectId : TWorkspaceObjectId;
function GetState_Rect : IDispatch;
function GetState_SchHandle : WideString;
function GetState_Text : WideString;
function GetState_TextPos : IDispatch;

## IThreadTimer (2 members)
procedure Start;
procedure Stop;

## IThreadTimerCallback (1 members)
procedure Invoke;

## ITimerHandler (1 members)
procedure HandleTimerEvent(ID : Cardinal);

## ITimerManager (5 members)
function CreateThreadTimer(AIntervalSec : Integer, const ACallback : IThreadTimerCallback) : IThreadTimer;
function GetHandlerEnabled(ID : Cardinal) : Boolean;
procedure RemoveHandler(ID : Cardinal);
procedure SetGlobalEnabled(AEnabled : Boolean);
procedure SetHandlerEnabled(ID : Cardinal, AEnabled : Boolean);

## IToDoDocument (8 members)
function ToDo_GetCount : Integer;
function ToDo_GetItem(Index : Integer) : WideString;
function ToDo_ItemActivate(const AnItem : WideString) : LongBool;
function ToDo_ItemCanEdit : LongBool;
function ToDo_ItemEdit(const AnItem : WideString) : LongBool;
function ToDo_ItemUpdate(const OldItem : WideString, const NewItem : WideString) : LongBool;
function ToDo_ScanBegin : LongBool;
function ToDo_ScanEnd : LongBool;

## IToDoManager (5 members)
property Item[Index: Integer] : WideString
function AddItem(const AnItem : WideString) : LongBool;
procedure Clear;
property Count : Integer
function RemoveItem(const AnItem : WideString) : LongBool;

## ITranscriptMessage (5 members)
function GetCode : PWideChar;
function GetDescription : PWideChar;
function GetFileName : PWideChar;
function GetKind : TMessageKind;
function GetLine : Integer;

## ITranslationManager (3 members)
function GetTranslatedProperty(const ComponentName : WideString, const PropName : WideString, out OutValue : WideString) : LongBool;
function HasTranslationData : LongBool;
procedure SetComponentToTranslate(const ComponentName : WideString);

## ITwist (49 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DesignatorLocationX : Integer;
function DM_DesignatorLocationY : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## ITypedNotification (3 members)
property NotificationCode : Integer
property NotificationData : IInterface
property NotificationType : WideString

## IU3DModelPage (4 members)
function Count : Integer;
function Data : Pointer;
function Flags : TU3DFlags;
function Size : Integer;

## IUACUtils (2 members)
function IsUserElevated : Boolean;
function RunScriptElevated(const AScriptFile : WideString) : Cardinal;

## IUndoRedoSupport (2 members)
function GetCommandName_Redo : WideString;
function GetCommandName_Undo : WideString;

## IUpdateParameterOptions (11 members)
property AddParameters : TAddRemoveParameterOption
function IsParameterExist(Name : WideString) : Boolean;
property IsUpdateParameterMode : Boolean
property OverridePreserveParameters : Boolean
property PreserveAllParameters : Boolean
property PreserveParameterLocations : Boolean
property PreserveParameterVisibility : Boolean
property PreserveVirtualParameters : Boolean
property RemoveParameters : TAddRemoveParameterOption
procedure SetState_Default;
property UpdateParameters : IStrings

## IUpdatesManager (4 members)
function GetCurrentSchemaFileName : WideString;
function GetInstalledSchemaFileName : WideString;
procedure SetPendingUpdateFileName(const UpdateExecutableFileName : WideString);
procedure SetReconfigurationRequired(const NewSchemaFileName : WideString);

## IValidationSupport (1 members)
procedure Validate(AFileLessViolationKinds : TFileLessViolationKinds, AResult : IInterfaceList);

## IVariantGroup (15 members)
function DM_AddOption(const AName : WideString) : IVariantGroupOption;
function DM_FindOptionByName(const AName : WideString) : IVariantGroupOption;
function DM_FindOptionByUniqueId(const AUniqueId : WideString) : IVariantGroupOption;
function DM_Name : WideString;
function DM_Option(Index : Integer) : IVariantGroupOption;
function DM_OptionCount : Integer;
function DM_ReferenceId : WideString;
function DM_ReferenceType : TVaraintGroupSource;
procedure DM_RemoveOption(Index : Integer);
procedure DM_RemoveOptionByName(const AName : WideString);
procedure DM_RemoveOptionByUniqueId(const AUniqueId : WideString);
procedure DM_SetName(const Name : WideString);
procedure DM_SetReferenceId(const Id : WideString);
procedure DM_SetReferenceType(const RefType : TVaraintGroupSource);
function DM_UniqueId : WideString;

## IVariantGroupOption (9 members)
function DM_AddComponentVariation : IComponentVariation;
function DM_FindComponentVariationByUniqueId(const AUniqueId : WideString) : IComponentVariation;
function DM_Name : WideString;
procedure DM_RemoveComponentVariation(Index : Integer);
procedure DM_RemoveComponentVariationByUniqueId(const AUniqueId : WideString);
procedure DM_SetName(const Value : WideString);
function DM_UniqueId : WideString;
function DM_VariationCount : Integer;
function DM_Variations(Index : Integer) : IComponentVariation;

## IVariantManager (30 members)
function DM_AddGroup : IVariantGroup;
function DM_AddVariant : IProjectVariant;
procedure DM_ClearVariants;
function DM_CreateComponentLibraryLink : IComponentLibraryLink;
function DM_CreateParameterVariation : IParameterVariation;
function DM_CreateProjectVariant : IProjectVariant;
function DM_CurrentProjectVariant : IProjectVariant;
procedure DM_Destroy;
function DM_FindGroupByName(const AName : WideString) : IVariantGroup;
function DM_FindGroupByUniqueId(const AUniqueId : WideString) : IVariantGroup;
function DM_FindVariantByDescription(const ADescription : WideString) : IProjectVariant;
procedure DM_FixVariationAfterUniqueIdChange(const AOldUniqueId : WideString, const ANewUniqueId : WideString, const APhysicalDesignator : WideString, const AProjectVariantUniqueId : WideString, const AProjectVariantDescription : WideString, ARemoveOriginal : Boolean);
function DM_Group(AIndex : Integer) : IVariantGroup;
function DM_GroupCount : Integer;
procedure DM_InsertVariant(AIndex : Integer, const AProjectVariant : IProjectVariant);
function DM_NoVariant : IProjectVariant;
procedure DM_RemoveGroup(AIndex : Integer);
procedure DM_RemoveGroupByName(const AName : WideString);
procedure DM_RemoveGroupByUniqueId(const AUniqueId : WideString);
procedure DM_RemoveRedundantVariations;
procedure DM_RemoveVariant(AIndex : Integer);
procedure DM_RemoveVariantByDescription(const ADescription : WideString);
procedure DM_SetCurrentProjectVariant(const AProjVariant : IProjectVariant);
procedure DM_SetCurrentProjectVariantNoNotification(const AProjectVariant : IProjectVariant);
procedure DM_SetCurrentProjectVariantSilently(const AProjectVariant : IProjectVariant);
function DM_Variant(AIndex : Integer) : IProjectVariant;
function DM_VariantCount : Integer;
function DM_VariantIndex(const AProjectVariant : IProjectVariant) : Integer;
procedure Export_ToFile(const AOptionsWriter : IOptionsWriter, APadPasteMaskOutputForVariants : Boolean);
procedure Import_FromFile(const AFileName : WideString, APadPasteMaskOutputForVariants : Boolean);

## IVariantOption (39 members)
procedure CopyFrom(const ASource : IVariantOption);
function DM_PCBGraphics : TVariantGraphics;
function DM_PCBGraphicsColor : TColor;
function DM_PCBShowComponent : Boolean;
function DM_PCBStrikeThroughDesignator : Boolean;
function DM_PCBText : WideString;
function DM_PCBTextColor : TColor;
function DM_PCBTextHeight : Integer;
function DM_PCBTextStrokeFontName : WideString;
function DM_PCBTextStrokeWidth : Integer;
function DM_PCBTextTTBold : Boolean;
function DM_PCBTextTTFontName : WideString;
function DM_PCBTextTTInverted : Boolean;
function DM_PCBTextTTInvertedBorder : Integer;
function DM_PCBTextTTItalic : Boolean;
function DM_PCBTextUseTTFont : Boolean;
function DM_PCBUseGraphics : Boolean;
function DM_PCBUseText : Boolean;
procedure DM_SaveOptions;
function DM_SCHGraphics : TVariantGraphics;
function DM_SCHParamBold : Boolean;
function DM_SCHParamColor : TColor;
function DM_SCHParamFontName : WideString;
function DM_SCHParamItalic : Boolean;
function DM_SCHParamModifyText : Boolean;
function DM_SCHParamSize : Integer;
function DM_SCHParamStrikeOut : Boolean;
function DM_SCHParamSuffix : WideString;
function DM_SCHParamUnderline : Boolean;
function DM_SCHText : WideString;
function DM_SCHTextBold : Boolean;
function DM_SCHTextColor : TColor;
function DM_SCHTextFontName : WideString;
function DM_SCHTextItalic : Boolean;
function DM_SCHTextSize : Integer;
function DM_SCHTextStrikeOut : Boolean;
function DM_SCHTextUnderline : Boolean;
function DM_SCHUseGraphics : Boolean;
function DM_SCHUseText : Boolean;

## IVariedValueItem (2 members)
function DM_VariantName : WideString;
function DM_VariedValue : WideString;

## IVarInstanceReference (1 members)
function GetInstance(const V : IDispatch) : TObject;

## IVarInvokeable (4 members)
function DoFunction(const Dest : IDispatch, const V : IDispatch, const Name : string, const Arguments : TVarDataArray) : Boolean;
function DoProcedure(const V : IDispatch, const Name : string, const Arguments : TVarDataArray) : Boolean;
function GetProperty(const Dest : IDispatch, const V : IDispatch, const Name : string) : Boolean;
function SetProperty(const V : IDispatch, const Name : string, const Value : IDispatch) : Boolean;

## IVarStreamable (2 members)
procedure StreamIn(const Dest : IDispatch, const Stream : TStream);
procedure StreamOut(const Source : IDispatch, const Stream : TStream);

## IVaultConfiguration (77 members)
procedure DM_AddConstraintFile(AConstraintFilePath : WideString);
procedure DM_AddOutputJobDocument(APath : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CheckForErrors : WideString;
function DM_ConstraintGroupCount : Integer;
function DM_ConstraintGroups(Index : Integer) : IConstraintGroup;
function DM_ConstraintsFileCount : Integer;
function DM_ConstraintsFilePath(Index : Integer) : WideString;
function DM_CurrentRevision : IULB_ItemRevision;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GenerateRawBOM : Boolean;
function DM_GetCurrentRevisionGUID : WideString;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetReleaseItemGUID : WideString;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTargetDeviceName : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OutputJobDocumentCount : Integer;
function DM_OutputJobDocumentFilePath(Index : Integer) : WideString;
function DM_OutputJobDocumentReferenceCount : Integer;
function DM_OutputJobDocumentReferenceCreateItemRevisionLink(AIndex : Integer, AVault : IEDMS_Vault, AParentRevision : IULB_ItemRevision) : IULB_ItemRevisionLink;
function DM_OutputJobDocumentReferenceFileDir(Index : Integer) : WideString;
function DM_OutputJobDocumentReferenceFileName(Index : Integer) : WideString;
procedure DM_OutputJobDocumentReferencesAddDocumentReference(ADocument : IDocument);
procedure DM_OutputJobDocumentReferencesClear;
procedure DM_OutputJobDocumentReferencesCopyFrom(AConfiguration : IVaultConfiguration);
procedure DM_OutputJobDocumentReferencesRemoveByIndex(Index : Integer);
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_ReleaseItem : IULB_Item;
procedure DM_ResetCache;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
procedure DM_SetCurrentRevisionGUID(Value : WideString);
procedure DM_SetName(Value : WideString);
procedure DM_SetReleaseItemGUID(Value : WideString);
procedure DM_SetVariant(Value : WideString);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_Variant : WideString;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IVaultConfigurationReleaseManager (19 members)
function DM_CanRelease(FindDependencies : Boolean) : Boolean;
function DM_CurrentConfiguration : IVaultConfiguration;
function DM_CurrentProject : IProject;
function DM_GetInReleaseMode : Boolean;
procedure DM_Reload(const AProject : IProject, const AConfiguration : IVaultConfiguration);
procedure DM_SetInReleaseMode(Value : Boolean);
procedure DM_VaultCommitRelease;
function DM_VaultCommitSuccess : Boolean;
function DM_VaultGetCurrent : IEDMS_Vault;
function DM_VaultHasReleased : Boolean;
function DM_VaultIsReleasing : Boolean;
procedure DM_VCSCheckOutSnapshot(IncludeAllDependancies : Boolean);
function DM_VCSCheckoutSucess : Boolean;
procedure DM_VCSCommitSnapshot;
function DM_VCSCommitSuccess : Boolean;
function DM_VCSHasReleased : Boolean;
function DM_VCSProjectStatus(AFilesToCommit : IVcsFileNames, AFilesToUpdate : IVcsFileNames) : Integer;
procedure DM_VCSShowDialog(AFilesToCommit : IVcsFileNames, AFilesToUpdate : IVcsFileNames);
procedure DM_WaitForDocumentsCommited;

## IVaultFileLessDocumentNotification (8 members)
property Code : Integer
property DisplayName : WideString
property FileName : WideString
property Locked : Boolean
property RevisionGUID : WideString
property RevisionHRID : WideString
property VaultGuid : WideString
property VaultHRID : WideString

## IVaultFileLessReleaseNotification (5 members)
function GetFileName : WideString;
function GetOriginalRevisionGUID : WideString;
function GetOriginalVaultGUID : WideString;
function GetTargetRevisionGUID : WideString;
function GetTargetVaultGUID : WideString;

## IVaultPropertiesSupportDocument (2 members)
function GetHRid : WideString;
procedure SetHRid(const Value : WideString);

## IVCLComObject (4 members)
procedure FreeOnRelease;
function GetTypeInfo(Index : Integer, LocaleID : Integer, out TypeInfo : ) : HRESULT;
function GetTypeInfoCount(out Count : Integer) : HRESULT;
function SafeCallException(ExceptObject : TObject, ExceptAddr : Pointer) : HRESULT;

## IVCLFrameForm (4 members)
procedure AddContainer(Instance : TOleContainer);
procedure ClearBorderSpace;
function Form : TCustomForm;
procedure RemoveContainer(Instance : TOleContainer);

## IVCSNotification (5 members)
property Code : Integer
property FileNames : WideString
property FileNamesExt : WideString
property VCSProjectGUID : WideString
property VcsRevisionString : WideString

## IVerilogLibDocument (11 members)
procedure AddDocument(ADocument : WideString, ACategory : THDLLibCategory);
function Compile : LongBool;
function FileReallyExists(AFileName : WideString) : LongBool;
function GetAllDocuments(AIndex : Integer) : WideString;
function GetAllDocumentsCount : Integer;
function GetDocument(ACategory : THDLLibCategory, AIndex : Integer) : WideString;
function GetDocumentCount(ACategory : THDLLibCategory) : Integer;
function GetFileName : WideString;
procedure ProcessCommand(ACommand : THDLLibCommand, Parameters : WideString);
procedure RemoveDocument(ADocument : WideString);
procedure SetModified(const Value : LongBool);

## IVersionHelper (1 members)
function StripReleaseFromProductName(const ProductName : string) : string;

## IVHDLCompiler (13 members)
procedure Abort;
procedure AddLibrary(AValue : PWideChar);
function GetPercentage : Integer;
function GetStatus : TVHDLStatus;
function GetTranscript : IVHDLTranscript;
procedure SetLoadDir(AValue : PWideChar);
procedure SetOutputFile(AValue : PWideChar);
procedure SetSmartCompile(AValue : Boolean);
procedure SetSourceFile(AValue : PWideChar);
procedure SetSourceStream(AValue : IStream);
procedure SetVHDL93(AValue : Boolean);
procedure SetWorkDir(AValue : PWideChar);
procedure Start;

## IVHDLEntity (48 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IVHDLibDocument (11 members)
procedure AddDocument(ADocument : WideString, ACategory : THDLLibCategory);
function Compile : LongBool;
function FileReallyExists(AFileName : WideString) : LongBool;
function GetAllDocuments(AIndex : Integer) : WideString;
function GetAllDocumentsCount : Integer;
function GetDocument(ACategory : THDLLibCategory, AIndex : Integer) : WideString;
function GetDocumentCount(ACategory : THDLLibCategory) : Integer;
function GetFileName : WideString;
procedure ProcessCommand(ACommand : THDLLibCommand, Parameters : WideString);
procedure RemoveDocument(ADocument : WideString);
procedure SetModified(const Value : LongBool);

## IVHDLPreferences (1 members)
function GetPreference(Name : WideString) : WideString;

## IVHDLSynthesizer (16 members)
function VHDL_GetCoreFileExtension(Project : IProject, AConfig : WideString) : WideString;
function VHDL_GetCurrentSynthesizer(Project : IProject) : WideString;
function VHDL_GetOutputFileExtension(Project : IProject, AConfig : WideString) : WideString;
function VHDL_GetOutputPath(Project : IProject, AConfig : WideString) : WideString;
function VHDL_GetReportFile(Project : IProject, AConfig : WideString) : WideString;
function VHDL_GetRequiredCapabilities(Project : IProject, ACapabilities : ICapabilityList) : LongBool;
function VHDL_GetSynthesizer(const ATool : WideString) : IAbstractSynthesizer;
function VHDL_GetToolchainRootPath(Project : IProject) : WideString;
function VHDL_GetTopLevelExtension(Project : IProject, AConfig : WideString) : WideString;
function VHDL_PublishProject(Project : IProject) : LongBool;
procedure VHDL_SetCurrentSynthesizer(Project : IProject, ASynthesizer : WideString);
procedure VHDL_SetOptions(Project : IProject, Parameters : WideString);
procedure VHDL_SynthesizeAbort;
function VHDL_SynthesizeProject(Project : IProject, AConfig : WideString) : LongBool;
function VHDL_SynthesizeProjectAllConfigurations(Project : IProject) : LongBool;
function VHDL_SynthesizeProjectEx(Project : IProject, AConfig : WideString, Parameters : WideString) : LongBool;

## IVHDLTranscript (5 members)
function GetErrorCount : Integer;
function GetMessage(Index : Integer) : ITranscriptMessage;
function GetMessageCount : Integer;
function GetWarningCount : Integer;
procedure SetReportLevel(AValue : Integer);

## IViewGraphite (56 members)
procedure AnimationUpdateStep;
procedure ClickAndHoldProcess_Begin(Btn : TMouseBtn, Shift : TShiftState, x : Integer, y : Integer);
procedure ClickAndHoldProcess_Continue(Btn : TMouseBtn, Shift : TShiftState, x : Integer, y : Integer);
procedure ClickAndHoldProcess_End(Btn : TMouseBtn, Shift : TShiftState, x : Integer, y : Integer);
procedure ClickProcess(Btn : TMouseBtn, Shift : TShiftState, x : Integer, y : Integer);
procedure ClickProcess_Double(Btn : TMouseBtn, Shift : TShiftState, x : Integer, y : Integer);
procedure Coord_ClientToPCB(const x : Integer, const y : Integer, out PX : Integer, out PY : Integer);
procedure Coord_PCBToClient(const x : Integer, const y : Integer, out PX : Integer, out PY : Integer);
function CoordsPerPixelsFor3DNav : Single;
procedure Dynamic_AddPrimitive(const APrimitive : IPCB_Primitive);
procedure Dynamic_DeletePrimitive(const APrimitive : IPCB_Primitive);
procedure Dynamic_ModifyPrimitive(const APrimitive : IPCB_Primitive);
procedure FitView(x1 : Integer, y1 : Integer, x2 : Integer, y2 : Integer, Smooth : Boolean, FrontSide : Boolean);
procedure FoldUnfold(const AFoldBasicOnlineRules : IFoldBasicOnlineRules);
function GetAllObjectsAlongRay(const RayStart : IDispatch, const RayDir : IDispatch) : IPCB_GM_PrimitiveList;
procedure GetDepthRange(out RangeX : Single, out RangeY : Single);
function GetFOV : Single;
function GetGeometryMaker : IPCB_GeometryMaker;
function GetMeshFlexedTransform(const APrim : IPCB_Primitive) : IDispatch;
function GetPrimitiveGeometry(UID : Cardinal) : IInterface;
procedure GetProjection(const ProjData : IDispatch);
function GetState_Camera(out LookAtX : Single, out LookAtY : Single, out LookAtZ : Single, out QuatX : Single, out QuatY : Single, out QuatZ : Single, out QuatW : Single, out Zoom : Double) : Boolean;
procedure GetState_CameraRayFromClient(const ClientX : Integer, const ClientY : Integer, const RayStart : IDispatch, const RayDir : IDispatch);
procedure GetView(const ViewData : IDispatch);
procedure GetViewPt(out PX : Integer, out PY : Integer, out PZ : Integer);
procedure GraphicallyInvalidate(const APrimitive : IPCB_Primitive);
procedure HandleKeyDown(KeyCode : Cardinal);
procedure HandleKeyUp(KeyCode : Cardinal);
function IsPointClipped(const Point : IDispatch) : Boolean;
procedure MouseMoveProcess(Shift : TShiftState, x : Integer, y : Integer);
procedure MoveCamera_Pan(const TX : Single, const TY : Single, const TZ : Single, InWorldSpace : Boolean);
procedure MoveCamera_RotateAboutPoint(const CenterX : Single, const CenterY : Single, const CenterZ : Single, const QuatX : Single, const QuatY : Single, const QuatZ : Single, const QuatW : Single, InWorldSpace : Boolean);
procedure Notify_AddGraphicalObject(const AGraphicalObject : IInterface);
procedure Notify_AddPrimitive(const APrimitive : IPCB_Primitive);
procedure Notify_DeleteGraphicalObject(const AGraphicalObject : IInterface);
procedure Notify_DeletePrimitive(const APrimitive : IPCB_Primitive);
procedure Notify_ModifyGraphicalObject(const AGraphicalObject : IInterface);
procedure Notify_ModifyPrimitive(const APrimitive : IPCB_Primitive);
procedure Render;
procedure RenderToBitmap(bmp : HBITMAP, const ResX : Integer, const ResY : Integer, const Transparent : Boolean);
procedure ResetCamera(AxisX : Single, AxisY : Single, AxisZ : Single, Rotation : Single, Smooth : Boolean);
procedure SetCursorPos(x : Integer, y : Integer, z : Integer);
procedure SetCursorState(Mode : TCursorMode, Color : TCursorColor, HotSpot : THotSpotKind);
procedure SetFOV(ARadians : Single);
procedure SetGroup(const ABrd : IPCB_Board, const AGroup : IPCB_Group, ACameraMode : T3DShowCameraMode);
procedure SetGroupWorkspaceClearColors(const BeginColor : Cardinal, const EndColor : Cardinal);
procedure SetHighlightNet(const ANet : IPCB_Net);
procedure SetLiveRoutingParams(Enabled : Boolean, const TargetNet : IPCB_Net, TargetClearance : Integer, const TargetLayer : IDispatch, const IgnoreNets : ISafeInterfaceList, RoutingObjectID : TObjectId);
procedure SetLiveRoutingState(RoutingWidth : Integer, RoutePrim : IPCB_Primitive);
procedure SetSectionViewPosition(x : Single, y : Single, z : Single);
procedure SetSectionViewState(AX : Single, AY : Single, AZ : Single, AA : Single);
function SetState_Camera(const LookAtX : Single, const LookAtY : Single, const LookAtZ : Single, const QuatX : Single, const QuatY : Single, const QuatZ : Single, const QuatW : Single, const Zoom : Double) : Boolean;
procedure SetViewConfiguration(const AViewConfig : IPCB_GM_SimpleViewConfiguration);
procedure SetViewState(const AViewState : IPCB_GM_SimpleViewState);
procedure SetWindow(AHandle : HWND);
function UnitsPerPixel(WorldX : Single, WorldY : Single, WorldZ : Single) : Single;

## IViewNotification (1 members)
property Code : Integer

## IViewWithNotificationFilter (1 members)
procedure GetNotificationHandlers(ACodeList : INotificationCodeList);

## IViolation (59 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
procedure DM_AddRelatedObject(AnObject : IDMObject);
function DM_AddToViolationManager : Boolean;
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CompilationStage : TCompilationStage;
function DM_ConnectionCode1 : TConnectionCode;
function DM_ConnectionCode2 : TConnectionCode;
function DM_CurrentSheetInstanceNumber : Integer;
function DM_DescriptorString : WideString;
function DM_DetailString : WideString;
procedure DM_DoCrossProbeBase;
function DM_ErrorKind : TErrorKind;
function DM_ErrorLevel : TErrorLevel;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsSuppressed : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_RelatedObjectCount : Integer;
function DM_RelatedObjects(Index : Integer) : IDMObject;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IVirtualParameter (2 members)
property BackgroundColor : TColor
property Text : WideString

## IVirtualParametersManager (10 members)
procedure AddComponentVirtualParameter(PhysicalName : WideString, Text : WideString, Color : TColor);
procedure AddNetVirtualParameter(PhysicalName : WideString, Text : WideString, Color : TColor);
procedure AddPinVirtualParameter(PhysicalName : WideString, Text : WideString, Color : TColor);
procedure ClearVirtualParameters;
procedure SetComponentVirtualParameter(PhysicalName : WideString, Text : WideString, Color : TColor, IsHidden : Boolean);
procedure SetNetVirtualParameter(PhysicalName : WideString, Text : WideString, Color : TColor, IsHidden : Boolean);
procedure SetPinVirtualParameter(PhysicalName : WideString, Text : WideString, Color : TColor, IsHidden : Boolean);
procedure ShowComponentsVirtualParameters(Show : Boolean, PhysicalName : WideString);
procedure ShowNetsVirtualParameters(Show : Boolean, PhysicalName : WideString);
procedure ShowPinsVirtualParameters(Show : Boolean, PhysicalName : WideString);

## IWatch (11 members)
procedure AttachMonitor(aMonitor : IWatchMonitor);
procedure DetachMonitor(aMonitor : IWatchMonitor);
property Enable : Boolean
property Expression : WideString
property FullPath : WideString
property LineNumber : Integer
procedure UpdateState;
procedure UpdateValue;
property Valid : Boolean
property Value : WideString
property WType : WideString

## IWatchMonitor (4 members)
procedure BeginUpdate;
procedure EndUpdate;
procedure UpdateState(AWatch : IWatch);
procedure UpdateValue(AWatch : IWatch);

## IWaveSimNotification (2 members)
property Code : Integer
property UniqueId : Integer

## IWebBrowser (2 members)
function GetElementAtributeValue(const AElementId : WideString, const AAtrribute : WideString) : WideString;
procedure SetElementAttributeValue(const AElementId : WideString, const AAtrribute : WideString, const AValue : WideString);

## IWebBrowserNotification (4 members)
property Code : Integer
property IsUpdateRequired : Boolean
property SessionID : WideString
property Url : WideString

## IWebDAVPublisher (7 members)
procedure Configure(AUrl : WideString, AUsername : WideString, APasswd : WideString);
function ConfirmOverwrite(AFileNames : WideString) : Boolean;
function ConnectionParamsOK : Boolean;
function GetIndexURL : WideString;
function GetLastErrorMessage : WideString;
function Login : Boolean;
function UploadFile(AFileName : WideString) : Boolean;

## IWorkspace (130 members)
procedure DM_AddDocumentToActiveProject(DocumentPath : WideString);
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_ChangeManager : IChangeManager;
function DM_CheckoutManagedProject(AManagedProjectGUID : WideString, AAssemblyRevisionGUID : WideString, out AManagedProjectPath : WideString) : Boolean;
procedure DM_ClearOutputLines;
procedure DM_CloseProject(ProjectPath : WideString);
function DM_CreateHarnessDefinitionList_DeviceSheets(AFolderPath : WideString, ARecursive : Boolean) : IHarnessDefinitionList;
function DM_CreateNewDocument(ADocKind : WideString) : WideString;
function DM_CreateNewDocumentWithoutUsingTemplate(const ADocKind : WideString) : WideString;
procedure DM_CreateProjectPackage(const AProjectPath : WideString, const AConfig : IProjectPackagerConfig);
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DestroyHarnessDefinitionList(AHarnessDefinitionList : IHarnessDefinitionList);
procedure DM_DisplayNavigationHint(AViewHandle : NativeUInt, X : Integer, Y : Integer, const ADmObject : IDMObject, AViewNavigatedHandle : NativeUInt);
procedure DM_DoCrossProbeBase;
procedure DM_FileOwnership_BulkWarnEnd(AWarningLevel : TFileOwnershipWarningLevel);
function DM_FileOwnership_BulkWarnRegister(AFileName : string) : Boolean;
procedure DM_FileOwnership_BulkWarnStart;
function DM_FocusedDocument : IDocument;
function DM_FocusedDocumentKind : WideString;
function DM_FocusedProject : IProject;
function DM_FreeDocumentsProject : IProject;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GenerateUniqueID : WideString;
function DM_GetAssemblyRevisions(AManagedProjectGUID : WideString) : IInterfaceList;
function DM_GetCurrentProject : IProject;
function DM_GetDefaultPcbType : WideString;
function DM_GetDialogManager : IWSM_DialogManager;
function DM_GetDifferenceTypeDescription(DifferenceKind : TDifferenceKind) : WideString;
function DM_GetDocumentFromPath(DocumentPath : WideString) : IDocument;
function DM_GetHarnessCoreAccess : IHarnessCoreAccess;
function DM_GetItemManagerFactory : IItemManagerFactory;
function DM_GetOutputCharCount : Integer;
function DM_GetOutputHandler(const AFormat : WideString, out ADocKind : WideString, out AServerName : WideString, out ACommand : WideString) : Boolean;
function DM_GetOutputJobDocumentByPath(APath : WideString) : IWSM_OutputJobDocument;
function DM_GetOutputLine(Index : Integer) : WideString;
function DM_GetOutputLineCount : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetProjectDialogsFactory : IProjectDialogsFactory;
function DM_GetProjectFromDocumentPath(const ADocumentPath : WideString) : IProject;
function DM_GetProjectFromPath(ProjectPath : WideString) : IProject;
function DM_GetRecentFilesManager : IRecentFilesManager;
function DM_GetRecoveryInterval : Integer;
function DM_GetRecoveryIsEnabled : Boolean;
function DM_GetReleaseManager : IReleaseManager;
function DM_GetSchCompilator(LoadAdvSch : Boolean) : ISchCompilator;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GetTemplateManager : ITemplateManager;
function DM_GetVaultReleaseManager(AProject : IProject, AConfiguration : IVaultConfiguration) : IVaultConfigurationReleaseManager;
function DM_GetWorkspaceDocument : Pointer;
function DM_GetWorkspaceManagerUIFactory : IWorkspaceManagerUIFactory;
procedure DM_HideProject(ProjectPath : WideString);
function DM_ImageIndex : Integer;
function DM_ImageIndexForDocumentKind(ADocumentKind : WideString) : Integer;
function DM_InstalledLibraries(Index : Integer) : IDocument;
function DM_InstalledLibraryCount : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_IsReferencedAsDeviceSheet(const AFilePath : WideString) : Boolean;
function DM_IsSchCompilatorLoaded : Boolean;
function DM_LoadProjectHidden(const ProjectPath : WideString) : IProject;
function DM_LocalHistoryManager : ILocalHistoryManager;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MessagesManager : IDXPMessagesManager;
procedure DM_Navigation_OpenHostDocuments(const AProject : IProject, const AObjectsList : IInterfaceList, ADocumentOpenMode : TDocumentOpenMode);
function DM_NavigationZoomPrecision : Integer;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
procedure DM_NotifyObjectNavigated(ACode : Integer, const ADmObject : IDMObject, const ANavigationActionSet : TNavigationActionSet);
procedure DM_NotifyObjectsNavigated(ACode : Integer, const ASourceDMObject : IDMObject, const ANavigationActionSet : TNavigationActionSet, const ADMObjects : IInterfaceList);
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OpenProject(ProjectPath : WideString, const Show : Boolean) : IProject;
function DM_OptionsStorage : IOptionsStorage;
function DM_OutputManager : IOutputManager;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PCBReleaseViewDocument : IReleaseViewDocument;
function DM_Preferences : IWorkspacePreferences;
function DM_PrimaryCrossProbeString : WideString;
function DM_ProjectCount : Integer;
function DM_Projects(Index : Integer) : IProject;
function DM_PromptForDefaultPcbType(var PcbType : WideString) : Boolean;
procedure DM_RegisterDependentDocuments(const ASourceDocKind : WideString, const ADependentExtension : WideString);
function DM_RunOpenDocumentDialog(const Caption : WideString, AllowMultiSelect : LongBool, var Path : WideString, FilterKind : TFilterKind, FilterIndex : Integer, out DocumentPaths : IStrings) : LongBool;
function DM_SaveSingleDocument(const ADocument : IServerDocument, const AFileFormat : WideString) : Boolean;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SelectManagedProject(out AManagedProjectGUID : WideString, out AManagedProjectName : WideString, out AManagedProjectType : WideString, out AAssemblyRevisions : IInterfaceList) : Boolean;
procedure DM_SetNavigationZoomPrecision(ZoomPrecision : Integer);
procedure DM_SetRecoveryParameters(IsEnabled : Boolean, Interval : Integer);
procedure DM_SetRightClickCompStructure(const AProjectPath : WideString, const ALibReference : WideString, const AUniqueId : WideString);
procedure DM_SetRightClickProject(const AProject : IProject);
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
procedure DM_ShowMessageView;
procedure DM_ShowProject(ProjectPath : WideString);
procedure DM_ShowToDoList;
procedure DM_SuppressUpdateRecentListAdding(const AValue : Boolean);
procedure DM_SuspendWorkspaceForm(ASuspend : Boolean);
procedure DM_UpdateOutputWindow;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
function DM_ViolationTypeDescription(ErrorKind : TErrorKind) : WideString;
function DM_ViolationTypeGroup(ErrorKind : TErrorKind) : TErrorGroup;
function DM_WorkspaceFileName : WideString;
function DM_WorkspaceFullPath : WideString;
property VCSProject : IInterface

## IWorkspaceHelper (12 members)
function AddProjectFileToVcsIfRepositoryExists(const AProjectPath : WideString) : Boolean;
function CheckProjectLifecycleDefinition : Boolean;
function CheckProjectRevisionScheme : Boolean;
function ChooseDirectoryDialog(const ACaption : WideString, var ADirectory : WideString) : Boolean;
function CoerceProjectWorkingCopyDir(const AManagedProjectGUID : WideString, const AProjectName : WideString, const ADocumentKind : WideString, const AWorkingCopyDir : WideString) : WideString;
function CreateWorkspaceDocument(const AKind : WideString, const AFileName : WideString) : IServerDocument;
function GetTemplateManager : ITemplateManager;
function IsForbiddenName(const AName : WideString, out AMessage : WideString) : Boolean;
function IsManagedProjectCreationTakenOver : Boolean;
function LoadManagedProjectLocalPath(const AManagedProjectGUID : WideString) : WideString;
function ReadTemplateParametersFromFile(const ATemplateFilename : WideString) : ITemplateParameterList;
function TryGetSeparateVCSProjectPath(const AProjectPath : WideString, out ARepositoryName : WideString, out ARepositoryRootPath : WideString, out AProjectRelativePath : WideString) : Boolean;

## IWorkspaceManagerFactory (1 members)
function CreateVariantManager(const Project : IProject) : IVariantManager;

## IWorkspaceManagerUIFactory (1 members)
function CreateEditComponentVariantDialog : IEditComponentVariantDialog;

## IWorkspacePreferences (71 members)
property DefaultTemplateSource[ADocKind: WideString] : WideString
property DefaultTemplateFile_NotExpanded[ADocKind: WideString] : WideString
property DefaultTemplateFile[ADocKind: WideString] : WideString
property BackupRelativeToProject : Boolean
procedure ClearDefaultTemplateFiles;
property CreateBackups : Boolean
property CreateRecovery : Boolean
property CrossSelectComponents : Boolean
property CrossSelectFocusDocuments : Boolean
property CrossSelectMasking : Boolean
property CrossSelectMode : Boolean
property CrossSelectNets : Boolean
property CrossSelectPins : Boolean
property CrossSelectReposition : Boolean
property CrossSelectZooming : Boolean
property CustomPages : ICustomPageList
property DefaultBackupPath : WideString
property DefaultDocumentPath : WideString
property DefaultDocumentPathNotExpanded : WideString
property DefaultLibraryPath : WideString
property DefaultLibraryPathNotExpanded : WideString
property DefaultOutputJobPath : WideString
property DefaultOutputJobPathNotExpanded : WideString
property DefaultPcbKind : TDefaultPcbKind
property DefaultRecoveryPath : WideString
property DefaultRecoveryPathNotExpanded : WideString
property EnableVersionControl : Boolean
procedure Export_ToIni;
property FileOwnership_Enabled : Boolean
property FileOwnership_EnabledOutputDirectory : Boolean
property FileOwnership_WarningLevelOpen : TFileOwnershipWarningLevel
property FileOwnership_WarningLevelSave : TFileOwnershipWarningLevel
function GetCrossSelectZoomOption : TCrossSelectZoomOption;
function GetDefaultTemplateInfo(const ADocKind : WideString, out AFileName : WideString, out AVault : IEDMS_Vault, out ARevision : IULB_ItemRevision) : Boolean;
function GetTemplatePath_Sch : WideString;
property HighlightConnectedPowerParts : Boolean
property HighlightMethodSet : THighlightMethodSet
procedure Import_FromIni;
property IntLibMakerOption_OutputDirPath : WideString
property LastWorkspace : WideString
property LibrarySplit_OverwriteFile : TOption_OverwriteFile
property LibrarySplit_RemoveModel : Boolean
property LibrarySplit_RemoveParameter : Boolean
property LibToSVNOption : ILibToSVNOption
procedure LoadDefaultTemplateFiles_FromIni(const AOptionsReader : IOptionsReader, const ASection : WideString);
property MonitorClipboardForDXPOnly : Boolean
property NumberAutoSaveVersions : Integer
property NumberOfBackups : Integer
property ObjectsToDisplay : TWorkspaceObjectIdSet
property PathInformation : Boolean
property ProjectPanelPreferences : IProjectPanelPreferences
property RecoveryInterval : Integer
procedure RegisterListener(const AListener : IWorkspacePreferencesListener);
property ReleasesTemporaryFolder : WideString
property ReleasesTemporaryFolderCleanUp : Boolean
property ReopenWorkspace : Boolean
procedure ResetNavigationToDefaultState;
procedure SaveDefaultTemplateFiles_ToIni(const AOptionsWriter : IOptionsWriter, const ASection : WideString);
property ShowAllParameterChanges : Boolean
property TemplatePath : WideString
property TemplatePath_NotExpanded : WideString
property TemplateSource : TTemplateSource
property TemporaryReleaseBOMFolder : WideString
property TemporaryReleaseCheckoutFolder : WideString
property TemporaryReleaseOutputFolder : WideString
property TemporaryReleaseSnapshotFolder : WideString
property TrackProject : Boolean
procedure UnregisterListener(const AListener : IWorkspacePreferencesListener);
property UseLeftRightSelection : Boolean
property VariantOption : IVariantOption
property ZoomPrecision : Integer

## IWorkspacePreferencesFactory (1 members)
function GetWorkspacePreferences : IWorkspacePreferences;

## IWorkspacePreferencesListener (2 members)
procedure ShowPathInformationChanged;
procedure SortingChanged;

## IWorkspaceUtils (4 members)
function ErrorLevelToString(const AErroLevel : TErrorLevel) : WideString;
function GetConnectionCodeByShortString(const AShortString : WideString) : TConnectionCode;
function GetConnectionNameByShortString(const AShortString : WideString) : WideString;
function GetErrorKindFromString(const aString : WideString) : TErrorKind;

## IWrapper (49 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_GroupedSchObject(i : Integer) : IWrapper;
function DM_GroupedSchObjects_Count : Integer;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IWSM_DialogManager (3 members)
function GetEntry : IWSM_DialogManagerEntry;
procedure HandleNotification(const ANotification : INotification);
function ShowLibraryDialog : Boolean;

## IWSM_DialogManagerEntry (2 members)
procedure HandleNotification(const ANotification : INotification);
function ShowLibraryDialog : Boolean;

## IWSM_OutputJobDocument (12 members)
property MediumOutputersCount[AOutputMedium: IOutputMedium] : Integer
property MediumOutputer[AOutputMedium: IOutputMedium, i: Integer] : IOutputer
property Outputer[AIndex: Integer] : IOutputer
property OutputMedium[AIndex: Integer] : IOutputMedium
function BeginModifyOutputer(const AOutputer : IOutputer) : Boolean;
function CreateOutputer(const AOutputCategoryName : WideString, const APredefinedOutputName : WideString, const AOutputerName : WideString) : IOutputer;
procedure EndModifyOutputer;
property OutputerCount : Integer
property OutputMediumCount : Integer
function RemoveOutputer(const AOutputer : IOutputer) : Boolean;
property VariantName : WideString
property VariantScope : TOutputJobVariantScope

## IxNet (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MemberCount : Integer;
function DM_Members(Index : Integer) : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IxNetClass (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MemberCount : Integer;
function DM_Members(Index : Integer) : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

## IXPPanelCollapse (2 members)
property Expanded : Boolean
procedure SwitchHeight(Value : Boolean);

## IxSignalClass (50 members)
procedure DM_AddParameterBase(AName : WideString, AValue : WideString);
function DM_BoundingRectangle : IDispatch;
function DM_BoundingRectangle_Designator : IDispatch;
function DM_BoundingRectangle_Full : IDispatch;
function DM_CalculateParameterValue(AParameter : IParameter) : WideString;
function DM_CurrentSheetInstanceNumber : Integer;
procedure DM_DoCrossProbeBase;
function DM_FullCrossProbeString : WideString;
function DM_GeneralField : Integer;
function DM_GetParameterByName(const AParameterName : WideString) : IParameter;
function DM_GetStringParameterValue(const AParameterName : WideString) : WideString;
function DM_ImageIndex : Integer;
function DM_IsDDMHarnessObject : Boolean;
function DM_IsDDMObject : Boolean;
function DM_IsFormulaString(AFormula : WideString) : Boolean;
function DM_IsInferredObject : Boolean;
function DM_IsObjectDestroyed : Boolean;
function DM_IsPartOfReuseBlock : Boolean;
function DM_LocationString : WideString;
function DM_LocationX : Integer;
function DM_LocationY : Integer;
function DM_LongDescriptorString : WideString;
function DM_MemberCount : Integer;
function DM_Members(Index : Integer) : WideString;
function DM_Name : WideString;
function DM_NetIndex_Flat : Integer;
function DM_NetIndex_Sheet : Integer;
function DM_NetIndex_SubNet : Integer;
function DM_ObjectAdress : Pointer;
function DM_ObjectKind : TWorkspaceObjectId;
function DM_ObjectKindString : WideString;
function DM_ObjectKindStringForCrossProbe : WideString;
function DM_OwnerDocument : IDocument;
function DM_OwnerDocumentFullPath : WideString;
function DM_OwnerDocumentName : WideString;
procedure DM_ParameterChangesClear;
function DM_ParameterCount : Integer;
function DM_Parameters(Index : Integer) : IParameter;
function DM_PcbHandle : WideString;
function DM_PCBObjectHandle : Pointer;
function DM_PrimaryCrossProbeString : WideString;
function DM_SchHandle : WideString;
function DM_SCHObjectHandle : Pointer;
function DM_SecondaryCrossProbeString : WideString;
function DM_SheetIndex_Logical : Integer;
function DM_SheetIndex_Physical : Integer;
function DM_ShortDescriptorString : WideString;
function DM_ValidForNavigation : Boolean;
function DM_VHDLEntity : IVHDLEntity;
property VCSProject : IInterface

