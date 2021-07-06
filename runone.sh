#!/bin/bash

running=$(ps h -C "$*" | grep -wv $$ | wc -l);
[[ $running > 3 ]] && exit;

$* &>/dev/null & disown;
