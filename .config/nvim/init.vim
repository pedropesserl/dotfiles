nn <C-k> K
nn K :-7<CR>
nn J :+7<CR>
vn K :-7<CR>
vn K :+7<CR>

nn <A-j> :m+<CR>==
nn <A-k> :m-2<CR>==
ino <A-k> <Esc>:m-2<CR>==gi
ino <A-j> <Esc>:m+<CR>==gi
vn <A-j> :m '>+<CR>gv=gv
vn <A-k> :m '<-2<CR>gv=gv

nn <A-K> :m-8<CR>==
nn <A-J> :m+7<CR>==
ino <A-K> <Esc>:m-8<CR>==gi
ino <A-J> <Esc>:m+7<CR>==gi
vn <A-K> :m '<-8<CR>gv=gv
vn <A-J> :m '>+7<CR>gv=gv

vn <C-y> "+y
nn nt :NERDTree<CR>

filetype plugin indent on
set et
set ts=4 sw=4
set number
set incsearch

call plug#begin()
    Plug 'scrooloose/nerdtree'      "arvore de arquivos
    Plug 'morhetz/gruvbox'          "tema
    Plug 'tpope/vim-commentary'	    "comentarios
    Plug 'tpope/vim-fugitive'       "git
    Plug 'vim-airline/vim-airline'  "barra bonita
    Plug 'ms-jpq/coq_nvim'          "autocomplete
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
    Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
    Plug 'lervag/vimtex'            "vimtex
call plug#end()

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
    if (has("termguicolors"))
    set termguicolors
  endif
endif
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = ''
let g:airline_symbols.colnr = ':'
au User AirlineAfterInit  :let g:airline_section_z = airline#section#create(['%3p%%  ','linenr','colnr'])

let g:vimtex_view_method = 'zathura'

autocmd VimEnter * COQnow -s
