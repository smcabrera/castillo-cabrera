"============================================================
"==  Vundle Plugin Manager
"============================================================
"found here: https://github.com/VundleVim/Vundle.vim
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"============================================================
"==  Plugins: Sensible Defaults
"============================================================
"Plugin 'ryanoasis/vim-devicons' " Icons 
Plugin 'flazz/vim-colorschemes' " Colorschemes
Plugin 'itchyny/lightline.vim' " This doesn't look quite as good as airline but it works without powerline fonts which is nice for chromebook
"Plugin 'bling/vim-airline' "Making vim look prettier when the fonts work...not so great otherwise
Plugin 'edkolev/tmuxline.vim'
Plugin 'tomasr/molokai' "Colors available by bundle to be cycled through later
Plugin 'scrooloose/nerdcommenter' "To make commenting faster
Plugin 'scrooloose/nerdtree' "File tree
Plugin 'tpope/vim-surround' "Surround texts with tags or quotes
Plugin 'kien/ctrlp.vim' "Fuzzy search (command t is another option)
Plugin 'tpope/vim-repeat' "Repeat plugins like surround

"============================================================
"==  Plugins: Customized
"============================================================
" Sensible defaults above, optional below
Bundle 'gabrielelana/vim-markdown'
Bundle 'mattn/webapi-vim'
Bundle 'metakirby5/codi.vim'
Plugin 'MarcWeber/vim-addon-mw-utils' "Gives you useful code snippets from tab
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab' "Autocompletes stuff in insert mode with tab
Plugin 'garbas/vim-snipmate'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'mattn/gist-vim'
Plugin 'mhartington/oceanic-next' "Colorscheme 
Plugin 'mru.vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/syntastic' "Shows you syntax errors when you save
Plugin 'shougo/deoplete.nvim'
Plugin 'slim-template/vim-slim'
Plugin 'smcabrera/slimux' " Same idea as above, different plugin
Plugin 'tomtom/tlib_vim' " For snippets
Plugin 'tpope/vim-endwise' "Ends certain structures automatically--like 'end' in ruby
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails' "Rails.vim: incredibly useful plugin for working with rails code
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-ruby/vim-ruby' "Among other things, these bundles add files to the load path so that you can use gf for jumping between files
Plugin 'elixir-lang/vim-elixir'


call vundle#end()            " required

"============================================================
"==  Colorscheme
"============================================================

 " For Neovim 0.1.3 and 0.1.4
 let $NVIM_TUI_ENABLE_TRUE_COLOR=1

 " Or if you have Neovim > 0.1.5
 "if (has("termguicolors"))
   "set termguicolors
 "endif

 " Theme
syntax enable
"colorscheme OceanicNext
"colorscheme solarized
colorscheme molokai
set background=dark

"let g:airline_theme='oceanicnext'*/


"============================================================
"==  Pretty Stuff
"============================================================

" Dev icons which hasn't been working...
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
let g:tmuxline_preset = 'full'
"let g:tmuxline_preset = 'tmux'
"let g:tmuxline_preset = 'solarized'

"============================================================
"==  Essential Settings
"============================================================

" Fix Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Make spaces when you press tab
set softtabstop=2 shiftwidth=2 expandtab

" Some useful search defaults
set hlsearch    " highlight matches--Actually don't--not until I can figure out how to turn them off quickly
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

"Stop showing search results when you hit enter
nnoremap <CR> :nohlsearch<CR>
"============================================================
"==  Customized Settings
"============================================================
" Make escape easier:
imap jk <ESC>

" Pretty sweet mapping that I learned about from Destroy all Software
cnoremap %. <C-R>=('%')<cr>
cnoremap %% <C-R>=expand('%:h').'/'<cr>
cnoremap %%% <C-R>=expand('%')<cr>

" These go with the numbers plugin
set nu
set norelativenumber

"============================================================
"==  Leader Mappings
"============================================================

let mapleader= " "

nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>at :tabe <cr>
nnoremap <leader>q :q <cr>
nnoremap <leader>l gt
nnoremap <leader>h gT

nnoremap <leader>n :NERDTreeToggle<CR>

" Switch to editing this file
nmap <leader>v :edit ~/.config/nvim/init.vim<CR>
nmap <leader>1 :source ~/.config/nvim/init.vim<CR>
nmap <leader>2 :PluginInstall<CR>

nmap <leader>r :edit! %<CR>

" ctrl p. Fuzzy finder. This is huge
nmap <leader>p :CtrlP <cr>

" Send current line to configured pane
map <Leader>s :SlimuxREPLSendLine<CR>
" Send last visually selected text to configured pane
vmap <Leader>s :SlimuxREPLSendSelection<CR>

" Prompt pane configuration for current buffer
vmap <Leader>sc :SlimuxREPLConfigure<CR>

map <leader>m :MRU <cr>
" Copy the current File path to the clipboard: " http://vim.wikia.com/wiki/Copy_filename_to_clipboard
 nnor <leader>f :let @*=expand("%")<CR>    

"============================================================
"==  Customized Mappings
"============================================================

imap b.p require 'pry' <cr>binding.pry <cr>

" Indent with tab in normal mode
nmap <Tab> > <C>
nmap <S-Tab> < <C>

imap <c-l> <space>=><space>

" Correcting some common typos
iabbrev adn and 
iabbrev waht what 
iabbrev tehn then 

nmap :W :w
nmap :Q :q
nmap :Vs :vs

"============================================================
"==  Plugin Configurations
"============================================================
" Use deoplete.
let g:deoplete#enable_at_startup = 1

"============================================================
"==  Terminal Mappings
"============================================================

"Search neovim terminal

:tnoremap <Esc> <C-\><C-n>
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l

:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l
