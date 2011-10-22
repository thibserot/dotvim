call pathogen#infect()
call pathogen#helptags()

set hidden
set number
set vb t_vb=
set ts=4 sts=4 sw=4 expandtab
syntax on
map <F7> :source ~/.vimrc<CR>

let mapleader = ','
if exists(":Tabularize")
  nmap <leader>a= :Tabularize /=<CR>
  vmap <leader>a= :Tabularize /=<CR>
  nmap <leader>a: Vi}:Tabularize /:\zs<CR>
  vmap <leader>a: Vi}:Tabularize /:\zs<CR>
endif

if has("autocmd")
    filetype plugin indent on
endif

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP

" You might also find this useful
" PHP Generated Code Highlights (HTML & SQL)

let php_sql_query=1
let php_htmlInStrings=1

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif


"set shiftwidth=4
"set tabstop=4
"set softtabstop=4
"set expandtab
"set autoindent
"set smartcase
"set smartindent
"set incsearch
"set laststatus=2
"set statusline=%<%f\ %h%m%r[%{(&fenc==\"\"?&enc.\"\*\":&fenc)}]%=\ %-(%l,\ %c%V%)\ \ \ \ \ %P
"set ignorecase
"set icon
"set title
"set nu
"set backspace=indent,start,eol
"set showbreak=""
"set foldmethod=syntax
"set foldlevel=99
"syntax on
"map cc <space>bcw
"map OB gj
"map OA gk
"map Å ½
"map ²hex :%!xxd
"
"map ²nohex :%!xxd -r
"
"map ²noro :!chmod u+w *
"
"
"map ²n :n <C-R>=expand("%:p:h") . "/" <CR>
"map ²r :r <C-R>=expand("%:p:h") . "/" <CR>
"map ²w :w <C-R>=expand("%:p:h") . "/" <CR>
"map ²e :e <C-R>=expand("%:p:h") . "/" <CR>
"map ²sp :sp <C-R>=expand("%:p:h") . "/" <CR>
"map <F2> qq
"map <F3> q
"map <F4> @q
"map <F5> :redraw!
"
"map <F7> :source ~/.vimrc
"
"map <F9> <c-w><c-w>:q
"
"inoremap ² <c-p>
"inoremap <c-b> <c-w>
"inoremap <c-w> <c-w>
colorscheme torte
