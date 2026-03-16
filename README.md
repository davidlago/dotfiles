## Dotfiles

Personal configuration files for **zsh**, **vim**, **neovim**, **tmux**, and
**git**. Uses [GNU Stow](https://www.gnu.org/software/stow/) to symlink
everything into place.

### Supported Platforms

- **macOS** (packages via [Homebrew](https://brew.sh))
- **Linux / Debian-based** (packages via `apt-get`)

### Installation

Clone into your home directory and run the installer:

```bash
cd ~
git clone https://github.com/davidlago/dotfiles.git
cd dotfiles
./install.sh          # full install
./install.sh --dry-run  # preview what will happen without making changes
```

After installation, log out and back in so zsh becomes your default shell.

### Post-Install

- **macOS**: set your terminal font to a Powerline variant.
- **tmux**: open tmux and press `Ctrl+b`, then `I` to install plugins.