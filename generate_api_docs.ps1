Add-Type -AssemblyName System.IO.Compression.FileSystem

$zipPath = "C:\Users\stephen.thompson\Documents\Claude Code\Altium_Scripting_Skill\altium-api.zip"
$outDir = "C:\Users\stephen.thompson\Documents\Claude Code\Altium_Scripting_Skill\references\api"

$zip = [System.IO.Compression.ZipFile]::OpenRead($zipPath)

function ReadEntry($name) {
    $entry = $zip.GetEntry($name)
    if ($entry -eq $null) { return $null }
    $stream = $entry.Open()
    $reader = New-Object System.IO.StreamReader($stream)
    $text = $reader.ReadToEnd()
    $reader.Close()
    $stream.Close()
    return $text
}

function ParseJson($name) {
    $text = ReadEntry $name
    if ($text -eq $null) { return $null }
    return ConvertFrom-Json $text
}

# ============================================================
# Load base classes for inheritance dedup
# ============================================================
Write-Host "Loading base classes..."

$pcbBase = ParseJson "interfaces/IPCB_Primitive.json"
$pcbBaseNames = @{}
foreach ($e in $pcbBase.entries) { $pcbBaseNames[$e.name] = $true }
Write-Host "  IPCB_Primitive: $($pcbBase.count) members"

$schBase = ParseJson "interfaces/ISch_GraphicalObject.json"
$schBaseNames = @{}
foreach ($e in $schBase.entries) { $schBaseNames[$e.name] = $true }
Write-Host "  ISch_GraphicalObject: $($schBase.count) members"

$twincontrol = ParseJson "classes/TWinControl.json"
$twinNames = @{}
foreach ($e in $twincontrol.entries) { $twinNames[$e.name] = $true }

$tcomponent = ParseJson "classes/TComponent.json"
$tcompNames = @{}
foreach ($e in $tcomponent.entries) { $tcompNames[$e.name] = $true }

$tobject = ParseJson "classes/TObject.json"
$tobjNames = @{}
foreach ($e in $tobject.entries) { $tobjNames[$e.name] = $true }

Write-Host "  TWinControl: $($twincontrol.count), TComponent: $($tcomponent.count), TObject: $($tobject.count)"

# ============================================================
# Helper: generate markdown for an interface/class with dedup
# ============================================================
function GenerateSection($obj, $baseNames, $baseName) {
    $name = $obj.prefix -replace '\.$', ''
    $entries = $obj.entries
    $total = $obj.count

    if ($baseNames -and $baseNames.Count -gt 0) {
        $uniqueEntries = @()
        $overlapCount = 0
        foreach ($e in $entries) {
            if ($baseNames.ContainsKey($e.name)) {
                $overlapCount++
            } else {
                $uniqueEntries += $e
            }
        }
        if ($overlapCount -gt ($total * 0.5)) {
            $uniqueCount = $uniqueEntries.Count
            $lines = @("## $name ($uniqueCount unique + inherits $baseName)")
            foreach ($e in ($uniqueEntries | Sort-Object { $_.name })) {
                $lines += $e.raw
            }
            return $lines
        }
    }

    # No dedup - list all members
    $lines = @("## $name ($total members)")
    foreach ($e in ($entries | Sort-Object { $_.name })) {
        $lines += $e.raw
    }
    return $lines
}

# ============================================================
# 1. PCB_Interfaces.md
# ============================================================
Write-Host "`nGenerating PCB_Interfaces.md..."
$pcbOutput = @(
    "# PCB Interfaces (IPCB_*)"
    "Complete member listings for all PCB interfaces. Inherited IPCB_Primitive members documented once; derived interfaces list only unique additions."
    ""
)

# Write IPCB_Primitive first (full, as base)
$pcbOutput += "## IPCB_Primitive ($($pcbBase.count) members) - BASE CLASS"
$pcbOutput += "All IPCB_ object interfaces inherit these members."
foreach ($e in ($pcbBase.entries | Sort-Object { $_.name })) {
    $pcbOutput += $e.raw
}
$pcbOutput += ""

