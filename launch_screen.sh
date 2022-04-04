#!/bin/bash

export PCDS_CONDA_VER=5.1.1
source /cds/group/pcds/pyps/conda/pcds_conda
export PYTHONPATH=/cds/home/m/mcbrowne/LogBookClient:${PYTHONPATH}
export PATH=/cds/home/m/mcbrowne/LogBookClient/LogBookClient:${PATH}
#export PYTHONPATH=/reg/g/psdm/web/ws/prod/apps/LogBookClient:${PYTHONPATH}
#export PATH=/reg/g/psdm/web/ws/prod/apps/LogBookClient/LogBookClient:${PATH}

LAUNCHER="$(readlink -f ${BASH_SOURCE[0]})"
UI="$(dirname ${LAUNCHER})/screen"

inssta=${1}
shift

pydm --hide-nav-bar --hide-menu-bar --hide-status-bar -m "endstation=${inssta},$*" "${UI}/est.py"
