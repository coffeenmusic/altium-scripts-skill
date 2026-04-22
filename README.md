# Altium DelphiScript Scripting Skill

A [Claude Code](https://docs.anthropic.com/en/docs/claude-code) custom skill that helps write Altium Designer DelphiScript automation scripts.

## What It Does

When you ask Claude Code to write an Altium script, this skill gives it access to:

- **230+ working example scripts** covering PCB, schematic, and process automation
- **API reference docs** for PCB, schematic, and general DXP interfaces
- **Class structure listings** from the Altium Script IDE

Claude uses the examples as a foundation, then fills gaps from the API references to produce working scripts.

## Setup

1. Clone this repo into your Claude Code skills directory or add it as a custom skill path
2. The skill activates automatically when you ask Claude Code to write Altium scripts

## What's Included

```
SKILL.md              # Skill definition and workflow instructions
references/
  overview.md         # One-line summaries of all scripts
  summaries.md        # Detailed script descriptions
  PCB_API_Reference.md
  SCH_API_Reference.md
  General_DXP_API_Reference.md
  classes/            # Interface member listings
  scripts/
    PCB/              # 60+ PCB automation scripts
    SCH/              # 30+ schematic scripts
    Processes/        # 15 process automation scripts
```

## Example Usage

Ask Claude Code things like:

- "Write a script that places silkscreen text on all components"
- "Create a script to export PCB layer stackup info to a report"
- "Write a script that iterates all nets and checks for unrouted connections"
