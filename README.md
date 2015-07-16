# git-shots
Take photo every time you commit then make a film

## Prerequisites
 * git
 * fswebcam
 * gnu parallel
 * ffmpeg
 * imagemagick

## Setup
Following steps assume that you have no local post-commit hooks. If you have - use your brain.
 * Place `.git-templates` and `.git-post-commit-scripts` in your home dir.
 * Tell git where to take templates: `git config --global init.templatedir '~/.git-templates'`
 * Update your existing repos with `git init`

## Making a film
 * just run `bin/make-film` - code is small and straightforward
