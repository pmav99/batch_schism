#!/usr/bin/env bash
#

set -euo pipefail

log() {
  echo "$(date +'%T.%3N') - $1"
}


log 'Installing miniconda'
mv .condarc ~/
wget -O ~/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ~/miniconda.sh -b -p ~/miniconda
eval "$(~/miniconda/condabin/conda shell.bash hook)"
conda init
log 'Installing miniconda: Done'
