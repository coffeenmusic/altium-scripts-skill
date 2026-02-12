# Altium Class Structures — Maintenance Guide

This directory contains complete interface member listings extracted from the Altium Designer Script IDE. These complement the API reference files in the parent directory by providing full property/method/function signatures.

## Purpose

The API references (`PCB_API_Reference.md`, etc.) cover commonly used properties and coding patterns. The class structure files here provide **complete** member listings for when you need a specific property or method not in the quick references.

## File Organization

Currently all classes are in `Altium_Class_Structures.md`. As it grows, split by domain:
- `PCB_Classes_Primitives.md` — IPCB_Primitive base, Track, Arc, Via, Pad, Fill, Region, Text, Component, etc.
- `PCB_Classes_Board.md` — IPCB_Board (very large on its own)
- `PCB_Classes_Rules.md` — IPCB_Rule base and all rule subtypes
- `PCB_Classes_Infrastructure.md` — Iterators, LayerStack, Factory, Grid, etc.
- `SCH_Classes.md` — All ISch_ interfaces
- `General_Classes.md` — IClient, IWorkSpace, IProject, etc.

## Deduplication — Why It Matters

All Altium interfaces use inheritance. A class like `IPCB_Track` inherits ~75 members from `IPCB_Primitive`. Without deduplication, every class listing repeats those 75 members. With 50+ documented classes, that's 3,750 wasted lines. **We document base class members once and only list unique members for derived classes.**

## Inheritance Hierarchy

### PCB
```
IPCB_Primitive (base for all PCB objects)
├── IPCB_Board
├── IPCB_Track
├── IPCB_Arc
├── IPCB_Via
├── IPCB_Pad
├── IPCB_Fill
├── IPCB_Region
├── IPCB_Text
├── IPCB_Component
├── IPCB_Polygon
├── IPCB_Net
├── IPCB_Connection
├── IPCB_DifferentialPair
├── IPCB_Dimension (and subtypes: Linear, Angular, Radial, etc.)
├── IPCB_Rule (base for all rules)
│   ├── IPCB_ClearanceConstraint
│   ├── IPCB_MaxMinWidthConstraint
│   ├── IPCB_DifferentialPairsRoutingRule
│   ├── IPCB_RoutingViaStyleRule
│   └── ... (all rule subtypes)
└── ... (other PCB objects)
```

### SCH (to be confirmed as classes are added)
```
ISch_BasicPrimitive (likely base)
├── ISch_Component
├── ISch_Pin
├── ISch_Port
├── ISch_Wire
├── ISch_NetLabel
└── ...
```

## How to Add a New Class

### Step 1: Get the Raw Data

In the Altium Script IDE, use the class browser or code completion to get the full member listing for the interface. Copy all members into a temporary text file. The IDE typically outputs in this format:

```
property  PropertyName : TypeName
procedure MethodName(Param1 : Type1, Param2 : Type2);
function  FunctionName(Param1 : Type1) : ReturnType;
```

### Step 2: Identify the Parent Class

Most PCB objects inherit from `IPCB_Primitive`. Key indicators that a class inherits from IPCB_Primitive:
- Contains `BeginModify` / `EndModify`
- Contains `Layer`, `Selected`, `ObjectId`, `Net`
- Contains `MoveByXY`, `RotateBy`, `I_ObjectAddress`
- Contains `InBoard`, `InComponent`, `InNet`

For rule subtypes, the parent is `IPCB_Rule`. Key indicators:
- Contains everything from IPCB_Primitive PLUS
- Contains `RuleKind`, `Priority`, `Scope1Expression`, `Scope2Expression`
- Contains `ActualCheck`, `CheckBinaryScope`, `CheckUnaryScope`

### Step 3: Remove Inherited Members

Compare your raw listing against the base class in `Altium_Class_Structures.md`:

1. Open the base class section (e.g., `IPCB_Primitive`)
2. For each member in your new class, check if it exists in the base
3. **Delete** every member that matches a base class member
4. For rule subtypes: also remove members already listed under `IPCB_Rule`

**Tip**: You can paste the raw data into Claude Code and ask: *"Deduplicate this class listing against the IPCB_Primitive base class in references/classes/Altium_Class_Structures.md — keep only unique members."*

### Step 4: Add to the File

Add the deduplicated listing in the appropriate section with this format:

```
## IPCB_ClassName
Inherits: IPCB_Primitive

property  UniqueProperty1 : TypeName
procedure UniqueMethod1(Param1 : Type1);
function  UniqueFunction1 : ReturnType;
```

Keep members in **alphabetical order** (matches IDE output, easy to find things).

## Format Rules

1. **Exact IDE signatures** — use the property/procedure/function prefixes and type names as the IDE reports them
2. **Alphabetical order** — within each class, keep members sorted alphabetically
3. **One member per line** — don't compress multiple members onto one line
4. **Inherits line** — always include `Inherits: ParentClass` after the heading
5. **No descriptions** — the signatures are self-documenting; usage patterns belong in the API reference files
6. **Remove duplicates** — the IDE sometimes lists a member twice; keep only one copy
7. **Preserve spelling** — if the IDE shows a typo (e.g., `Prefered` instead of `Preferred`), keep the IDE spelling since that's what works in code

## Quick Checklist for New Classes

- [ ] Raw data copied from Altium Script IDE
- [ ] Parent class identified (IPCB_Primitive, IPCB_Rule, or other)
- [ ] All inherited members removed
- [ ] Duplicate entries within the class removed
- [ ] `Inherits:` line added
- [ ] Members in alphabetical order
- [ ] Added under correct section (PCB / SCH / GENERAL)
