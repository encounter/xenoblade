#!/bin/sh -e
../decomp-tools/target/release/dtk dol disasm baserom.dol -s config/symbols.txt -p config/splits.txt -o .
