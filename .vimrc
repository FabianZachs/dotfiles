set expandtab
set shiftwidth=4
set softtabstop=4 " number of spaces in tab when editing
syntax on
set autoread
set number " line numbers
set relativenumber " for relative numbering 
syntax enable " engable syntax processing
set tabstop=4 " number of visual spaces per TAB
set showcmd   " shows last commnd in bottom bar
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching bracket
" SEARCHING "
set incsearch " search as characters are entered
set hlsearch  " highlight matches

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remapping my leader
let mapleader=","


" =====================================================================
" VUNDLE SPECIFIC SETTINGS 


set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ---------------------------------------------------------------------
" MY PLUGINS
Plugin 'morhetz/gruvbox'
Plugin 'connorholyday/vim-snazzy'
Plugin 'w0rp/ale'
Plugin 'Raimondi/delimitMate'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'pseewald/vim-anyfold'
" END OF MY PLUGINS
" ---------------------------------------------------------------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" END OF  VUNDLE
" =====================================================================

set termguicolors
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic = 1
let g:gruvbox_bold = 1
colorscheme gruvbox
"colorscheme snazzy
let g:SnazzyTransparent = 1
" line in bashrc for text color
set background=dark
set t_Co=256

"ale
let g:ale_python_flake8_executable = 'python3'

" NERDTREE
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenVSplit='<C-V>'
let NERDTreeMapOpenSplit='<C-X>'
let NERDTreeIgnore=['\.pyc$', '\.o$'] "ignore files in NERDTree


" easymotion config
map <Leader> <Plug>(easymotion-prefix)


" fzf
set rtp+=~/.fzf
nnoremap <c-p> :FZF<cr>


" lightline
set laststatus=2
set noshowmode

" anyfold
autocmd Filetype * AnyFoldActivate               " activate for all filetypes
set foldlevel=99 " Open all folds
nnoremap <space> za  
" Enable folding with the spacebar



" https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/#tmux-21-and-above
highlight Comment cterm=italic


" FZF
" ctrl-p   open FZF
" ctrl-<vim motion> go between selection
" enter     open in current window
" ctrl-T    open in new tab
" ctrl-X    horizontal split
" ctrl-V    vertical split


" NERDTREE
" ctrl-n    open NERDTREE
" ctrl-X    horizontal split
" ctrl-V    vertical split


" EASYMOTION
" ,s   easy-motion movement
" ,w to search all words
" ,f _ to search for specific letter below cursor
" ,F _ to search for specific letter above cursor
" ,s _ to search for _ forward and backword
" ,k skip to a line above
" ,j skip to a line above
