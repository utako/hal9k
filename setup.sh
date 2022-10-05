#!/usr/bin/env bash
set -ex

ln -sFf ${PWD}/nvim/config/user/* ${HOME}/.config/nvim/user/
ln -sFf ${PWD}/git/gitconfig ${HOME}/.gitconfig
