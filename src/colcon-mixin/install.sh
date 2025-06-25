#!/bin/sh
set -e

repo_line="default: https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml"

if ! colcon mixin list | grep -qF "$repo_line"; then
  colcon mixin add default https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml
fi

colcon mixin update default

