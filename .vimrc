" System settings
""""""""""""""""""""""""""""""

set nocompatible      " Enable Vim only functions
set encoding=utf-8    " Set terminal output encoding to UTF-8

" Load plugins
execute pathogen#infect()

set hidden      " Allow unsaved buffers in the background
set modeline    " Allow vim modelines in files
set autoread    " Automatically reload changed files

" Disable file backups
set nobackup
set nowritebackup
set backupdir=~/.vim/tmp,/tmp,.
set directory=~/.vim/tmp,/tmp,.

" Visual settings
""""""""""""""""""""""""""""""

set background=dark

syntax enable    " Enable syntax highlighting

set number          " Show line numbers
set title           " Set window title
set laststatus=2    " Always show status line
set ruler           " Show ruler in status line
set showmode        " Show current mode
set showcmd         " Show command line

" Editor settings
""""""""""""""""""""""""""""""

" Default to 4 spaces for indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set shiftround               " Round indentation to multiples of shiftwidth
set autoindent               " Keep indentation on new lines
set smartindent              " Adjust indentation automatically
filetype plugin indent on    " Enable filetype specific indentation settings

set backspace=indent,eol,start    " Allow backspace to cross lines
set whichwrap=h,l,b,<,>,~,[,]     " Allow all navigation characters to cross lines

set sidescroll=1       " Move 1 character when scrolling to the side
set scrolloff=3        " Scroll when cursor is 3 lines away from the edge
set sidescrolloff=3    " Side scroll when cursor is 3 characters away from the edge

set incsearch     " Search as you type
set ignorecase    " Do case-insensitive search
set smartcase     " Do case-sensitive search if query contains upper case characters
set nohlsearch    " Don't highlight search results

set wildmode=longest,list,full    " Autocomplete: longest common, show list, first match
set wildmenu

set mouse=a    " Enable mouse support in all modes

" Commands
""""""""""""""""""""""""""""""

" Save read-only files with :W
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" Plugin settings
""""""""""""""""""""""""""""""

" CTRL+n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Quit vim if only NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