# Process all other IPCB_* interfaces
$pcbEntries = $zip.Entries | Where-Object { $_.FullName -like 'interfaces/IPCB_*' -and $_.FullName -ne 'interfaces/IPCB_Primitive.json' } | Sort-Object { $_.FullName }
$count = 0
foreach ($entry in $pcbEntries) {
    $obj = ParseJson $entry.FullName
    $section = GenerateSection $obj $pcbBaseNames "IPCB_Primitive"
    $pcbOutput += $section
    $pcbOutput += ""
    $count++
}
$pcbOutput | Out-File "$outDir\PCB_Interfaces.md" -Encoding utf8
Write-Host "  Done: $($count + 1) interfaces, $($pcbOutput.Count) lines"

# ============================================================
# 2. SCH_Interfaces.md
# ============================================================
Write-Host "`nGenerating SCH_Interfaces.md..."
$schOutput = @(
    "# Schematic Interfaces (ISch_*)"
    "Complete member listings for all schematic interfaces. Inherited ISch_GraphicalObject members documented once; derived interfaces list only unique additions."
    ""
)

# Write ISch_GraphicalObject first
$schOutput += "## ISch_GraphicalObject ($($schBase.count) members) - BASE CLASS"
$schOutput += "Most ISch_ object interfaces inherit these members."
foreach ($e in ($schBase.entries | Sort-Object { $_.name })) {
    $schOutput += $e.raw
}
$schOutput += ""

$schEntries = $zip.Entries | Where-Object { $_.FullName -like 'interfaces/ISch_*' -and $_.FullName -ne 'interfaces/ISch_GraphicalObject.json' } | Sort-Object { $_.FullName }
$count = 0
foreach ($entry in $schEntries) {
    $obj = ParseJson $entry.FullName
    $section = GenerateSection $obj $schBaseNames "ISch_GraphicalObject"
    $schOutput += $section
    $schOutput += ""
    $count++
}
$schOutput | Out-File "$outDir\SCH_Interfaces.md" -Encoding utf8
Write-Host "  Done: $($count + 1) interfaces, $($schOutput.Count) lines"

# ============================================================
# 3. Other_Interfaces.md
# ============================================================
Write-Host "`nGenerating Other_Interfaces.md..."
$otherOutput = @(
    "# Other Interfaces"
    "Complete member listings for all non-PCB, non-schematic interfaces. Includes IClient, IProject, IDocument, IWorkSpace, IDraftsman, and all other interfaces."
    ""
)

$otherEntries = $zip.Entries | Where-Object {
    $_.FullName -like 'interfaces/*' -and
    $_.FullName -notlike 'interfaces/IPCB_*' -and
    $_.FullName -notlike 'interfaces/ISch_*'
} | Sort-Object { $_.FullName }
$count = 0
foreach ($entry in $otherEntries) {
    $obj = ParseJson $entry.FullName
    $section = GenerateSection $obj $null $null
    $otherOutput += $section
    $otherOutput += ""
    $count++
}
$otherOutput | Out-File "$outDir\Other_Interfaces.md" -Encoding utf8
Write-Host "  Done: $count interfaces, $($otherOutput.Count) lines"

# ============================================================
# 4. Classes.md
# ============================================================
Write-Host "`nGenerating Classes.md..."
$classOutput = @(
    "# Classes"
    "Complete member listings for all classes. Inherited members from TWinControl, TComponent, or TObject documented once in the base class; derived classes list only unique additions."
    ""
)

# Write base classes first
foreach ($baseInfo in @(
    @{ Name = "TObject"; Obj = $tobject; Desc = "Root class. All classes inherit these members." },
    @{ Name = "TComponent"; Obj = $tcomponent; Desc = "Base for all components." },
    @{ Name = "TWinControl"; Obj = $twincontrol; Desc = "Base for all windowed controls (forms, buttons, edits, etc.)." }
)) {
    $classOutput += "## $($baseInfo.Name) ($($baseInfo.Obj.count) members) - BASE CLASS"
    $classOutput += $baseInfo.Desc
    foreach ($e in ($baseInfo.Obj.entries | Sort-Object { $_.name })) {
        $classOutput += $e.raw
    }
    $classOutput += ""
}

