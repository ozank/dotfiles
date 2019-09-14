""Ozan'in vim configurasyon dosyasi

" Plugins will be downloaded under the specified directory.
" https://github.com/junegunn/vim-plug/wiki/tutorial
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex'

" https://castel.dev/post/lecture-notes-1/
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


set nocompatible
syntax on  "Enables syntax highlighting for programming languages
filetype on "Detect file type
filetype indent on "Enable indent for file type

set number	"show line numbers
set ruler

set nobackup  "no back-up file

set showmatch "Highlights matching brackets in programming languages
set backspace=2  "This makes the backspace key function like it does in other programs.
colorscheme desert  "Changes the color scheme. Change this to your liking. Lookin /usr/share/vim/vim61/colors/ for options.
set background=dark

"Search komutlari
set hlsearch	"Highlight searches
set ignorecase  "Case insensitive search
set incsearch	"Incremental Search

"Spelling
set spell
setglobal spell spelllang=en_gb

"Font Size
 set guifont=Monospace\ 11

"Set leader to comma
"let mapleader = ","

"Word wrap
set wrap
set linebreak

"No beep sound
set vb

"No folding (disabled to test f9 reference completion
"set nofoldenable

"clear search buffer when pressed ,/
nmap <silent> ,/ :nohlsearch<CR>

"Insert space in normal mode
:nnoremap <Space> i<Space><Esc>

"Enter normal mode with jj
inoremap jj <ESC>

"hjk move in line wrap
"fix vim annoyances
"http://blog.sanctum.geek.nz/vim-annoyances/
nnoremap j gj
nnoremap k gk


"Latex Suite Auto Complete and other settings
"http://vim-latex.sourceforge.net/documentation/latex-suite/recommended-settings.html
"filetype plugin on
"set shellslash
"let g:tex_flavor='latex'
"set grepprg=grep\ -nH\ $*
"set sw=2
"let g:Tex_Folding=0 "I don't like folding.
"set iskeyword+=
"
"
"SAVE KISAYOLLAR
"focus kaybolunca autosave yap
"gecici olarak devre disi birakildi
":au FocusLost * silent! wa
"save with HOME in insert mode
:inoremap <HOME> <c-o>:w<cr>


