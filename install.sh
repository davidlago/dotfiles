#!/bin/sh
set -e

# Install oh my zsh
if [ ! -d ~/.oh-my-zsh ]; then
  echo "===> Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  sed -i 's/robbyrussell/davidlago/g' ~/.zshrc
fi

# Symlinks
rm ~/.vimrc
rm ~/.tmux.conf
ln -sf ~/dotfiles/.vimrc ~/.vimrc
mkdir -p ~/.vim/colors
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/davidlago.zsh-theme ~/.oh-my-zsh/themes/davidlago.zsh-theme
ln -sf ~/dotfiles/monokai.vim ~/.vim/colors/monokai.vim

# Install vim-plug
if [ ! -f ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim
fi
vim -c ':PlugInstall | q | :q!'

# Link included file to .zshrc
if ! (grep ".zshrc-include" ~/.zshrc 2>&1 /dev/null); then
  echo "===> Linking .zshrc-include to main .zshrc..."
  echo "source ~/dotfiles/.zshrc-include" >> ~/.zshrc
fi

# Powerline fonts (only needed in Macs)
if [ ! -d ~/powerline-fonts ]; then
  echo "===> Installing powerline fonts..."
  git clone https://github.com/powerline/fonts.git ~/powerline-fonts
  ~/powerline-fonts/install.sh
fi

TARGET_INCLUDE_PATH="$HOME/dotfiles/.gitconfig-include"
GITCONFIG_FILE="$HOME/.gitconfig" # Location of the global gitconfig

echo "Checking Git configuration in '$GITCONFIG_FILE'..."

if git config --global --get-all include.path | grep -Fxq -- "$TARGET_INCLUDE_PATH"; then
  echo "Include path '$TARGET_INCLUDE_PATH' is already present in global .gitconfig."
else
  echo "Include path '$TARGET_INCLUDE_PATH' not found. Adding it..."
  git config --global --add include.path "$TARGET_INCLUDE_PATH"
  if git config --global --get-all include.path | grep -Fxq -- "$TARGET_INCLUDE_PATH"; then
    echo "Successfully added include path '$TARGET_INCLUDE_PATH'."
  else
    echo "Error: Failed to add include path '$TARGET_INCLUDE_PATH'. Please check permissions or '.gitconfig' syntax." >&2
    exit 1
  fi
fi

# Use a case statement to determine the OS
case $(uname -s) in
    Linux)
        sudo apt-get install silversearcher-ag
        ;;
    Darwin)
        brew install the_silver_searcher
        ;;
esac

echo "=================================================================="
echo " Done! If you are on a Mac, remember to update the terminal font  "
echo " to one of the Powerline variants                                 "
echo "=================================================================="
