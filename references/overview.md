# Altium Scripts - Quick Reference

Brief descriptions of each Altium Designer script in this collection.

## PCB Scripts

**Create PCB objects** - Creates various PCB elements including vias, tracks, pads, fills, arcs, text, net classes, and regions.

**Create rules** - Programmatically creates PCB design rules including width constraints and confinement rules.

**Cycle PCB cursor type** - Cycles through available cursor types (Cross90, BigCross, Cross45) in the PCB editor.

**Delete PCB objects** - Safely removes track objects from the top layer with proper undo system integration.

**Embedded objects** - Creates and retrieves embedded objects that store custom metadata within PCB documents.

**Net object assign** - Searches for a GND net and creates a via assigned to that net.

**Count connection lines** - Finds, counts, and reports all connection lines (ratsnest) in the PCB document.

**Create a via** - Creates a new via object with specified parameters and proper cache settings.

**Create component on PCB** - Creates, rotates, and manipulates PCB components including calculating midpoints and setting heights.

**Create footprint in library** - Creates a resistor footprint with pads and outline in a PCB library.

**Pad stack info** - Interactively displays detailed pad stack configuration, hole type, and rotation for clicked pads.

**Pad via cache properties** - Shows cached design rule properties for selected pads or vias including masks and clearances.

**Query board** - Retrieves and displays board settings, dimensions, perimeter, and area in imperial and metric units.

**Undo** - Demonstrates proper PCB undo system usage with single and multiple undo operations.

**Mill Exporter** - Complete project that exports PCB designs to Roland RML format for CNC milling machines with configurable machine settings.

**Copy Board Outline** - Copies the PCB board outline as tracks and arcs to a specified layer with user-defined width.

**PCB Picture Creator** - Converts bitmap images into PCB copper regions with scaling, flipping, and union optimization options.

**Footprint Finder** - Searches for specific footprints across multiple PCB library files in a directory and lists matching libraries.

**FromTos Generator** - Automatically creates From-To connections between pads on two components that share the same net assignments.

**Hole Size Editor** - Batch editor for pad and via hole sizes with filtering, unit conversion, and bulk modification capabilities.

**PCB Class Generator** - Adds nets from selected objects to net classes, creating new classes or adding to existing ones.

**Count pads** - Counts all pad objects on the PCB using a board iterator and displays the total.

**Iterate nets** - Iterates through all net objects and displays a comma-separated list of net names.

**Iterate regions** - Generates detailed report of regions including contours, holes, and parent relationships.

**Iterate polygons** - Creates detailed report of polygon properties including pour settings, hatch styles, and clearances.

**Spatial iterator** - Demonstrates area-based selection by selecting tracks and arcs within a user-defined rectangle.

**Library iterator** - Iterates through PCB library footprints and counts primitives in each footprint.

**Count tracks in component** - Counts tracks within components using nested board and group iterators.

**Iterate component bodies** - Generates report of component body objects with names, types, and heights.

**Validate layer stack** - Validates that signal and internal plane layers are in correct sequential order in the layer stack.

**Layers info** - Generates CSV report of electrical layers with copper thickness, dielectric properties, and materials.

**Query layer pairs** - Displays all drill layer pairs showing low and high layer combinations for vias.

**Query layer stack** - Lists all electrical layers in the PCB's layer stack.

**Query mechanical layers** - Reports mechanical layer display status and object presence for each mechanical layer.

**Query used layers** - Checks which signal layers are used and displayed in the design.

**Rebuild internal and split planes** - Forces complete rebuild of all internal plane and split plane layers.

**Toggle connect layer display** - Toggles visibility of the Connect layer (ratsnest/airwires) on and off.

**Query layers of mechanical type** - Reports detailed mechanical layer properties including link-to-sheet and display settings.

**PCB Objects Mover** - Moves selected object types within a user-defined area by X/Y offset or distance/angle.

**PCB output generator** - Automates pick-and-place, BOM generation, fiducial location reporting, and board dimension calculations.

**Violations** - Generates comprehensive report of all design rule violations with associated rules and objects.

**Get object classes** - Interactive tool to select and report on PCB classes and their members (nets, components, etc.).

**Modify width rules** - Finds and conditionally modifies width constraint rules, updating minimum, maximum, and favored widths.

**Iterate rules** - Generates comprehensive report of all design rules with names, IDs, and rule types.

**Footprint info report** - Generates CSV report of all footprints in a PCB library with names, heights, and descriptions.

**Swap components** - Interactively swaps positions of two different components or rotates a single component by 180 degrees.

**Unique Object Checker** - Validates and reports duplicate component and net names with intelligent alphanumeric sorting.

**Unroute Net Class** - Selectively unroutes all nets within chosen net classes while preserving pads and components.

**Values Checker** - Validates PCB objects for illegal values: zero-radius arcs, zero-diameter holes, negative coordinates, and specific dimensions.

## Schematic Scripts

**Count ports** - Counts all port objects on the current schematic sheet using an iterator.

**Create component in library** - Creates a new schematic symbol in a library with rectangle body and pins.

**Add simulation model to component** - Adds a SPICE simulation model (.ckt file) to a 555 timer component with proper pin mapping and parameters.

