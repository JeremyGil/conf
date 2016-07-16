call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tomasr/molokai'

Plug 'itchyny/lightline.vim'
let g:lightline = {
  \   'component': {
  \     'readonly': '%{&readonly?"":""}'
  \   }
  \ }

Plug 'easymotion/vim-easymotion'
map <Space> <Plug>(easymotion-prefix)

Plug 'tpope/vim-fugitive'
nmap <F9> :Gstatus<CR>

Plug 'mhinz/vim-signify'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
let $FZF_DEFAULT_COMMAND = 'pt -g ""'
nmap <C-P> :FZF<CR>

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
let g:deoplete#enable_at_startup = 1

Plug 'editorconfig/editorconfig-vim'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
nmap <F7> :NERDTreeToggle<CR>

Plug 'scrooloose/nerdcommenter'

Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

Plug 'Chiel92/vim-autoformat'
nmap <Leader>a :Autoformat<CR>
let g:autoformat_autoindent = 0

Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'

" js
Plug 'othree/yajs.vim'

" parinfer
Plug 'neovim/node-host'
Plug 'snoe/nvim-parinfer.js'
let g:parinfer_airline_integration = 0

" clojure
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
Plug 'FrigoEU/psc-ide-vim'
au FileType purescript nmap <leader>t :PSCIDEtype<CR>
au FileType purescript nmap <leader>s :PSCIDEapplySuggestion<CR>
au FileType purescript nmap <leader>a :PSCIDEaddTypeAnnotation<CR>
au FileType purescript nmap <leader>i :PSCIDEimportIdentifier<CR>
au FileType purescript nmap <leader>r :PSCIDEload<CR>
au FileType purescript nmap <leader>p :PSCIDEpursuit<CR>
au FileType purescript nmap <leader>c :PSCIDEcaseSplit<CR>
au FileType purescript nmap <leader>qd :PSCIDEremoveImportQualifications<CR>
au FileType purescript nmap <leader>qa :PSCIDEaddImportQualifications<CR>

call plug#end()

au BufNewFile,BufRead *.boot set filetype=clojure

colo molokai
let $LANG='en'
set tabstop=2
set shiftwidth=2
set expandtab
set number
set list
set listchars=tab:»\ ,trail:-

let mapleader=','
let maplocalleader=','
