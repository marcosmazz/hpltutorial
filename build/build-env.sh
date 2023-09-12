#!/bin/bash
set -euo pipefail

SPACK_REPO="https://github.com/spack/spack.git"
#SPACK_TAG="releases/v0.20"
SPACK_TAG="develop"

export SPACK_USER_CONFIG_PATH=/var/empty

echo Installing Spack
cd ..
git clone ${SPACK_REPO} spack || true
cd spack
git remote set-url origin ${SPACK_REPO}
git fetch --all
git reset --hard origin/${SPACK_TAG}
cd ..
source spack/share/spack/setup-env.sh

echo Adding compilers to spack
COMPILER_MODULES="gcc oneapi"
module purge
module load $COMPILER_MODULES
spack compiler find --scope=site
module purge

echo Building apps
cd build
rm -rf .spack-env/ spack.lock
spack env activate .
spack concretize -f
spack install --fresh -v -y -j4
spack module tcl refresh -y
spack env deactivate
