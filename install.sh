#!/usr/bin/env bash
set -euo pipefail
VERSION="1.1"; APP="netscope"; FOUNDER="p4oT09"
INSTALL_DIR="${PREFIX:-/usr/local}/bin"
ACC='\033[38;5;81m'; OK='\033[38;5;118m'; DIM='\033[38;5;244m'; RESET='\033[0m'
clear
printf "%b\n" "${ACC}NetScope v${VERSION}${RESET}"
printf "%b\n" "${DIM}Founder:${RESET} ${ACC}${FOUNDER}${RESET}"
printf "%b\n" "${DIM}Installing to:${RESET} ${INSTALL_DIR}"
printf "%b\n" "${DIM}────────────────────────────────────────────${RESET}"
mkdir -p "$INSTALL_DIR" >/dev/null 2>&1
cp "bin/netscope" "$INSTALL_DIR/$APP" >/dev/null 2>&1
chmod 755 "$INSTALL_DIR/$APP" >/dev/null 2>&1
miss=(); command -v whois >/dev/null || miss+=("whois")
printf "%b\n" "${OK}✔ Installed:${RESET} $INSTALL_DIR/$APP"
[ ${#miss[@]} -gt 0 ] && {
  printf "%b\n" "${DIM}Note:${RESET} install: ${ACC}${miss[*]}${RESET}"
  printf "%b\n" "  Termux: pkg install whois"
  printf "%b\n" "  Ubuntu/Debian: sudo apt install whois"
}
printf "%b\n" "${DIM}Run:${RESET} ${ACC}netscope AS135341${RESET}"
