if has("mac")
	set guifont=Monaco:h14
	set imdisable
elseif has("unix")
	set guifont=Ubuntu\ Mono\ 13
endif

set background=dark
colorscheme iceberg

" set guioptions-=m
set guioptions-=T

"if !has('gui_running')
  "augroup term_vim_c_space
    "autocmd!
    "autocmd VimEnter * map <Nul> <C-Space>
    "autocmd VimEnter * map! <Nul> <C-Space>
  "augroup END
"endif
