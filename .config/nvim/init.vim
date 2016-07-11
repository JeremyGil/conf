call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'

" js
Plug 'othree/yajs.vim'

" clojure
Plug 'neovim/node-host'
Plug 'snoe/nvim-parinfer.js'
Plug 'guns/vim-sexp'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-fireplace'

" ruby
Plug 'danchoi/ri.vim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rails'

" purescript
Plug 'raichoo/purescript-vim'

call plug#end()

au BufNewFile,BufRead *.boot set filetype=clojure

colo molokai
let $LANG='en'
set number
set list
set listchars=tab:»\ ,trail:-

let mapleader=','
let maplocalleader=','

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

" easymotion
map <Space> <Plug>(easymotion-prefix)

" fugitive
nmap <F9> :Gstatus<CR>

" fzf
let $FZF_DEFAULT_COMMAND = 'pt -g ""'
nmap <C-P> :FZF<CR>

" deoplete
let g:deoplete#enable_at_startup = 1

" NERDTree
nmap <F7> :NERDTreeToggle<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>

" autoformat
nmap <Leader>a :Autoformat<CR>
let g:autoformat_autoindent = 0

" nvim-parinfer
let g:parinfer_airline_integration = 0
