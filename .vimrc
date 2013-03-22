" Auto Folds
fWinLeave * mkview
au BufWinEnter * silent loadview
""au BufWinEnter silent loadview

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif


" Font
set guifont="Bitstream\ Vera\ Sans\ Mono\ 18"


" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Last Save Position
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif


" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd  	" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
"set vs=2

" Quicksave Command
noremap <c-z> :update<CR>
vnoremap <c-z> :update<CR>
inoremap <c-z> :update<CR>



" Split Movement
" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" easier moving of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation


" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" Showing line numbers and length
set number " show line numbers
set tw=79  " width of focument (used by gd)
"set nowrap " don't automatically wrap on load
"set fo-=t " don't automatically wrap text when type
"set colorcolumn=80
"rightlight ColorColumn ctermbg=233


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable Backups
" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


" Pathogen
" heard I need these for pathogen from
"samirkseth.blogspot.com/2010/08/setting-up-vim-on-ubuntu.html<br>
filetype off
"call pathogen#runtime_append_all_bundles()
call pathogen#incubate()
syntax on
filetype plugin indent on


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
