set nocompatible
filetype off

" Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'jiangmiao/auto-pairs'
Plugin 'racer-rust/vim-racer'
"Plugin 'shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'sickill/vim-monokai'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fireplace'
Plugin 'luochen1990/rainbow'
Plugin 'iloginow/vim-stylus'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'neoclide/coc.nvim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'itchyny/vim-haskell-indent'
Plugin 'Yggdroot/indentLine'
"Plugin 'vim-scripts/paredit.vim'
"Plugin 'Quramy/tsuquyomi'

call vundle#end()
filetype plugin indent on

" Hybrid line numbers
:set nu rnu
:set autoindent
:set smartindent
:set cursorline
:set encoding=utf-8

" Allow for 256 colors in terminal
let g:rehash256 = 1
" Enable rainbow parens
let g:rainbow_active = 1

syntax enable
colorscheme molokayo
set expandtab
set tabstop=4
set shiftwidth=4

highlight Pmenu ctermbg=black guibg=black
hi CursorLine cterm=NONE ctermbg=black guibg=darkred
" Enable deoplete
let g:deoplete#enable_at_startup = 1
" Disable vimJedi's autocomplete
"let g:jedi#completions_enabled = 0

" Ignore dirs for ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
set completeopt+=preview

" CoC config
let g:coc_global_extensions = [ 'coc-tsserver' ]

" NerdTree conf
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

:set listchars=tab:\|\
:set list
