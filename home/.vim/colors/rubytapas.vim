set background=light
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "rubytapas"

highlight Normal guifg=#009900 guibg=NONE gui=NONE

" TODO: Override default 'TODO' colors
highlight Todo guifg=#990001 guibg=NONE gui=NONE

"You can link groups
" 
