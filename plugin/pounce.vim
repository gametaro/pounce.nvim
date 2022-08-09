if !has("nvim")
  echo "pounce.nvim requires neovim"
  finish
endif

highlight default PounceMatch cterm=bold ctermfg=black ctermbg=green gui=bold guifg=#555555 guibg=#11dd11
highlight default link PounceUnmatched None
highlight default PounceGap cterm=bold ctermfg=black ctermbg=darkgreen gui=bold guifg=#555555 guibg=#00aa00
highlight default PounceAccept cterm=bold ctermfg=black ctermbg=lightred gui=bold guifg=#111111 guibg=#de940b
highlight default PounceAcceptBest cterm=bold ctermfg=black ctermbg=cyan gui=bold guifg=#111111 guibg=#03cafc

command! Pounce lua require'pounce'.pounce{}
command! PounceRepeat lua require'pounce'.pounce{do_repeat=true}
command! PounceCword lua require'pounce'.pounce{do_cword=true}
