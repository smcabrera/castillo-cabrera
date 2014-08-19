"Make vim not compatible with vi--because you didn't really need that did you?
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"============================================================
"==  My Plugins
"============================================================

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-surround' "Surround texts with tags or quotes
Plugin 'tpope/vim-endwise' "Ends certain structures automatically--like 'end' in ruby
Plugin 'tpope/vim-repeat' "Repeat plugins like surround
Plugin 'tpope/vim-fugitive' "Use git without leaving vim, see link: http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/
Plugin 'scrooloose/nerdtree' "File tree
Plugin 'scrooloose/syntastic' "Shows you syntax errors when you save
Plugin 'kien/rainbow_parentheses.vim' "Makes parentheses, brackets, etc. prettier
Plugin 'kien/ctrlp.vim' "Fuzzy search (command t is another option)
Plugin 'ervandew/supertab' "Autocompletes stuff in insert mode with tab
Plugin 'MarcWeber/vim-addon-mw-utils' "Gives you useful code snippets from tab
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'bronson/vim-trailing-whitespace' "Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
Plugin 'tpope/vim-rails' "Rails.vim enough said
Plugin 'tomasr/molokai' "Colors available by bundle to be cycled through later
Plugin 'fishman/ctags' "ctags
Plugin 'majutsushi/tagbar' "Show tags in a sidebar
Plugin 'hallison/vim-markdown' "Markdown highlighting
Plugin 'godlygeek/csapprox' "Make gvim-only colorschemes work transparently in terminal vim
Plugin 'vim-scripts/hexHighlight.vim' "Allows you to toggle seeing the color of hex values when in graphical vim
Plugin 'bling/vim-airline' "Making vim look prettier
Plugin 'thoughtbot/vim-rspec' "Use rspec within vim
  " Two different options for using Rspec in vim
Plugin 'jgdavey/tslime.vim' "Send commands to a new tmux window
Plugin 'benmills/vimux' "Send commands to a new tmux window
Plugin 'epeli/slimux' " Same idea as above, different plugin
Plugin 'tpope/vim-dispatch' " This install failed for some reason--perhaps show tests within vim try to troubleshoot it later if we'd like to get it working.
Plugin 'vim-ruby/vim-ruby' "Among other things, these bundles add files to the load path so that you can use gf for jumping between files
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'scrooloose/nerdcommenter' "To make commenting faster

call vundle#end()
filetype plugin indent on

" Matchit to identify matching keyword pairs, comes with vim but has to be enabled
runtime macros/matchit.vim

"============================================================
"==  Color Bundles
"============================================================

Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-distinguished'

"============================================================
"==  Colors
"============================================================
" I plan to make a bunch of different colors available here and uncomment the ones I want

"let g:molokai_original = 1
"let g:rehash256 = 1

"let g:solarized_termcolors=256
"colorscheme desert
colorscheme molokai
"colorscheme distinguished

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
  ":set breakat=\ |@-+;:,./?^I

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

" Make escape easier:
imap jk <ESC>

" Make fixing whitespace faster
nmap :fw :FixWhitespace <CR>

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

let mapleader= " "

" automatically install or update vim plugins with vundle
nnoremap <leader>pi :PluginInstall<CR>
nnoremap <leader>pu :PluginUpdate<CR>

" Run the current file in the ruby console
nmap <leader>rs :w <CR> :!ruby %<CR>
nmap <leader>q :q<CR>
nmap <leader>x :q<CR>
nmap <leader>ged :!gedit %<CR>

"============================================================
"==  NERDTree
"============================================================

nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
" When NERDTree is the only buffer left, close it
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

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
nnoremap <leader>gx :Gread <CR>

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
nmap <leader>v :tabedit ~/.homesick/repos/castillo-cabrera/home/.vimrc<CR>

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
"set rtp+=$HOME/.homesick/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

"============================================================
"==  Vimux
"============================================================
" See help vimux

 " Prompt for a command to run map
 map <Leader>vp :VimuxPromptCommand<CR>

 " Run last command executed by VimuxRunCommand
 map <Leader>vl :VimuxRunLastCommand<CR>

"============================================================
"==  Slimux -- Commands for the REPL
"============================================================
" See https://github.com/epeli/slimux for documentation
" There really should just be a "help Slimux with exactly what's in the above documentation
" If I end up really liking this plugin I may offer to do that, just copying and pasting it

" Send current line to configured pane
map <Leader>s :SlimuxREPLSendLine<CR>

" Send last visually selected text to configured pane
vmap <Leader>s :SlimuxREPLSendSelection<CR>

" Prompt pane configuration for current buffer
vmap <Leader>sc :SlimuxREPLConfigure<CR>

"============================================================
"==  Slimux -- Commands for the Shell
"============================================================

map <Leader>a :SlimuxShellLast<CR>
map <Leader>k :SlimuxSendKeysLast<CR>

