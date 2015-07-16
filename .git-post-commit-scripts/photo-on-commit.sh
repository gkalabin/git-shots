#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

SHOTS_DIR=~/.gitshots
mkdir --parents "$SHOTS_DIR"

now=$(date +"%Y_%m_%d__%H_%M_%S")
shot="shot_${now}.png"
# dirty hack: enable camera for a couple of seconds so it can automatically adjust  brightness
mplayer -vo null -ao dummy -frames 30 tv:// >/dev/null
# now take the photo
fswebcam -r 1280x720 -D 1 --set "Backlight Compensation"=1 "$SHOTS_DIR/$shot"