$classEntries = $zip.Entries | Where-Object {
    $_.FullName -like 'classes/*' -and
    $_.FullName -ne 'classes/TWinControl.json' -and
    $_.FullName -ne 'classes/TComponent.json' -and
    $_.FullName -ne 'classes/TObject.json'
} | Sort-Object { $_.FullName }
$count = 0
foreach ($entry in $classEntries) {
    $obj = ParseJson $entry.FullName
    $names = @{}
    foreach ($e in $obj.entries) { $names[$e.name] = $true }

    # Find best base class match
    $bestBase = $null
    $bestBaseName = $null
    $bestOverlap = 0
    foreach ($candidate in @(
        @{ Names = $twinNames; Label = "TWinControl" },
        @{ Names = $tcompNames; Label = "TComponent" },
        @{ Names = $tobjNames; Label = "TObject" }
    )) {
        $overlap = 0
        foreach ($n in $names.Keys) {
            if ($candidate.Names.ContainsKey($n)) { $overlap++ }
        }
        if ($overlap -gt $bestOverlap -and $overlap -gt ($obj.count * 0.5)) {
            $bestOverlap = $overlap
            $bestBase = $candidate.Names
            $bestBaseName = $candidate.Label
        }
    }

    $section = GenerateSection $obj $bestBase $bestBaseName
    $classOutput += $section
    $classOutput += ""
    $count++
}
$classOutput | Out-File "$outDir\Classes.md" -Encoding utf8
Write-Host "  Done: $($count + 3) classes, $($classOutput.Count) lines"

# ============================================================
# 5. Constants.md
# ============================================================
Write-Host "`nGenerating Constants.md..."
$constJson = ParseJson "constants.json"

# Group constants by prefix
$groups = @{}
foreach ($c in $constJson.constants) {
    $name = $c.name
    if (-not $name) {
        if ($c.raw) { $name = ($c.raw -replace '^const\s+','') -replace '\s*=.*',''; $name = $name.Trim() }
        else { continue }
    }
    # Determine group by prefix pattern
    $group = "Other"
    if ($name -match '^e[A-Z]') {
        # Enum-style: eTopLayer, ePadMode, etc.
        if ($name -match '^(e[A-Za-z]+?)[A-Z_]') { $group = "e: $($Matches[1])" }
        else { $group = "e: Enums" }
    }
    elseif ($name -match '^(PCBM_|SCHM_|c_)') { $group = $Matches[1].TrimEnd('_') }
    elseif ($name -match '^(mr|mb|mt|fs|cr|bs|ps|ss|of|rf|dup)') { $group = "VCL: $($Matches[1])" }
    elseif ($name -match '^[a-z]{2,4}[A-Z]') { $group = "Misc lowercase prefix" }
    else { $group = "General" }

    if (-not $groups.ContainsKey($group)) { $groups[$group] = @() }
    if ($c.value) {
        $groups[$group] += "$($c.name) = $($c.value)"
    } elseif ($c.raw) {
        $groups[$group] += $c.raw
    }
}

$constOutput = @(
    "# Constants"
    "All constants and variables available in Altium scripting. Grouped by prefix/domain."
    ""
)
foreach ($group in ($groups.Keys | Sort-Object)) {
    $constOutput += "## $group"
    foreach ($line in ($groups[$group] | Sort-Object)) {
        $constOutput += $line
    }
    $constOutput += ""
}

# Add variables
if ($constJson.variables) {
    $constOutput += "## Variables"
    foreach ($v in $constJson.variables) {
        if ($v.raw) { $constOutput += $v.raw }
        elseif ($v.name) { $constOutput += "$($v.name) = $($v.value)" }
    }
    $constOutput += ""
}

$constOutput | Out-File "$outDir\Constants.md" -Encoding utf8
Write-Host "  Done: $($constJson.constant_count) constants in $($groups.Count) groups, $($constOutput.Count) lines"

# ============================================================
# 6. Global_Functions.md
# ============================================================
Write-Host "`nGenerating Global_Functions.md..."
$funcJson = ParseJson "global_functions.json"

