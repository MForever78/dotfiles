call plug#begin('~/.vim/plugged')

" Global defaults
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
" <c-p> to search a file quickly
Plug 'kien/ctrlp.vim'
" lightweight powerline
Plug 'bling/vim-airline'
Plug 'Lokaltog/vim-easymotion'
Plug 'gabrielelana/vim-markdown'
" cs"' to change surround " to '
Plug 'tpope/vim-surround'
" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
" golang
Plug 'fatih/vim-go'
" rust
Plug 'rust-lang/rust.vim'
" auto-formatter
Plug 'Chiel92/vim-autoformat'
" Lint
Plug 'w0rp/ale'
Plug 'arakashic/chromatica.nvim'
" Completer
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'Raimondi/delimitMate'

call plug#end()

" set color scheme
colorscheme gruvbox
set background=dark

" Indent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" mouse support
set mouse=a

" UI Config
set number
set cursorline
set showmatch

" Folding
set foldenable
set foldlevelstart=0
set foldnestmax=10
set foldmethod=indent

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

" Chromatica
let g:chromatica#libclang_path='/usr/local/opt/llvm/lib'
let g:chromatica#enable_at_startup=1

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/local/opt/llvm/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header = '/usr/local/opt/llvm/include'
set completeopt-=preview

" ale linter
let g:ale_linters = {'objc': []}

" add a definition for Objective-C to tagbar
let g:tagbar_type_objc = {
    \ 'ctagstype' : 'ObjectiveC',
    \ 'kinds'     : [
        \ 'i:interface',
        \ 'I:implementation',
        \ 'p:Protocol',
        \ 'm:Object_method',
        \ 'c:Class_method',
        \ 'v:Global_variable',
        \ 'F:Object field',
        \ 'f:function',
        \ 'p:property',
        \ 't:type_alias',
        \ 's:type_structure',
        \ 'e:enumeration',
        \ 'M:preprocessor_macro',
    \ ],
    \ 'sro'        : ' ',
    \ 'kind2scope' : {
        \ 'i' : 'interface',
        \ 'I' : 'implementation',
        \ 'p' : 'Protocol',
        \ 's' : 'type_structure',
        \ 'e' : 'enumeration'
    \ },
    \ 'scope2kind' : {
        \ 'interface'      : 'i',
        \ 'implementation' : 'I',
        \ 'Protocol'       : 'p',
        \ 'type_structure' : 's',
        \ 'enumeration'    : 'e'
    \ }
\ }

