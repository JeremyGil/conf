set nocompatible

set rtp+=/usr/local/share/lilypond/2.18.2/vim/

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tomasr/molokai'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Shougo/neocomplete.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-sexp'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
Plug 'bhurlow/vim-parinfer'
Plug 'LaTeX-Box-Team/LaTeX-Box'
call plug#end()

colo molokai
let $LANG='en'
set number
set list
set listchars=tab:»\ ,trail:-

set hlsearch

let mapleader=','
let maplocalleader=','

" powerline
set rtp+=$PIP_REPO/powerline/bindings/vim

" easymotion
map <Space> <Plug>(easymotion-prefix)

" fugitive
nmap <F9> :Gstatus<CR>

" fzf
let $FZF_DEFAULT_COMMAND = 'pt -g ""'
nmap <C-P> :FZF<CR>

let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_auto_close_preview=1

" NERDTree
nmap <F7> :NERDTreeToggle<CR>

" autoformat
nmap <Leader>a :Autoformat<CR>
let g:autoformat_autoindent=0

" clojure-static
let g:clojure_align_subforms=1

" vi: se et ts=2 sw=2:
