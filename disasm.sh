#!/bin/sh -e
tools/dtk dol disasm orig/main.dol -s config/symbols.txt -p config/splits.txt -o .
