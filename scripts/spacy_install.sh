#!/bin/bash
python -m pip install --upgrade pip
pip install -U setuptools wheel
pip install -U spacy
python -m spacy download en_core_web_sm
exec "$@"
