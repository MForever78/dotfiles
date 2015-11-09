set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
" <c-p> to search a file quickly
Plugin 'kien/ctrlp.vim'
" lightweight powerline
Plugin 'bling/vim-airline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'gabrielelana/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'ajh17/Spacegray.vim'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
" cs"' to change surround " to '
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
" :SaveSession and :OpenSession to manage workspace
Plugin 'xolox/vim-session'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Font

" Color scheme
set t_Co=256
if has('gui_running')
    set background=dark
    set guifont=M+\ 1mn\ light:h16
    set guioptions-=T
else
    set background=dark
endif
colorscheme Tomorrow-Night
syntax enable

" Indent
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" UI Config
set number
set cursorline
set wildmenu
set showmatch

" Searching
set incsearch
set hlsearch

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=marker

" Movement
nnoremap j gj
nnoremap k gk

" Powerline
set laststatus=2
let g:Powerline_symbols='fancy'

" Remove Scrollbar
set guioptions-=r
set guioptions-=L

" Disable fold in markdown
let g:markdown_enable_spell_checking = 0

" Expand current path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" none-English input
set noimd

" Marked 2
nnoremap <leader>m :silent !open -a Marked\ 2.app '%:p'<cr>

" NERDTree
map <silent> <leader>t :NERDTreeFocus<CR>

" autopairs
let g:AutoPairsMultilineClose=0
let g:AutoPairsFlyMode=0

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

