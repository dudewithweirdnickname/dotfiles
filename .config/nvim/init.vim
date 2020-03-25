syntax on
set number relativenumber
filetype plugin on





" map <Space> <@>

" plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'mcchrish/nnn.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let loaded_netrwPlugin = 1
let g:nnn#layout = { 'left': '~20%' }
let g:nnn#replace_netrw = 1

" coc
"inoremap <silent><expr> <SPACE><TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
