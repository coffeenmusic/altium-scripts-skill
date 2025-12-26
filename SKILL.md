---
name: altium-delphi-scripts
description: Expert guidance for writing Altium Designer DelphiScript automation scripts. Use when users ask to create, write, develop, or build scripts for Altium Designer PCB/schematic automation, footprint creation, design rule manipulation, layer management, component placement, net routing, output generation, or any other Altium scripting task. Also use for questions about Altium API usage, script syntax, or how to accomplish specific automation tasks in Altium Designer.
---

# Altium Delphi Scripts

## Overview

This skill provides comprehensive guidance for writing Altium Designer DelphiScript automation scripts by leveraging a curated collection of 230+ working example scripts. The skill uses a progressive disclosure approach: start with quick-reference summaries to find relevant examples, then examine detailed descriptions, and finally review actual working code from the example scripts.

## When to Use This Skill

Use this skill when the user wants to:
- Create new Altium Designer scripts
- Automate PCB design tasks (component placement, routing, copper pours, etc.)
- Automate schematic tasks (symbol creation, parameter management, etc.)
- Manipulate design rules programmatically
- Generate manufacturing outputs (Gerbers, pick-and-place, BOM)
- Create or modify footprints in PCB libraries
- Work with layers, nets, or classes
- Validate designs or check for errors
- Batch process PCB or schematic documents

## Workflow

### Step 1: Understand the User's Request

Clarify what the user wants to accomplish:
- What type of document (PCB, schematic, library)?
- What objects need to be created, modified, or analyzed?
- What is the desired output or end result?

### Step 2: Find Relevant Example Scripts

Start by reading `references/overview.md` which contains one-sentence summaries of all available scripts organized by category (PCB, Schematic, General, DXP, FPGA, Processes, WSM).

Identify 2-5 scripts that are most relevant to the user's request based on their functionality.

**Search patterns to help locate relevant scripts:**
- For object creation: Look for "Create", "Place", or object type names
- For iteration/analysis: Look for "Iterate", "Query", "Report", "Count"
- For modification: Look for "Modify", "Edit", "Update", "Change"
- For validation: Look for "Check", "Validate", "Violations"
- For layer operations: Look for "Layer", "Stack"
- For rules: Look for "Rule", "Constraint"
- For manufacturing: Look for "Output", "Export", "Generator"

### Step 3: Get Detailed Information

If the one-sentence summaries aren't sufficient, read the corresponding section(s) in `references/summaries.md` which provides detailed paragraph-length descriptions of script functionality, key procedures, and use cases.

### Step 4: Examine Example Code

Once you've identified the most relevant example scripts, read their actual source code from `references/scripts/[category]/[script-name]`. The scripts are organized into directories:
- `PCB/` - PCB document scripts
- `SCH/` - Schematic document scripts  
- `General/` - General utility scripts
- `DXP/` - DXP/Altium integration scripts
- `FPGA/` - FPGA-specific scripts
- `Processes/` - Process automation scripts
- `WSM/` - Workspace manager scripts

Below is the Directory Tree

