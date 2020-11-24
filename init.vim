call plug#begin('~/.local/share/nvim/plugged')
" colorthemes
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'phanviet/vim-monokai-pro'

" Tookkits
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
" not checked
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " python semantic highlighting
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
Plug 'Yggdroot/LeaderF', {'do': ':LeaderInstallCExtension'}
Plug 'psliwka/vim-smoothie'
call plug#end()

" Basic settings:
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80

let g:neomake_python_enabled_makers = ['pylint']
" call neomake#configure#automake('nrwi',500) "auto lint
" set termguicolors
colorscheme monokai
"set background=dark " use dark mode

" vim-airline
" let g:airline_theme='luna' 
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"
" for LeaderF popup window
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
" Change default keys
let mapleader = " " 
"or <¥space>
"fast save
noremap <leader>w :w<cr>  
noremap <leader>n :NERDTreeToggle<cr>

" terminal mode move as windows
tnoremap <c-j> <c-w><c-j> 
tnoremap <c-k> <c-w><c-k> 
tnoremap <c-l> <c-w><c-l> 
tnoremap <c-h> <c-w><c-h>
" window moves
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
