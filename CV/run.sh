#!/bin/bash
pdflatex -interaction=nonstopmode main.tex
rm -f main.log
[ -n "${GITHUB_WORKSPACE}" ] && cp main.pdf "${GITHUB_WORKSPACE}/main.pdf"
