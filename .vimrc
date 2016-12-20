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

Plug 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1

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
Plug 'bhurlow/vim-parinfer'

" clojure
Plug 'guns/vim-sexp'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-fireplace'

" haskell
Plug 'neovimhaskell/haskell-vim'
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'eagletmt/ghcmod-vim'
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>
Plug 'eagletmt/neco-ghc'
let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }

" ruby
Plug 'danchoi/ri.vim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rails'

" coffeescript
Plug 'kchmck/vim-coffee-script'

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

" elm
Plug 'elmcast/elm-vim'
Plug 'bitterjug/vim-tagbar-ctags-elm'

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

" fix clipboard w/ macOS Sierra
set clipboard=unnamed
