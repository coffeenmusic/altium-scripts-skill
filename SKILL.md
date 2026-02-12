---
name: altium-delphi-scripts
description: Expert guidance for writing Altium Designer DelphiScript automation scripts. Use when users ask to create, write, develop, or build scripts for Altium Designer PCB/schematic automation, footprint creation, design rule manipulation, layer management, component placement, net routing, output generation, or any other Altium scripting task. Also use for questions about Altium API usage, script syntax, or how to accomplish specific automation tasks in Altium Designer.
---

# Altium DelphiScript API Skill

## Overview

This skill provides complete API reference documentation for writing Altium Designer DelphiScript automation scripts. Three compact reference files contain all interface definitions, object properties, method signatures, enumerations, and patterns needed to write any Altium script.

## API Reference Files

Read the relevant reference file(s) based on the user's request:

### `references/PCB_API_Reference.md`
PCB/Layout editor API. Covers: PCBServer, board access, coordinate units, undo system, object factory, all PCB object properties (tracks, arcs, vias, pads, text, fills, regions, polygons, components, rules, nets, classes, dimensions, coordinates, embedded objects, board outline), all iterator types (board, spatial, group, library), layer constants, layer stack, interactive mode, pad cache, report generation.

### `references/SCH_API_Reference.md`
Schematic editor API. Covers: SchServer, document access, coordinate units, undo system, object factory, all SCH object properties (ports, components, pins, wires, netlabels, junctions, lines, sheet symbols, sheet entries, cross-sheet connectors, parameters, implementations, power objects, drawing primitives), all iterator types (document, spatial, library, parent-child), font manager, library operations, WSM interfaces for schematic data.

### `references/General_DXP_API_Reference.md`
Everything else. Covers: DXP Client framework (IClient, IServerRecord, IServerProcess, IServerDocument, IServerModule), Workspace Manager interfaces (IWorkSpace, IProject, IDocument, IComponent, INet, IPin, IPart), Messages Manager, Integrated Library Manager, Model Type Manager, FPGA Configuration, complete process system catalog (PCB color/layer, SCH operations, PDF publishing, netlist generation, waveform import, common dialogs), general DelphiScript utilities (file I/O, TIniFile, TXceedZip, FindFiles, RunApplication), VCL form structure, VCL components, DelphiScript language notes.

## Workflow

1. **Determine scope**: Is the task PCB, schematic, or general/cross-domain?
2. **Read the relevant API reference(s)**: Usually 1-2 files cover the need. For cross-domain tasks (e.g., iterating SCH components then modifying PCB), read both.
3. **Write the script**: Combine the documented patterns, interfaces, and properties to build the solution. The references contain all interface signatures, property types, enum values, and code patterns needed.

## Complete Script Templates

The API references document individual patterns and interfaces. Below are complete end-to-end script templates showing how to assemble them into working scripts.

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
