---
name: altium-delphi-scripts
description: Expert guidance for writing Altium Designer DelphiScript automation scripts. Use when users ask to create, write, develop, or build scripts for Altium Designer PCB/schematic automation, footprint creation, design rule manipulation, layer management, component placement, net routing, output generation, or any other Altium scripting task. Also use for questions about Altium API usage, script syntax, or how to accomplish specific automation tasks in Altium Designer.
---

# Altium DelphiScript Scripting Skill

**Version: 2.0.0**

## Overview

This skill combines two approaches for writing Altium Designer DelphiScript automation scripts:

1. **Working Example Scripts** (primary) - A curated collection of 230+ working example scripts. Use these as the foundation for any new script by finding relevant examples, reading their source code, and adapting their patterns.
2. **API Reference Documentation** (supplementary) - Three compact reference files containing interface definitions, object properties, method signatures, enumerations, and patterns. Use these to fill in gaps when example scripts don't cover a specific interface, property, or pattern.

Always start with example scripts to understand correct patterns, then consult the API references for additional details or less common interfaces.

## Workflow

### Step 1: Understand the User's Request

Clarify what the user wants to accomplish:
- What type of document (PCB, schematic, library)?
- What objects need to be created, modified, or analyzed?
- What is the desired output or end result?

### Step 2: Find Relevant Example Scripts

Read `references/overview.md` which contains one-sentence summaries of all available scripts organized by category (PCB, Schematic, Process).

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
- `references/scripts/PCB/` - PCB document scripts (60+ scripts)
- `references/scripts/SCH/` - Schematic document scripts (30+ scripts)
- `references/scripts/Processes/` - Process automation scripts (15 scripts)

### Step 5: Consult API References for Gaps

After reading example scripts, if you need more detail about specific interfaces, properties, methods, or enumerations that aren't fully demonstrated in the examples, read the relevant API reference file(s):

#### `references/PCB_API_Reference.md`
PCB/Layout editor API. Covers: PCBServer, board access, coordinate units, undo system, object factory, all PCB object properties (tracks, arcs, vias, pads, text, fills, regions, polygons, components, rules, nets, classes, dimensions, coordinates, embedded objects, board outline, differential pairs, contour/geometric utilities), all iterator types (board, spatial, group, library), layer constants, layer stack, interactive mode, pad cache, report generation.

#### `references/SCH_API_Reference.md`
Schematic editor API. Covers: SchServer, document access, coordinate units, undo system, object factory, all SCH object properties (ports, components, pins, wires, netlabels, junctions, lines, sheet symbols, sheet entries, cross-sheet connectors, parameters, implementations, power objects, drawing primitives), all iterator types (document, spatial, library, parent-child), font manager, library operations, WSM interfaces for schematic data.

#### `references/General_DXP_API_Reference.md`
Everything else. Covers: DXP Client framework (IClient, IServerRecord, IServerProcess, IServerDocument, IServerModule), Workspace Manager interfaces (IWorkSpace, IProject, IDocument, IComponent, INet, IPin, IPart), Messages Manager, Integrated Library Manager, Model Type Manager, FPGA Configuration, complete process system catalog (PCB color/layer, SCH operations, PDF publishing, netlist generation, waveform import, common dialogs), general DelphiScript utilities (file I/O, TIniFile, TXceedZip, FindFiles, RunApplication), VCL form structure, VCL components (TForm, TButton, TEdit, TComboBox, TCheckListBox, TProgressBar, TObjectList, etc.), DelphiScript language notes.

### Step 6: Look Up Complete Member Listings

If you need the **complete property/method list** for a specific interface or class not fully covered in the API references or example scripts, use the comprehensive API data:

1. Read `references/api/API_Map.md` to find the interface/class name and which file it's in
2. Search for the `## TypeName` section header in the indicated file
3. Read just that section for all members

The comprehensive API files use inheritance deduplication — base class members (e.g., IPCB_Primitive) are documented once, and derived interfaces list only their unique additions. Check `references/api/API_Hierarchy.md` to see which interfaces inherit from which base.

