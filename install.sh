#!/bin/bash
set -e

# ──────────────────────────────────────────────────────────────
# Dotfiles installer — works on macOS (Homebrew) and Linux (apt/dnf)
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

# Detect Linux distribution details from /etc/os-release.
LINUX_ID=""
LINUX_ID_LIKE=""
if [ "$OS" = "Linux" ] && [ -r /etc/os-release ]; then
  # shellcheck disable=SC1091
  . /etc/os-release
  LINUX_ID="${ID:-}"
  LINUX_ID_LIKE="${ID_LIKE:-}"
fi

# ── 1. Install system packages ──────────────────────────────
echo "===> Installing system packages for $OS..."

case "$OS" in
  Linux)
    if [[ "$LINUX_ID" == "amzn" || "$LINUX_ID_LIKE" == *"rhel"* || "$LINUX_ID_LIKE" == *"fedora"* ]]; then
      echo "===> Detected Linux distro: ${LINUX_ID:-unknown} (using dnf)"
      run sudo dnf -y upgrade
      run sudo dnf -y install zsh vim-enhanced tmux git cmake \
        python3 python3-pip tar gzip make perl

      # Optional tools may be missing from default repos on some AMZN/RHEL images.
      for pkg in ripgrep the_silver_searcher; do
        if $DRY_RUN; then
          echo "[dry-run] sudo dnf -y install $pkg"
        else
          if sudo dnf -y install "$pkg"; then
            echo "===> Installed optional package: $pkg"
          else
            echo "===> Optional package not available in enabled repos: $pkg"
          fi
        fi
      done

      # stow is required by this installer; build from source if package is unavailable.
      if ! command -v stow &>/dev/null; then
        echo "===> GNU Stow package not found in repos, installing from source..."
        STOW_VERSION="2.4.1"
        STOW_TARBALL="stow-${STOW_VERSION}.tar.gz"
        STOW_URL="https://ftp.gnu.org/gnu/stow/${STOW_TARBALL}"
        STOW_BUILD_DIR="${HOME}/.cache/dotfiles-build/stow-${STOW_VERSION}"
        STOW_PARENT_DIR="${HOME}/.cache/dotfiles-build"

        run curl -fL "$STOW_URL" -o "/tmp/${STOW_TARBALL}"
        run mkdir -p "$STOW_PARENT_DIR"
        run rm -rf "$STOW_BUILD_DIR"
        run tar -xzf "/tmp/${STOW_TARBALL}" -C "$STOW_PARENT_DIR"

        if $DRY_RUN; then
          echo "[dry-run] cd $STOW_BUILD_DIR && sh ./configure && make"
          echo "[dry-run] cd $STOW_BUILD_DIR && sudo make install"
        else
          (
            cd "$STOW_BUILD_DIR"
            sh ./configure
            make
            sudo make install
          )
        fi

        run rm -f "/tmp/${STOW_TARBALL}"
        run rm -rf "$STOW_BUILD_DIR"
      fi
    else
      echo "===> Detected Linux distro: ${LINUX_ID:-unknown} (using apt-get)"
      run sudo apt-get update
      run sudo apt-get -y upgrade
      run sudo apt-get -y install zsh vim tmux git cmake ripgrep stow \
        python3-venv silversearcher-ag
    fi
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
  ZSH_BIN="$(command -v zsh || true)"
  if [ -z "$ZSH_BIN" ]; then
    ZSH_BIN="/bin/zsh"
  fi

  # On macOS, prefer /bin/zsh (always in /etc/shells) over Homebrew's zsh
  if [ "$OS" = "Darwin" ] && [ -x /bin/zsh ]; then
    if command -v chsh &>/dev/null; then
      run chsh -s /bin/zsh
    else
      echo "===> Could not change default shell automatically (chsh not found)."
      echo "===> Set your shell manually to /bin/zsh after install."
    fi
  else
    if command -v chsh &>/dev/null; then
      run chsh -s "$ZSH_BIN"
    elif [ "$OS" = "Linux" ] && command -v usermod &>/dev/null; then
      run sudo usermod --shell "$ZSH_BIN" "$USER"
    else
      echo "===> Could not change default shell automatically (no chsh/usermod)."
      echo "===> Set your shell manually to $ZSH_BIN after install."
    fi
  fi
fi

# ── 3. Oh My Zsh ────────────────────────────────────────────
if [ ! -d ~/.oh-my-zsh ]; then
  echo "===> Installing oh-my-zsh..."
  if $DRY_RUN; then
    echo "[dry-run] sh -c \"\$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\" \"\" --unattended"
  else
    run sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  fi
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
    ARCH="$(uname -m)"
    NVIM_ARCH=""
    case "$ARCH" in
      x86_64)
        NVIM_ARCH="x86_64"
        ;;
      aarch64|arm64)
        NVIM_ARCH="arm64"
        ;;
      *)
        echo "Unsupported Linux architecture for Neovim tarball: $ARCH"
        echo "Skipping Neovim tarball install. Install Neovim manually for your architecture."
        NVIM_ARCH=""
        ;;
    esac

    if [ -n "$NVIM_ARCH" ]; then
      NVIM_TARBALL="nvim-linux-${NVIM_ARCH}.tar.gz"
      run curl -LO "https://github.com/neovim/neovim/releases/latest/download/${NVIM_TARBALL}"
      run sudo rm -rf /opt/nvim
      run sudo tar -C /opt -xzf "$NVIM_TARBALL"
      run rm -rf "$NVIM_TARBALL"
    fi
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
