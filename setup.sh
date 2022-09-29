#!/usr/bin/env bash
set -ex

ln -sFf ${PWD}/nvim/config/user/* ${HOME}/.config/nvim/lua/user/
ln -sFf ${PWD}/git/gitconfig ${HOME}/.gitconfig
