
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tomasr/molokai' "Colors available by bundle to be cycled through later
Plugin 'scrooloose/nerdcommenter' "To make commenting faster
Plugin 'scrooloose/nerdtree' "File tree
Plugin 'tpope/vim-surround' "Surround texts with tags or quotes
Plugin 'kien/ctrlp.vim' "Fuzzy search (command t is another option)

" Sensible defaults above, optional below
Plugin 'myusuf3/numbers.vim'
Plugin 'mhartington/oceanic-next' "Colorscheme 
Plugin 'vim-ruby/vim-ruby' "Among other things, these bundles add files to the load path so that you can use gf for jumping between files
Plugin 'tpope/vim-rails' "Rails.vim: incredibly useful plugin for working with rails code
Plugin 'scrooloose/syntastic' "Shows you syntax errors when you save
"Plugin 'bling/vim-airline' "Making vim look prettier when the fonts work...not so great otherwise*/

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
"==  Essential Settings
"============================================================

" Fix Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Make spaces when you press tab
set softtabstop=2 shiftwidth=2 expandtab


"============================================================
"==  Customized Settings
"============================================================
imap jk <esc>

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

" Indent with tab in normal mode
nmap <Tab> > <C>
nmap <S-Tab> < <C>
