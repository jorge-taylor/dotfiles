syntax on

set shortmess+=I
set number
set relativenumber
set laststatus=2
set backspace=indent,eol,start
set hidden
set ignorecase
set smartcase
set incsearch  " Search as you type
set noerrorbells visualbell t_vb=
set mouse+=a  " Enable mouse support
set encoding=utf-8  " YCM Support
set cursorline

nmap Q <Nop>

" Fix tmux font color settings!
" set background=dark

" Change <Leader> key to only require 1 press to start easy motion
map <Leader> <Plug>(easymotion-prefix)

" Create keybinding to open NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" THEMES ----------------------------------------
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts = 1
" -----------------------------------------------
