let g:python3_host_prog = substitute(system('which python3'),"\n","","")

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#min#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Load external toml files
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


" If you have vim >=8.0 or Neovim >= 0.1.5
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme PaperColor
set background=dark
let g:lightline['colorscheme'] = 'PaperColor'

highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE

set imdisable
set number
set cursorline
set cursorcolumn
set laststatus=2
set showmatch
set list
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮
set backspace=indent,eol,start
set foldmethod=marker
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set mouse=a
set sidescrolloff=2

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

nnoremap Y y$

nmap + <C-a>
nmap - <C-x>

let mapleader = "\<Space>"
nnoremap <silent> <Leader>s :split<CR>
nnoremap <silent> <Leader>v :vsplit<CR>

nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>w <C-w>w

nnoremap <Leader>H <C-w>H
nnoremap <Leader>J <C-w>J
nnoremap <Leader>K <C-w>K
nnoremap <Leader>L <C-w>L
nnoremap <Leader>R <C-w>R

nnoremap <Leader>o <C-w><Bar><C-w>_
nnoremap <Leader>= <C-w>=
nnoremap <Leader>> <C-w>>
nnoremap <Leader>< <C-w><
nnoremap <Leader>+ <C-w>+
nnoremap <Leader>- <C-w>-

nnoremap <silent> <Leader>t :tabnew<CR>
nnoremap <Leader>n gt
nnoremap <Leader>p gT

nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>Q :bd<CR>

