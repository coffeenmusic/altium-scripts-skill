# Altium Scripts - Detailed Documentation

Comprehensive descriptions of each Altium Designer script in this collection.

## PCB Scripts

### CreatePCBObjects.PAS

This script demonstrates how to create various PCB objects programmatically in Altium. It includes two main procedures: `CreateStrings` creates text objects with both traditional and TrueType fonts on a new PCB document, while `PlacePCBObjects` creates a comprehensive set of PCB elements including vias, tracks, pads (simple, top-mid-bot stack, and full stack), fills, arcs, text objects, net classes, and regions with holes. This script is useful for learning the object creation API and automating the placement of standard PCB elements.

### CreateRules.pas

This script shows how to programmatically create PCB design rules in Altium. It contains two procedures: `CreateAMaxMinRule` creates a maximum/minimum width routing rule with customizable width constraints for different layers, and `CreateARoomDefinitionRule` creates a room definition (confinement constraint) rule that defines rectangular boundaries for component or routing confinement. This is valuable for automating the setup of design rules in new projects.

### Cycle_Pcb_Cursor_Type.pas

This simple utility script cycles through the available PCB cursor types in Altium Designer. It rotates between three cursor shapes: Cross90 (90-degree cross), BigCross (large cross), and Cross45 (45-degree cross). This script is useful for users who want to quickly switch between cursor types without navigating through the preferences menu.

### DeletePCBObjects.pas

This script demonstrates the correct method for deleting PCB objects while properly updating the undo system. The `RemoveTracksOnTopLayer` procedure iterates through all track objects on the top layer, stores them in a list, and then safely removes them from the board using proper PCBServer preprocessing and postprocessing. This approach ensures that the deletion is properly registered with Altium's undo system.

### EmbeddedObjects.pas

This script demonstrates how to work with embedded objects in PCB documents. It contains two procedures: `CreateEmbeddedObjects` creates new embedded objects with name and description fields that can store textual data, and `RetrieveEmbeddedObjects` iterates through existing embedded objects and displays their stored information. Embedded objects are useful for storing custom metadata or documentation within PCB files.

### NetObjectAssign.pas

This script demonstrates how to assign nets to PCB objects programmatically. It searches for a net named 'GND' in the current PCB document and creates a new via object assigned to that net. The script includes the `LookForNetsAndAssignNetsToNewObjects` procedure that iterates through nets, and `AssignNetToNewObject` that creates and places a via with the specified net assignment within the board outline.

### Count_Connection_Lines.pas

This script finds and counts all connection lines (ratsnest lines) in the current PCB document. The `CountAndFindConnections` procedure iterates through all connection objects, extracts their coordinates and associated net names, displays the results in the Messages panel, and saves the information to a text file. This is useful for analyzing unrouted connections and debugging routing status.

### CreateAVia.pas

This script demonstrates how to create a new via object on a PCB document. The `ViaCreation` procedure creates a via with specified size, hole size, and layer span (top to bottom), sets up the pad cache with proper clearance values for solder mask, paste mask, and power planes, and places it within the board outline. The script properly initializes the PCB server and updates the undo system.

### CreateComponentOnPCB.pas

This comprehensive script demonstrates how to programmatically create and manipulate components on a PCB. It includes procedures to create a complete component with pads and tracks (`CreateAComponentOnPCB`), rotate and flip components (`RotateAComponent`), calculate component midpoints (`FetchComponentMidPoints`), and set component height (`CreateANewCompHeight`). This script is valuable for automating component placement and manipulation tasks.

### CreateFootprintInLibrary.pas

This script demonstrates how to create a new footprint in a PCB library. The `CreateALibComponent` procedure creates a resistor footprint with two pads and a rectangular outline made of tracks on the top overlay layer. It properly registers the new component with the library and updates the display. This script is useful for automating the creation of standard footprints in PCB libraries.

### PadStackInfo.pas

This script provides interactive inspection of pad stack information by allowing users to click on pads in the PCB editor. The `FetchPadStackInfo` procedure puts the editor into interactive mode where users can select pads, and the script then displays detailed information about the pad's stack configuration including simple pads, top-mid-bot stack pads, and full stack pads across all layers. It also reports hole type (round, square, or slot) and hole rotation.

### PadViaCacheProperties.PAS

This script demonstrates how to retrieve and display cached properties for pad and via objects. The `CachedProperties` procedure allows interactive selection of pads or vias and displays their cache information including plane connection style, relief conductor width, relief entries, relief air gap, power plane relief expansion, power plane clearance, solder mask expansion, and paste mask expansion. This is valuable for understanding how design rules are being applied to specific objects.

### QueryBoard.pas

This script queries and displays comprehensive information about the current PCB board settings and properties. The `Query_Board` procedure retrieves and displays board metadata including filename, origin coordinates, display units, current layer, sheet dimensions, and calculates board outline dimensions, perimeter, and area in both imperial and metric units. This is useful for documenting board specifications and verifying board setup.

### Undo.pas

This script demonstrates proper use of the PCB undo system with three different approaches. `Create2PCBObjectsWithTwoUndos` creates two fill objects with separate undo operations, `Create2PCBObjectsWithOneUndo` creates two objects within a single undo operation, and `CreateModifyRemoveAObject` demonstrates the complete lifecycle of creating, modifying, and removing an object with proper undo integration. This script teaches best practices for undo system management.

### MillExporter (Project)

This is a complete project that exports PCB designs to Roland RML (Roland Milling Language) format for CNC milling machines. The project includes dialog forms for configuring export settings and machine parameters. It supports exporting top and bottom copper layers, handles drill holes (none, spot drilling, or full drilling), creates temporary polygons for proper copper clearance, and generates separate output files for each layer and drill size. The system includes configurable settings for milling machines including feed rates, spindle speeds, cutting depths, and machine-specific limits. Machine configurations (like EGX-350 and MDX-15) are stored in INI files and can be customized. This is particularly useful for rapid PCB prototyping using desktop CNC milling machines.

### CopyBoardOutline (Project)

This utility copies the PCB board outline to a specified layer as tracks and arcs with user-defined width. The dialog interface allows users to select the destination layer and specify the track width in mils or mm. The `ExecuteCopyOutline` procedure retrieves all board outline segments, creates corresponding track and arc objects on the target layer with the specified width, and properly updates the PCB. This is useful for creating keepout boundaries, documentation layers, or mechanical drawings based on the board outline. The script properly handles both straight and curved board edge segments.

### PCB_Picture_Creator (Project)

This advanced script converts bitmap images (BMP format) into PCB copper regions for creating artwork, logos, or decorative elements on PCBs. The dialog interface allows users to load images, select target layers, specify X/Y offsets, set scaling factors independently for X and Y axes, and choose whether to flip the image or create a union of all regions. The `Import_Image` procedure reads the bitmap, processes each pixel to determine if it should be converted to copper (based on color threshold), creates rectangular regions for each pixel, and optionally combines them into a single union region to reduce the number of primitives. This is valuable for creating custom PCB artwork, company logos on boards, or decorative copper patterns.

