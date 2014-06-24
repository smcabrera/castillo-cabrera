"Make vim not compatible with vi--because you didn't really need that did you?
set nocompatible
filetype off

set rtp+=/.vim/bundle/vundle/
call vundle#rc()


"============================================================
"==  My Plugins/Bundles 
"============================================================

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Personal list of plugins
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'

"============================================================
"==  My Mappings 
"============================================================


