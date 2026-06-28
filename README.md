# GAMMA Radiation Grain Fix

In **S.T.A.L.K.E.R. G.A.M.M.A.**, radiation screen grain is driven mainly by how radioactive your **location** is. That means you can get heavy grain in a hot zone even when your body radiation is still low — or grain that stays on in odd spots after you leave.

## What this mod does

- Turns off the stock location-based radiation grain entirely
- Shows grain based on your **actual body radiation** instead
- Lets you configure the **mSv thresholds** for each grain intensity

## Installation

1. Download the latest release from https://github.com/JoshuaCarter/GAMMA-Radiation-Grain-Fix/releases
2. Install with Mod Organizer 2 like any other mod
3. Place this mod **below** other mods that change radiation postprocess

## Warnings!

- This mod **replaces** `gamedata/anims/radiation.ppe` with a blank version. Anything that uses the stock radiation postprocess file will no longer show grain from that path — including zone radiation, dynamic rad areas, and the vanilla radiation effect script.
- I haven't tested this enough to know whether I've accidentally disabled the grain effect in a situation where it would be better to keep it (but I doubt it).