**Files in `references/api/`:**
- `API_Map.md` — Master index of all 2,483 interfaces + classes with member counts
- `PCB_Interfaces.md` — All 531 IPCB_* interfaces (deduped against IPCB_Primitive)
- `SCH_Interfaces.md` — All 131 ISch_* interfaces (deduped against ISch_GraphicalObject)
- `Other_Interfaces.md` — All 815 other interfaces (IClient, IProject, IDraftsman, etc.)
- `Classes.md` — All 1,006 classes (deduped against TWinControl/TComponent/TObject)
- `Constants.md` — All 10,548 constants, grouped by domain
- `Global_Functions.md` — All 2,958 global functions and procedures
- `API_Hierarchy.md` — Inheritance trees showing which types inherit from which bases

### Step 7: Write the New Script

Using the example code as the primary foundation:

1. **Copy relevant patterns**: Use similar initialization, iteration, and object manipulation patterns from the examples
2. **Adapt interfaces**: Identify which API interfaces are needed (IPCB_Board, ISch_Document, etc.)
3. **Fill in gaps from API references**: For properties or methods not demonstrated in examples, use the API reference documentation
4. **Follow conventions**: Use proper server preprocessing/postprocessing, undo system integration, error handling
5. **Combine techniques**: Often the best solution combines patterns from 2-3 different example scripts

## Script Directory Tree

```
references/scripts/
|-- [DIR] PCB/
|   |-- Count_Connection_Lines.pas
|   |-- CreateAVia.pas
|   |-- CreateComponentOnPCB.pas
|   |-- CreateFootprintInLibrary.pas
|   |-- CreatePCBObjects.PAS
|   |-- CreateRules.pas
|   |-- Cycle_Pcb_Cursor_Type.pas
|   |-- DeletePCBObjects.pas
|   |-- EmbeddedObjects.pas
|   |-- NetObjectAssign.pas
|   |-- PadStackInfo.pas
|   |-- PadViaCacheProperties.PAS
|   |-- QueryBoard.pas
|   |-- Undo.pas
|   |-- [DIR] BoardOutline Copier/
|   |-- [DIR] CreateRegionsFromBitmap/
|   |-- [DIR] FootPrint Finder/
|   |-- [DIR] FromTos Generator/
|   |-- [DIR] Hole Size Editor/
|   |-- [DIR] Mill Exporter/
|   |-- [DIR] PCB Class Generator/
|   |-- [DIR] PCB Iterators/
|   |   |-- Count_Pads.pas, CountTracksInComponent.pas
|   |   |-- IterateComponentBodies.pas, IterateNets.PAS
|   |   |-- IteratePolygons.pas, IterateRegions.pas
|   |   |-- LibraryIterator.pas, SpatialIterator.Pas
|   |-- [DIR] PCB Layers/
|   |   |-- Layers_Info.pas, QueryLayerPairs.pas
|   |   |-- QueryLayersOfMechType.PAS, QueryLayerStack.pas
|   |   |-- QueryMechLayers.pas, QueryUsedLayers.pas
|   |   |-- RebuildInternalAndSplitPlanes.pas
|   |   |-- Toggle_Connect_layer_display.pas
|   |   |-- ValidateLayerStack.pas
|   |-- [DIR] PCB Logo Creator/
|   |-- [DIR] PCB Objects Mover/
|   |-- [DIR] PCB Outputs/
|   |   |-- GetObjectClasses.pas, PCBOutputGenerator.pas
|   |   |-- Violations.pas
|   |-- [DIR] PCB Rules/
|   |   |-- IterateRules.pas, ModifyWidthRules.pas
|   |-- [DIR] PCBLIB Outputs/
|   |-- [DIR] SwapOrRotateComponents/
|   |-- [DIR] Unique Object Checker/
|   |-- [DIR] UnRoute Net Class/
|   +-- [DIR] Values Checker/
|-- [DIR] Processes/
|   |-- CirWiz.pas, Clrins1.pas, Clrins2.pas
|   |-- ImportWaveforms.pas, pcbcolor.pas, pcblayer.pas
|   |-- PlacePCBPolygon.pas, PlaceSchPort.pas
|   |-- PublishToPDFScript.pas, Quikcopy.pas
|   |-- RunCommonDialog.pas, ShowNetList.pas
|   +-- SimpleExample.pas
+-- [DIR] SCH/
    |-- AddModelToComponentScript.pas
    |-- checkpins.pas, CompLibReader.pas
    |-- CountPorts.pas, createcomp_in_lib.pas
    |-- createcomponent_on_sch.pas
    |-- CreateSchObjects.pas, DeleteSchObjects.pas
    |-- FetchParameters.pas, FetchParamsOfComp.pas
    |-- FetchPinsOfComps.pas, IterateSchSheets.pas
    |-- libiterator.pas, modelsofacomponent.pas
    |-- ModifySchObjects.pas, MoveParameters.pas
    |-- ParametersOfSymbolsInALibrary.pas
    |-- parentchild_iterators.pas
    |-- PlaceAPort.pas, PlaceSchObjects.PAS
    |-- ReplaceSchObjects.pas, SchDocsRenamer.pas
    |-- SimModelsOfComponents.pas
    |-- SymbolPrimsIterator.pas, UndoRedo.pas
    |-- usingAspatialiterator.pas
    |-- UsingSchInterfaces.pas
    |-- usingWSMInterfaces.pas
    |-- [DIR] Circad Translator/
    |-- [DIR] CompReplace/
    |-- [DIR] Connectivity/
    |-- [DIR] Font Editor/
    |-- [DIR] Import Pins/
    |-- [DIR] UpdateFootprintLocations/
    +-- [DIR] UserDefinedParameters/
```

