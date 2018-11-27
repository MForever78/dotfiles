call plug#begin('~/.vim/plugged')

" Global defaults
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'altercation/vim-colors-solarized'
Plug 'mattn/emmet-vim'
" <c-p> to search a file quickly
Plug 'kien/ctrlp.vim'
" lightweight powerline
Plug 'bling/vim-airline'
Plug 'Lokaltog/vim-easymotion'
Plug 'gabrielelana/vim-markdown'
" cs"' to change surround " to '
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
" golang
Plug 'fatih/vim-go'
" auto-formatter
Plug 'Chiel92/vim-autoformat'
" Jedi
" Plug 'davidhalter/jedi-vim'
" Lint
" Plug 'w0rp/ale'
" YouCompleteMe
Plug 'Valloric/YouCompleteMe'
Plug 'arakashic/chromatica.nvim'

call plug#end()

" enabel true color
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" set color scheme
colorscheme gruvbox
set background=dark

" Indent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" UI Config
set number
set cursorline
set showmatch

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=marker

" autoreload
set autoread

" Movement
nnoremap j gj
nnoremap k gk

" Powerline
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
let NERDTreeIgnore = ['\.pyc$']
" Open nerdtree on vim starting without arg
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" autopairs
let g:AutoPairsMultilineClose=0
let g:AutoPairsFlyMode=0

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

" auto-formatter options
" au BufWrite * :Autoformat

" tagbar options
nnoremap <silent> <leader>o :TagbarToggle<CR>

" Linter
let g:ale_linters = {
\   'python': ['flake8'],
\}

" Clang
let g:chromatica#libclang_path='/usr/local/opt/llvm/lib'
let g:chromatica#enable_at_startup=1

"YouCompleteMe
let g:ycm_show_diagnostics_ui = 0
