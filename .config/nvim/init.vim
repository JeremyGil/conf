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
call plug#end()

let $LANG='en'
set number
set list
set listchars=tab:»\ ,trail:-
colo molokai

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1

" easymotion
map <Space> <Plug>(easymotion-prefix)

" fugitive
nmap <F9> :Gstatus<CR>

" fzf
nmap <C-P> :FZF<CR>

" deoplete
let g:deoplete#enable_at_startup = 1

" NERDTree
nmap <F7> :NERDTreeToggle<CR>
