if has('gui_running')
	au GUIEnter * simalt ~x
	set guifont=Consolas:h12:cANSI
	colorscheme Tomorrow-Night-Bright
else
	colorscheme slate
endif

set wildmode=longest,list,full
set wildmenu
set nocompatible

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'luochen1990/rainbow'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'
call vundle#end()

filetype plugin indent on

set laststatus=2
set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
color jellybeans

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

syntax on
filetype plugin on
filetype plugin indent on

autocmd BufWritePost .vimrc source %
autocmd FileType hy nmap <F5> :!hy %<cr>
autocmd FileType hy setl shiftwidth=2 tabstop=2
autocmd FileType py setl shiftwidth=4 tabstop=4 softtabstop=4

let mapleader = ","

set visualbell
set t_vb=
set hidden
set smartcase
set showmatch 
set nofoldenable
set hlsearch
set incsearch
set nobackup
set noswapfile
set expandtab
set shiftround
set nocp

imap jj <Esc>

nnoremap ; :
nnoremap j gj
nnoremap k gk

vmap Q gq
nmap Q gqap

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

cmap w!! w !sudo tee % >/dev/null
map <leader>t :w !make test <CR>
map <leader>tf :w !py.test % <CR>
map <leader><leader> <C-^>

let g:kolor_italic=1                    " Enable italic. Default: 1
let g:kolor_bold=1                      " Enable bold. Default: 1
let g:kolor_underlined=0                " Enable underline. Default: 0
let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0

let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'hy': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

let g:airline_right_sep=''
let g:airline_left_sep=''
let g:airline_theme='badwolf'
let g:airline_section_b = airline#section#create('%{virtualenv#statusline()}')

