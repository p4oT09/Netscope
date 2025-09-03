#!/usr/bin/env bash
set -euo pipefail
VER="1.1"
WORKDIR="$(cd "$(dirname "$0")/.." && pwd)"
PKGDIR="$WORKDIR/packaging/deb"
INSTALL_DIR="$PKGDIR/usr/local/bin"
OUT="netscope_${VER}_all.deb"
rm -rf "$INSTALL_DIR"; mkdir -p "$INSTALL_DIR"
cp "$WORKDIR/bin/netscope" "$INSTALL_DIR/netscope"; chmod 755 "$INSTALL_DIR/netscope"
dpkg-deb --build "$PKGDIR" "$OUT"
echo "Built: $OUT"
