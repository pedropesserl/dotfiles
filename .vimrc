syntax on

set background=dark
set expandtab
set autoindent

"Workaround no problema do Vim de nao reconhecer a tecla Alt
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

let d='A'
while d <= 'Z'
  exec "set <A-".d.">=\e".d
  exec "imap \e".d." <A-".d.">"
  let d = nr2char(1+char2nr(d))
endw

set timeout ttimeoutlen=50

nnoremap <C-k> K
nnoremap K :-7<CR>
nnoremap L :+7<CR>

nnoremap <A-k> :m-2<CR>==
nnoremap <A-j> :m+<CR>==
inoremap <A-k> <Esc>:m-2<CR>==gi
inoremap <A-j> <Esc>:m+<CR>==gi
vnoremap <A-k> :m '<-2<CR>gv=gv
vnoremap <A-j> :m '>+<CR>gv=gv

nnoremap <A-K> :m-8<CR>==
nnoremap <A-J> :m+7<CR>==
inoremap <A-K> <Esc>:m-8<CR>==gi
inoremap <A-J> <Esc>:m+7<CR>==gi
vnoremap <A-K> :m '<-8<CR>gv=gv
vnoremap <A-J> :m '>+7<CR>gv=gv

filetype plugin indent on
set ts=4 sw=4
set number
set incsearch

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
    if (has("termguicolors"))
    set termguicolors
  endif
endif
