call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'wakatime/vim-wakatime'
Plug 'pbrisbin/vim-mkdir'
Plug 'Raimondi/delimitMate'
Plug 'arcticicestudio/nord-vim'
Plug 'andweeb/presence.nvim'
Plug 'github/copilot.vim'

call plug#end()

set nu
set relativenumber

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2


map <A-Left> :tabprevious<CR>
imap <A-Left> <ESC>:tabprevious<CR>

map <A-Right> :tabnext<CR>
imap <A-Right> <ESC>:tabnext<CR>

map <C-T> :Texplore<CR>
imap <C-T> <ESC>:Texplore<CR>

map <C-W> :q<CR>
imap <C-W> <ESC>:q<CR>

syntax on
colorscheme nord

function CJKInput()
	let l:cmd = 'zenity --entry --text=CJK-Input 2>/dev/null'
	let l:output = system(l:cmd)
	let l:output = substitute(l:output, '[\r\n]*$', '', '')
	execute 'normal i' . l:output
endfunction

imap <C-Q> <leader>i :call CJKInput()<CR>
