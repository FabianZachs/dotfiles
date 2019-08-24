set expandtab
"set shiftwidth=4
"set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=2
set softtabstop=2 " number of spaces in tab when editing
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
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" Remapping my leader
let mapleader=","


" =====================================================================
" plug.vim SPECIFIC SETTINGS 


call plug#begin('~/.vim/plugged')

" ---------------------------------------------------------------------
" MY PLUGINS
Plug 'morhetz/gruvbox'
Plug 'connorholyday/vim-snazzy'
Plug 'w0rp/ale'
Plug 'Raimondi/delimitMate'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'pseewald/vim-anyfold'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'ternjs/tern_for_vim', {'do' : 'npm install'}
Plug 'tomasr/molokai'
Plug 'ycm-core/YouCompleteMe'
" END OF MY PLUGINS
" ---------------------------------------------------------------------

call plug#end()

" END OF plug.vim
" =====================================================================

" == AUTOCOMPLETE ==
" https://medium.com/vim-drops/javascript-autocompletion-on-vim-4fea7f6934e2
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_italic = 1
"let g:gruvbox_bold = 1
"colorscheme gruvbox
"colorscheme snazzy
"colorscheme molokai
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
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" anyfold http://vimcasts.org/episodes/how-to-fold/
autocmd Filetype * AnyFoldActivate               " activate for all filetypes
set foldlevel=99 " Open all folds
nnoremap <space> za  
" zc closes parent fold
" zR	open all folds
" zM	close all folds
" zj    move to above fold
" zk    move to below fold
" Enable folding with the spacebar


" ctags
" Ctrl-] 			 Jump to the tag underneath the cursor
" :ts <tag> <RET>    Search for a particular tag
" :tn   			 Go to the next definition for the last tag
" :tp   			 Go to the previous definition for the last tag
" :ts     		     List all of the definitions of the last tag
" Ctrl-t  			 Jump back up in the tag stack

" https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/#tmux-21-and-above
highlight Comment cterm=italic


" VIMUX
" Prompt for a command to run https://blog.bugsnag.com/tmux-and-vim/
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane          can exit with movement back up. So Ctrl-k
map <Leader>vz :VimuxZoomRunner<CR>

colorscheme molokai


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
