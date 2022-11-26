#!/bin/bash
dl=$1
mkdir -p temp
rm -rf temp/*
pip install .
rm *.epub
python -m fanficfare.cli "${dl}" | tee temp/py.out
mv *.epub temp
cd temp
unzip *
cd ..