#!/bin/bash
echo "------------------------ Starting Full Test --------------------------------"
julia test/test_Full.jl
exec "$@"
