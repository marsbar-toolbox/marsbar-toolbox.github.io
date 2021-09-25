#!/bin/bash
exprt MATLAB_CMD="octave --eval"
export MATLABPATH="${MATLABPATH}:${PWD}/m2html"

(cd marsbar/doc && make dist-stamp)

ghp-import -b main -n marsbar/doc/dist/
git push origin main:main --force
