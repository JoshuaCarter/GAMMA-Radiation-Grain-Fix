# GAMMA Prone Fix

Fixes the low-crouch ("prone") pose in **S.T.A.L.K.E.R. **G.A.M.M.A.**: the third-person body now matches the first-person camera height, and the headlamp stays camera-locked instead of swinging from the raised head bone.

## What it does

- **Prone body pose** — While in low crouch (`Ctrl` + slow walk / `mcCrouch` + `mcAccel`), forces the custom `dorn_prone` animation on the actor skeleton and hides thigh/upper-arm bones that clip through the ground pose.
- **Smooth exit** — On leaving prone, legs blend to stand/crouch idle while the torso briefly holds the prone pitch so the spine does not snap upright.
- **Headlamp fix** — Sets `torch_inertion = false` on the default torch so the light follows the camera, not the misaligned head bone.

## Requirements

- [S.T.A.L.K.E.R. Anomaly](https://www.moddb.com/mods/stalker-anomaly) 1.5.2+ (tested on G.A.M.M.A.)
- [Mod Configuration Menu (MCM)](https://www.moddb.com/mods/stalker-anomaly/addons/anomaly-mod-configuration-menu)

## Installation

### Mod Organizer 2

1. Download or clone this repository.
2. Install as a mod (MO2: *Install mod* → select the folder, or map the repo folder directly).
3. Enable **GAMMA Prone Fix**.
4. Place it **after** animation overhauls that patch `stalker_smart_cover_animation.omf` (e.g. RemadeAnimations) so this mod's OMF wins.
5. Launch the game and adjust settings under **MCM → Dorn's Prone Fix** if needed.

### Manual

Copy the `gamedata` folder into your Anomaly install, merging with existing files.

## MCM options

| Setting | Default | Description |
|---------|---------|-------------|
| Camera height — Standing | 1.80 m | Reference camera height above feet for stand detection |
| Camera height — Crouch | 1.34 m | Reference for crouch |
| Camera height — Prone | 0.44 m | Reference for low-crouch / prone |
| Debug logging | Off | On-screen debug lines (height, posture, motion) |

Tune camera heights if your FOV or stance mods shift the camera relative to the actor origin.

## Load order

This mod replaces one motion inside:

`gamedata/meshes/actors/stalker_smart_cover_animation.omf`

It must load **last** among mods that touch that OMF. In MO2, drag it below RemadeAnimations and similar packs.

## Development

VS Code launch config tails the game log for `[ProneFix]` and `[DBG]` tags:

```bash
grep -E "\[ProneFix\]|\[DBG\]" -i appdata/logs/xray_*.log
```

Reload scripts in-game with `load_last_save` (console) or by loading a save — Anomaly does not hot-reload Lua.

### Animation source

The Blender project used to author `dorn_prone` is kept locally under `blender/` (not in this repo — files exceed GitHub's 100 MB limit). To publish the source, use [Git LFS](https://git-lfs.github.com/) or host the `.blend` separately.

## Credits

- **JoshuaCarter** — mod author
- G.A.M.M.A. / Anomaly community tooling and animation base (RemadeAnimations)

## License

Use and modify freely for personal and mod-pack use. Credit appreciated if you redistribute.
