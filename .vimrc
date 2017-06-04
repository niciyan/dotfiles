
syntax on
filetype plugin indent on

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/nishi/.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/nishi/.vim')
  call dein#begin('/home/nishi/.vim')

  " Let dein manage dein
  " Required:
  call dein#add('/home/nishi/.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:

  " call dein#add('Shougo/neocomplcache')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('mattn/emmet-vim')
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/unite.vim')
  call dein#add('chrisgillis/vim-bootstrap3-snippets')
  call dein#add('scrooloose/nerdtree')
  call dein#add('thinca/vim-quickrun')
  call dein#add('tpope/vim-commentary')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('tomasr/molokai')
  call dein#add('davidhalter/jedi-vim')
  call dein#add('tyru/open-browser.vim')
  call dein#add('kannokanno/previm')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('mattn/webapi-vim')
  call dein#add('othree/html5.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('Shougo/vimproc.vim',{'build' : 'make'})
  call dein#add('Shougo/vimshell.vim')
  call dein#add('itchyny/lightline.vim')
  " call dein#add('vim-jp/vim-go-extra')
  call dein#add('w0ng/vim-hybrid')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('fatih/vim-go')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif


" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


set fileencoding=utf-8
set number
set title
set nowrap
set hlsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set hidden
set splitright
set splitbelow
set autochdir
set clipboard=unnamed,autoselect
set noswapfile
set nobackup
set noundofile
set ignorecase
set smartcase
set incsearch 
set wildmenu

set background=dark
colorscheme hybrid

nnoremap zj <C-w>j
nnoremap zk <C-w>k
nnoremap zh <C-w>h
nnoremap zl <C-w>l
nnoremap zJ <C-w>J
nnoremap zK <C-w>k
nnoremap zH <C-w>H
nnoremap zL <C-w>L
nnoremap <Space>z gUaw
nnoremap cmd :!gnome-terminal &<CR>

imap <C-l> <Right>

autocmd BufNewFile,BufRead *.rb nnoremap  :!ruby %
autocmd BufNewFile,BufRead *.py nnoremap <C-l> :!python3 %
autocmd BufNewFile,BufRead *.pl nnoremap  :!perl %

let mapleader = "\<Space>" 
nnoremap <Leader>w :w<CR>

autocmd vimenter * NERDTree /home/nishi
nnoremap <F5> :NERDTreeToggle<CR>

let g:neosnippet#snippets_directory='~/mysnippet'


nnoremap rc :tabe ~/.vimrc<CR>
nnoremap grc :tabe ~/.gvimrc<CR>

"let g:user_emmet_leader_key = '<C-m>'

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"For conceal markers.
if has('conceal')
 set conceallevel=2 concealcursor=niv
endif

let g:quickrun_config = { 'python': { 'command': 'python3' } }

set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp

set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

""" unite.vim
" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" レジスタ一覧
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
" 常用セット
nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
" 全部乗せ
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

"let g:quickrun_no_default_key_mappings = 1
"nnoremap <Space>r :write<CR>:QuickRun -mode n<CR>        
"xnoremap <Space>r :<C-U>write<CR>gv:QuickRun -mode v<CR> 

nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"




let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
      \ 'runner'    : 'vimproc',
      \ 'runner/vimproc/updatetime' : 60,
      \ 'outputter' : 'error',
      \ 'outputter/error/success' : 'buffer',
      \ 'outputter/error/error'   : 'quickfix',
      \ 'outputter/buffer/close_on_empty' : 1,
      \ }

command! OpenBrowserCurrent execute "OpenBrowser" "file:///" . expand('%:p:gs?\\?/?')

let g:jedi#rename_command = '<Leader>R'



let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0



"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
  "return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  "" For no inserting <CR> key.
  ""return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#popup_select_first=1
let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 0
let g:jedi#auto_initialization = 1
let g:jedi#show_call_signatures = "1"
let g:jedi#popup_on_dot = 0
autocmd FileType python setlocal completeopt-=preview


let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

"for json 
autocmd FileType json setlocal conceallevel=0