```
[DIR] Delphiscript Scripts/
|-- overview.md (5.81 KB)
|-- [DIR] DXP/
|   |-- ClientServerInterfacesReport.pas (7.83 KB)
|   |-- DXP_Scripts.PrjScr (26.23 KB)
|   |-- DXPVersion.PrjScr (23.28 KB)
|   |-- DXPVersionUnit.pas (1.18 KB)
|   |-- ExtractFilesFromIntLibs.pas (1.83 KB)
|   |-- IntLibSearchDemo.pas (2.69 KB)
|   |-- OpenADoc.pas (1000 B)
|   |-- ReportIntLibData.pas (9.53 KB)
|   |-- ReportPCBViews.pas (3.43 KB)
|   |-- ServerProcessReport.pas (4.27 KB)
|   +-- SettingDocumentDirty.pas (974 B)
|-- [DIR] FPGA/
|   +-- [DIR] SwapIdsUpdater/
|       |-- CheckNameValueUnit.PAS (4.05 KB)
|       |-- FPGASwapIds_Project1.PrjScr (26.80 KB)
|       |-- UpdateConstraintUnit.dfm (2.35 KB)
|       +-- UpdateConstraintUnit.pas (10.92 KB)
|-- [DIR] General/
|   |-- General_Scripts.PRJSCR (26.23 KB)
|   |-- HelloWorld.pas (1.00 KB)
|   |-- HelloWorld.PRJSCR (10.40 KB)
|   |-- HelloWorldDialog.dfm (715 B)
|   |-- HelloWorldDialog.pas (1.35 KB)
|   |-- IniFileEg.PAS (2.20 KB)
|   |-- input.txt (48 B)
|   |-- MandelBrot.dfm (741 B)
|   |-- MandelBrot.pas (3.18 KB)
|   |-- mm.dfm (669 B)
|   |-- mm.pas (1.31 KB)
|   |-- Protel.avi (1.15 MB)
|   |-- ShowModalEg.dfm (701 B)
|   |-- ShowModalEg.pas (2.10 KB)
|   |-- sinewave.dfm (747 B)
|   |-- sinewave.pas (3.73 KB)
|   |-- TextFileConvert.dfm (1.68 KB)
|   |-- TextFileConvert.PAS (4.94 KB)
|   |-- tictac.dfm (7.77 KB)
|   |-- tictac.pas (7.38 KB)
|   |-- UpdateTime.dfm (789 B)
|   |-- UpdateTime.pas (1.41 KB)
|   |-- Zipper.PRJSCR (23.42 KB)
|   |-- ZipperForm.dfm (2.77 KB)
|   +-- ZipperForm.PAS (7.34 KB)
|-- [DIR] PCB/
|   |-- Count_Connection_Lines.pas (4.27 KB)
|   |-- CreateAVia.pas (3.23 KB)
|   |-- CreateComponentOnPCB.pas (14.76 KB)
|   |-- CreateFootprintInLibrary.pas (5.51 KB)
|   |-- CreatePCBObjects.PAS (17.29 KB)
|   |-- CreateRules.pas (2.90 KB)
|   |-- Cycle_Pcb_Cursor_Type.pas (1.04 KB)
|   |-- DeletePCBObjects.pas (2.42 KB)
|   |-- EmbeddedObjects.pas (2.51 KB)
|   |-- NetObjectAssign.pas (3.32 KB)
|   |-- PadStackInfo.pas (6.54 KB)
|   |-- PadViaCacheProperties.PAS (9.18 KB)
|   |-- PadViaExamples.PcbDoc (101.50 KB)
|   |-- PCB_Scripts.prjscr (32.74 KB)
|   |-- QueryBoard.pas (8.26 KB)
|   |-- summaries.md (27.96 KB)
|   |-- Undo.pas (7.38 KB)
|   |-- [DIR] BoardOutline Copier/
|   |   |-- CopyBoardOutline.PrjScr (35.80 KB)
|   |   |-- CopyBoardOutlineForm.dfm (1.46 KB)
|   |   |-- CopyBoardOutlineForm.pas (4.82 KB)
|   |   +-- LayerComboBox.pas (2.07 KB)
|   |-- [DIR] CreateRegionsFromBitmap/
|   |   |-- altiumlogo.bmp (23.42 KB)
|   |   |-- ConstructContourSetFromPicture.pas (9.88 KB)
|   |   |-- ConstructRegionsFromContourSet.pas (3.14 KB)
|   |   |-- ConvertPicture.dfm (6.12 KB)
|   |   |-- ConvertPicture.PAS (12.12 KB)
|   |   +-- PCBPictureCreator.PRJSCR (25.47 KB)
|   |-- [DIR] FootPrint Finder/
|   |   |-- FindFootprintUnit.dfm (1.88 KB)
|   |   |-- FindFootprintUnit.PAS (3.55 KB)
|   |   +-- FootprintFinder.PrjScr (24.15 KB)
|   |-- [DIR] FromTos Generator/
|   |   |-- CreateInterComponentFromTos.pas (5.80 KB)
|   |   |-- formFormTos.dfm (1012 B)
|   |   |-- formFormTos.pas (2 B)
|   |   +-- FromTosGenerator.PrjScr (25.18 KB)
|   |-- [DIR] Hole Size Editor/
|   |   |-- Customsort.pas (5.04 KB)
|   |   |-- Hole Size Editor.PRJSCR (23.86 KB)
|   |   |-- HSEditForm.dfm (1.04 KB)
|   |   |-- HSEditForm.pas (1.90 KB)
|   |   |-- HSForm.dfm (2.32 KB)
|   |   +-- HSForm.PAS (19.37 KB)
|   |-- [DIR] Mill Exporter/
|   |   |-- MillExporter.pas (32.57 KB)
|   |   |-- MillExporter.PrjScr (29.59 KB)
|   |   |-- MMExportDlg.dfm (8.06 KB)
|   |   |-- MMExportDlg.pas (4.82 KB)
|   |   |-- MMSetupDlg.dfm (10.02 KB)
|   |   +-- MMSetupDlg.pas (11.18 KB)
|   |-- [DIR] PCB Class Generator/
|   |   |-- PCB_Class_Generator.PrjScr (29.07 KB)
|   |   |-- PCB_Class_Generator_Form.dfm (1.17 KB)
|   |   +-- PCB_Class_Generator_Form.pas (14.29 KB)
|   |-- [DIR] PCB Iterators/
|   |   |-- Count_Pads.pas (1.41 KB)
|   |   |-- CountTracksInComponent.pas (2.40 KB)
|   |   |-- IterateComponentBodies.pas (2.81 KB)
|   |   |-- IterateNets.PAS (1.38 KB)
|   |   |-- IteratePolygons.pas (6.90 KB)
|   |   |-- IterateRegions.pas (3.60 KB)
|   |   |-- LibraryIterator.pas (3.00 KB)
|   |   |-- PCB_Iterators.PrjScr (26.78 KB)
|   |   |-- Polygons.PcbDoc (92.00 KB)
|   |   +-- SpatialIterator.Pas (2.42 KB)
|   |-- [DIR] PCB Layers/
|   |   |-- Layers_Info.pas (2.96 KB)
|   |   |-- PCB_Layers.PrjScr (26.76 KB)
|   |   |-- QueryLayerPairs.pas (2.23 KB)
|   |   |-- QueryLayersOfMechType.PAS (1.92 KB)
|   |   |-- QueryLayerStack.pas (1.00 KB)
|   |   |-- QueryMechLayers.pas (1.94 KB)
|   |   |-- QueryUsedLayers.pas (1.22 KB)
|   |   |-- RebuildInternalAndSplitPlanes.pas (1.55 KB)
|   |   |-- Toggle_Connect_layer_display.pas (1010 B)
|   |   +-- ValidateLayerStack.pas (2.13 KB)
|   |-- [DIR] PCB Logo Creator/
|   |   |-- altiumlogo.bmp (23.42 KB)
|   |   |-- Converter.dfm (3.72 KB)
|   |   |-- Converter.PAS (9.26 KB)
|   |   |-- LayerComboBox.pas (1.70 KB)
|   |   |-- PCBLogoCreator.PRJSCR (30.18 KB)
|   |   |-- test1.bmp (150 B)
|   |   +-- test2.bmp (9.24 KB)
|   |-- [DIR] PCB Objects Mover/
|   |   |-- OffSetObjects.Pas (4.19 KB)
|   |   |-- OffSetObjectsForm.dfm (3.15 KB)
|   |   |-- OffSetObjectsForm.PAS (2.34 KB)
|   |   +-- PCBObjectsMover.PRJSCR (24.34 KB)
|   |-- [DIR] PCB Outputs/
|   |   |-- GetObjectClasses.dfm (1.49 KB)
|   |   |-- GetObjectClasses.pas (6.37 KB)
|   |   |-- PCBOutputGenerator.pas (8.08 KB)
|   |   |-- PCBOutputsProject.PrjScr (25.47 KB)
|   |   +-- Violations.pas (10.46 KB)
|   |-- [DIR] PCB Rules/
|   |   |-- IterateRules.pas (8.34 KB)
|   |   |-- ModifyWidthRules.pas (3.22 KB)
|   |   +-- PCBRules.PrjScr (29.04 KB)
|   |-- [DIR] PCBLIB Outputs/
|   |   |-- FootprintInfo.PrjScr (24.78 KB)
|   |   +-- FootprintInfoReport.pas (1.65 KB)
|   |-- [DIR] SwapOrRotateComponents/
|   |   |-- SwapComponentsUnit.pas (4.26 KB)
|   |   +-- SwapOrRotateComponents.PRJSCR (23.28 KB)
|   |-- [DIR] Unique Object Checker/
|   |   |-- Common.pas (5.73 KB)
|   |   |-- ObjectChecker.pas (7.50 KB)
|   |   +-- UniqueObjectChecker.PrjScr (12.85 KB)
|   |-- [DIR] UnRoute Net Class/
|   |   |-- Form_ChooseNetClass.dfm (959 B)
|   |   |-- Form_ChooseNetClass.PAS (3.94 KB)
|   |   +-- Unroute Net Class.PRJSCR (23.34 KB)
|   +-- [DIR] Values Checker/
|       |-- PCBAPI functions.pas (7.81 KB)
|       |-- ValuesChecker.PrjScr (13.01 KB)
|       |-- ValuesCheckerUnit.dfm (2.70 KB)
|       +-- ValuesCheckerUnit.pas (2.32 KB)
|-- [DIR] Processes/
|   |-- CirWiz.dfm (1.28 KB)
|   |-- CirWiz.pas (5.25 KB)
|   |-- Clrins1.pas (847 B)
|   |-- Clrins2.pas (1.14 KB)
|   |-- ImportWaveforms.pas (5.01 KB)
|   |-- pcbcolor.pas (13.37 KB)
|   |-- pcblayer.pas (18.41 KB)
|   |-- PlacePCBPolygon.pas (1.90 KB)
|   |-- PlaceSchPort.pas (1.19 KB)
|   |-- Process_Scripts.PrjScr (31.03 KB)
|   |-- PublishToPDFScript.pas (1.72 KB)
|   |-- Quikcopy.pas (1.17 KB)
|   |-- RunCommonDialog.pas (1.22 KB)
|   |-- ShowNetList.pas (1.72 KB)
|   +-- SimpleExample.pas (879 B)
|-- [DIR] SCH/
|   |-- AddModelToComponentScript.pas (4.00 KB)
|   |-- checkpins.pas (4.63 KB)
|   |-- CompLibReader.pas (2.87 KB)
|   |-- CountPorts.pas (1.74 KB)
|   |-- createcomp_in_lib.pas (3.86 KB)
|   |-- createcomponent_on_sch.pas (1.21 KB)
|   |-- CreateSchObjects.pas (5.86 KB)
|   |-- DeleteSchObjects.pas (2.05 KB)
|   |-- FetchParameters.pas (4.51 KB)
|   |-- FetchParamsOfComp.pas (2.64 KB)
|   |-- FetchPinsOfComps.pas (3.04 KB)
|   |-- Form_AlignPins.dfm (1.53 KB)
|   |-- Form_AlignPins.pas (7.29 KB)
|   |-- IterateSchSheets.pas (1.54 KB)
|   |-- libiterator.pas (3.68 KB)
|   |-- modelsofacomponent.pas (4.17 KB)
|   |-- ModifySchObjects.pas (2.10 KB)
|   |-- MoveParameters.pas (2.33 KB)
|   |-- ParametersOfSymbolsInALibrary.pas (3.66 KB)
|   |-- parentchild_iterators.pas (3.22 KB)
|   |-- PlaceAPort.pas (1.70 KB)
|   |-- PlaceSchObjects.PAS (7.42 KB)
|   |-- ReplaceSchObjects.pas (3.70 KB)
|   |-- Sch_Scripts.PRJSCR (34.88 KB)
|   |-- SchDocsRenamer.pas (3.30 KB)
|   |-- SchLib_Scripts.PrjScr (32.56 KB)
|   |-- SimModelsOfComponents.pas (15.41 KB)
|   |-- SymbolPrimsIterator.pas (5.36 KB)
|   |-- UndoRedo.pas (4.86 KB)
|   |-- usingAspatialiterator.pas (2.89 KB)
|   |-- UsingSchInterfaces.pas (5.30 KB)
|   |-- usingWSMInterfaces.pas (2.75 KB)
|   |-- [DIR] Circad Translator/
|   |   |-- DesignSettings.pas (2.39 KB)
|   |   |-- ImportUtils.pas (61.84 KB)
|   |   |-- InputForm.dfm (1.85 KB)
|   |   |-- InputForm.pas (3.08 KB)
|   |   |-- Log.pas (2.08 KB)
|   |   |-- SchTranslator.PrjScr (27.41 KB)
|   |   |-- StringUtils.pas (7.38 KB)
|   |   +-- Test.pas (15.61 KB)
|   |-- [DIR] CompReplace/
|   |   |-- ComponentReplacer.PRJSCR (23.72 KB)
|   |   |-- ReplaceSelectedComponent.dfm (324 B)
|   |   +-- ReplaceSelectedComponent.PAS (2.55 KB)
|   |-- [DIR] Connectivity/
|   |   |-- Connectivity.pas (14.31 KB)
|   |   |-- DefnForm.dfm (4.35 KB)
|   |   |-- DefnForm.pas (5.67 KB)
|   |   +-- NetInfoPrj.PrjPCB (26.17 KB)
|   |-- [DIR] Font Editor/
|   |   |-- Fonts Editor.PrjScr (9.99 KB)
|   |   |-- FontsDialog.dfm (8.88 KB)
|   |   +-- FontsDialog.pas (12.05 KB)
|   |-- [DIR] Import Pins/
|   |   |-- ChangeMappingForm.dfm (1.50 KB)
|   |   |-- ChangeMappingForm.pas (2.01 KB)
|   |   |-- ConvUtils.pas (10.12 KB)
|   |   |-- ImportPins.PRJSCR (13.19 KB)
|   |   |-- ImportPinsForm.dfm (2.16 KB)
|   |   |-- ImportPinsForm.pas (10.63 KB)
|   |   +-- PinData.csv (1.47 KB)
|   |-- [DIR] UpdateFootprintLocations/
|   |   |-- FootprintPathUpdater.PRJSCR (12.88 KB)
|   |   |-- UpdateFootprintPathsOfComps.dfm (1.65 KB)
|   |   +-- UpdateFootprintPathsOfComps.pas (10.68 KB)
|   +-- [DIR] UserDefinedParameters/
|       |-- ComponentParameters.pas (11.81 KB)
|       +-- UserDefinedCompParameters.PrjScr (29.13 KB)
+-- [DIR] WSM/
    |-- AddDocToProject.pas (1.63 KB)
    |-- Netlister.pas (11.36 KB)
    |-- ProjectReporter.pas (1.84 KB)
    |-- UsingMessagePanel.pas (2.76 KB)
    |-- WSM_Scripts.PrjScr (25.11 KB)
    |-- [DIR] Export To Agile/
    |   |-- AgileBOMV1.1.dfm (10.65 KB)
    |   |-- AgileBOMV1.1.pas (93.93 KB)
    |   +-- AgileBOMV1.1.PrjScr (31.08 KB)
    +-- [DIR] Protel Netlister/
        |-- ScripterProtelNetlist.pas (9.34 KB)
        +-- ScripterProtelNetlist.PRJSCR (10.00 KB)
```

