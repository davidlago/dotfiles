" Alternative leader map to ,
" let mapleader = ','

" Manage plugins with vim-plug.
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/vim-plug'
Plug 'mbbill/undotree'
let g:plug_timeout = 300 " Increase vim-plug timeout for
                         " YouCompleteMe.
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
call plug#end()

if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=500		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

set mouse=a

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!
  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  augroup END
else
  set autoindent		" always set autoindenting on
endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" Monokai theme
colorscheme monokai
let g:molokai_original = 1
" 80-char column mark
let &colorcolumn=80
" Line numbers
set number
" No ~ backup files
set nobackup
" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" CtrlP setup
" Clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim into ~/.vim
" and execute this in vim: :helptags ~/.vim/bundle/ctrlp.vim/doc
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" MISC
" 2-space indents
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
" Use system clipboard
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif
" Highlight search fields
highlight Search ctermfg=yellow
silent! helptags ALL " Load help files for all plugins.

" Airline config:
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Status bar shown at all times
set laststatus=2
" Powerline symbols
let g:airline_powerline_fonts = 1

" BUFFERS
"
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Resizing splits with leader + arrows
nnoremap <Leader><Left> <C-w><
nnoremap <Leader><Right> <C-w>>
nnoremap <Leader><Up> <C-w>-
nnoremap <Leader><Down> <C-w>+

" POWERLINE
let g:Powerline_symbols = "fancy"
let g:airline_theme='wombat'
" indentLine color
let g:indentLine_color_term = 237


" From Mastering Vim book
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>
tnoremap <c-h> <c-w><c-h>

"autocmd filetype python set foldmethod=indent

set wildoptions=pum " vertical autocomplete for auto-complete (wildmenu)

let NERDTreeShowBookmarks=1 " Display bookmarks on startup
let NERDTreeHijackNetrw=0 " Don't have NERDTree replace Netrw
noremap <leader>n :NERDTree<cr>

" Be bold and unmap the arrow keys to force use of home row
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

set tags=tags; " Look for a tags file recursively in parent directories.
