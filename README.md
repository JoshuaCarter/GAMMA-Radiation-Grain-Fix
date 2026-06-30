# GAMMA Radiation Grain Fix

In **S.T.A.L.K.E.R. G.A.M.M.A.**, radiation FX is driven mainly by how radioactive your **location** is. That means you can get heavy grain in a hot zone even when your body radiation is still low. Also current effects don't play well with dynamic radiation patches. This mod **actually** lets you turn off the radiation effects (or use the better and more customizable effects included in this mod).

## Demo

https://github.com/user-attachments/assets/1c090b64-712d-4187-91e5-d97ed291209b

## What this mod does

- Turns off the stock location-based radiation grain entirely
- Shows radiation grain/desaturation/duality that scales with your current irradiation mSv level instead
- Effects can be individually tweaked or disabled.

## Installation

1. Download the latest release from https://github.com/JoshuaCarter/GAMMA-Radiation-Grain-Fix/releases
2. Install with Mod Organizer 2 like any other mod
3. Place this mod **below** other mods that change radiation postprocessing

## Warnings!

- This mod **replaces** `gamedata/anims/radiation.ppe` with a blank version. Anything that uses the stock radiation postprocess file will no longer show grain from that path — including zone radiation, dynamic rad areas, and the vanilla radiation effect script.