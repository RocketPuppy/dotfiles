set nocompatible
set shiftwidth=4
set background=dark
set autoindent
" set smartindent
set tabstop=4
set softtabstop=4
set showmatch
set ruler
set incsearch
set ignorecase
set smartcase
set number
set numberwidth=3
set expandtab
set scrolloff=10
set showcmd
set novisualbell
set noerrorbells
set tw=0
set wm=0
set switchbuf+=usetab,newtab
set foldmethod=indent
set clipboard=unnamedplus
" Status line
set laststatus=2
set statusline=
set statusline+=%F
set statusline+=%h%m%r%w
set statusline+=%=
set statusline+=%-14(%l,%c%V%)
set statusline+=%{'Buf_'}
set statusline+=%-5.3n
set statusline+=%<%P
" end status line
" Show trailing whitespace
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.
set relativenumber
set number

set backspace=indent,eol,start

set clipboard=unnamedplus

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

autocmd QuickFixCmdPost *grep* cwindow
au BufEnter *.rb setl sw=2 sts=2 et ts=2
au BufEnter *.feature setl sw=2 sts=2 et ts=2
au BufEnter *.js setl sw=2 sts=2 et ts=2
au BufEnter *.jsx setl sw=2 sts=2 et ts=2
au BufEnter *.coffee setl sw=2 sts=2 et ts=2
au BufEnter *.yml setl sw=2 sts=2 et ts=2
au BufEnter *.html setl sw=2 sts=2 et ts=2
au BufEnter *.html.erb setl sw=2 sts=2 et ts=2
au BufEnter *.md setl sw=2 sts=2 et ts=2 tw=80 syntax=false spell spelllang=en_us
au BufEnter *.markdown setl sw=2 sts=2 et ts=2 tw=80 syntax=false spell spelllang=en_us
au BufEnter *.adt set filetype=adt

execute pathogen#infect()
syntax enable
filetype plugin on
filetype plugin indent on

let NERDChristmasTree=1
let NERDTreeHighlightCursorLine=1
let NERDTreeHijackNetrw=1
