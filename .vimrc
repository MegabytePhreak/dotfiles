
execute pathogen#infect()

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif
syntax on
filetype plugin indent on


" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
colorscheme monokai

if $COLORTERM == 'gnome-terminal'
        set term=gnome-256color
        colorscheme railscasts
endif

if has("win32")
    set guifont=Sauce_Code_Powerline:h9:cANSI
else
    set guifont=Source\ Code\ Pro\ 10
endif


set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

let g:airline_powerline_fonts = 1
let g:session_autosave = 'no'
let mapleader = ","

au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl
au BufNewFile,BufRead *.cl set filetype=opencl

set number

