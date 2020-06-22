#!/bin/bash
BASEDIR=$PWD
set +x
. .colors.sh
set -e
if [ ! -f x.csv ]; then
    echo -e "$(c R)[error] The model has not generated the output x.csv"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output x.csv"
    mv x.csv ${OUTPUTS1}
fi