### Step 5: Write the New Script

Using the example code as a foundation:

1. **Copy relevant patterns**: Use similar initialization, iteration, and object manipulation patterns from the examples
2. **Adapt interfaces**: Identify which API interfaces are needed (IPCB_Board, IPCB_ServerInterface, ISch_Document, etc.)
3. **Follow conventions**:
   - Use proper PCBServer preprocessing/postprocessing
   - Integrate with undo system properly
   - Include error handling
   - Add user feedback via messages or dialogs
4. **Combine techniques**: Often the best solution combines patterns from 2-3 different example scripts
5. **Add comments**: Explain what the code does for future maintainability

## Key Altium Script Concepts

### API Structure
- **PCB API**: Uses `IPCB_` interfaces (IPCB_Board, IPCB_Track, IPCB_Via, etc.)
- **Schematic API**: Uses `ISch_` interfaces (ISch_Document, ISch_Component, etc.)
- **Server interfaces**: PCBServer, SchServer, WorkspaceManager for document-level operations

### Common Patterns

**Initialization:**
```delphi
var
    Board : IPCB_Board;
begin
    Board := PCBServer.GetCurrentPCBBoard;
    if Board = nil then exit;
    
    PCBServer.PreProcess;
    try
        // Your code here
    finally
        PCBServer.PostProcess;
    end;
end;
```

