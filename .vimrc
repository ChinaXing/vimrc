set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
set encoding=utf8
set laststatus=2                " always show statusline "
set nocompatible
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set history=1
set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands
set incsearch                   " do incremental searching
set nobackup
set shiftwidth=4                " autoindent witespace width      
set uc=0                        " do not use swap file when editing
set nu                          " show line number "
set expandtab                   " expand TAB to white space "

filetype plugin on

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
  set autoindent        " always set autoindenting on
endif

colorscheme calmar256-dark

"""""""""""""""""""""""""""
" settings for taglist
"""""""""""""""""""""""""""
nnoremap <silent> <F5> :TlistToggle<CR>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window=1

"""""""""""""""""""""""""""
" netrwin 
"""""""""""""""""""""""""""
let g:netrw_winsize = 30

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
