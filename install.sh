#!/usr/bin/env bash
set -euo pipefail

REPO="YOURUSERNAME/claude-profiless"
INSTALL_DIR="${1:-/usr/local/bin}"

echo "Installing claude-profiles to $INSTALL_DIR..."

curl -fsSL "https://raw.githubusercontent.com/$REPO/main/claude-profiles" -o "$INSTALL_DIR/claude-profiles"
chmod +x "$INSTALL_DIR/claude-profiles"

echo "Installed successfully!"
echo ""
echo "Run 'eval \"\$(claude-profiles init)\"' to set up shell integration."
