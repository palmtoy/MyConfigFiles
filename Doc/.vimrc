let $MY_DIR = $HOME."/Workspace/GitHub/MyConfigFiles/Doc"

set nocompatible
set nu
set tabstop=2
set expandtab
set shiftwidth=2

if has('gui_running')
  syntax enable
  set background=dark
  colorscheme solarized
else
  set background=light
  colorscheme pablo
endif

set guifont=Courier_New:h15
set gcr=a:blinkon0
set smartindent
set autoindent
set autoread  "Set to auto read when a file is changed from the outside
set paste
set autowriteall

let mapleader = ","
map <leader>nn :NERDTreeToggle<cr>
map <C-s> :w<CR>
map <CR> o<ESC>
map <S-CR> O<ESC>
map <C-n> :noh<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
nmap j gj
nmap k gk

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start
set nobackup  " do not keep a backup file, use versions instead
set history=50  " keep 50 lines of command line history
set ruler " show the cursor position all the time
set cursorline " highlight the current line
set showcmd " display incomplete commands
set incsearch " do incremental searching
" autoload .vimrc
autocmd! bufwritepost .vimrc source $MY_DIR/.vimrc
set wildmenu  " cmd auto completion
set ignorecase

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

execute pathogen#infect()
autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif

source $MY_DIR/.vimrc_statusline

