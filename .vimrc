if has('gui_running')
	au GUIEnter * simalt ~x
	set guifont=Consolas:h12:cANSI
	colorscheme Tomorrow-Night-Bright
else
	colorscheme slate
endif
set nocompatible
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
set laststatus=2
autocmd BufWritePost .vimrc source %
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
filetype plugin indent on
syntax on
set visualbell
set t_vb=
set smartcase
set ignorecase
set incsearch
set hlsearch
set nofoldenable
set number
set noswapfile
set nocp
let mapleader = ","
nmap Q q
nmap ; :
imap jj <Esc>
let g:kolor_italic=1                    " Enable italic. Default: 1
let g:kolor_bold=1                      " Enable bold. Default: 1
let g:kolor_underlined=0                " Enable underline. Default: 0
let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0

map <leader>t :w !make test <CR>
map <leader>tf :w !py.test % <CR>
map <leader><leader> <C-^>


noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
