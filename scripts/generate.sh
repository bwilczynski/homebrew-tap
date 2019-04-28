#!/bin/sh

LIB=$1
WORKING_DIR=$PWD

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
  source /usr/local/bin/virtualenvwrapper.sh
else
  echo "WARNING: Can't find virtualenvwrapper.sh"
fi

mktmpenv --python=python3 > /dev/null 2>&1 || exit 1
cd $WORKING_DIR

function finish {
  deactivate > /dev/null 2>&1
}
trap finish EXIT

pip install $LIB homebrew-pypi-poet > /dev/null 2>&1
poet -f $LIB