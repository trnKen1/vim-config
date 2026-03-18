set nocompatible
set number
syntax on
set backspace=indent,eol,start
set mouse=a

set autoread
autocmd FocusGained,BufEnter * :checktime

set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set laststatus=2
set colorcolumn=81
set textwidth=80
let &t_SI = "\e[5 q"    " changes curor to thin line on insert
let &t_EI = "\e[1 q"    " changes cursor to block on insert end

" Highlight functions
syn match cUserFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1
hi def link cUserFunction Function
hi Function ctermfg=cyan guifg=#00ffff

" Enable code folding
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

"start with split editor & terminal side-by-side
autocmd VimEnter * vertical terminal
set splitright
"ctrl-t as the shortcut to split instead of :vert term
nnoremap <C-t> :vertical terminal<CR>

" zo to open fold
"PLUGINS {{{
" Default '~/vimfiles/plugged'
call plug#begin()
Plug 'https://github.com/tomasiser/vim-code-dark.git'
"Plug 'https://github.com/morhetz/gruvbox.git'
"Plug 'https://github.com/nanotech/jellybeans.vim.git'

"My list of Plugins here using Plug command
Plug 'https://github.com/tpope/vim-fugitive.git'
" Bracket Closer
Plug 'https://github.com/rstacruz/vim-closer.git'
" Better Vim Homescreen
Plug 'https://github.com/mhinz/vim-startify.git'
" File Sidebar
Plug 'https://github.com/preservim/nerdtree.git'
" Linter
Plug 'https://github.com/dense-analysis/ale.git'
"
Plug 'https://github.com/junegunn/vim-peekaboo.git'

call plug#end()

"}}}

"COLORS {{{

"let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_improved_strings = 1
"let g:gruvbox_termcolors = 16

"colorscheme codedark
set background=dark

"}}}

"NERDTree {{{
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
"}}}

"ALE Lint Settings
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

"In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}
