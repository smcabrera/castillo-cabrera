"Make vim not compatible with vi--because you didn't really need that did you?
set nocompatible
filetype off

"============================================================
"==  Plugins: Vundle
"============================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Plugins here
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'flazz/vim-colorschemes'
Plugin 'Shougo/vimshell'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'godlygeek/tabular'
Plugin 'tommcdo/vim-exchange' " Easy swapping two areas of text with cx + motion
Plugin 'wikitopian/hardmode'
Plugin 'kien/ctrlp.vim' "Fuzzy search (command t is another option)
"Plugin 'Lokaltog/vim-easymotion'
Plugin 'pangloss/vim-javascript' " adds sensible highlighting for javascript
Plugin 'mmalecki/vim-node.js' "File type detect plugin for vim which detects node.js shebang
Plugin 'tpope/vim-git' "Vim Git runtime files
Plugin 'ap/vim-css-color' "Highlight colors in css files
" Let Vundle manage Vundle
Plugin 'tpope/vim-surround' "Surround texts with tags or quotes
Plugin 'tpope/vim-endwise' "Ends certain structures automatically--like 'end' in ruby
Plugin 'tpope/vim-repeat' "Repeat plugins like surround
Plugin 'tpope/vim-fugitive' "Use git without leaving vim, see link
Plugin 'scrooloose/nerdtree' "File tree
Plugin 'scrooloose/syntastic' "Shows you syntax errors when you save
Plugin 'ervandew/supertab' "Autocompletes stuff in insert mode with tab
Plugin 'MarcWeber/vim-addon-mw-utils' "Gives you useful code snippets from tab
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'bronson/vim-trailing-whitespace' "Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
Plugin 'tpope/vim-rails' "Rails.vim: incredibly useful plugin for working with rails code
Plugin 'tomasr/molokai' "Colors available by bundle to be cycled through later
Plugin 'fishman/ctags' "ctags
Plugin 'majutsushi/tagbar' "Show tags in a sidebar
"Plugin 'hallison/vim-markdown' "Markdown highlighting
Plugin 'godlygeek/csapprox' "Make gvim-only colorschemes work transparently in terminal vim
Plugin 'vim-scripts/hexHighlight.vim' "Allows you to toggle seeing the color of hex values when in graphical vim
Plugin 'thoughtbot/vim-rspec' "Use rspec within vim
" Two different options for using Rspec in vim
Plugin 'jgdavey/tslime.vim' "Use Rspec in vim #1 Send commands to a new tmux window
Plugin 'benmills/vimux' "Use Rspec in vim #2 Send commands to a new tmux window
Plugin 'smcabrera/slimux' " Same idea as above, different plugin
Plugin 'tpope/vim-dispatch' " This install failed for some reason
Plugin 'vim-ruby/vim-ruby' "Among other things, these bundles add files to the load path so that you can use gf for jumping between files
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'scrooloose/nerdcommenter' "To make commenting faster
" Plugin 'Floobits'
"Plugin 'Valloric/YouCompleteMe' "Failed to get this installed. Couldn't
"install cmake
"Plugin 'nelstrom/vim-textobj-rubyblock' " Make it easier/faster to select ruby objects--not sure what's wrong with this plugin
Plugin 'tpope/vim-abolish' " Stuff for dealing with parts of text
"Plugin 'wookiehangover/jshint.vim' " Check for errors in your javascript code
"Plugin 'Shougo/vimshell.vim' " Powerful shell implemented by vim
"Plugin 'Shougo/unite.vim' " Unite and create user interfaces--among other things you can use as a ctrlp replacement
Plugin 'tpope/vim-unimpaired'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'markwu/vim-laravel4-snippets'
Plugin 'kchmck/vim-coffee-script'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-eunuch'
""Plugin 'vim-scripts/Vim-R-plugin' "Looks awesome. Don't use R now but when I do, I'll use this
Plugin 'jiangmiao/auto-pairs' "One of two decent-looking alternatives for automatically closing brackes, quotes, etc.
"Plugin 'Raimondi/delimitMate' "One of two decent-looking alternatives for automatically closing brackes, quotes, etc.
Plugin 'vim-scripts/SyntaxRange'
" Bling Bundles
"Plugin 'bling/vim-airline' "Making vim look prettier when the fonts work...not so great otherwise
"requires fonts to work: https://powerline.readthedocs.org/en/latest/installation/linux.html#font-installation
Plugin 'edkolev/tmuxline.vim'
Bundle 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'vim-scripts/Specky'
Plugin 'ngmy/vim-rubocop'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-commentary'
Plugin 'Shougo/vimproc.vim'
"You need to build extensions for vimproc
" cd ~/.vim/bundle/vimproc.vim
" make
"Plugin 'osyo-manga/vim-monster'
" The above requires
" gem install rcodetools
" and vimproc.vim
Plugin 'myusuf3/numbers.vim'
Plugin 'airblade/vim-gitgutter'
"Plugin 'mhinz/vim-startify' "Unfortunately this just struck me as ugly just using the defaults. Maybe I'll configure it at some point
Plugin 'dkprice/vim-easygrep'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'tmux-plugins/vim-tmux'
"Plugin 'kshenoy/vim-signature'
"Plugin 'jeetsukumaran/vim-markology'
Plugin 'thoughtbot/pick.vim'
Plugin 'othree/html5.vim'
Plugin 'jelera/vim-javascript-syntax'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'PProvost/vim-markdown-jekyll'
Plugin 'csexton/jekyll.vim'
" Still some configuration to be done for the above, a plugin meant to help
" speed up developing a jekyll blog with vim. Check this link:
" https://github.com/csexton/jekyll.vim
Plugin 'gabrielelana/vim-markdown'
Plugin 'chase/vim-ansible-yaml'
Plugin 'tpope/vim-haml'
Plugin 'justincampbell/vim-eighties'
Plugin 'itchyny/lightline.vim' " This doesn't look quite as good as airline but it works without powerline fonts which is nice for chromebook
"Plugin 'christoomey/vim-tmux-navigator'
Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-notes'
Plugin 'skalnik/vim-vroom'
Plugin 'tpope/gem-ctags'
Plugin 'osyo-manga/vim-hopping'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'burnettk/vim-angular'
Plugin 'sheerun/vim-polyglot'
Plugin 'lambdatoast/elm.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'christoomey/vim-rfactory'