### FootprintFinder (Project)

This utility searches through multiple PCB library files in a specified directory to find footprints matching a user-provided pattern. The dialog allows users to browse for a folder containing PCB libraries (.PcbLib files) and enter a search string (footprint name). The `SearchLibraries` procedure iterates through all library files in the directory, opens each library, searches for footprints whose names contain the search string (case-insensitive), and generates a report listing which libraries contain matching footprints. This is extremely useful when managing large collections of PCB libraries, finding where specific footprints are stored, or auditing library contents across multiple files.

### FromTosGenerator (Project)

This script automatically creates From-To routing connections between pads on two user-selected components that share the same net assignments. Users select two components through interactive clicking, and the `CreateFromTosFromComponents` procedure iterates through all pads on both components, identifies pads connected to the same net, and automatically creates From-To objects linking these corresponding pads. This is valuable for defining routing requirements between connectors or between a component and connector, helping the router understand which pins should be connected with individual traces rather than treated as a single net. It's particularly useful for differential pairs, matched-length routing requirements, or any situation where specific pad-to-pad connections need to be documented.

### HoleSizeEditor (Project)

This comprehensive utility provides batch editing capabilities for pad and via hole sizes. The dialog interface allows users to filter objects by current hole size ranges (from/to values) and modify them to a new target hole size with unit conversion between mils and millimeters. The `ModifySize` procedure iterates through all pads or vias on the PCB, identifies objects whose hole sizes fall within the specified range, and updates them to the new hole size value. This is extremely useful for standardizing hole sizes across a design, fixing manufacturing issues where certain hole sizes aren't available, converting between imperial and metric hole sizes, or making bulk adjustments to meet fabrication house requirements.

### PCBClassGenerator (Project)

This utility adds nets from selected PCB objects to net classes, either creating new classes or adding to existing ones. Users select objects on the PCB (tracks, pads, vias, components) and the script extracts all nets associated with the selected objects. The dialog allows users to specify a class name and whether to create a new class or add to an existing one. The `ExecuteAddToClass` procedure gathers nets from the spatial selection, creates or retrieves the net class object, and adds all relevant nets to the class. This is valuable for organizing complex designs, grouping related signals (like power nets, differential pairs, or bus signals), and simplifying the application of design rules to groups of nets.

### Count pads

This script counts all pad objects on the PCB using a board iterator and displays the total.

### Iterate nets

This script iterates through all net objects and displays a comma-separated list of net names.

### Iterate regions

This script generates detailed report of regions including contours, holes, and parent relationships.

### Iterate polygons

This script creates detailed report of polygon properties including pour settings, hatch styles, and clearances.

### Spatial iterator

This script demonstrates area-based selection by selecting tracks and arcs within a user-defined rectangle.

### Library iterator

This script iterates through PCB library footprints and counts primitives in each footprint.

### Count tracks in component

This script counts tracks within components using nested board and group iterators.

### Iterate component bodies

This script generates report of component body objects with names, types, and heights.

### Validate layer stack

This script validates that signal and internal plane layers are in correct sequential order in the layer stack.

### Layers info

This script generates CSV report of electrical layers with copper thickness, dielectric properties, and materials.

### Query layer pairs

This script displays all drill layer pairs showing low and high layer combinations for vias.

### Query layer stack

This script lists all electrical layers in the PCB's layer stack.

### Query mechanical layers

This script reports mechanical layer display status and object presence for each mechanical layer.

### Query used layers

This script checks which signal layers are used and displayed in the design.

### Rebuild internal and split planes

This script forces complete rebuild of all internal plane and split plane layers.

### Toggle connect layer display

This script toggles visibility of the Connect layer (ratsnest/airwires) on and off.

### Query layers of mechanical type

This script reports detailed mechanical layer properties including link-to-sheet and display settings.

### PCBObjectsMover (Project)

This utility allows users to move multiple PCB objects within a user-defined rectangular area by specified offsets. Users first select a rectangular region on the PCB, then choose which object types to move (arcs, tracks, text, fills, pads, vias, components) using checkboxes. The script offers two movement methods: direct X/Y offset or distance/angle offset. The `ExecuteMove` procedure uses a spatial iterator to find all objects of selected types within the boundary, then applies the MoveByXY method to each object while properly notifying the undo system. This is particularly useful for repositioning groups of objects, adjusting component placement areas, or making bulk layout adjustments without manually selecting and moving individual objects.

### PCBOutputGenerator.pas

This comprehensive script automates multiple manufacturing output and verification tasks for PCB production. The `RunABatchProgram` procedure executes three key functions: generates pick-and-place files and BOMs (bill of materials) using workspace manager commands, searches for and reports fiducial marker locations (pads named "FID") with their X/Y coordinates for assembly machine alignment, and calculates board outline dimensions including width, height, perimeter, and area in both imperial and metric units. All outputs are saved as text files for documentation and manufacturing purposes. This is extremely valuable for automating pre-manufacturing checks and generating required assembly documentation.

### Violations.pas

This script generates a comprehensive report of all design rule violations present on the current PCB. The `SearchAndReportViolations` procedure iterates through all violation objects, extracts violation names and descriptions, identifies the associated design rules (including rule kind, net scope, layer kind, and scope expressions), and reports the PCB objects involved in each violation with their types and layers. The report handles both unary violations (single object) and binary violations (two objects) and saves the complete analysis to a text file. This is invaluable for design review, DRC analysis, and troubleshooting rule compliance issues.

### GetObjectClasses.pas

This script provides an interactive interface for selecting and reporting on PCB object classes and their members. Users can select one or more classes (net classes, component classes, FromTo classes, pad classes, or layer classes) through a dialog form, and the script generates a detailed report showing class names, member kinds, and all members within each class. The `GenerateReport` procedure handles both regular classes (listing individual members) and super classes (representing "all" of a type). This is useful for documenting design organization, reviewing class structures, and understanding net/component groupings.

### ModifyWidthRules.pas

This script finds and modifies width constraint rules on the current PCB. The `FetchAndModifyWidthConstraintsForTheCurrentPCB` procedure iterates through all rule objects, identifies width rules (eRule_MaxMinWidth), and conditionally modifies minimum, maximum, and favored width values for the top layer if they are below 20 mils (setting them to 10 mils). It generates a report listing all modified width rules with their names and unique IDs. This demonstrates how to programmatically modify design rules and is useful for batch updating rule constraints across a design.

### IterateRules.pas

This script generates a comprehensive report of all design rules in the current PCB document. The `IterateRules` procedure uses a board iterator to find all rule objects, extracts their names, unique IDs, and rule types (using the comprehensive `RuleKindToString` function that handles all PCB rule types including clearance, width, length, routing, mask expansion, signal integrity rules, and more), and saves the complete list to a text file. This is valuable for documenting design rule configurations, auditing rule setup, and understanding the complete rule structure of a PCB project.

### FootprintInfoReport.pas

