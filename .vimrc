" call plug#begin()
" Plug 'ghifarit53/tokyonight-vim'
" call plug#end()

filetype plugin indent on
syntax on

set number relativenumber
set numberwidth=4

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set smartcase
set ignorecase
set hlsearch

set scrolloff=4
set sidescrolloff=8

set nowrap
set breakindent
set formatoptions=l
set lbr

set title

if (has("termguicolors"))
    set termguicolors
endif

" let g:tokyonight_style = 'night'
" let g:tokyonight_enable_italic = 1
"
" colorscheme tokyonight

set spell
set spelllang=en_us

hi clear SpellBad
hi clear SpellCap

hi SpellBad cterm=undercurl ctermfg=NONE guifg=NONE guisp=red gui=undercurl
hi SpellCap cterm=undercurl ctermfg=None guifg=NONE guisp=blue gui=undercurl

" Styled and colored underline support
let &t_AU = "\e[58:5:%dm"
let &t_8u = "\e[58:2:%lu:%lu:%lum"
let &t_Us = "\e[4:2m"
let &t_Cs = "\e[4:3m"
let &t_ds = "\e[4:4m"
let &t_Ds = "\e[4:5m"
let &t_Ce = "\e[4:0m"

" Strikethrough
let &t_Ts = "\e[9m"
let &t_Te = "\e[29m"

" Truecolor support
let &t_8f = "\e[38:2:%lu:%lu:%lum"
let &t_8b = "\e[48:2:%lu:%lu:%lum"
let &t_RF = "\e]10;?\e\\"
let &t_RB = "\e]11;?\e\\"

" Bracketed paste
let &t_BE = "\e[?2004h"
let &t_BD = "\e[?2004l"
let &t_PS = "\e[200~"
let &t_PE = "\e[201~"

" Cursor control
let &t_RC = "\e[?12$p"
let &t_SH = "\e[%d q"
let &t_RS = "\eP$q q\e\\"
let &t_SI = "\e[5 q"
let &t_SR = "\e[3 q"
let &t_EI = "\e[1 q"
let &t_VS = "\e[?12l"

" Focus tracking
let &t_fe = "\e[?1004h"
let &t_fd = "\e[?1004l"
execute "set <FocusGained>=\<Esc>[I"
execute "set <FocusLost>=\<Esc>[O"

" Window title
let &t_ST = "\e[22;2t"
let &t_RT = "\e[23;2t"

let &t_ut=''

autocmd BufWritePre * %s/\s\+$//e

