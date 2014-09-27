"Make vim not compatible with vi--because you didn't really need that did you?
set nocompatible
filetype off

"============================================================
"==  Plugins: NeoBundle
"============================================================
" Another package manager. I know.
" It looks like it works better with some of Shougo's plugins which
" I'm experimenting with.

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

  "========================
  "==  Installing vimproc
  "========================

NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

" Bundles here
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'tommcdo/vim-exchange' " Easy swapping two areas of text with cx + motion
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'wikitopian/hardmode'
NeoBundle 'kien/ctrlp.vim' "Fuzzy search (command t is another option)
NeoBundle 'chrisbra/NrrwRgn'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'pangloss/vim-javascript' " adds sensible highlighting for javascript
NeoBundle 'mmalecki/vim-node.js' "File type detect plugin for vim which detects node.js shebang
NeoBundle 'tpope/vim-git' "Vim Git runtime files
NeoBundle 'ap/vim-css-color' "Highlight colors in css files
" Let Vundle manage Vundle
NeoBundle 'gmarik/Vundle.vim'
NeoBundle 'tpope/vim-surround' "Surround texts with tags or quotes
NeoBundle 'tpope/vim-endwise' "Ends certain structures automatically--like 'end' in ruby
NeoBundle 'tpope/vim-repeat' "Repeat plugins like surround
NeoBundle 'tpope/vim-fugitive' "Use git without leaving vim, see link
NeoBundle 'scrooloose/nerdtree' "File tree
NeoBundle 'scrooloose/syntastic' "Shows you syntax errors when you save
NeoBundle 'ervandew/supertab' "Autocompletes stuff in insert mode with tab
NeoBundle 'MarcWeber/vim-addon-mw-utils' "Gives you useful code snippets from tab
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'
NeoBundle 'bronson/vim-trailing-whitespace' "Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
NeoBundle 'tpope/vim-rails' "Rails.vim: incredibly useful plugin for working with rails code
NeoBundle 'tomasr/molokai' "Colors available by bundle to be cycled through later
NeoBundle 'fishman/ctags' "ctags
NeoBundle 'majutsushi/tagbar' "Show tags in a sidebar
NeoBundle 'hallison/vim-markdown' "Markdown highlighting
NeoBundle 'godlygeek/csapprox' "Make gvim-only colorschemes work transparently in terminal vim
NeoBundle 'vim-scripts/hexHighlight.vim' "Allows you to toggle seeing the color of hex values when in graphical vim
NeoBundle 'bling/vim-airline' "Making vim look prettier
NeoBundle 'thoughtbot/vim-rspec' "Use rspec within vim
" Two different options for using Rspec in vim
NeoBundle 'jgdavey/tslime.vim' "Use Rspec in vim #1 Send commands to a new tmux window
NeoBundle 'benmills/vimux' "Use Rspec in vim #2 Send commands to a new tmux window
NeoBundle 'epeli/slimux' " Same idea as above, different plugin
NeoBundle 'tpope/vim-dispatch' " This install failed for some reason
NeoBundle 'vim-ruby/vim-ruby' "Among other things, these bundles add files to the load path so that you can use gf for jumping between files
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-rake'
NeoBundle 'scrooloose/nerdcommenter' "To make commenting faster
" NeoBundle 'Floobits'
" NeoBundle 'Valloric/YouCompleteMe' Failed to get this installed :( Too bad, it looks awesome
"NeoBundle 'nelstrom/vim-textobj-rubyblock' " Make it easier/faster to select ruby objects
NeoBundle 'tpope/vim-abolish' " Stuff for dealing with parts of text

NeoBundle 'wookiehangover/jshint.vim' " Check for errors in your javascript code
NeoBundle 'Shougo/vimshell.vim' " Powerful shell implemented by vim
"NeoBundle 'Shougo/unite.vim' " Unite and create user interfaces--among other things you can use as a ctrlp replacement
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'nelstrom/vim-visual-star-search'

" Required:
filetype plugin indent on

call neobundle#end()
NeoBundleCheck " Automatically checks for new packages on save

runtime macros/matchit.vim

"============================================================
"==  Color Bundles
"============================================================

" Plugin 'altercation/vim-colors-solarized'

"============================================================
"==  Colors
"============================================================
" If I feel like it later, I can add more colors and uncomment the ones I want

:set t_Co=256 " 256 colors
:set background=dark
:color grb256"

"let g:molokai_original = 1
"let g:rehash256 = 1

" let g:solarized_termcolors=256
" colorscheme solarized
colorscheme molokai

"============================================================
"==  Settings
"============================================================
" If a file is changed outside of vim, automatically reload it without asking
set autoread


set nu
set relativenumber