**Iteration:**
```delphi
var
    Iterator : IPCB_BoardIterator;
    Obj      : IPCB_Primitive;
begin
    Iterator := Board.BoardIterator_Create;
    Iterator.AddFilter_ObjectSet(MkSet(eTrackObject));
    Iterator.AddFilter_LayerSet(MkSet(eTopLayer));
    
    Obj := Iterator.FirstPCBObject;
    while Obj <> nil do
    begin
        // Process object
        Obj := Iterator.NextPCBObject;
    end;
    
    Board.BoardIterator_Destroy(Iterator);
end;
```

**Object Creation:**
```delphi
var
    Track : IPCB_Track;
begin
    Track := PCBServer.PCBObjectFactory(eTrackObject, eNoDimension, eCreate_Default);
    Track.X1 := MilsToCoord(1000);
    Track.Y1 := MilsToCoord(1000);
    Track.X2 := MilsToCoord(2000);
    Track.Y2 := MilsToCoord(2000);
    Track.Width := MilsToCoord(10);
    Track.Layer := eTopLayer;
    
    Board.AddPCBObject(Track);
    PCBServer.SendMessageToRobots(Board.I_ObjectAddress, c_Broadcast, PCBM_BoardRegisteration, Track.I_ObjectAddress);
end;
```

