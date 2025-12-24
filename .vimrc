set nocompatible
set number
syntax on
set backspace=indent,eol,start
set laststatus=2
set mouse=a
set colorcolumn=81


let &t_SI = "\e[5 q"    " changes curor to thin line on insert
let &t_EI = "\e[1 q"    " changes cursor to block on insert end

" Enable code folding
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" zo to open fold
"PLUGINS {{{
call plug#begin()

"My list of Plugins here using Plug command

Plug 'https://github.com/dracula/vim.git'
Plug 'https://github.com/morhetz/gruvbox.git'

Plug 'https://github.com/tpope/vim-fugitive.git'


" Bracket Closer
Plug 'https://github.com/rstacruz/vim-closer.git'
" Better Vim Homescreen
Plug 'https://github.com/mhinz/vim-startify.git'
" File Sidebar
Plug 'https://github.com/preservim/nerdtree.git'
" Linter
Plug 'https://github.com/dense-analysis/ale.git'

Plug 'https://github.com/junegunn/vim-peekaboo.git'


call plug#end()

"}}}
"COLORS {{{
colorscheme gruvbox
set background=dark
let g:gruvbox_termcolors=2

" Enable TrueColor Support
if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"}}}
