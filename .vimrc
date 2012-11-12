set fileencodings=utf8,gb2312,gbk,gb18030
set termencoding=utf8
set fileformats=unix
set encoding=utf8


set nocompatible
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nocp
filetype plugin on
set history=0
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set nobackup
set shiftwidth=4
set cinoptions=(0,:0
set expandtab
set uc=0        "do not use swap file when editing
set nu

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  set t_Co=256
endif

if has("autocmd")
  filetype plugin indent on
  autocmd FileType text setlocal tabstop=4
  autocmd FileType text setlocal textwidth=78
  autocmd FileType html setlocal shiftwidth=2
  autocmd FileType xml setlocal shiftwidth=2
else
  set autoindent		" always set autoindenting on
endif

if has("gui_running")
    set guifont=Monaco\ 9
    colorscheme railscasts
else
    colorscheme calmar256-dark
endif

"settings for taglist
nnoremap <silent> <F5> :TlistToggle<CR>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window=1

" --- netrwin ----- 
"let loaded_netrw = 1
"let g:defaultExplorer = 0
 let g:netrw_winsize = 30
"map <silent> <leader>fe :Sexplore!<cr>

""""""""""""""""""""""""""""
" winManager  setting
""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
"let g:defaultExplorer = 1

nmap <C-W><C-F>  :FirstExplorerWindow<cr>
nmap <C-W><C-B>  :BottomExplorerWindow<CR>
nmap <silent> <leader>wm :WMToggle<CR>

""""""""""""""""""""""""""""
" Mojolicious
" https://github.com/yko/mojo.vim
"""""""""""""""""""""""""""
let mojo_highlight_data = 1
let mojo_disable_html = 0
let mojo_no_helpers = 0
