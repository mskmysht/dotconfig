let g:python3_host_prog = substitute(system('which python3'),"\n","","")

"Dein.vim configuration

let $CACHE = expand('~/.cache')
if !isdirectory($CACHE)
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dein_dir = fnamemodify('dein.vim', ':p')
  if !isdirectory(s:dein_dir)
    let s:dein_dir = $CACHE . '/dein/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
  endif
  execute 'set runtimepath^=' . substitute(
        \ fnamemodify(s:dein_dir, ':p') , '[/\\]$', '', '')
endif

" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set dein base path (required)
let s:dein_base = '~/.cache/dein/'

" Set dein source path (required)
let s:dein_src = '~/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
"
" Load external toml files
call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

" Finish dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


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

augroup vimrc
  autocmd! 
  autocmd Filetype gitconfig \
    setlocal noexpandtab softtabstop=4 shiftwidth=4 tabstop=4
  autocmd Filetype gitcommit \
    setlocal expandtab   softtabstop=2 shiftwidth=2 tabstop=2
  autocmd Filetype gitcommit \
    setlocal spell
  autocmd Filetype rust \
    setlocal expandtab softtabstop=4 shiftwidth=4 tabstop=4 matchpairs+=<:>
  " autocmd Filetype javascript setlocal expandtab   softtabstop=4 shiftwidth=4 tabstop=4
  " autocmd Filetype typescript setlocal expandtab   softtabstop=4 shiftwidth=4 tabstop=4
  " autocmd Filetype javascript,typescript inoremap <buffer> <C-CR> <End>;<CR>
  " autocmd Filetype javascript,typescript inoremap <buffer> jk <End>;
  " autocmd Filetype help                  nnoremap <buffer> q ZZ
augroup END

set tabstop=2
set shiftwidth=2