call vundle#end()            " required
filetype plugin indent on    " required

runtime macros/matchit.vim

"============================================================
"==  Bling
"============================================================

"Airline settings
"let g:airline_powerline_fonts = 1
"set laststatus=2
"let g:airline#extensions#tabline#enabled = 1

" For tmux. What? Yes.
"let g:tmuxline_preset = 'full'
"let g:tmuxline_preset = 'tmux'
"let g:tmuxline_preset = 'solarized'

"AirlineTheme simple
"AirlineTheme dark
"AirlineThemepowerlineish

function! SolarizedDark()
  AirlineTheme solarized
endfunction

:set t_Co=256 " 256 colors
set background=dark
"colorscheme solarized
"call SolarizedDark()
"colorscheme desert
:color grb256

colorscheme molokai
"let g:molokai_original = 1 " Bring the terminal version to the default
"let g:rehash256 = 1
"let g:solarized_termcolors=256

function! Molokai()
  colorscheme molokai
  let g:molokai_original = 1
  let g:rehash256 = 1
  AirlineTheme molokai
endfunction

function! MolokaiWithPowerline()
  colorscheme molokai
  let g:molokai_original = 1
  let g:rehash256 = 1
  AirlineTheme powerlineish
endfunction


"MolokaiWithPowerline
"syntax enable
"set background=light
"colorscheme solarized

"function! SolarizedLight()
"  let solarized=1
"  let light=1
"  let dark=0
"  AirlineTheme solarized
"endfunction

map <leader>[ :colorscheme molokai<cr>
map <leader>] :colorscheme simpleandfriendly<cr>

map <F4> :call MolokaiWithPowerline()<cr>
map <F5> :call Molokai()<cr>
map <F6> :call SolarizedLight()<cr>

"============================================================
"==  Settings
"============================================================
" Just temporary. It's annoying to get variables marked as errors when I don't use them immediately if I'm trying to develop iteratively.
"let g:syntastic_mode_map = {"mode": 'passive'}

" Automatically set vim's working directory to be the working directory of the
" current file
" This is actually horrible when working with tmux
  "set autochdir

