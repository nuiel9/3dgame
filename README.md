# Narai: Shattered Realms (3D Action RPG Spin-Off)

A fresh **3D action RPG spin-off** inspired by the original project:
- Source inspiration: https://github.com/nuiel9/naraigame2D3D

This repository starts as a concept-and-planning baseline for building a fully playable 3D action RPG experience.

## Vision

Create a fast, combo-driven 3D action RPG where players explore fragmented biomes, battle corrupted guardians, and unlock traversal powers that reshape both combat and exploration.

## Core Gameplay Pillars

1. **Action Combat**
   - Light/heavy attacks, dodge, guard-break, aerial launcher, and skill cooldowns.
2. **Build Variety**
   - Three starter archetypes: Blade Dancer, Rift Caster, and Warden.
   - Modular skill tree with active + passive synergies.
3. **Exploration & Progression**
   - Semi-open zones connected by hub city.
   - Environmental puzzles and hidden relic dungeons.
4. **Narrative Spin-Off**
   - Parallel timeline to the original setting.
   - New protagonist and faction conflict while preserving lore references.

## Suggested Tech Stack (Starter)

- **Engine**: Godot 4 (or Unity as alternative)
- **Language**:
  - Godot path: GDScript/C#
  - Unity path: C#
- **3D Assets**: Blockout-first with free CC0 placeholders, replaced iteratively.
- **Versioning**: Git + feature branches for systems (combat, AI, inventory, UI).

## Milestone Roadmap

### Milestone 0: Prototype Slice
- Third-person controller
- Lock-on target system
- One enemy type with simple AI state machine
- Basic attack combo and dodge i-frames

### Milestone 1: Vertical Slice
- 1 playable class fully implemented
- 1 zone with 10–15 minutes of gameplay
- Inventory, equipment, and stat scaling
- 1 mini-boss encounter

### Milestone 2: Content Expansion
- 3 zones + hub
- 8–12 enemy variants
- quest system
- save/load + settings

## Immediate Next Tasks

- [ ] Choose engine path (Godot 4 recommended for open workflow).
- [ ] Create player controller scene/prefab.
- [ ] Implement camera + lock-on.
- [ ] Build combat hit detection (hurtbox/hitbox timing).
- [ ] Add one enemy with patrol/chase/attack states.

## Attribution

This spin-off concept references and is inspired by:
- https://github.com/nuiel9/naraigame2D3D

Please review original licensing/asset rights before reusing any source assets or code.


## Prototype Bootstrap Included

This repo now includes a **Godot 4 starter scaffold**:
- `project.godot`
- `scenes/Main.tscn`
- `scripts/player_controller.gd`
- `scripts/enemy_ai.gd`
- `scripts/lock_on_system.gd`
- `scripts/combat/hitbox.gd`
- `scripts/combat/hurtbox.gd`

> Note: Input actions (`move_forward`, `move_backward`, `move_left`, `move_right`, `dodge`, `attack`) should be added in Godot Project Settings → Input Map.
