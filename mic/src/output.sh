#!/bin/bash
BASEDIR=$PWD
set +x
. .colors.sh
set -e
if [ ! -f results/y.csv ]; then
    echo -e "$(c R)[error] The model has not generated the output results/y.csv"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output results/y.csv"
    mv results/y.csv ${OUTPUTS1}
fi
