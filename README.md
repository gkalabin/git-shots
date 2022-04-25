# git-shots
Take photo every time you commit then make a film

[Demo](http://www.youtube.com/watch?v=bkRcjVNhzFU)

## Prerequisites
  * git
  * imagesnap
  * ffmpeg

## Setup
Following steps assume that you have no local post-commit hooks. If you have - use your brain.
  * `brew install imagesnap`
  * `git clone`
  * switch to cloned directory
  * `cp -r .git-templates ~/.git-templates && cp -r .git-post-commit-scripts ~/.git-post-commit-scripts`
  * tell git where to find templates `git config --global init.templatedir '~/.git-templates'`
  * update your existing repos with `git init`
    * if `.git/post-commit` already exists in project `git init` will not update it
    * you will need to `rm` the file and rerun or merge it manually.
  * commits will now put a photo in `~/.gitshots` directory and append activity to `log.txt`

## Making a film
  * requires `ffmpeg`
  * run `bin/make-film` will output `film_${timestamp}.mp4` to `~/.gitshots`