"My default lists line number of only the current line with other lines
"numbered relative to the current line
"Toggle turning on the absolute line number for other lines with these
"mappings
  nmap <leader>abs :set norelativenumber <cr>
  nmap <leader>rel :set relativenumber <cr>

  " Make spaces when you press tab
  set expandtab
  " For Ruby, could make this language dependent if I start writing more python
  set shiftwidth=2
  set tabstop=2
  set encoding=utf-8
  "I turned out not to like this very much...
  " I used to not like this one, but it looks decent with malokai
  set cursorline
  set noswapfile
  " Some useful search defaults
  set hlsearch    " highlight matches--Actually don't--not until I can figure out how to turn them off quickly
  set incsearch   " incremental searching
  set ignorecase  " searches are case insensitive...
  set smartcase   " ... unless they contain at least one capital letter

  " Making things easier for writing
  " not to break on words
  :set wrap
  :set formatoptions=l
  :set linebreak
  :set nolist
  ":set breakat=\ |@-+;:,./?^I

  " move through lines on the screen instead of line numbers
  " Actually want this behavior when the file extension is .md
  "nnoremap j gj
  "nnoremap k gk
  "vnoremap j gj
  "vnoremap k gk

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

  " Make escape easier:
  imap jk <ESC>
  " Make fixing whitespace faster
  nmap :fw :FixWhitespace <CR>
  "removes any search highlighting.
  nnoremap <F3> :set hlsearch!<CR>
  "Alternatively this mapping unsets the last search pattern register when you hit return
  nnoremap <CR> :noh<CR><CR>
  " Indent with tab in normal mode
  nmap <Tab> > <C>
  nmap <S-Tab> < <C>
  " Pretty sweet mapping that I learned about from Destroy all Software
  cnoremap %% <C-R>=expand('%:h').'/'<cr>
  map <leader>y "*y
  " Move around splits with <c-hjkl>
  nnoremap <c-j> <c-w>j
  nnoremap <c-k> <c-w>k
  nnoremap <c-h> <c-w>h
  nnoremap <c-l> <c-w>l
  " Insert a hash rocket with <c-l>
  imap <c-l> <space>=><space>
  imap <c-v> <c-o>"+p
  " Search for the next occurence of selected text
  vnorem // y/<c-r>"<cr>
  map yu <leader><leader>

  "============================================================
  "==  Leader Mappings
  "============================================================

  let mapleader= " "

  " automatically install or update vim plugins with vundle
  nnoremap <leader>pi :PluginInstall<CR>
  nnoremap <leader>pu :PluginUpdate<CR>

  " Run the current file in the ruby console
  map !s :! spec % <C-r>=line('.')<CR><CR>
  nmap <leader>ged :!gedit %<CR>
  nnoremap <leader>n :NERDTreeToggle<CR>
  nmap <F8> :TagbarToggle<CR>
  " Use git within vim--I've remapped common commands using leader key
  nnoremap <leader>gs :Gstatus <CR>
  " git add current_file
  nnoremap <leader>ga :Gwrite <CR>
  nnoremap <leader>gc :Gcommit <CR>
  nnoremap <leader>gx :Gread <CR>
  " vim-rspec mappings
  map <leader>ts :call RunCurrentSpecFile() <CR>
  map <leader>ss :call RunNearestSpec() <CR>
  map <leader>ls :call RunLastSpec() <CR>
  map <leader>as :call RunAllSpec() <CR>
  " Always let me open vimrc in a new tab whenever I want to
  nmap <leader>v :tabedit ~/.homesick/repos/castillo-cabrera/home/.vimrc<CR>

  map <Leader>rc :Rails console<cr>
  map <Leader>rs :Rails server<cr>
  map <Leader>rm :Rake db:migrate<cr>
  " Slimux for sending commands to a tmux window
  map <Leader>a :SlimuxShellLast<CR>
  map <Leader>k :SlimuxSendKeysLast<CR>

  map <Leader>vp :VimuxPromptCommand<CR>
  " Run last command executed by VimuxRunCommand
  map <Leader>vl :VimuxRunLastCommand<CR>
  map <Leader>t :VimuxRunLastCommand<CR>
  " Send current line to configured pane
  map <Leader>s :SlimuxREPLSendLine<CR>
  " Send last visually selected text to configured pane
  vmap <Leader>s :SlimuxREPLSendSelection<CR>
  " Prompt pane configuration for current buffer
  vmap <Leader>sc :SlimuxREPLConfigure<CR>
  " ctrl p
  nmap <leader>p :CtrlP <cr>

  "============================================================
  "==  NERDTree
  "============================================================

  let NERDTreeHighlightCursorline=1
  let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
  " When NERDTree is the only buffer left, close it
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

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

  "============================================================
  "==  Make jumping around ruby files easier
  "============================================================

  " So that gf will set file paths correctly
  augroup rubypath
  autocmd!

  autocmd FileType ruby setlocal suffixesadd+=.rb
  augroup END

  " Adds to the load path
  "   Current project
  "   bundled gems
  "   ruby standard library

  " Lets you jump from the start of the line with a require statement
  " Vim ruby automatically adds all the current files to the load path
  "
  "============================================================
  "==  Enable filetype detection and syntax highlighting
  "============================================================
  " I installed this so I could get highlighting when I use vim in IRB

  if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on

  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  endif
  if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
  endif

  "============================================================
  "==  Setting up Ctags
  "============================================================

  "============================================================
  "==  Setting up Powerline
  "============================================================

  set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
  " The line below should hopefully allow this to work via homesick without having to worry about the python installation...I'm probably wrong about this...
  " set rtp+=$HOME/.homesick/powerline/bindings/vim/

  " Always show statusline
  set laststatus=2

  " Use 256 colours (Use this setting only if your terminal supports 256 colours)
  set t_Co=256


