#!/bin/sh

set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."

# Build
python3 -m build

# Install
VERSION=$(cat setup.cfg | grep "version =" | cut -d = -f 2 | xargs)
pip install --upgrade "dist/dataflow-meta-$VERSION.tar.gz"