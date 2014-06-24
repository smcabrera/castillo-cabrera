"Make vim not compatible with vi--because you didn't really need that did you?
set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"============================================================
"==  My Plugins/Bundles
"============================================================

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Personal list of plugins
  " Lets you surround text with tags or quotes
  Bundle 'tpope/vim-surround'
  " Lets you repeat plugins like surround
  Bundle 'tpope/vim-repeat'
  " File tree
  Bundle 'scrooloose/nerdtree'
  " Shows you syntax errors when you save
  Bundle 'scrooloose/syntastic'
  " Makes parentheses, brackets, etc. prettier
  Bundle 'kien/rainbow_parentheses.vim'
  " Fuzzy search (command t is another option)
  Bundle 'kien/ctrlp.vim'
  " Gives you a temporary scratch pad
  Bundle 'mtth/scratch.vim'
  " Autocompletes stuff in insert mode with tab
  Bundle 'ervandew/supertab'
  " Gives you useful code snippets from tab
  Bundle 'MarcWeber/vim-addon-mw-utils'
  Bundle 'tomtom/tlib_vim'
  Bundle 'garbas/vim-snipmate'
  Bundle 'honza/vim-snippets'
  "Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
  Bundle 'bronson/vim-trailing-whitespace'

"============================================================
"==  Colors
"============================================================

"colorscheme jellybeans
"colorscheme Tomorrow-Night-Bright
"colorscheme Tomorrow-Night-Eighties
colorscheme desert


" I plan to make a bunch of different colors available here and uncomment the ones I want


"============================================================
"==  Settings
"============================================================

set relativenumber
set shiftwidth=2
" Making things easier for writing

" not to break on words
:set wrap
:set formatoptions=l
:set linebreak
:set nolist
:set breakat=\ |@-+;:,./?^I

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
" Auto change the directory to the current file I'm working on
autocmd BufEnter * lcd %:p:h


"When you lose focus on the screen it saves automatically
au FocusLost * :waP
"============================================================
"==  Mappings
"============================================================

let mapleader=","

" Automatically install or update vim plugins with vundle
nnoremap <leader>bi :BundleInstall<CR>
nnoremap <leader>bu :BundleUpdate<CR>

" Make escape easier:
imap jk <ESC>

" Make fixing whitespace faster
nmap :fw :FixWhitespace

" I would use this but I'm concerned about overwriting what ; does by default
"nmap ; :

"removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
"Also fix whitespace every time you do this

" Insert new lines without moving into insert mode
nnoremap gO O <ESC> :FixWhitespace <CR>
nnoremap <leader>go o <ESC> 2k :FixWhitespace <CR>
" k :FixWhitespace <CR>

"============================================================
"==  NERDTree
"============================================================

nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
" When NERDTree is the only buffer left, close it
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


