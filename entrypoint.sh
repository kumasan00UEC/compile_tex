#!/bin/bash

failename=$1
echo "Running $filename"
lualatex $filename.tex -file-line-error -interaction=nonstopmode -halt-on-error
biber $filename
lualatex $filename.tex -file-line-error -interaction=nonstopmode -halt-on-error
lualatex $filename.tex -file-line-error -interaction=nonstopmode -halt-on-error
# mv $filename.pdf ./out/$filename.pdf
echo "compiled $filename.pdf"