## Finding Specific Functionality

If you're looking for scripts that demonstrate:

**PCB Object Creation**: See CreatePCBObjects.PAS, CreateAVia.pas, CreateComponentOnPCB.pas
**Design Rules**: See CreateRules.pas, ModifyWidthRules.pas, IterateRules.pas
**Layers**: See Layers_Info.pas, QueryLayerStack.pas, ValidateLayerStack.pas
**Iteration**: See Count_Pads.pas, IterateNets.PAS, IterateRegions.pas, LibraryIterator.pas
**Component Manipulation**: See CreateComponentOnPCB.pas, SwapComponentsUnit.pas
**Footprint Creation**: See CreateFootprintInLibrary.pas
**Output Generation**: See PCBOutputGenerator.pas, Mill Exporter
**Validation**: See Violations.pas, UniqueObjectChecker, ValuesChecker
**Net Operations**: See NetObjectAssign.pas, UnRoute Net Class
**Region/Polygon**: See IterateRegions.pas, IteratePolygons.pas, PCB Picture Creator
**Schematic Components**: See CreateSchObjects.pas, PlaceSchObjects.PAS, UsingSchInterfaces.pas
**Schematic Library**: See createcomp_in_lib.pas, libiterator.pas, SymbolPrimsIterator.pas
**Schematic Parameters**: See FetchParameters.pas, FetchParamsOfComp.pas, UserDefinedParameters
**Process Automation**: See SimpleExample.pas, pcbcolor.pas, PublishToPDFScript.pas

## Complete Script Templates

The example scripts demonstrate individual patterns. Below are complete end-to-end templates showing how to assemble patterns into working scripts. Use these as starting points when no single example script matches the user's needs.