" If a file is changed outside of vim, automatically reload it without asking
" Turn off beeps
  set vb

  set autoread

  set backspace   =indent,eol,start  " Make backspace work as you would expect."

  "Some settings for the way undo works
  set undofile                    " Save undo's after file closes
  set undodir=~/.vim/undo         " where to save undo histories
  set undolevels=1000             " How many undos
  set undoreload=10000            " number of lines to save for undo

  set nu
  "set relativenumber
  set norelativenumber


  " Make spaces when you press tab
  set softtabstop=2 shiftwidth=2 expandtab
  set encoding=utf-8
  "I turned out not to like this very much...
  " I used to not like this one, but it looks decent with malokai
  "set cursorline
  set noswapfile
  " Some useful search defaults
  set hlsearch    " highlight matches--Actually don't--not until I can figure out how to turn them off quickly
  set incsearch   " incremental searching
  set ignorecase  " searches are case insensitive...
  set smartcase   " ... unless they contain at least one capital letter

  " Make pasting not suck
  set paste

  " Making things easier for writing
  " not to break on words
  :set wrap
  :set formatoptions=l
  :set linebreak
  :set nolist
  ":set breakat=\ |@-+;:,./?^I

  " move through lines on the screen instead of line numbers
  " Actually want this behavior when the file extension is .md
  au Filetype markdown let b:AutoPairs = {"(": ")"}
  au Filetype markdown nnoremap j gj
  au Filetype markdown nnoremap k gk
  au Filetype markdown nnoremap k gk

  " Work with long lines properly
  "set textwidth=79
  set formatoptions=qrn1
  "Nice feature but too ugly...
  "set colorcolumn=85

  " Auto change the directory to the current file I'm working on
  "autocmd BufEnter * lcd %:p:h


  "When you lose focus on the screen it saves automatically
  au FocusLost * :wa

  " Allowing .md files to be treated as markdown
  au BufRead,BufNewFile *.md set filetype=markdown

  " When the filetype is markdown then make AutoPairs only match for parenthesis
  autocmd FileType php set ft=php.laravel " Snippets for laravel

  "folding settings
  "set foldmethod=syntax   "fold based on Ruby syntax
  "let ruby_fold = 1
  "set foldnestmax=10      "deepest fold is 10 levels
  "set nofoldenable        "dont fold by default

  "============================================================
  "==  Global variables
  "============================================================

  " Disable the spell checking from this plugin
  " https://github.com/gabrielelana/vim-markdown
  " It's actually really annoying when writing about programming where a ton
  " of terms aren't dictionary words
  let g:markdown_enable_spell_checking = 0

  " Settings for vim-notes
  let g:notes_directories = [ '~/Dropbox/notes', '~/Documents/notes' ]
  "let g:vroom_use_spring = 1
  let g:vroom_map_keys = 1
  "map <leader>r :VroomRunTestFile
  "map <leader>R :VroomRunNearestTest
  "map <leader>lt :VroomRunNearestLastTest

  " disable 'assigned but unused variable' warnings
  " (they're just annoying and never actually useful)
  let g:syntastic_quiet_messages = { "regex": 'assigned but unused'  }

  "============================================================
  "==  Mappings
  "============================================================

  " Make escape easier:
  imap jk <ESC>

  nnoremap <F3> :NumbersToggle<CR>

  " Make fixing whitespace faster
  nmap :fw :FixWhitespace <CR>
  "removes any search highlighting.
  snoremap <F3> :set hlsearch!<CR>

  "Alternatively this mapping unsets the last search pattern register when you hit return
  nnoremap <CR> :noh<CR>:FixWhitespace<CR>
  " Indent with tab in normal mode
  nmap <Tab> > <C>
  nmap <S-Tab> < <C>
  " Pretty sweet mapping that I learned about from Destroy all Software
  cnoremap %. <C-R>=('%')<cr>
  cnoremap %% <C-R>=expand('%:h').'/'<cr>
  cnoremap %%% <C-R>=expand('%')<cr>
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
  " I'd like to figure out a good way to insert these escape characters automatically so I don't have to remember the damn things
  "&#39;
  imap sh! #!/bin/sh
  imap p.s page.save_and_open_screenshot
  imap b.p binding.pry

  map <F12> :w<cr>
  " save when you've forgotten to sudo before opening a file
  " :sudow
  " http://www.catonmat.net/blog/sudo-vim/
  cmap w!! w !sudo tee % >/dev/null

  map <c-f> :grep -F 'leader' %

  cmap rtest :! bundle exec rspec %%%
  "cmap test :! bundle exec rspec %%% :execute ""<cr>
  "execute ":map "<leader>"t :! bundle exec rspec"%%%" <cr>"

  "============================================================
  "==  Leader Mappings
  "============================================================

  let mapleader= " "

  " This is obvious and yet I never thought of it for till this post:
  " http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
  " Some leader mappings for things you do all the time
  nnoremap <leader>w :w<CR>
  nnoremap <leader>x :x<CR>
  nnoremap <leader>at :tabe <cr>
  nnoremap <leader>q :q <cr>
  nnoremap <leader>l gt
  nnoremap <leader>h gT

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

  " Mappings for Tabularize
  nnoremap <Leader>al :Tabularize /=><cr>
  nnoremap <Leader>a= :Tabularize /=<cr>
  nnoremap <Leader>a: :Tabularize /:<cr>
  nnoremap <Leader>a:: :Tabularize /:\zs<cr>
  nnoremap <Leader>a, :Tabularize /,<cr>
  nnoremap <Leader>a<Bar> :Tabularize /


  " Always let me open vimrc in a new tab whenever I want to
  nmap <leader>v :tabedit ~/.homesick/repos/castillo-cabrera/home/.vimrc<CR>
  nmap <leader>nn :tabedit ~/Dropbox/notes/<CR>

  " Slimux for sending commands to a tmux window
  map <Leader>k :SlimuxSendKeysLast<CR>

  map <Leader>vp :VimuxPromptCommand<CR>
  " Run last command executed by VimuxRunCommand
  map <Leader>vl :VimuxRunLastCommand<CR>
  "map <Leader>t :VimuxRunLastCommand<CR>
  " Send current line to configured pane
  map <Leader>s :SlimuxREPLSendLine<CR>
  " Send last visually selected text to configured pane
  vmap <Leader>s :SlimuxREPLSendSelection<CR>
  " Prompt pane configuration for current buffer
  vmap <Leader>sc :SlimuxREPLConfigure<CR>
  " ctrl p. Fuzzy finder. This is huge
  nmap <leader>p :CtrlP <cr>
  nmap <leader>fw :FixWhitespace <cr>
  nmap <leader>/ :HoppingStart <cr>
  "map <leader>wl Omodule WhiteLabelj0VG>Goendgg
  map <leader>wl ggddGddVgg<<esc>:w<cr>

  "============================================================
  "==  Rails.vim leader mappings
  "============================================================

  map <Leader>rc :Rails console<cr>
  map <Leader>rs :Rails server<cr>
  map <Leader>rm :Rake db:migrate<cr>
  " 'Edit' the corresponding model, controller, view
  map <Leader>em :Emodel
  map <Leader>ec :Econtroller
  map <Leader>ev :Eview

  "============================================================
  "==  rspec.vim settings/mappings
  "============================================================

  "let g:rspec_command = 'call Send_to_Tmux("spring rspec {spec}\n")'

  " vim-rspec mappings
  "map <leader>ts :call RunCurrentSpecFile()<cr>
  "map <leader>ss :call RunNearestSpec()<cr>
  "map <leader>ls :call RunLastSpec()<cr>
  "map <leader>as :call RunAllSpecs()<cr>

  "This didn't seem to work for me for some reason

  "============================================================
  "==  Custom Commands
  "============================================================

  command! Til tabe~/workspace/til
  command! Bloc tabe~/Dropbox/bloc/
  command! Question tabe~/Dropbox/questions/
  command! Blog tabe~/workspace/smcabrera.github.io
  command! Draft ! cp % ~/workspace/smcabrera.github.io/_drafts/
  command! Publish ! cd ~/workspace/smcabrera.github.io ; bundle exec octopress publish %
  command! Wlocal write ~/Downloads/%
  command! Gist ! cp % ~/Downloads/ ; gist %
  command! Hamlize ! html2haml % > % . 'haml'

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
  "==  Typos
  "============================================================
  nmap :W :w
  nmap :Q :q
  nmap :Vs :vs

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


