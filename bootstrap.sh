#!/bin/bash -v
apt-get update
apt-get install tmux curl git -y
git clone https://github.com/joshduck/env-recipes.git ~/env-recipes
sudo bash ~/env-recipes/setup.sh