This script generates a CSV report of all footprints in the currently open PCB library. The `ReportFootprintInfo` procedure iterates through each footprint in the library and extracts the footprint name, height (in mils or mm depending on the library's display unit), and description. The report is saved as a CSV file in the same directory as the library, making it easy to import into spreadsheet applications for documentation, comparison, or inventory purposes. This is particularly useful for library management, footprint documentation, and creating footprint catalogs.

### SwapComponentsUnit.pas

This interactive script allows users to either swap the positions of two components or rotate a single component by selecting it twice. The `ChooseAndSwapComponents` procedure prompts users to select two components on the PCB: if different components are selected, their X and Y positions are swapped while preserving their individual rotations; if the same component is selected twice, it is rotated by 180 degrees (cycling through 0°, 180°, 0° or 90°, 270°, 90°). The script operates in a loop allowing multiple swap or rotate operations until the user clicks away from components. This is extremely useful for quickly reorganizing component placement, optimizing layout density, or adjusting component orientation during placement.

### UniqueObjectChecker (Project)

This validation script checks for duplicate component and net names on the PCB and generates detailed reports. The `CheckDuplicatedObjects` procedure iterates through components or nets, collects their names, sorts them alphanumerically using custom sorting algorithms, and identifies duplicates by counting consecutive identical names. The project includes three main procedures: `CheckComponents` reports duplicate component names, `CheckNets` reports duplicate net names, and `CheckAll` reports both in a combined report. Reports can be displayed in message boxes and/or saved as text files. The project includes sophisticated alphanumeric sorting in Common.pas that properly handles component designators like R1, R01, R001. This is essential for design validation, ensuring unique naming conventions, and catching potential naming conflicts before manufacturing.

### Unroute_Net_Class (Project)

This utility allows users to selectively unroute all nets within one or more net classes. The script presents a dialog showing all net classes in the design, allowing users to select which classes to unroute. The `UnRouteNet` procedure removes all free primitives (tracks, arcs, vias) from each net while preserving pads and components, and `UnrouteClass` iterates through all nets checking if they are members of the selected class before unrouting them. The `FillNetClassList` procedure populates the class selection dialog, and `UnRouteSelectedClasses` processes all user-selected classes. This is extremely useful when redesigning specific sections of a board, changing routing strategies for particular signal groups (like differential pairs or high-speed nets), or starting fresh with specific net classes while preserving other routing.

### ValuesChecker (Project)

This comprehensive validation tool checks PCB objects for illegal or problematic values that could cause manufacturing or CAM output issues. The dialog-based interface allows users to enable specific checks: zero-radius arcs, zero-diameter pads/vias, specific pad/via diameter values, and negative coordinate values. The checking functions in PCBAPI_functions.pas include `CheckArcRadii` (finds arcs with zero radius), `CheckPadDiameters` and `CheckViaDiameters` (locate pads/vias with specified hole sizes), and `CheckNegativeValues` (finds objects with negative X/Y coordinates which can cause CAM problems). All issues found are reported with precise mil coordinates in a text file. This is essential for pre-manufacturing validation, ensuring clean CAM output, catching geometry errors, and preventing fabrication issues before sending files to the manufacturer.

## Schematic Scripts

### CountPorts.pas

This script counts all port objects on the current schematic sheet. The `CountPortObjects` procedure creates a schematic iterator filtered to find only port objects (ePort), iterates through all ports on the active sheet, increments a counter for each port found, and displays the total count in a message dialog. This is useful for quickly verifying the number of ports in a design, checking hierarchical connections, or validating that all necessary ports have been placed on a sheet before creating hierarchical connections.

### createcomp_in_lib.pas

This script demonstrates how to create a new schematic symbol in a library programmatically. The `CreateALibComponent` procedure creates a library component named "Custom" with a yellow rectangle body (solid black fill), two pins with designators "0" and "1", sets the component designator prefix to "U", adds a description "Custom IC", and properly registers the component with the library. The script validates that a schematic library is open, creates all graphical elements (rectangle and pins) with proper owner part ID and display mode settings, adds them to the component, and updates the library display. This is valuable for automating the creation of standard symbols, building symbol generators, or creating libraries programmatically from external data sources like Excel spreadsheets or databases.

### AddModelToComponentScript.pas

This script demonstrates how to add a SPICE simulation model to a schematic component programmatically. The `AddSimModelToAComponent` procedure searches for a 555 timer component on the current schematic sheet, creates a new implementation (model) of type "SIM", links it to a 555.ckt SPICE subcircuit file with the proper file path, defines the pin mapping using a MapAsString format, sets the netlist format string for simulation, and adds four required parameters (Kind, SubKind, Spice Prefix, and NetList) to the model implementation. The script properly configures the model as current and sets it to not use the component library. This is extremely useful for batch adding simulation models to components, updating libraries with simulation support, or automating the setup of analog simulation in schematics without manual model editing.

### checkpins.pas

This script validates pin names and designators in schematic library symbols for common errors. The `CheckSchLibraryFilePinNames` procedure verifies that the current document is a schematic library, iterates through all components in the library, examines each pin in every component, and checks for validation issues including blank pin names or designators, leading spaces (first character is a blank), and trailing spaces (last character is a blank). The script generates a detailed text report listing the library name, each component name, and any pin validation errors found. The report is saved to a file and automatically opened for viewing. This is essential for library quality control, ensuring consistent pin naming conventions, preventing netlist errors caused by invisible spaces, and maintaining professional library standards before distribution or use in production designs.

### CompLibReader.pas

This script extracts and reports comprehensive information about all components in a schematic library. The `LibraryCompInfoReader` procedure uses the `CreateLibCompInfoReader` method to efficiently read library metadata without loading the entire library graphically. It validates that a schematic library is open, creates a library component reader for the current library file, reads all component information, and generates a detailed report for each component including the component name (LibReference), alias names, part count (for multi-part components), description, and offset position. The report is saved as a text file and automatically opened in Altium Designer. This is valuable for library documentation, creating component catalogs, auditing library contents, comparing libraries, or generating library reports for team sharing or version control documentation.

### libiterator.pas

This script iterates through all components in a schematic library and reports their aliases. The `LookInsideALibrary` procedure validates that a schematic library is open, creates a library iterator filtered for components, and examines each component to extract its LibReference, designator prefix, and all alias names. Components can have multiple aliases representing variations (like 74LS vs 74S series) that share the same symbol but have different characteristics. The script generates a detailed report listing each component and its aliases (or noting when no aliases exist), saves it to a text file, and displays it in Altium Designer. This is extremely useful for understanding library organization, documenting component variations, verifying alias consistency, and auditing libraries for proper component family grouping.

### createcomponent_on_sch.pas

This script demonstrates how to place a component from an integrated library onto a schematic sheet programmatically. The `PlaceAPartProgrammatically` procedure uses the `IntegratedLibraryManager.PlaceLibraryComponent` method to place a "Res2" component from "Miscellaneous Devices.IntLib" onto the current schematic. The script specifies component parameters including simulation model type, parameter values (1K resistance), orientation, and X/Y location coordinates, then refreshes the schematic display. This is valuable for automating component placement, building schematic generators, creating template schematics, or batch placing components based on external data sources like BOMs or spreadsheets.

### CreateSchObjects.pas

This script demonstrates two different approaches to creating schematic objects and managing the undo system. `CreateSchObjectsWithOneUndos` creates two port objects within a single PreProcess/PostProcess block, resulting in both ports being created as one undoable action. `CreateSchObjectsWithTwoUndo` creates two ports with separate PreProcess/PostProcess blocks for each, resulting in two separate undo operations. Both procedures create new schematic documents, initialize the schematic robots, create port objects with specified properties (location, style, IO type, alignment, width, colors, and names), register them with the document, send primitive registration messages via RobotManager, and refresh the display. This script teaches best practices for undo system management and demonstrates the importance of properly bracketing object creation operations.

### DeleteSchObjects.pas

This script demonstrates the correct method for deleting schematic objects while properly updating the undo system. The `DeleteSchObjects` procedure obtains the current schematic sheet, initializes the schematic robots with PreProcess, creates an iterator filtered for port objects, iterates through all ports storing the current port before advancing to the next, removes each port using RemoveSchObject, sends primitive registration messages to update the system, and finally cleans up with PostProcess. The use of Try/Finally blocks ensures proper cleanup of the iterator. This approach ensures deletions are properly registered with the undo system and demonstrates the correct pattern for safely removing objects from schematics.

### FetchParameters.pas

This script contains two procedures for extracting parameter information from schematics. `FetchSystemParameters` creates an iterator set to first-level iteration depth to find standalone (system) parameters directly on the schematic sheet, reports their names and text values, and saves the report to a file. `FetchParametersOfComponents` uses nested iterators to find all components on the sheet, then for each component creates a second iterator to find all parameters associated with that component, and generates a comprehensive report showing component designators and all their associated parameter name-value pairs. Both reports are saved as text files and automatically opened for viewing. This is extremely useful for design documentation, parameter auditing, BOM generation, verifying component properties, and understanding the complete parameter structure of a schematic design.

### FetchParamsOfComp.pas

This script generates a detailed report of all parameters for every component on the current schematic sheet. The `FetchParameters` procedure uses nested iterators: the outer iterator finds all components on the sheet, and for each component, an inner iterator finds all associated parameters. The script extracts component designators and their parameter name-value pairs, formats them into a hierarchical report structure, saves the report to a text file, and automatically opens it in Altium Designer. This is valuable for component parameter verification, creating parameter documentation, auditing component properties, generating custom BOMs, or checking that all components have required parameters before release.

### FetchPinsOfComps.pas

This script creates a comprehensive report of all pins for each component on a schematic sheet. The `FetchPinsOfComponents` procedure uses nested iterators to find all components, then examines each pin of every component. For each pin, it extracts the pin name, designator, and orientation (0°, 90°, 180°, or 270°) using the helper function `OrientationToStr`. The report is organized by component, listing each component's designator followed by all its pins with their properties. The report is saved as a text file and automatically displayed. This is extremely useful for verifying pin assignments, checking component connectivity, creating pin-out documentation, debugging netlist issues, or auditing component pin properties across a design.

### Form_AlignPins.pas (Project)

This is a dialog-based utility for aligning selected pins in schematic library symbols. The project includes a form with radio buttons for selecting alignment direction (vertical left/right or horizontal up/down) and helper procedures for performing the alignment operations. The `Button_OKClick` procedure validates that a schematic library is open, gathers all selected pins across library components, and applies the chosen alignment based on user selection. The alignment procedures (`Allign_VerticallyLeft`, `Allign_VerticallyRight`, `Allign_HorizontallyUp`, `Allign_HorizontallyDown`) calculate average and minimum X/Y positions using `GetAveXYMinXY`, then redistribute pins along a vertical or horizontal line with consistent 100 mil spacing while setting appropriate orientations (0°, 90°, 180°, 270°). This is extremely valuable for creating professional-looking library symbols, ensuring consistent pin spacing, improving symbol readability, and maintaining library quality standards.

### IterateSchSheets.pas

This script iterates through all open schematic documents within the focused project. The `IterateAllOpenSchematicsOfAProject` procedure obtains the workspace's focused project, iterates through all logical documents in the project, filters for schematic documents (DM_DocumentKind = 'SCH'), retrieves each schematic using GetSchDocumentByPath, collects their document names, and displays the complete list in a message dialog. The script includes a note about a limitation: when a project is compiled, all documents are loaded into memory and reported as "open" even if they're not visible in the workspace (tabs not showing). This is useful for auditing project contents, verifying all schematics are accessible, generating project documentation, or performing batch operations across all schematics in a project.

### SchDocsRenamer.pas

This script finds all schematic documents in opened projects and creates copies with renamed file extensions. The `CopyAndRenameSchDocs` procedure obtains the workspace interface to access all open projects, iterates through each project and its logical documents, identifies schematic files, and uses the Windows CopyFile function to create copies with .sch extension (via the `CopyAndRenameFile` helper procedure using ChangeFileExt). The script generates a detailed report listing each project path, original filenames, and new renamed filenames, saves it to a text file, and displays it in Altium Designer. Original schematic files remain untouched. This is useful for batch file format conversions, creating backup copies with standardized extensions, migrating legacy projects, or preparing schematics for archival or external use.

### modelsofacomponent.pas

This script generates a comprehensive report of all implementation models and their associated datafile links for every component on a schematic. The `ExtractModelsFromComponents` procedure uses nested iterators to find all components, then examines each component's implementations (models) including PCB footprints, simulation models, and signal integrity models. For each implementation, it extracts the model name, type, description, pin mapping string, and iterates through all datafile links to report the file location, entity name, and file kind. The report includes component designators, library references, library paths, and complete model details. The `GenerateModelsReport` helper formats and displays the results. This is extremely valuable for design documentation, verifying all components have required models, auditing library links, troubleshooting missing models, checking simulation model assignments, and generating comprehensive model reports for design reviews.

### ModifySchObjects.pas

This script demonstrates how to properly modify schematic object properties using the RobotManager messaging system. The `FetchAndModifyObjects` procedure initializes the schematic robots with PreProcess, creates an iterator filtered for ports and wires, and iterates through these objects. For each object, it sends a SCHM_BeginModify message before making changes, modifies the properties (changing wire color to red and port area color to green using BGR color format), sends a SCHM_EndModify message after changes, and properly cleans up with PostProcess and GraphicallyInvalidate. This demonstrates the critical pattern for modifying schematic objects: bracketing property changes with Begin/EndModify messages ensures the schematic system properly tracks changes, updates displays, and maintains consistency. This is essential knowledge for any script that modifies existing schematic objects.

### MoveParameters.pas

This script demonstrates two methods for moving component parameters on a schematic. The `MoveParameters` procedure uses nested iterators to find all components and their associated parameters. For each parameter, it shows both the commented-out MoveByXY method (simple offset movement) and the preferred GetState_Location/SetState_Location method which retrieves the current location, adds offset values (100 mils to both X and Y coordinates), and sets the new location. This approach gives more precise control over parameter positioning. The script is useful for batch repositioning parameters, fixing parameter overlaps, standardizing parameter layouts across multiple components, or adjusting parameter positions after component placement changes. Note: The script demonstrates the location manipulation technique but doesn't include PreProcess/PostProcess calls that would be needed in production use.

### ParametersOfSymbolsInALibrary.pas

This script generates a comprehensive report of all parameters for every symbol in a schematic library. The `LookInsideALibraryForParameters` procedure validates that a schematic library is open, creates a library iterator to find all components (symbols), and for each symbol uses a nested iterator to find all associated parameters. It extracts each parameter's CalculatedValueString (which includes both parameter name and value), formats the data into a hierarchical report showing library reference, designator prefix, and all parameters, saves the report to a text file, and displays it via the `GenerateReport` helper. This is extremely useful for library documentation, verifying that all symbols have required parameters, auditing parameter consistency across library components, checking for missing or incorrect parameters, and maintaining library quality standards before release.

### parentchild_iterators.pas

This script demonstrates nested iteration techniques by finding hierarchical schematic objects - specifically sheet symbols and their child sheet entries. The `RunSheetSymbolIterator` procedure creates a parent iterator to find all sheet symbols on the current schematic sheet, then for each sheet symbol creates a child iterator to find all associated sheet entries (the ports/connections on the sheet symbol). It counts both sheet symbols and their entries, collects entry names, and generates a comprehensive report showing how many sheet symbols exist and which entries each contains. The use of Try/Finally blocks ensures proper iterator cleanup. This demonstrates an essential pattern for working with parent-child object relationships in schematics and is valuable for hierarchical design analysis, verifying sheet symbol connections, documenting hierarchical structure, or troubleshooting connectivity in multi-sheet designs.

### PlaceAPort.pas

This script demonstrates the simplest method for creating and placing a single port object on a schematic. The `PlaceAPort` procedure validates the schematic server exists, obtains the current schematic document, creates a port object using SchObjectFactory, configures its properties (location at 500,500 mils, right-pointing style, bidirectional IO type, horizontal center alignment, 1000 mil width, black area color, white text color, and descriptive name), registers it with the document using RegisterSchObjectInContainer, and refreshes the display. This is the basic template for port creation and is useful for learning the port object API, creating simple port placement scripts, or as a starting point for more complex automated port generation based on netlists or external data.

### PlaceSchObjects.PAS

This comprehensive script demonstrates how to create and place multiple types of schematic objects programmatically. The main `PlaceSchematicObjects` procedure creates a new schematic document and calls helper procedures to place various object types: `PlaceASchPort` creates a port object, `PlaceASchComponent` uses IntegratedLibraryManager to place a resistor from a library with simulation parameters, `PlaceASchJunction` creates a junction (connection dot), `PlaceASchNetLabel` creates a net label, and `PlaceASchLine` creates a graphical line object. The `PlaceASchWire` procedure is particularly notable as it demonstrates creating wires with multiple vertices using vertex manipulation and helper functions `SortVertices` and `VerticesTrim` to parse coordinate strings. The script places three wires with different line widths (small, medium, large), zooms to fit the document, and demonstrates complete object creation patterns for each schematic primitive type. This is invaluable for learning the schematic API, creating schematic generators, building template schematics, or automating schematic creation from external data sources.

### ReplaceSchObjects.pas

This script replaces all cross-sheet connectors with port objects while preserving connectivity. The `ReplaceCrossSheetsWithPorts` procedure initializes the schematic robots, creates an iterator filtered for cross-sheet connectors, and for each connector creates a new port object with properties mapped from the cross-sheet connector: location is directly copied, alignment is determined by CrossSheetStyle (right or left), IO type is set to bidirectional, port style (direction) is determined by orientation (0°→right, 90°→top, 180°→left, 270°→bottom), width is set to 500 mils, colors are set to white area with black text, and the port name is copied from the connector's text. After creating each replacement port and registering it with the document, the original cross-sheet connector is removed and a primitive registration message is sent. This is extremely useful for converting flat schematics to hierarchical designs, standardizing connection methods across a project, or migrating designs between different connectivity paradigms while maintaining all net connections.

### SymbolPrimsIterator.pas

This script iterates through all symbols in a schematic library and generates a comprehensive report of all graphical primitives within each symbol. The `GenerateReportOfSymbols` procedure validates that a schematic library is open, creates a library iterator to find all components, and for each symbol uses a nested iterator to examine all child objects. The `ObjectIdToString` helper function translates object IDs into human-readable names (Designator, Rectangle, Line, Arc, EllipticalArc, RoundRectangle, Image, Pie, Ellipse, Polygon, Polyline, Wire, Bezier, Label, Parameter, Symbol, Pin, etc.). For each symbol, the script reports the library reference, lists every primitive object type found, and provides a total count of primitives. This is extremely valuable for library documentation, understanding symbol complexity, identifying which primitives are used in symbols, auditing library quality, verifying symbol construction, and debugging symbol display issues.

### UndoRedo.pas

This script demonstrates proper use of the schematic undo/redo system by creating objects in separate undoable operations. The `UndoRedoOfAComponentAndItsPin` procedure creates a new schematic document, then performs two separate operations each wrapped in PreProcess/PostProcess blocks. First, it creates a complete component with a rectangle body and pin, adds it to the document with proper robot manager messaging, and moves it by an offset. Second, in a separate undo operation, it creates a parameter object and adds it to the pin. The result is two distinct undo levels: the first undo removes the parameter from the pin, and the second undo removes the entire component. This demonstrates the critical importance of properly bracketing operations with PreProcess/PostProcess to control undo granularity, and shows how to build complex objects incrementally while maintaining proper undo functionality. This is essential knowledge for any script that creates complex schematic structures.

### usingAspatialiterator.pas

This script demonstrates spatial iteration by allowing users to interactively select a rectangular area and find objects within it. The `RunSpatialIteratorExample` procedure uses `ChooseRectangleInteractively` to capture boundary coordinates from user clicks, creates a spatial iterator filtered for junctions and components, adds an area filter with the rectangle coordinates, and iterates through all objects within the boundary. For each object found, it determines the object type and extracts location coordinates, building separate lists for junctions and components. The results are displayed in a dialog showing X,Y coordinates for all junctions and components found within the selected region. This demonstrates the powerful spatial iterator capability for area-based searches and is useful for analyzing specific design regions, counting objects in areas, verifying component density, or implementing area-based selection and manipulation tools.

### UsingSchInterfaces.pas

This comprehensive script demonstrates multiple schematic interfaces to extract detailed component information. The `GetComponentInformation` procedure validates that a schematic document is open (not a library), creates an iterator to find all components, and for each component uses nested iteration to find its PCB footprint implementation. It extracts and reports extensive component properties including designator, current footprint name, comment, unique ID, orientation (using the `RotationToStr` helper), mirror status (using `BooleanToStr` helper), area color, pin color, hidden fields display status, library path, and component description. The report is timestamped, saved as a text file, and automatically opened in Altium Designer. This demonstrates best practices for component data extraction and is extremely valuable for generating BOMs, component documentation, design audits, verifying component properties, creating manufacturing data, or analyzing component usage across designs.

### usingWSMInterfaces.pas

This script demonstrates the Workspace Manager (WSM) API by generating a comprehensive report of all projects, documents, components, and nets. The `ReportWSMInterfaces` procedure obtains the workspace interface, iterates through all open projects, compiles each project to ensure data is current, and for each project examines all logical documents. For each document, it extracts and reports component information (physical path, unique ID, unique ID name, and unique ID path) and all net names. The report is saved to the special MyDesigns folder and automatically opened. This demonstrates the hierarchical structure of the workspace manager API (workspace → projects → documents → components/nets) and is valuable for project analysis, generating project-level reports, auditing design hierarchy, verifying component unique IDs across projects, documenting net structures, or creating project metadata for version control systems.

### SimModelsOfComponents.pas

This advanced script generates exhaustive reports on simulation models for all components on a schematic. The `ExtractSimModelsFromComponents` procedure temporarily installs simulation libraries, iterates through all components, and for each component examines all implementations filtering for simulation models (ModelType = 'SIM'). For each simulation implementation, it reports the model name, type, description, whether it's the current implementation, whether it uses component library, datafile link count, lock status, database/integrated model flags, and pin-to-port mapping. The script includes the `RequiresModelFile` helper to determine if external model files are needed, the `GetParameterValueByName` helper to extract specific parameters, and comprehensive logic using IntegratedLibraryManager to resolve library paths, component paths, model paths, and datafile paths for three different scenarios (integrated library components, components with no datafile links, and components with datafile links). It also extracts all component parameters. The script demonstrates advanced library path resolution techniques and is invaluable for simulation setup verification, troubleshooting missing models, documenting simulation configurations, auditing model assignments, and understanding the complex relationship between components, libraries, and simulation models.

### SchTranslator (Project)

This is a complete file translator project that converts CirCAD Version 4.0 schematic files to Altium Designer schematic format. The project consists of multiple modules: `InputForm.pas` provides a dialog interface with file browser, progress bar, and status display; `ImportUtils.pas` (1866 lines) contains the core translation engine with comprehensive support for CirCAD object codes including lines, arcs, pins, text, components, and filled solids, and translates them to corresponding Altium schematic objects (wires, buses, junctions, labels, components, polygons); `DesignSettings.pas` handles design parameter translation including workspace dimensions, grid settings, and layer configurations; `StringUtils.pas` provides string tokenization and coordinate conversion utilities; `Log.pas` implements logging functionality for debugging; and `Test.pas` contains comprehensive test suites with over 20 test cases validating translation of different object types. The translator reads CirCAD data files (identified by the header "CIRCAD Version 4.0 -- Data File"), parses design settings from sections (like '-g' for setup and '-y' for layer tables), validates input files, creates new Altium schematic documents, translates all graphical objects and components with proper coordinate conversion, preserves net connectivity and signal assignments, sets up document properties (grid, workspace size, custom dimensions), and handles special cases like bus layers and power objects. This is an advanced example of complete file format translation, demonstrating file I/O, data structure conversion, coordinate system mapping, object factory patterns, progress reporting, and comprehensive error handling. The project is particularly valuable for understanding how to migrate legacy CAD designs to Altium Designer or as a template for creating other file format importers.

### ComponentReplacer (Project)

This interactive utility script replaces selected schematic components with specified library components while preserving their location. The `ReplaceSelectedComponent` procedure initializes schematic robots with PreProcess, creates an iterator filtered for components, searches for the first selected component on the current schematic sheet, extracts the component's location coordinates (X and Y), removes the old component using RemoveSchObject, and uses IntegratedLibraryManager.PlaceLibraryComponent to place a new component (in this example, a 2N3904 from Miscellaneous Devices.IntLib) at the same location with the same orientation. The script properly wraps operations in Try/Finally blocks to ensure PostProcess cleanup, graphically invalidates the sheet to update the display, and maintains proper undo system integration. This is particularly useful for batch component substitution during design revisions, replacing obsolete parts with updated versions, swapping components during prototyping, standardizing component libraries across designs, or quickly testing different component variants. The script can easily be modified to prompt for the target component and library, making it a flexible tool for component replacement workflows.

### NetInfo (Project)

This project adds pin net name information as visible parameters to component pins on schematic sheets. The main module `Connectivity.pas` contains `CreateAParameterObject` which creates parameter objects with net names positioned next to pins with orientation-aware offset calculation (adjusting X/Y based on pin orientation: 0°, 90°, 180°, 270°), customizable colors, and optional name display; `FetchPinsOfComponent` which iterates through all pins of a component, matches pin designators with net names from a string list, creates parameter objects for each pin, and assigns them either to pins or components based on user preference. The `DefnForm.pas` dialog interface allows users to select schematics (focused or all in project), choose whether to use PCB project's flattened hierarchy for net names or schematic-level net information, set parameter properties including color, offset from pins (in DXPs units), parameter name, visibility options, and whether to assign parameters to pins or components. The script processes either the current focused schematic or iterates through all project documents, compiles the project if using PCB hierarchy, extracts pin-to-net mappings, and creates visible parameter annotations showing net connectivity. This is extremely valuable for design reviews, troubleshooting connectivity issues, verifying net assignments, creating schematic documentation with net information visible, checking for unconnected pins, and understanding signal flow in complex designs. The visual net name annotations help identify routing requirements before PCB layout and serve as quick reference during debugging.

### FontsEditor (Project)

This interactive utility provides a graphical interface for managing and modifying fonts of text objects in schematic documents. The `FontsDialog.pas` script uses Altium's ISch_FontManager interface to create a tree view displaying all schematic objects that contain text (labels, text frames, netlabels, power objects, cross-sheet connectors, parameters, sheet filenames, sheet names, and designators). The interface includes checkboxes for selecting multiple objects, displays current font specifications (name, size, rotation, and style attributes like bold, italic, underline, strikeout) for each object, provides buttons to select all or clear all selections, allows users to choose new fonts via the standard Windows font dialog, enables specification of text rotation angle, and applies font changes to all selected objects simultaneously. The `GetFontString` helper function formats font specifications into readable strings, `BuildFontStyleString` constructs style attribute descriptions, `IsObjectOk` filters valid text-containing object types, and the tree view uses image icons to indicate selection status. The script properly uses the FontManager's GetFontSpec to retrieve current font properties and SetFontSpec (implied in btnSetClick) to apply changes. This is invaluable for standardizing fonts across schematic sheets, batch updating text appearance, ensuring consistent documentation style, making global font size adjustments, correcting font inconsistencies, and maintaining professional schematic presentation standards. The tree view organization makes it easy to see all text objects at once and selectively choose which elements to modify.

### ImportPins (Project)

This comprehensive utility imports schematic library pins from CSV data files with flexible field mapping capabilities. The main form `ImportPinsForm.pas` provides a dialog interface with file browser to select CSV pin data files, a ListView displaying CSV column headers with checkboxes to enable/disable each field, mapping controls to link CSV columns to pin properties via the `ChangeMappingForm.pas` dialog, and an import button that creates pins based on the CSV data and mapping configuration. The `ConvUtils.pas` module contains conversion utilities including `StrToBoolean`, `StrToPinElectrical`, `StrToIeeeSymbol`, and `StrToRotationBy90` for converting CSV text values to appropriate Altium data types. The import process reads the CSV file line-by-line (skipping the header), creates a new pin object for each data row, maps CSV column values to pin properties based on user-defined mappings supporting Display Name, Show Display Name, Designator, Electrical Type, Description, Pin Is Hidden, Hidden Net Name, Inner Symbol, Inner Edge Symbol, Outer Symbol, Outer Edge Symbol, Length, Orientation, Location X, and Location Y, converts coordinate values from mils to internal coordinates (multiplied by 10), handles location setting using GetState_Location/SetState_Location for compatibility with DXP 2004 SP2 and later, registers each pin with the schematic library document, and zooms to fit all pins after import. This is extremely valuable for bulk pin creation from spreadsheet data, importing pin definitions from datasheets, automating library symbol creation, standardizing pin naming conventions, creating complex multi-pin components efficiently, and reducing manual pin placement errors. The flexible mapping system allows adaptation to different CSV formats and data sources.

### FootprintPathUpdater (Project)

This utility manages PCB footprint library paths for schematic components when multiple libraries contain footprints with the same name. The `UpdateFootprintPathsOfComps.pas` script provides a dialog interface displaying all unique footprint names found in the current schematic's components, shows available library locations for each footprint based on existing component implementations, and allows users to select a footprint name and choose the preferred library location. The `FetchModelPaths` procedure iterates through all components, examines their PCB model implementations (ModelType = 'PCBLIB'), collects unique footprint names and their associated library paths (from DatafileLink[0].Location), and populates the selection dialog. When the user confirms, the script uses proper RobotManager messaging with SCHM_BeginModify/SCHM_EndModify, updates the DatafileLink[0].Location property for all components using the selected footprint name, and applies the new library path uniformly. This is particularly valuable when consolidating libraries, migrating projects between library systems, fixing broken footprint links after library reorganization, standardizing footprint sources across a project, resolving conflicts when multiple libraries have identically-named footprints, and ensuring consistent footprint sourcing for manufacturing. The script requires that libraries be installed and accessible for footprint locations to be detected. This prevents the common issue where components with the same footprint name inadvertently reference different libraries, which can cause PCB synchronization problems.

### UserDefinedComponentParameters (Project)

This script project demonstrates programmatic management of user-defined parameters on schematic components. The `ComponentParameters.pas` script contains three main procedures: `AddUserDefinedParametersToComponents` creates a new parameter with Name='User-Defined' and Text='Text' for every component on the schematic, positions each parameter 0.1 DXP units above its parent component, sets ShowName to False and IsHidden to False to make the parameter visible but not show its name, properly wraps operations in PreProcess/PostProcess with robot manager messaging, and registers each parameter with its component using SCHM_PrimitiveRegistration. `ModifyUserDefinedParametersOfComponents` searches for all parameters named 'User-Defined' across all components, uses SCHM_BeginModify/SCHM_EndModify messaging to properly notify the system of changes, and updates the Text property to a new value. `DeleteUserDefinedParametersFromComponents` (implied from the summary) removes all user-defined parameters from components. The script demonstrates proper parameter lifecycle management including creation, modification, and deletion with correct undo system integration. This is valuable for adding custom metadata to components (manufacturing notes, part status, revision information, procurement data), batch updating parameter values across designs, implementing custom component classification systems, adding temporary design annotations, automating parameter-based documentation, and creating scripts that extend component data beyond standard parameters. The script can be easily modified to work with different parameter names, values, and positioning logic to suit specific workflow requirements.

## Process Scripts

### SimpleExample.pas

This basic demonstration script shows how to use process parameter passing in Altium scripts. The script uses `ResetParameters` to clear any previous parameters, `AddIntegerParameter` to add a parameter named 'A' with value 1, `GetIntegerParameter` to retrieve the parameter value, and validates that the retrieved value matches the original by displaying 'Ok' or 'Failed' messages. This is the fundamental pattern for passing data to and from Altium processes and demonstrates the parameter stack mechanism used throughout the scripting system. This is an essential starting point for understanding how to invoke Altium processes programmatically and handle their return values, which is critical for automating complex workflows.

### Clrins1.pas

This process script automates the deletion of objects within a user-defined rectangular area on schematics. The script deselects all objects using 'Sch:Deselect' with Action='All', prompts the user to select a rectangular area using 'Sch:Select' with Action='InsideArea', and immediately deletes the selected objects using 'Sch:Clear' without confirmation. This is useful for quickly cleaning up specific regions of a schematic, removing test circuits, clearing placeholder objects, or bulk deleting objects in defined areas. The script demonstrates proper parameter reset between process calls and sequential process execution.

### Clrins2.pas

This enhanced version of the clear inside script adds user confirmation before deletion. The script follows the same selection pattern as Clrins1 (deselect all, then select inside area), but uses `ConfirmNoYes` to display a confirmation dialog before executing the delete operation. If the user confirms, objects are deleted using 'Sch:Clear'; if cancelled, all objects are deselected to return to the original state. This safer approach prevents accidental deletions and demonstrates how to integrate user interaction into automated processes. The script is particularly valuable for operations where visual confirmation is important before making irreversible changes.

### CirWiz.pas

This interactive circuit wizard generates simple RC filter circuits on schematic sheets with user-specified component values. The `FilterForm` dialog allows users to enter capacitance and resistance values (defaulting to 100 µF and 200 Ω). The `GetClickPosition` helper function uses 'Sch:AskForXYLocation' to let users specify where to place the circuit. The `PlaceFilter` procedure places a resistor (Res1) and capacitor (Cap) from Miscellaneous Devices.IntLib at calculated positions relative to the click point, assigns simulation model parameters with user-specified values, sets designators (R1, C1) and orientations, and draws red wires connecting the components to form a complete filter circuit topology. The script demonstrates component placement from libraries, parameter assignment, coordinate calculations, wire routing, and creating functional circuit blocks programmatically. This is valuable for understanding how to build circuit generators, create custom component placement wizards, automate repetitive circuit patterns, or develop schematic templates with parameterized components.

### PCBColor.pas

This script demonstrates programmatic PCB color scheme configuration by setting layer colors via process parameters. The `SetSchemeDefaults` procedure uses ResetParameters and AddStringParameter to set colors for all PCB layers including TopSignal, Mid1-10, Bottom, TopOverlay, BottomOverlay, TopPaste, BottomPaste, TopSolder, BottomSolder, InternalPlane layers, DrillGuide, KeepOut, Mechanical layers, DrillDrawing, MultiLayer, ConnectionLayer, Background, DRCError, Highlight, GridColor, PadHoleLayer, and ViaHoleLayer. Colors are specified as decimal integer strings representing RGB values. The script then executes 'PCB:PCBChangeSystemColors' to apply the new color scheme. This is useful for creating custom color themes, implementing company color standards, improving visibility for specific design tasks, creating high-contrast schemes for presentations, or automating color setup for different design phases (layout, review, manufacturing).

### PCBLayer.pas

This script provides procedures for controlling PCB layer visibility programmatically. The script includes multiple procedures: `TopLayers` shows only the top signal layer and hides all internal layers, `BottomLayers` shows only the bottom signal layer, and similar procedures for other layer combinations. Each procedure uses ResetParameters and AddStringParameter to set visibility states (True/False) for TopSignal, Mid1-10, BottomSignal, TopOverlay, BottomOverlay, InternalPlane layers, KeepOutLayer, and Mechanical layers, then executes 'PCB:PCBLayerSet' to apply the changes. This is extremely useful for quickly switching between layer viewing configurations during layout, inspecting specific layer stackup combinations, preparing views for design reviews, simplifying the display for specific routing tasks, or creating automated view switching for different design phases. The script demonstrates how to create custom layer set shortcuts beyond the standard Altium layer sets.

### PlacePCBPolygon.pas

This script programmatically places a polygon pour on a PCB with specified properties. The script sets the polygon location at 5000,5000 mils, configures pour properties including PourOver (true to pour over existing objects), RemoveDead (false to keep dead copper), GridSize (10 mil grid for copper removal), TrackWidth (12 mil track width for thermal connections), HatchStyle (90Degree hatching pattern), and Net name (GND for ground plane). The script then executes 'PCB:PlacePolygon' with 'RunPlacementProcess' set to True to allow interactive vertex placement. This demonstrates automated polygon pour creation and is valuable for creating standard ground/power planes, automating copper pour setup, implementing design rule-compliant pours programmatically, or batch creating multiple polygon regions with consistent properties. The script can be modified to create different pour types and configurations for various design requirements.

### PlaceSchPort.pas

This script demonstrates programmatic placement of schematic port objects using process parameters. The script uses ResetParameters and AddIntegerParameter/AddStringParameter to configure all port properties: Location.X and Location.Y (both 20000000 internal units), Style (2 for port direction), IOType (3 for bidirectional), Alignment (0 for horizontal center), Width (10000000 internal units), Name ('Test Port'), AreaColor ($FFFFFF white), and TextColor ($000000 black). The script then executes 'Sch:PlacePort' to create the port object. This is useful for understanding the port creation process parameter requirements, automating port placement in hierarchical designs, creating ports at calculated positions, batch creating multiple ports, or building schematic generation tools that need to create sheet connections programmatically.

### Quikcopy.pas

This utility script automates the select-copy-paste workflow for schematic objects. The script first sets up preferences with SelectionReference='False' using 'Sch:SetupPreferences', deselects all objects, toggles selection mode to allow user selection of objects, copies selected objects using 'Sch:Copy', deselects all objects, and finally pastes with 'Sch:Paste'. This streamlines the copy operation by automating the setup and cleanup steps, making it faster to duplicate schematic elements. The script is particularly useful when frequently copying schematic sections, duplicating circuit blocks, or creating repetitive schematic structures. It demonstrates how to chain multiple processes together to create efficient workflows.

### PublishToPDFScript.pas

This script automates PDF generation from OutJob files containing assembly drawings and schematic prints. The `PublishToPDF_AssemblyDrawingsAndSchematicPrints` procedure uses WorkspaceManager:Print process with Action='PublishToPDF', ObjectKind='OutputSingle', specifies multiple outputs using SelectedName1='Assembly Drawings' and SelectedName2='Schematic Prints', sets DisableDialog='True' for unattended operation, specifies OutputFilePath for the PDF location, and configures PDF options including OpenOutput='True' (auto-open after generation), ZoomLevel=50, FitSCHPrintSizeToDoc='True', FitPCBPrintSizeToDoc='True', GenerateNetsInfo='True', MarkPins='True', MarkNetLabels='True', and MarkPorts='True'. This is invaluable for automating documentation generation, creating design release packages, batch generating PDFs for multiple projects, implementing continuous documentation workflows, or creating standardized output packages for manufacturing and assembly. The script can be modified to include different output types or PDF generation options.

### RunCommonDialog.pas

This script demonstrates how to use Altium's built-in common dialogs programmatically. The `RunADialogProcess` procedure shows how to invoke the color picker dialog using Client:RunCommonDialog process with Dialog='Color' parameter and initial Color='0' (black). After the dialog is executed, the script retrieves the Result parameter to check if the user clicked OK or Cancel, and if OK, retrieves the selected color using GetStringParameter and displays it. The script mentions that available dialog types include 'Color' and 'FileOpenSave Names'. This is useful for adding user interaction to scripts, prompting for colors in automated coloring routines, getting file selections for batch operations, or integrating standard UI elements into custom automation tools. The common dialog system provides a consistent user experience while simplifying script development.

### ShowNetList.pas

This script generates a Protel format netlist from a schematic project and displays it in Notepad. The `RunNetList` procedure uses WorkspaceManager:GenerateReport process with ObjectKind='Netlist' and Index=4 for Protel netlist format (the script documents that Index values correspond to: 1=EDIF for PCB, 2=Multiwire, 3=Pcad for PCB, 4=Protel, 5=Verilog, 6=VHDL, 7=XSPICE). The script sets ReturnGeneratedDocuments='True' to get the filename of the generated netlist, retrieves the Result parameter to verify success, gets the generated filename using GetStringParameter('File1'), and uses RunApplication to launch Notepad with the netlist file. Error handling displays system error messages if Notepad fails to launch. This is valuable for quick netlist inspection, verifying connectivity before PCB layout, debugging net naming issues, integrating netlist generation into build scripts, or viewing netlist output without navigating through multiple menus.

### ImportWaveforms.pas

This script demonstrates importing waveform data from CSV files into Signal Designer Format (SDF) documents. The `ImportWaveformsFromFile_Real` procedure uses the ImportWaveforms process with extensive configuration: DocumentFilename specifies the target SDF file, FileName points to the source CSV data file, ChartName names the chart for imported data, ListSeparator defines the CSV delimiter, ChartType selects 'XY-Scatter' or 'Table' display, DataType specifies 'Real', 'Complex', or 'Table' data format, PlotWaves0 and PlotWaves1 specify comma-delimited lists of wave names to plot in different plots, OverwriteWaves='True' silently replaces existing waves with the same names, and XScaleMode sets the X-axis scaling to 'Linear', 'Log10', or 'Log2'. The script is useful for automating waveform import from simulation results, integrating external analysis tools with Altium, batch processing measurement data, creating standardized waveform views, or building custom signal analysis workflows. The flexible parameter system allows adaptation to different data formats and visualization requirements.

## General Scripts

*(Detailed summaries to be added)*

## DXP Scripts

*(Detailed summaries to be added)*

## FPGA Scripts

*(Detailed summaries to be added)*

## Process Scripts

*(Detailed summaries to be added)*

## WSM Scripts

*(Detailed summaries to be added)*