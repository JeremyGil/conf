set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'bufkill.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Shougo/neocomplete.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'derekwyatt/vim-scala'
Plugin 'tfnico/vim-gradle'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
colo molokai
set enc=UTF-8
let $LANG='en'

set guifont=Literation_Mono_Powerline:h12
set guioptions-=m guioptions-=T
set mouse=a

set number
set tabstop=2
set expandtab

set list
set listchars=tab:__,eol:¶

syntax on
set laststatus=2

let mapleader=','

" powerline
set rtp+=$PIP_REPO/powerline/bindings/vim

let g:nerdtree_tabs_open_on_console_startup=1

let g:neocomplete#enable_at_startup = 1

let g:ctrlp_map = '<c-p>'
set wildignore+=*.class

map <Leader> <Plug>(easymotion-prefix)

" tagbar
nmap <F8> :TagbarToggle<CR>

" md to markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