**Check pins** - Validates pin names and designators in schematic library symbols, checking for blank fields and leading/trailing spaces.

**Component library reader** - Extracts and reports component information from schematic libraries including names, descriptions, part counts, and aliases.

**Library iterator** - Iterates through schematic library components and reports their aliases.

**Place component on schematic** - Places a component from an integrated library onto a schematic sheet programmatically.

**Create schematic objects** - Creates schematic port objects demonstrating single and multiple undo operations.

**Delete schematic objects** - Safely deletes all port objects from a schematic with proper undo system integration.

**Fetch parameters** - Extracts and reports system parameters and component parameters from schematics.

**Fetch component parameters** - Generates report of all parameters for each component on a schematic sheet.

**Fetch pins of components** - Creates detailed report of all pins for each component including names, designators, and orientations.

**Align pins** (Project) - Interactive tool to align selected pins in schematic library symbols vertically or horizontally with consistent spacing.

**Iterate schematic sheets** - Iterates through all open schematic documents in the focused project and lists their names.

**Schematic docs renamer** - Copies and renames all schematic files in open projects with .sch extension.

**Models of a component** - Extracts and reports all implementation models and datafile links for components on a schematic.

**Modify schematic objects** - Modifies properties of schematic objects (wires and ports) with proper robot manager messaging.

**Move parameters** - Moves component parameters by changing their location coordinates.

**Parameters of symbols in library** - Iterates through library symbols and reports all parameters for each symbol.

**Parent-child iterators** - Demonstrates nested iteration by finding sheet symbols and their associated sheet entries.

**Place a port** - Creates and places a single port object on a schematic sheet.

**Place schematic objects** - Comprehensive script that creates and places multiple schematic object types including ports, components, junctions, netlabels, lines, and wires.

**Replace schematic objects** - Replaces all cross-sheet connectors with port objects while preserving location and orientation.

**Symbol primitives iterator** - Iterates through library symbols and reports all graphical primitives (rectangles, lines, arcs, pins, etc.) in each symbol.

**Undo/Redo** - Demonstrates proper undo/redo system usage by creating a component and pin in separate undoable steps.

**Using spatial iterator** - Demonstrates spatial iteration by selecting junctions and components within a user-defined rectangular area.

**Using schematic interfaces** - Comprehensive component information extraction including footprints, orientations, unique IDs, and properties.

**Using workspace manager interfaces** - Demonstrates workspace manager API by reporting all projects, documents, components, and nets.

**Simulation models of components** - Advanced script that extracts simulation models with complete parameter analysis, library path resolution, and datafile link information.

**Schematic Translator** (Project) - Complete CirCAD to Altium Designer schematic file translator with dialog interface, supporting lines, arcs, components, pins, text, busses, power objects, and design settings.

**Component Replacer** (Project) - Interactively replaces selected schematic components with specified library components while preserving location and orientation.

**Net Info** (Project) - Adds pin net name parameters to component pins on schematics with customizable colors, offsets, and display options.

**Fonts Editor** (Project) - Interactive schematic font manager with tree view interface for selecting and modifying fonts of text objects including labels, parameters, designators, and annotations.

**Import Pins** (Project) - Imports schematic library pins from CSV files with customizable field mapping for pin properties including designator, electrical type, orientation, symbols, and location.

**Footprint Path Updater** (Project) - Updates PCB footprint library paths for schematic components with dialog interface for selecting footprints and available library locations.

**User Defined Component Parameters** (Project) - Adds, modifies, and deletes user-defined parameters for all components on a schematic with batch processing capabilities.

## Process Scripts

**Simple example** - Demonstrates basic parameter passing using AddIntegerParameter and GetIntegerParameter.

**Clear inside 1** - Deletes all objects within a user-defined rectangular area on schematic.

**Clear inside 2** - Deletes objects within a user-defined area with confirmation dialog before deletion.

**Circuit wizard** - Interactive filter circuit generator that places resistor, capacitor, and wires based on user specifications.

**PCB color** - Changes PCB color scheme by setting layer colors programmatically.

**PCB layer** - Controls PCB layer visibility by toggling signal and plane layer display.

**Place PCB polygon** - Programmatically places a polygon pour on PCB with specified properties including net assignment, hatch style, and grid size.

**Place schematic port** - Places a schematic port object with specified location, style, IO type, and properties using process parameters.

**Quick copy** - Automates select, copy, and paste operations for schematic objects.

**Publish to PDF** - Generates PDF output from OutJob files with assembly drawings and schematic prints.

**Run common dialog** - Demonstrates Client's RunCommonDialog process for color picker and file dialogs.

**Show netlist** - Generates Protel format netlist from schematic project and displays it in Notepad.

**Import waveforms** - Imports waveform data from CSV files into Signal Designer Format (SDF) documents with configurable chart types and plotting options.

## General Scripts

*(Summaries to be added)*

## DXP Scripts

*(Summaries to be added)*

## FPGA Scripts

*(Summaries to be added)*

## Process Scripts

*(Summaries to be added)*

## WSM Scripts

*(Summaries to be added)*