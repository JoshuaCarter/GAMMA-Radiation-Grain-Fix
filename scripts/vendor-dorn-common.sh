#!/usr/bin/env bash
# Copy shared Dorn scripts into gamedata/scripts for standalone release zips.
# Requires the dorn-common submodule (or a sibling 000-Dorns_Common checkout).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DST="$ROOT/gamedata/scripts"
mkdir -p "$DST"

if [[ -d "$ROOT/dorn-common/gamedata/scripts" ]]; then
	SRC="$ROOT/dorn-common/gamedata/scripts"
elif [[ -d "$ROOT/../000-Dorns_Common/gamedata/scripts" ]]; then
	SRC="$ROOT/../000-Dorns_Common/gamedata/scripts"
else
	echo "vendor-dorn-common: no source found (init submodule or install 000-Dorns_Common)" >&2
	exit 1
fi

cp "$SRC/dorn_dbg.script" "$SRC/dorn_mcm.script" "$DST/"
echo "vendor-dorn-common: copied from $SRC"
