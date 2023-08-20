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

function! Skeleton(file)
    if a:file == "c"
        0r ~/.config/nvim/skeletons/c
    elseif a:file == "texarticle"
        0r ~/.config/nvim/skeletons/texarticle
    elseif a:file == "cmakefile"
        0r ~/.config/nvim/skeletons/cmakefile
    endif
    "remover a ultima linha em branco
    normal! G
    normal! dd
    normal! gg
endfunction

command! C :call Skeleton("c")
command! Tex :call Skeleton("texarticle")
command! -narg=1 Make :call Skeleton("cmakefile") | %s/nome_do_projeto/<args>/g

command! CtoH :%s/ {\n\([^}]*\n\)*}/;/

vn <C-y> "+y
nn nt :NERDTree<CR>

filetype plugin indent on
set et
set ts=4 sw=4
set number
set incsearch

call plug#begin()
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'lervag/vimtex'
    Plug 'matsuuu/pinkmare'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

set termguicolors
colorscheme pinkmare

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = ''
let g:airline_symbols.colnr = ':'
au User AirlineAfterInit  :let g:airline_section_z = airline#section#create(['%3p%%  ','linenr','colnr'])
let g:airline_solarized_bg='dark'

let g:vimtex_view_method = 'zathura'

" rodar comandos no startup
autocmd VimEnter * TSEnable highlight
autocmd VimEnter * AirlineTheme base16
