#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT/_jmp_staging/Kuloszewski_JMP.pdf"
DST="$ROOT/assets/pdf/Kuloszewski_JMP.pdf"

if [[ ! -f "$SRC" ]]; then
  echo "ERROR: source PDF not found: $SRC" >&2
  exit 1
fi

cp "$SRC" "$DST"
echo "Copied $SRC -> $DST"
echo
echo "Next steps (from $ROOT):"
echo "  git add assets/pdf/Kuloszewski_JMP.pdf && git commit -m \"Update JMP\" && git push"
