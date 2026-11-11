#!/usr/bin/env bash
# Checagem definida deste repositório. Grava comandos + saída bruta em .claude/reports/<tree>.txt
exec "$(git rev-parse --show-toplevel)/.claude/scripts/report.sh" \
  $'awk -F\' [|] \' \'/^[0-9]+\\. /{n++; if (NF!=9 || $7 !~ /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/ || $8 !~ /^[0-9]+\\/25/ || $3 !~ /trustmrr\\.com/) {bad++; print "linha inv\303\241lida " NR ": " substr($0,1,60)}} END{print n " linhas numeradas, " bad+0 " inv\303\241lidas"; exit (bad>0)}\' list.md'
