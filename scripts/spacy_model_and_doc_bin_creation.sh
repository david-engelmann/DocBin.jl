#!/bin/bash
pwd
ls
sleep 50
python spacy_model_and_doc_bin_creation.py
exec "$@"
