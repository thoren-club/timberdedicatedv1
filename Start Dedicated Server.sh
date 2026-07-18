#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
exec ./TimberShiftDedicatedServer.x86_64 \
  --headless \
  --audio-driver Dummy \
  --log-file "$(pwd)/server.log" \
  -- \
  --server
