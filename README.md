# Altium Delphi Scripts Skill

A Claude skill that helps you write Altium Designer DelphiScript automation scripts by learning from working example scripts.

## What This Skill Does

When you ask Claude to create an Altium script, this skill:
1. Searches through categorized script examples (PCB, Schematic, Process, etc.)
2. Finds relevant examples that match your request
3. Examines the actual working code
4. Writes a new script by adapting patterns from the examples

The skill uses progressive disclosure - it starts with quick summaries, then detailed descriptions, and finally examines actual code only when needed.

## What's Included

Due to Claude's current skill file limit of **200 files**, this skill includes script examples from the three most commonly used categories:
- **PCB** - PCB design automation (60+ scripts)
- **SCH** - Schematic manipulation (30+ scripts)
- **Processes** - Process automation (15+ scripts)

If you need examples from other categories (General, DXP, FPGA, WSM), you can customize the skill yourself by following the instructions below.

## Installation

### 1. Download the Skill

Go to the [Releases page](https://github.com/coffeenmusic/altium-scripts-skill/releases/tag/skill) and download `altium-delphi-scripts.skill`

### 2. Upload to Claude

1. Open [Claude.ai](https://claude.ai)
2. Click the **Settings** icon (bottom left)
3. Go to **Connectors** tab
4. Click **Add Skill**
5. Upload the `altium-delphi-scripts.skill` file
6. Enable the skill

### 3. Start Using

Ask Claude to create Altium scripts:
- "Create a script to count all vias on the PCB"
- "Write an Altium script to export component positions to CSV"
- "Make a script to find all tracks wider than 20 mils"

Claude will automatically reference the example scripts and generate working code.

## Customizing This Skill

This repository contains the skill structure and documentation, but **excludes the actual Altium script files** to keep the repo lightweight. 

### About the File Limit

Claude skills currently have a **200 file limit**. The released skill includes PCB, SCH, and Processes scripts as these cover the most common use cases. If you want to modify this skill with a different selection of scripts or add categories like General, DXP, FPGA, or WSM:

### Adding Your Scripts

1. **Clone or download this repository**

2. **Add your Altium script files** to the appropriate directories:
   ```
   references/scripts/
   ├── PCB/         ← Add your PCB scripts here (.pas, .dfm, .PrjScr files)
   ├── SCH/         ← Add your Schematic scripts here
   ├── General/     ← Add your General scripts here
   ├── DXP/         ← Add your DXP scripts here
   ├── FPGA/        ← Add your FPGA scripts here
   ├── Processes/   ← Add your Process scripts here
   └── WSM/         ← Add your WSM scripts here
   ```

3. **Update the summaries** (optional but recommended):
   - Edit `references/overview.md` to add one-sentence descriptions
   - Edit `references/summaries.md` to add detailed descriptions
   - Currently only PCB section is complete

4. **Stay within the 200 file limit**:
   - Count your total files including .pas, .dfm, .PrjScr, and subdirectories
   - Prioritize the script categories most relevant to your work
   - Consider splitting into multiple skills if needed

### Packaging Your Custom Skill

1. **Zip the entire directory**
   - Right-click the `altium-delphi-scripts` folder
   - Select "Send to → Compressed (zipped) folder"

2. **Rename the extension**
   - Change `altium-delphi-scripts.zip` to `altium-delphi-scripts.skill`

3. **Upload to Claude**
   - Follow the installation steps above

That's it! Your customized skill is ready to use.

## Skill Structure

```
altium-delphi-scripts/
├── SKILL.md                      # Main skill instructions for Claude
├── references/
│   ├── overview.md               # Quick one-sentence summaries
│   ├── summaries.md              # Detailed script descriptions
│   └── scripts/                  # Actual Altium script files
│       ├── PCB/                  # PCB automation scripts
│       ├── SCH/                  # Schematic scripts
│       ├── General/              # General utilities
│       ├── DXP/                  # DXP integration
│       ├── FPGA/                 # FPGA scripts
│       ├── Processes/            # Process automation
│       └── WSM/                  # Workspace manager
```

## Contributing

Feel free to:
- Add more script examples
- Improve documentation in overview.md and summaries.md
- Share your customized versions

## License

This skill structure is provided as-is for use with Claude. Add your own Altium scripts according to their respective licenses.