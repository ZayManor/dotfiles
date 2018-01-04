#!/bin/bash

main() {

  cd-to-dotfiles
  symlink_files
  symlink_directories
  cd ~/

}

cd-to-dotfiles() {
  cd ~/dotfiles
}

symlink_files() {
  for dot_file in *; do
    [[ $dot_file != *.sh ]] || continue
    [[ $dot_file != vim ]] || continue
    cp -vfL $dot_file ~/.$dot_file
  done
}

symlink_directories() {
  echo "vim/ -> $HOME/.vim/"
  cp -rvf vim/ ~/.vim/ > /dev/null
}

main