### PCB Script Template
```delphi
{ PCB script: iterate objects, modify properties, generate report }
Var
    Board    : IPCB_Board;
    Iterator : IPCB_BoardIterator;
    Track    : IPCB_Track;
    Report   : TStringList;
Begin
    Board := PCBServer.GetCurrentPCBBoard;
    If Board = Nil Then Exit;

    Report := TStringList.Create;
    PCBServer.PreProcess;
    Try
        Iterator := Board.BoardIterator_Create;
        Iterator.AddFilter_ObjectSet(MkSet(eTrackObject));
        Iterator.AddFilter_LayerSet(MkSet(eTopLayer));
        Iterator.AddFilter_Method(eProcessAll);

        Track := Iterator.FirstPCBObject;
        While Track <> Nil Do
        Begin
            { Modify example: }
            PCBServer.SendMessageToRobots(Track.I_ObjectAddress, c_Broadcast, PCBM_BeginModify, c_NoEventData);
            Track.Width := MilsToCoord(10);
            PCBServer.SendMessageToRobots(Track.I_ObjectAddress, c_Broadcast, PCBM_EndModify, c_NoEventData);

            { Report example: }
            Report.Add('Track: (' + CoordToString(Track.X1) + ',' + CoordToString(Track.Y1) + ')');

            Track := Iterator.NextPCBObject;
        End;
        Board.BoardIterator_Destroy(Iterator);
    Finally
        PCBServer.PostProcess;
    End;

    Report.SaveToFile('C:\TrackReport.txt');
    Report.Free;
    Client.OpenDocument('Text', 'C:\TrackReport.txt');
End.
```

### SCH Script Template
```delphi
{ SCH script: iterate components, read parameters, create objects }
Var
    CurrentSch : ISch_Document;
    Iterator   : ISch_Iterator;
    Comp       : ISch_Component;
    ParamIt    : ISch_Iterator;
    Param      : ISch_Parameter;
    NewPort    : ISch_Port;
Begin
    If SchServer = Nil Then Exit;
    CurrentSch := SchServer.GetCurrentSchDocument;
    If CurrentSch = Nil Then Exit;

    SchServer.ProcessControl.PreProcess(CurrentSch, '');
    Try
        { Iterate components and their parameters }
        Iterator := CurrentSch.SchIterator_Create;
        Iterator.AddFilter_ObjectSet(MkSet(eSchComponent));
        Comp := Iterator.FirstSchObject;
        While Comp <> Nil Do
        Begin
            ShowMessage('Component: ' + Comp.Designator.Text);

            ParamIt := Comp.SchIterator_Create;
            ParamIt.AddFilter_ObjectSet(MkSet(eParameter));
            Param := ParamIt.FirstSchObject;
            While Param <> Nil Do
            Begin
                ShowMessage('  ' + Param.Name + ' = ' + Param.Text);
                Param := ParamIt.NextSchObject;
            End;
            Comp.SchIterator_Destroy(ParamIt);

            Comp := Iterator.NextSchObject;
        End;
        CurrentSch.SchIterator_Destroy(Iterator);

        { Create a new port }
        NewPort := SchServer.SchObjectFactory(ePort, eCreate_GlobalCopy);
        NewPort.Location  := Point(MilsToCoord(500), MilsToCoord(500));
        NewPort.Style     := ePortRight;
        NewPort.IOType    := ePortBidirectional;
        NewPort.Name      := 'MyPort';
        NewPort.Width     := MilsToCoord(1000);
        CurrentSch.RegisterSchObjectInContainer(NewPort);
        SchServer.RobotManager.SendMessage(CurrentSch.I_ObjectAddress, c_BroadCast, SCHM_PrimitiveRegistration, NewPort.I_ObjectAddress);
    Finally
        SchServer.ProcessControl.PostProcess(CurrentSch, '');
    End;
    CurrentSch.GraphicallyInvalidate;
End.
```

### WSM / Cross-Domain Script Template
```delphi
{ WSM script: compile project, iterate documents/components/nets }
Var
    WS      : IWorkSpace;
    Prj     : IProject;
    Doc     : IDocument;
    Comp    : IComponent;
    Net     : INet;
    Pin     : IPin;
    I, J, K : Integer;
    Report  : TStringList;
Begin
    WS := GetWorkSpace;
    If WS = Nil Then Exit;
    Prj := WS.DM_FocusedProject;
    If Prj = Nil Then Exit;
    Prj.DM_Compile;

    Report := TStringList.Create;
    For I := 0 To Prj.DM_PhysicalDocumentCount - 1 Do
    Begin
        Doc := Prj.DM_PhysicalDocuments(I);
        Report.Add('Document: ' + Doc.DM_FileName);

        For J := 0 To Doc.DM_ComponentCount - 1 Do
        Begin
            Comp := Doc.DM_Components(J);
            Report.Add('  ' + Comp.DM_PhysicalDesignator + ' - ' + Comp.DM_Footprint);
        End;

        For J := 0 To Doc.DM_NetCount - 1 Do
        Begin
            Net := Doc.DM_Nets(J);
            Report.Add('  Net: ' + Net.DM_CalculatedNetName + ' (' + IntToStr(Net.DM_PinCount) + ' pins)');
        End;
    End;

    Report.SaveToFile(SpecialFolder_MyDesigns + '\ProjectReport.txt');
    Report.Free;
End.
```

