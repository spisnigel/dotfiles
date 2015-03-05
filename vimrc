" Strongly inspired by:
"   http://nvie.com/posts/how-i-boosted-my-vim/
"   http://stevelosh.com/blog/2010/09/coming-home-to-vim

" This must be first, because it changes other options as a side effect
set nocompatible

set encoding=utf-8
set termencoding=utf-8

" prevent some security exploits linked to modelines
set modelines=0

" Use pathogen to easily modify the runtime path to include all plugins under
" the ~/.vim/bundle directory
"
" The commands used here are those given by Tim Pope on his Pathogen pages:
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" enable syntax highlighting
let g:solarized_italic=0
let g:solarized_termtrans=1
syntax enable

" use the beautiful 'Solarized' colors:
"   http://ethanschoonover.com/solarized
set background=dark
colorscheme solarized

" enable the loading of filetype-specific plugins
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

" change the mapleader from \ to ,
let mapleader=","

" using the mapleader remapping, make ',ev' and ',sv' edit and reload .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" hide buffers instead of closing them -- unwritten changes don't need to be
" written, undo buffers and marks are preserved
set hidden

set nobackup " disable '70ies style backup files
set noswapfile " should have enough memory to be able to work without one

" prevent VIM from trying to re-format text which is being pasted in
set pastetoggle=<F2>

" tab behavior -- for a good discussion on the relationship between tabstop,
"  shiftwith, expandtab, and softtabstop,
"  see http://vimcasts.org/episodes/tabs-and-spaces/
set tabstop=8   " a tab is historically eight spaces
set shiftwidth=4 " number of spaces to use for autoindenting
set shiftround  " use multiple of shiftwidth when indenting with '<' and '>'
set softtabstop=4
set expandtab
set smarttab    " insert tabs on the start of a line according to
                "    shiftwidth, not tabstop

set backspace=indent,eol,start
                " allow backspacing over everything in insert mode
set autoindent  " always set autoindenting on
set copyindent  " copy the previous indentation on autoindenting
set norelativenumber        " show relative line numbers
set showmatch   " set show matching parenthesis
set lazyredraw  " don't update the display while executing macros

set scrolloff=3 " show some lines of context when scrolling 
set laststatus=2  " always show buffer name and status
set ruler

" search and replace options {{{
"   use regular regexes instead of vim regexes
"set gdefault    " by default, assume global replace, not first match
"nnoremap / /\v
"vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %
"set ignorecase  " ignore case when searching
"set smartcase   " ignore case if search pattern is all lowercase,
                "    case-sensitive otherwise
set hlsearch    " highlight search terms
set noincsearch   " don't show search matches as you type
"   clear search highlighting with ',<space>' (no more searching for frogs)
nnoremap <leader><space> :noh<cr>
" }}}

" long line handling options {{{
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=81
" }}}

" if you want formatting characters to be visible, enable these line {{{s
"set list
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·,eol:¬
" }}}

" get rid of the help key. If I need help, I'll ask for it {{{
inoremap <F1> <nop>
vnoremap <F1> <nop>
nnoremap <F1> <nop>
" }}}

" while we're at it, let's be strict about using hjkl to move around {{{
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
" }}}
"
"  make j and k work with screen lines instead of file lines {{{
"nnoremap j gj
"nnoremap k gk
" }}}

set visualbell
set noerrorbells

" Quickly get out of insert mode without your fingers having to leave the
" home row (either use 'jj' or 'jk')
inoremap jj <Esc>

" Set the completion style to better match that of bash, with a
" little extra.
" http://stackoverflow.com/questions/526858/how-do-i-make-vim-do-normal-bash-like-tab-completion-for-file-names
set wildmode=longest,list,full
set wildmenu

