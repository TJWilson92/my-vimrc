execute pathogen#infect()
call pathogen#helptags()
syntax enable
filetype plugin indent on

let mapleader=","

set history=500
set statusline+=%#warningmsg#
set statusline+=%*

set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set number
set ruler
set cmdheight=2
set hid
set incsearch

set background=dark
colorscheme solarized

set nobackup
set nowb
set noswapfile

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>t<leader> :tabnext

noremap j gj
noremap k gk

map <leader>nt :NERDTree<cr>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
" Opens a new tab with current buffer's path
" Useful when editing files in the same directory


try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

let g:lasttab = 1
nmap<Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()