$funcOutput = @(
    "# Global Functions and Procedures"
    "All standalone functions and procedures available in Altium scripting."
    ""
    "## Functions ($($funcJson.function_count))"
    ""
)
foreach ($f in ($funcJson.functions | Sort-Object { $_.name })) {
    $funcOutput += $f.raw
}
$funcOutput += ""
$funcOutput += "## Procedures ($($funcJson.procedure_count))"
$funcOutput += ""
foreach ($p in ($funcJson.procedures | Sort-Object { $_.name })) {
    $funcOutput += $p.raw
}

$funcOutput | Out-File "$outDir\Global_Functions.md" -Encoding utf8
Write-Host "  Done: $($funcJson.function_count + $funcJson.procedure_count) items, $($funcOutput.Count) lines"

# ============================================================
# 7. API_Hierarchy.md
# ============================================================
Write-Host "`nGenerating API_Hierarchy.md..."

# Detect which IPCB_* interfaces inherit from IPCB_Primitive
$pcbInheritors = @()
$pcbStandalone = @()
foreach ($entry in ($zip.Entries | Where-Object { $_.FullName -like 'interfaces/IPCB_*' -and $_.FullName -ne 'interfaces/IPCB_Primitive.json' })) {
    $obj = ParseJson $entry.FullName
    $iname = $obj.prefix -replace '\.$', ''
    $overlap = 0
    foreach ($e in $obj.entries) { if ($pcbBaseNames.ContainsKey($e.name)) { $overlap++ } }
    if ($overlap -gt ($obj.count * 0.5)) { $pcbInheritors += $iname }
    else { $pcbStandalone += $iname }
}

$schInheritors = @()
$schStandalone = @()
foreach ($entry in ($zip.Entries | Where-Object { $_.FullName -like 'interfaces/ISch_*' -and $_.FullName -ne 'interfaces/ISch_GraphicalObject.json' })) {
    $obj = ParseJson $entry.FullName
    $iname = $obj.prefix -replace '\.$', ''
    $overlap = 0
    foreach ($e in $obj.entries) { if ($schBaseNames.ContainsKey($e.name)) { $overlap++ } }
    if ($overlap -gt ($obj.count * 0.5)) { $schInheritors += $iname }
    else { $schStandalone += $iname }
}

$hierOutput = @(
    "# API Inheritance Hierarchy"
    "Interfaces and classes that inherit from common base types. Derived types only list unique members in the reference files; inherited members are documented in the base type."
    ""
    "## PCB Interface Hierarchy"
    ""
    "### IPCB_Primitive (base - $($pcbBase.count) members)"
    "The following $($pcbInheritors.Count) interfaces inherit all IPCB_Primitive members:"
)
foreach ($n in ($pcbInheritors | Sort-Object)) { $hierOutput += "- $n" }
$hierOutput += ""
$hierOutput += "### Standalone PCB Interfaces ($($pcbStandalone.Count))"
$hierOutput += "These do NOT inherit from IPCB_Primitive (iterators, server interfaces, etc.):"
foreach ($n in ($pcbStandalone | Sort-Object)) { $hierOutput += "- $n" }

$hierOutput += ""
$hierOutput += "## Schematic Interface Hierarchy"
$hierOutput += ""
$hierOutput += "### ISch_GraphicalObject (base - $($schBase.count) members)"
$hierOutput += "The following $($schInheritors.Count) interfaces inherit all ISch_GraphicalObject members:"
foreach ($n in ($schInheritors | Sort-Object)) { $hierOutput += "- $n" }
$hierOutput += ""
$hierOutput += "### Standalone SCH Interfaces ($($schStandalone.Count))"
$hierOutput += "These do NOT inherit from ISch_GraphicalObject:"
foreach ($n in ($schStandalone | Sort-Object)) { $hierOutput += "- $n" }

