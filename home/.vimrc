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
  "Bundle 'kien/ctrlp.vim'
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
  " Make gvim-only colorschemes work transparently in terminal vim
  "Bundle 'godlygeek/csapprox'
  " Allows you to toggle seeing the color of hex values when in graphical vim
  Bundle 'vim-scripts/hexHighlight.vim'

  " Use rspec within vim
  Bundle 'thoughtbot/vim-rspec'

  " Now you have two options for using Rspec in vim, both of which I've
  " included mappings to in the Rspec section
  " Try these both out and see what works best for you

  " Send commands to a new tmux window
  Bundle 'jgdavey/tslime.vim'
  " Show tests within vim
  Bundle 'tpope/vim-dispatch'


"============================================================
"==  Color Bundles
"============================================================
"Bundle 'altercation/vim-colors-solarized'

"============================================================
"==  Colors
"============================================================
" I plan to make a bunch of different colors available here and uncomment the ones I want

"let g:molokai_original = 1
"let g:rehash256 = 1

"let g:solarized_termcolors=256
colorscheme desert
"colorscheme molokai

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
"set textwidth=79
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
" Indent with tab in normal mode
nmap <Tab> > <C>
nmap <S-Tab> < <C>

"============================================================
"==  Leader Mappings
"============================================================

" Automatically install or update vim plugins with vundle
nnoremap <leader>bi :BundleInstall<CR>
nnoremap <leader>bu :BundleUpdate<CR>

" Run the current file in the ruby console
nmap <leader>rs :w <CR> :!ruby %<CR>
nmap <leader>q :q<CR>
nmap <leader>x :q<CR>

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

" Show highlighting groups for current word
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"============================================================
"==  Rspec
"============================================================

"let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
let g:rspec_command = "Dispatch rspec {spec}"

" vim-rspec mappings
map <leader>ts :call RunCurrentSpecFile() <CR>
map <leader>ss :call RunNearestSpec() <CR>
map <leader>ls :call RunLastSpec() <CR>
map <leader>as :call RunAllSpec() <CR>

"============================================================
"==  Typos
"============================================================
nmap :W :w
nmap :Q :q

"============================================================
"==  Editing vimrc on the fly
"============================================================
" ht: episode 24 of vimcasts

"Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" And always let me open vimrc in a new tab whenever I want to
nmap <leader>v :tabedit $MYVIMRC<CR>
