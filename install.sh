#!/bin/bash
set -e

# ──────────────────────────────────────────────────────────────
# Dotfiles installer — works on macOS (Homebrew) and Linux (apt)
# Usage: ./install.sh [--dry-run]
# ──────────────────────────────────────────────────────────────

DRY_RUN=false
if [ "$1" = "--dry-run" ]; then
  DRY_RUN=true
  echo ">>> DRY-RUN MODE — no changes will be made <<<"
  echo ""
fi

run() {
  if $DRY_RUN; then
    echo "[dry-run] $*"
  else
    "$@"
  fi
}

OS="$(uname -s)"

# ── 1. Install system packages ──────────────────────────────
echo "===> Installing system packages for $OS..."

case "$OS" in
  Linux)
    run sudo apt-get update
    run sudo apt-get -y upgrade
    run sudo apt-get -y -f install zsh vim tmux git cmake ripgrep stow \
      python3-venv silversearcher-ag
    ;;
  Darwin)
    if ! command -v brew &>/dev/null; then
      echo "Homebrew is required. Install it from https://brew.sh and re-run."
      exit 1
    fi
    run brew install zsh vim tmux git cmake ripgrep stow the_silver_searcher
    ;;
  *)
    echo "Unsupported OS: $OS"
    exit 1
    ;;
esac

# ── 2. Change default shell to zsh ──────────────────────────
if [ "$(basename "$SHELL")" != "zsh" ]; then
  echo "===> Changing default shell to zsh..."
  # On macOS, prefer /bin/zsh (always in /etc/shells) over Homebrew's zsh
  if [ "$OS" = "Darwin" ] && [ -x /bin/zsh ]; then
    run chsh -s /bin/zsh
  else
    run chsh -s "$(command -v zsh)"
  fi
fi

# ── 3. Oh My Zsh ────────────────────────────────────────────
if [ ! -d ~/.oh-my-zsh ]; then
  echo "===> Installing oh-my-zsh..."
  run sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi
run rm -rf ~/.zshrc
run stow --adopt zsh
# Restore repo versions over any adopted files
if ! $DRY_RUN; then git checkout -- zsh/; fi
# Copy custom theme (kept outside stow tree since oh-my-zsh owns ~/.oh-my-zsh)
run cp zsh/themes/davidlago.zsh-theme ~/.oh-my-zsh/themes/
run touch ~/.zshrc-include

# ── 4. Vim ───────────────────────────────────────────────────
echo "===> Setting up vim..."
run rm -rf ~/.vimrc
run mkdir -p ~/.vim/colors
run stow --adopt vim
if ! $DRY_RUN; then git checkout -- vim/; fi
run cp vim/colors/monokai.vim ~/.vim/colors/

if [ ! -f ~/.vim/autoload/plug.vim ]; then
  echo "===> Installing vim-plug..."
  run curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.github.com/junegunn/vim-plug/master/plug.vim
fi

if ! $DRY_RUN; then
  vim -c ':PlugInstall | q | :q!'
fi

# ── 5. Neovim ───────────────────────────────────────────────
echo "===> Setting up neovim..."
run mkdir -p ~/.config
run stow --adopt nvim
if ! $DRY_RUN; then git checkout -- nvim/; fi

case "$OS" in
  Linux)
    run curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
    run sudo rm -rf /opt/nvim
    run sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
    run rm -rf nvim-linux-x86_64.tar.gz
    ;;
  Darwin)
    if ! command -v nvim &>/dev/null; then
      run brew install neovim
    fi
    ;;
esac

# ── 6. Powerline fonts ──────────────────────────────────────
if [ ! -d ~/powerline-fonts ]; then
  echo "===> Installing powerline fonts..."
  run git clone https://github.com/powerline/fonts.git ~/powerline-fonts
  if ! $DRY_RUN; then
    ~/powerline-fonts/install.sh
  fi
fi

# ── 7. Tmux + TPM ───────────────────────────────────────────
echo "===> Setting up tmux..."
run rm -rf ~/.tmux.conf
if [ ! -d ~/.tmux/plugins/tpm ]; then
  echo "===> Installing TPM..."
  run git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
run stow --adopt tmux
if ! $DRY_RUN; then git checkout -- tmux/; fi

# ── 8. Git ───────────────────────────────────────────────────
echo "===> Setting up git..."
run rm -rf ~/.gitconfig
run rm -rf ~/.gitconfig-include
run stow --adopt git
if ! $DRY_RUN; then git checkout -- git/; fi

# Write platform-specific credential helper
case "$OS" in
  Darwin)
    if ! grep -q 'credential' ~/.gitconfig-include 2>/dev/null; then
      if ! $DRY_RUN; then
        git config --global credential.helper osxkeychain
      else
        echo "[dry-run] git config --global credential.helper osxkeychain"
      fi
    fi
    ;;
esac

# ── Done ─────────────────────────────────────────────────────
echo ""
echo "=================================================================="
echo " Done! Next steps:                                                "
echo "   • Log out and back in so zsh becomes your default shell.       "
echo "   • If on macOS, set your terminal font to a Powerline variant.  "
echo "   • Open tmux and press Ctrl+b, then I to install tmux plugins. "
echo "=================================================================="
