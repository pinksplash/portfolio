#!/bin/bash
set -e

# Initial Python setup.
if [ ! -d ".venv" ]; then
  echo "Creating Python venv"
  python3 -m venv .venv
  source .venv/bin/activate
  pip install -r requirements.txt
else
  source .venv/bin/activate
fi

if [ ! -d site ]; then
  mkdir site
fi

python3 generate.py

cp src/*.css site/

cp -r src/images site/

echo "Done!"
