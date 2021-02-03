#!/usr/bin/env bash
# ------------------------------------------------------------------------------
# Script to detect existence of PIP2 and whether the version is the defective
# one described in https://github.com/pypa/pip/issues/9500
# ------------------------------------------------------------------------------

pip2_loc=$(command -v pip2)

if [[ -z "${pip2_loc}" ]]
then
    exit 1
else
    pip2 --version || exit 2
    exit 0
fi

