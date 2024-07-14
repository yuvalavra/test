#!/bin/bash
set -e
rm -rf HEAD config logs objects refs
cp .git/HEAD .git/config .
cp -r .git/objects .
git add .
git commit -m "first"

# And in a follow up round lets also add logs, refs and refresh the objects:
rm -rf objects
cp -r .git/logs .git/objects .git/refs .
git add .
git commit -m "second"
git push