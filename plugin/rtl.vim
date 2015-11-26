" rtl.vim - Right-to-left toggle plugin for Vim
" Maintainer: Ya'ar Hever
" Version:    0.1

if exists('g:loaded_rtl') || &cp
  finish
endif
let g:loaded_rtl = 1

if exists('g:rtl_toggle_key')
  silent execute 'inoremap' g:rtl_toggle_key '<ESC>:call ToggleRTL()<CR>i'
  silent execute 'nnoremap' g:rtl_toggle_key ':call ToggleRTL()<CR>'
endif

if !exists('g:rtl_default_keymap')
  let g:rtl_default_keymap=''
endif

if !exists('g:rtl_keymap')
  let g:rtl_keymap=''
endif

let s:winaltkeys=&winaltkeys

function! ToggleRTL()
  if &rl
    set norl
    let &keymap=g:rtl_default_keymap
    let &winaltkeys=s:winaltkeys
  else
    set rl
    let &keymap=g:rtl_keymap
    set winaltkeys=no
  end
endfunction
