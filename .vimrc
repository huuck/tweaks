set nocompatible

filetype plugin indent on  
syntax on                  

set number

set list
set listchars   =tab:>-

set autoindent             
set expandtab              
set softtabstop =4         
set shiftwidth  =4         
set shiftround             

set backspace   =indent,eol,start  
set hidden                 
set laststatus  =2         
set display     =lastline  

set mouse       -=0

set showmode               
set showcmd                

set incsearch              
set hlsearch               

set ttyfast                
set lazyredraw             

set splitbelow             
set splitright             

set cursorline             
set wrapscan               
set report      =0         
set synmaxcol   =200       

set list                   
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

if has("gui_running")
    " C-Space seems to work under gVim on both Linux and win32
    inoremap <C-Space> <C-n>
else " no gui
  if has("unix")
    inoremap <Nul> <C-n>
  else
  " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif

set backup
set backupext   =-vimbackup
set backupskip  =
set updatecount =100
set undofile