$hierOutput += ""
$hierOutput += "## VCL Class Hierarchy"
$hierOutput += ""
$hierOutput += "### TObject (root - $($tobject.count) members)"
$hierOutput += "### TComponent (extends TObject - $($tcomponent.count) members)"
$hierOutput += "### TWinControl (extends TComponent - $($twincontrol.count) members)"
$hierOutput += "Most VCL form/control classes inherit from TWinControl. See Classes.md for each class's inheritance note."

$hierOutput | Out-File "$outDir\API_Hierarchy.md" -Encoding utf8
Write-Host "  Done: $($hierOutput.Count) lines"

# ============================================================
# 8. API_Map.md
# ============================================================
Write-Host "`nGenerating API_Map.md..."
$mapOutput = @(
    "# Altium API Map"
    "Master index of all interfaces, classes, global functions, and constants. Use this to find which file contains the detailed member listings for any API type."
    ""
    "## How to Use"
    "1. Find the interface or class name below"
    "2. Note which file it is in"
    "3. Use Grep or search to find the ``## TypeName`` section header in that file"
    "4. Read that section for complete member listings"
    ""
    "For practical usage patterns, code examples, and process operations, see the hand-written API references:"
    "- ``references/PCB_API_Reference.md`` - PCB patterns, iterators, undo system, process operations"
    "- ``references/SCH_API_Reference.md`` - Schematic patterns, iterators, model system"
    "- ``references/General_DXP_API_Reference.md`` - DXP framework, WSM, VCL forms, utilities, process catalog"
    ""
    "## Interfaces - PCB (in PCB_Interfaces.md)"
    ""
)

# PCB interfaces with member counts
$allPcb = $zip.Entries | Where-Object { $_.FullName -like 'interfaces/IPCB_*' } | Sort-Object { $_.FullName }
foreach ($entry in $allPcb) {
    $obj = ParseJson $entry.FullName
    $iname = $obj.prefix -replace '\.$', ''
    $mapOutput += "- $iname ($($obj.count))"
}

$mapOutput += ""
$mapOutput += "## Interfaces - Schematic (in SCH_Interfaces.md)"
$mapOutput += ""
$allSch = $zip.Entries | Where-Object { $_.FullName -like 'interfaces/ISch_*' } | Sort-Object { $_.FullName }
foreach ($entry in $allSch) {
    $obj = ParseJson $entry.FullName
    $iname = $obj.prefix -replace '\.$', ''
    $mapOutput += "- $iname ($($obj.count))"
}

$mapOutput += ""
$mapOutput += "## Interfaces - Other (in Other_Interfaces.md)"
$mapOutput += ""
$allOther = $zip.Entries | Where-Object {
    $_.FullName -like 'interfaces/*' -and
    $_.FullName -notlike 'interfaces/IPCB_*' -and
    $_.FullName -notlike 'interfaces/ISch_*'
} | Sort-Object { $_.FullName }
foreach ($entry in $allOther) {
    $obj = ParseJson $entry.FullName
    $iname = $obj.prefix -replace '\.$', ''
    $mapOutput += "- $iname ($($obj.count))"
}

$mapOutput += ""
$mapOutput += "## Classes (in Classes.md)"
$mapOutput += ""
$allClasses = $zip.Entries | Where-Object { $_.FullName -like 'classes/*' } | Sort-Object { $_.FullName }
foreach ($entry in $allClasses) {
    $obj = ParseJson $entry.FullName
    $cname = $obj.prefix -replace '\.$', ''
    $mapOutput += "- $cname ($($obj.count))"
}

$mapOutput += ""
$mapOutput += "## Global Functions and Procedures (in Global_Functions.md)"
$mapOutput += "- $($funcJson.function_count) functions"
$mapOutput += "- $($funcJson.procedure_count) procedures"
$mapOutput += ""
$mapOutput += "## Constants (in Constants.md)"
$mapOutput += "- $($constJson.constant_count) constants in $($groups.Count) groups"
$mapOutput += "- $($constJson.variable_count) variables"

$mapOutput | Out-File "$outDir\API_Map.md" -Encoding utf8
Write-Host "  Done: $($mapOutput.Count) lines"

# ============================================================
$zip.Dispose()
Write-Host "`n=== COMPLETE ==="
Write-Host "Generated 8 files in $outDir"