### Units and Conversions
- Internal coordinates are in 10 nanometers (1/100,000th of a mil)
- Use `MilsToCoord()` to convert mils to internal units
- Use `MMsToCoord()` to convert millimeters to internal units
- Use `CoordToMils()` and `CoordToMMs()` to convert back

### Important Notes
- Always use PCBServer.PreProcess before modifications and PostProcess after
- Register new objects with SendMessageToRobots for proper board integration
- Check if documents exist before accessing them
- Use proper layer constants (eTopLayer, eBottomLayer, etc.)
- Handle undo system properly for user-friendly scripts

## Finding Specific Functionality

If you're looking for scripts that demonstrate:

**PCB Object Creation**: See CreatePCBObjects.PAS, CreateAVia.pas, CreateComponentOnPCB.pas
**Design Rules**: See CreateRules.pas, ModifyWidthRules.pas, IterateRules.pas
**Layers**: See Layers_Info.pas, QueryLayerStack.pas, ValidateLayerStack.pas
**Iteration**: See Count_Pads.pas, IterateNets.PAS, IterateRegions.pas, LibraryIterator.pas
**Component Manipulation**: See CreateComponentOnPCB.pas, SwapComponentsUnit.pas
**Footprint Creation**: See CreateFootprintInLibrary.pas
**Output Generation**: See PCBOutputGenerator.pas, MillExporter
**Validation**: See Violations.pas, UniqueObjectChecker, ValuesChecker
**Net Operations**: See NetObjectAssign.pas, Unroute_Net_Class
**Region/Polygon**: See IterateRegions.pas, IteratePolygons.pas, PCBPictureCreator

