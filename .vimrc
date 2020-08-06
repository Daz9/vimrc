" To install vimplug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
map <SPACE> <leader>

"
" perl
filetype plugin on
helptags $HOME/.vim/doc/
let g:Perl_Perl = '/usr/bin/perl'
let perl_extended_vars = 1


"=============
"== Plugins ==
"=============

call plug#begin('~/.vim/autoload')
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'henrik/vim-indexed-search'
Plug 'luochen1990/rainbow'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

"====================
"== Basic Settings ==
"====================
syntax on
set nocompatible
set bg=dark
set hls
"set visualbell
set number
set relativenumber
set background=dark
set hidden
set mouse=a
set timeoutlen=1000
set ttimeoutlen=0
set cursorline
set ignorecase
set smartcase
" set clipboard+=unnamed
" set clipboard+=unnamedplus
set showcmd
set cindent
set smartindent
set autoindent
set incsearch
set backspace=indent,eol,start
set encoding=utf-8
set fileencoding=utf-8
set lazyredraw
set splitbelow
set splitright
set scrolloff=10


if &term =~ '256color'
	set t_ut=
endif

" perl
" let perl_extended_vars=1

" tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" folding
set foldmethod=syntax
set foldlevelstart=999
let perl_fold=1
" let javaScript_fold=1
let xml_syntax_folding=1
" let sh_fold_enabled=1
nmap <leader>ff za
" This needs some work
" Currently folds everything then unfolds one level
" Works great for perl modules but not really for JS
nmap <leader>fa zMzr
nmap <leader>fu zR


"==================
"== Key Bindings ==
"==================
" general

" semicolon to colon
nmap ; :

" navigate between buffers
" using Ctrl+Arrow
nnoremap <C-Right> :bn<CR>
vnoremap <C-Right> :bn<CR>
nnoremap <C-Left> :bp<CR>
vnoremap <C-Left> :bp<CR>

" navigate between buffers
" using leader
nnoremap <leader><Right> :bn<CR>
nnoremap <leader><Left> :bp<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bu :bu<CR>

" toggle spell check
nmap <leader>ss :setlocal spell!<CR>

" navigate between windows
" using Shift+Arrow
nmap <silent> <S-Up> :wincmd k<CR>
nmap <silent> <S-Down> :wincmd j<CR>
nmap <silent> <S-Left> :wincmd h<CR>
nmap <silent> <S-Right> :wincmd l<CR>

" Set jj to exit insert mode 
:imap jj <Esc>

" Mouse mode
nnoremap <leader>m :set mouse=<CR>
nnoremap <leader>M :set mouse=a<CR>

" Set colurs
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

colorscheme gruvbox
set background=dark


" Git commit message settings
au FileType gitcommit setlocal tw=72
au FileType gitcommit setlocal cc=+1
hi SpellBad ctermbg=red ctermbg=white guibg=red guifg=white
