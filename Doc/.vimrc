let $MY_DIR = $HOME."/Workspace/GitHub/MyConfigFiles/Doc"

set nocompatible
set nu
set tabstop=2
set shiftwidth=2
" a combination of spaces and tabs are used to simulate tab stops at a width other than the (hard)tabstop
set softtabstop=2

" make 'tab' insert indents instead of tabs at the beginning of a line
set smarttab

"set expandtab " always uses spaces instead of tab characters

filetype plugin on

call pathogen#infect()
filetype plugin indent on

syntax on
syntax enable

set laststatus=2

" Solarized options 
" colorscheme solarized
let g:solarized_termtrans = 1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
" Molokai options 
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

set t_Co=256
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\

" Tag List
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Use_Right_Window=1
let Tlist_Enable_Fold_Column=0  " 使taglist插件不显示左边的折叠行
let Tlist_Show_One_File=1 " taglist插件只显示当前文件的tag
let Tlist_Exit_OnlyWindow=1 " 如果taglist窗口是最后一个窗口则退出Vim
let Tlist_File_Fold_Auto_Close=1  " 自动折叠

if has('gui_running')
  " source $MY_DIR/.vimrc_statusline
else
  " source $MY_DIR/.vimrc_statusline_iterm2
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
map <leader>tt :TlistToggle<cr>
map <C-s> :w<CR>
map <CR> o<ESC>
map <S-CR> O<ESC>
map <C-n> :noh<CR>
map <C-o> :only<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
nmap j gj
nmap k gk

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:vim_markdown_folding_disabled=1

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
" set ignorecase
set hlsearch

" paste text with origin indentation
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

