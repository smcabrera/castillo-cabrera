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
  " Ends certain structures automatically--like end after if in ruby
  Bundle 'tpope/vim-endwise'
  " Lets you repeat plugins like surround
  Bundle 'tpope/vim-repeat'
  " use git without leaving vim, see link below:
  " http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/
  Bundle 'tpope/vim-fugitive'
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
  " Rails.vim enough said
  Bundle 'tpope/vim-rails'
  " Colors available by bundle to be cycled through later
  Bundle 'tomasr/molokai'
  " ctags
  "Bundle 'fishman/ctags'
  " Show tags in a sidebar
  "Bundle 'majutsushi/tagbar'
  "Markdown highlighting
  Bundle 'hallison/vim-markdown'

"============================================================
"==  Colors
"============================================================
" I plan to make a bunch of different colors available here and uncomment the ones I want

"colorscheme jellybeans
"colorscheme Tomorrow-Night-Bright
"colorscheme Tomorrow-Night-Eighties

" The popular Molokai theme
"let g:molokai_original = 1
"let g:rehash256 = 1

" Good old desert
colorscheme desert
"============================================================
"==  Settings
"============================================================

set relativenumber
" Make spaces when you press tab
	set expandtab
" For Ruby, could make this language dependent if I start writing more python
set shiftwidth=2
set tabstop=2
set encoding=utf-8
"I turned out not to like this very much...set cursorline
set noswapfile
set smartcase

" Making things easier for writing
  " not to break on words
  :set wrap
  :set formatoptions=l
  :set linebreak
  :set nolist
  :set breakat=\ |@-+;:,./?^I

  " move through lines on the screen instead of line numbers
  nnoremap j gj
  nnoremap k gk
  vnoremap j gj
  vnoremap k gk

" Work with long lines properly
set textwidth=79
set formatoptions=qrn1
"Nice feature but too ugly...set colorcolumn=85

" Auto change the directory to the current file I'm working on
autocmd BufEnter * lcd %:p:h


"When you lose focus on the screen it saves automatically
au FocusLost * :wa

" Allowing .md files to be treated as markdown
au BufRead,BufNewFile *.md set filetype=markdown

"============================================================
"==  Mappings
"============================================================

let mapleader= " "

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
nmap <Tab> > <C>
nmap <S-Tab> < <C>

"============================================================
"==  NERDTree
"============================================================

nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
" When NERDTree is the only buffer left, close it
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"============================================================
"==  Scratch
"============================================================
"
" Plugin that lets you create a temporary scratchpad
" open with
nnoremap <leader>s :Scratch<CR>

"============================================================
"==  Tagbar
"============================================================

nmap <F8> :TagbarToggle<CR>

"============================================================
"==  Fugitive
"============================================================
" Use git within vim--I've remapped common commands using leader key
nnoremap <leader>gs :Gstatus <CR>
" git add current_file
nnoremap <leader>ga :Gwrite <CR>
nnoremap <leader>gc :Gcommit <CR>
nnoremap <leader>gr :Gcommit <CR>

