" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.





"Sections:
" ->General
" ->Search
" ->Indents
" ->KeyMap
" ->Plugins
" ->Other





" ----->GENERAL

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set nocompatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

"if filereadable("~/.vim/vimrc")
"  source ~/.vim/vimrc
"endif

" ----------->SEARCH

set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" ----------->INDENTS

set tabstop=4
set shiftwidth=4

"set smarttab
set expandtab
set smartindent
set number
set mouse=a
set noautoindent
syntax enable
set encoding=utf8

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set ai
set si


" ----------->KEYMAP

nnoremap <C-t> :tabnew<CR>
nnoremap <A-Left> gT
nnoremap <A-Right> gt
nnoremap <A-Up> <C-w><Up>
nnoremap <A-Down> <C-w><Down>
nnoremap <F8> :w !sudo tee %<CR>

"nnoremap  <A-j> 15j
"nnoremap  <A-j> 15j
"imap  <A-k> <Esc>15ki
"imap  <A-k> <Esc>15ki


set paste
map  <silent>  <S-Insert>  "+p
imap <silent>  <S-Insert>  <Esc>"+pa
map  <silent>  <C-Insert>  "+y
imap <silent>  <C-Insert>  <Esc>"+ya


autocmd FileType php nnoremap <F12> :!php -l %<CR>

filetype on
autocmd FileType php set keywordprg=pman
autocmd FileType python nnoremap <F12> :!python % -v<CR>
command! W :w

:set pastetoggle=<f5>




" ---------->PLUGINS

filetype on
filetype plugin indent on

"call pathogen#infect()
"configuration for vundle

set shell=/bin/bash

" To ignore plugin indent changes, instead use:
" "
" " Brief help
" " :PluginList          - list configured plugins
" " :PluginInstall(!)    - install (update) plugins
" " :PluginSearch(!) foo - search (or refresh cache first) for foo
" " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Plugin commands are not allowed.
" " Put your stuff after this line
"
 set rtp+=~/.vim/bundle/vundle/

 call vundle#rc()
" " alternatively, pass a path where Vundle should install plugins
let path = '~/.vim/bundle/'
call vundle#rc(path)
"
 call vundle#begin()

" " let Vundle manage Vundle, required

    Plugin 'ctrlp.vim'
   " Plugin 'jedi-vim' "https://github.com/davidhalter/jedi
    Plugin 'davidhalter/jedi-vim'
    Plugin 'L9' 
    Plugin 'Pydiction'
    Plugin 'Python-mode-klen'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/syntastic'
    Plugin 'SuperTab'
    Plugin 'Tagbar' "http://vimawesome.com/plugin/tagbar
    Plugin 'tpope/vim-fugitive' "http://vimawesome.com/plugin/fugitive-vim
    Plugin 'tpope/vim-surround'
    Plugin 'vim-ipython'
    Plugin 'flazz/vim-colorschemes'
    "Plugin 'Valloric/YouCompleteMe'
    "Plugin 'kien/ctrlp.vim'
" " set the runtime path to include Vundle and initialize

 let NERDTreeShowHidden=1

" NerdTree {
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\\.pyc', '\\\~$', '\\.swo$', '\\.swp$', '\\.git', '\\.hg', '\\.svn', '\\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
" }

":helptags ~/.vim/bundle/ctrlp.vim/doc
set runtimepath^=~/.vim/bundle/ctrlp.vim
  let g:ctrlp_map = '<C-p>'
  let g:ctrlp_cmd = 'CtrlP'

call vundle#end()

" ----------->OTHER
"autocomplete
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP "ctrl x - Ctrl o
"ctrl n for existing word
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

set autoread
set history=100

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
"let mapleader = ","
"let g:mapleader = ","

" Fast saving
"nmap <leader>w :w!<cr>

set wildmenu
set ruler

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" For regular expressions turn magic on
set magic

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Always show the status line
"set laststatus=2

"set spell

set linespace=0

set softtabstop=4

let mapleader = ','

" Stupid shift key fixes
cmap W w                        
cmap WQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe
