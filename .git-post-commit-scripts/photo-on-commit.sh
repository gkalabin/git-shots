#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

mkdir -p ~/.gitshots

now=$(date +"%Y_%m_%d__%H_%M_%S")
shot="shot_${now}.jpg"
imagesnap "~/.gitshots/$shot"
