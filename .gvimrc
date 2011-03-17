" MacVim specific settings
if has("gui_macvim")
  set guifont=Monaco:h14

  " Start in fullscreen (might work for gvim as well?)
  if has("gui_running")
    set fuoptions=maxvert,maxhorz
    au GUIEnter * set fullscreen
  endif
endif  

" Disable visual and audio bells
set vb t_vb=

" Hide the toolbars
set guioptions-=T

" Hide the menu
set guioptions-=m

" Hide the scrollbar
set guioptions-=r
