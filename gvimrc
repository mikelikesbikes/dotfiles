" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
if has("gui_mac") || has("gui_macvim")
  set guifont=Monaco:h15
elseif has("gui_gtk")
  set guifont=Andale\ Mono\ 13
end

if has("gui_macvim")
  set transparency=0            " Stop the ghosting
end

set mousehide

" set lines=50
" set columns=120
" set guioptions-=T
" set guitablabel=%N\ %h%r%m%t
" set guitabtooltip=%F

" Hide the mouse when typing text
