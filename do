#!/usr/bin/env bash
if [ ! -d ".venv" ]; then
  echo "[$0]:: Installing..."
  set -x 
  pip install --user jenkins-job-builder
  virtualenv .venv
  source ./venv/bin/activate
  pip install -r test-requirements.txt -e .
  set +x
else
  source .venv/bin/activate
fi