#!/bin/bash

# This script creates two appendices and bundles them in out/attachments.zip file:
# Appendix A. The current version of a project's source code (from Github).
# Appendix B. Benchmarking data and plots (from local sources).

DST="./attachments"

[[ -e $DST ]] && rm -r $DST
mkdir -p $DST
cd $DST

# all the following paths are relative to $DST
JSON_SRC="../../../myproject/benchmark/*-final.json"
PLOTS_SRC="../../../myproject/benchmark/plots"

DST_APP_A="./appendix-A-myproject-source-code"
DST_APP_B="./appendix-B-benchmarking-results"
OUT="../out"
ZIP="$OUT/attachments.zip"

git clone 'https://github.com/me/myproject.git' $DST_APP_A
rm -rf $DST_APP_A/.git

mkdir -p $DST_APP_B
cp $JSON_SRC $DST_APP_B/data.json
cp $PLOTS_SRC/* $DST_APP_B

mkdir -p $OUT
[[ -e $ZIP ]] && rm $ZIP
zip -r $ZIP .
