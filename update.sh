#!/bin/bash
for file in /home/shwetank/dotfiles/*; do
  # Exclude the script itself and the .git directory
  if [[ "$file" != "$(realpath "$0")" && "$file" != "/home/shwetank/dotfiles/.git" ]]; then
    ln -sf "$file" /home/shwetank/.config/
  fi
done

