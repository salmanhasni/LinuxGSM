#!/bin/bash
# LGSM fix_arma3.sh function
# Author: Daniel Gibbs
# Website: https://gameservermanagers.com
# Description: Resolves an issue with ARMA3.

local modulename="Fix"
local selfname="$(basename $(readlink -f "${BASH_SOURCE[0]}"))"

# Fixes: 20150 Segmentation fault (core dumped) error.
if [ ! -d "${HOME}/.local/share/Arma 3" ]||[ ! -d "${HOME}/.local/share/Arma 3 - Other Profiles" ]; then
	fixname="20150 Segmentation fault (core dumped)"
	fn_fix_msg_start
	mkdir -p "${HOME}/.local/share/Arma 3 - Other Profiles"
	fn_fix_msg_end
fi