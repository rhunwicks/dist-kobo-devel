#!/bin/sh -u

# scripts/kc_40_npm_installs.sh

# ============================
# EXTEND ENVIRONMENT VARIABLES
. ./01_environment_vars.sh
# ============================

cd $KOBOCAT_PATH

install_info "Install some extra node dependencies"
sudo npm install -g --save-dev
sudo npm install -g bower karma grunt-cli

# $HOME is overridden for root
[ $(whoami) = "vagrant" ] && sudo chown -R vagrant:vagrant $HOME_VAGRANT