## Resources

### references/overview.md
Quick-reference guide with one-sentence summaries of all scripts, organized by category. Read this first to quickly identify relevant examples.

### references/summaries.md
Detailed descriptions of each script including key procedures, functionality, and use cases. Read specific sections after identifying relevant scripts from overview.md.

### references/scripts/
Directory containing all actual script source code (.pas, .dfm, .PrjScr files) organized by category:
- **PCB/**: 60+ PCB-related scripts and projects
- **SCH/**: Schematic manipulation scripts
- **General/**: General utility scripts  
- **DXP/**: DXP integration examples
- **FPGA/**: FPGA workflow scripts
- **Processes/**: Process automation
- **WSM/**: Workspace manager scripts

When examining script files, look for:
- `.pas` files: Main script code
- `.dfm` files: Dialog form definitions
- `.PrjScr` files: Script project files

## Example Usage Scenarios

**Scenario 1**: User asks "Create a script to find all vias with holes smaller than 10 mils"
1. Check overview.md for iteration and via-related scripts
2. Find PadViaCacheProperties.PAS and IterateNets.PAS as relevant examples
3. Read those scripts to understand via iteration and property access
4. Combine patterns to create new script with size filtering

**Scenario 2**: User asks "Make a script to export component positions to CSV"
1. Check overview.md for output/export scripts
2. Find PCBOutputGenerator.pas and FootprintInfoReport.pas
3. Read these to understand component iteration and CSV output
4. Adapt patterns for component position extraction

**Scenario 3**: User asks "Create footprint with specific pad layout"
1. Check overview.md for footprint creation
2. Find CreateFootprintInLibrary.pas
3. Read the script to understand library footprint creation
4. Modify pad creation loop for desired layout