### Process-Based Script Template
```delphi
{ Process script: use parameter stack to invoke built-in commands }
Var
    Value    : Integer;
    FileName : String;
Begin
    { Generate netlist }
    ResetParameters;
    AddStringParameter('ObjectKind', 'Netlist');
    AddIntegerParameter('Index', 4);  // Protel format
    AddStringParameter('ReturnGeneratedDocuments', 'True');
    RunProcess('WorkspaceManager:GenerateReport');
    GetIntegerParameter('Result', Value);
    If Value <> 0 Then
    Begin
        GetStringParameter('File1', FileName);
        ShowMessage('Generated: ' + FileName);
    End;
End.
```

## Important Notes

- Always wrap PCB modifications in `PCBServer.PreProcess` / `PCBServer.PostProcess`
- Always wrap SCH modifications in `SchServer.ProcessControl.PreProcess` / `PostProcess`
- Register new objects with `SendMessageToRobots` (PCB) or `RobotManager.SendMessage` (SCH)
- Bracket individual property changes with `BeginModify` / `EndModify` messages
- Call `Prj.DM_Compile` before accessing WSM connectivity data (components, nets, pins)
- Check for Nil before using any server or document reference
- PCB internal coords: 1 mil = 10000 units. Use `MilsToCoord()` / `MMsToCoord()`
- SCH coords: Use `MilsToCoord()`, `Point(x,y)` for TLocation
- DelphiScript uses `MkSet()` instead of standard Delphi `[set]` syntax
- All variables are effectively variants - explicit typing is optional but recommended
- **Hiding internal procedures from the script runner**: Altium's File > Run Script dialog only shows procedures with **no parameters**. Any helper or internal procedure that shouldn't be exposed to the user must accept a dummy parameter (e.g., `Dummy : Integer`) to hide it. Only the main entry points the user should see (e.g., `RunGUI`, `Run`) should be parameterless.

## Resources Summary

| Resource | Purpose | When to Use |
|---|---|---|
| `references/overview.md` | One-sentence script summaries | First - find relevant examples |
| `references/summaries.md` | Detailed script descriptions | When overview isn't enough detail |
| `references/scripts/[category]/` | Actual working source code | Read code of relevant examples |
| `references/PCB_API_Reference.md` | PCB patterns, code examples, process ops | Patterns, undo system, iterators, processes |
| `references/SCH_API_Reference.md` | SCH patterns, code examples, process ops | Patterns, model system, iterators, processes |
| `references/General_DXP_API_Reference.md` | DXP/WSM/VCL patterns, process catalog | Framework, processes, VCL forms, utilities |
| `references/api/API_Map.md` | Master index of all interfaces/classes | Find which file has a specific type's members |
| `references/api/PCB_Interfaces.md` | All 531 IPCB_* interface members | Complete PCB member listings |
| `references/api/SCH_Interfaces.md` | All 131 ISch_* interface members | Complete SCH member listings |
| `references/api/Other_Interfaces.md` | All 815 other interface members | IClient, IProject, IDraftsman, etc. |
| `references/api/Classes.md` | All 1,006 class members | VCL classes, all Altium classes |
| `references/api/Constants.md` | All 10,548 constants by domain | Enum values, layer constants, flags |
| `references/api/Global_Functions.md` | All 2,958 global functions/procedures | Standalone utility functions |
| `references/api/API_Hierarchy.md` | Inheritance trees | Which types inherit from which bases |
