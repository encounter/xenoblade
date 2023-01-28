#!/bin/bash

OBJDUMP="$DEVKITPPC/bin/powerpc-eabi-objdump -Dz -bbinary -EB -mpowerpc -M gekko"
OPTIONS="--start-address=$(($1)) --stop-address=$(($1 + $2))"
$OBJDUMP $OPTIONS baserom.dol > baserom.dump
$OBJDUMP $OPTIONS build/xenoblade.jp/main.dol > main.dump
diff -u baserom.dump main.dump