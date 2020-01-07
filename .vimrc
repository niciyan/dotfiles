
syntax on
filetype plugin indent on

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state($HOME.'/.vim')
  call dein#begin($HOME.'/.vim')

  " Let dein manage dein
  " Required:
  call dein#add($HOME.'/.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:

  " call dein#add('Shougo/neocomplcache')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('mattn/emmet-vim')
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('chrisgillis/vim-bootstrap3-snippets')
  call dein#add('scrooloose/nerdtree')
  call dein#add('thinca/vim-quickrun')
  call dein#add('tpope/vim-commentary')
  " call dein#add('Shougo/neocomplete.vim')
  call dein#add('tomasr/molokai')
  " call dein#add('davidhalter/jedi-vim')
  call dein#add('tyru/open-browser.vim')
  call dein#add('kannokanno/previm')
  call dein#add('altercation/vim-colors-solarized')
  " call dein#add('plasticboy/vim-markdown')
  " call dein#add('mattn/webapi-vim')
  call dein#add('othree/html5.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('Shougo/vimproc.vim',{'build' : 'make'})
  " call dein#add('Shougo/vimshell.vim')
  call dein#add('itchyny/lightline.vim')
  " call dein#add('vim-jp/vim-go-extra')
  call dein#add('w0ng/vim-hybrid')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('junegunn/vim-easy-align')
  " call dein#add('fatih/vim-go')
  call dein#add('cocopon/iceberg.vim')
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('yegappan/grep')
  call dein#add('junegunn/goyo.vim')
  call dein#add('junegunn/fzf.vim')
  call dein#add('/usr/local/opt/fzf')
  call dein#add('prabirshrestha/async.vim')
  call dein#add('prabirshrestha/vim-lsp')
  call dein#add('prabirshrestha/asyncomplete.vim')
  call dein#add('prabirshrestha/asyncomplete-lsp.vim')
  call dein#add('mattn/vim-lsp-settings')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

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
set clipboard=unnamedplus
set noswapfile
set nobackup
set noundofile
set ignorecase
set smartcase
set incsearch 
set wildmenu
set autoread

if has("mac")
	set clipboard=unnamed,autoselect	
endif

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
let mapleader = "\<Space>" 

" autocmd vimenter * NERDTree
nnoremap <F5> :NERDTreeToggle<CR>

let g:neosnippet#snippets_directory='~/.vim/dotfiles/mysnippet'


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


set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

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

let g:jedi#popup_select_first=1
let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 0
let g:jedi#auto_initialization = 1
let g:jedi#show_call_signatures = "1"
let g:jedi#popup_on_dot = 1


let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

let cobol_legacy_code=0

let g:neosnippet#disable_runtime_snippets = { 'go' : 1, }

set updatetime=100

" vim-go
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>

" see https://mattn.kaoriya.net/software/vim/20191231213507.htm
function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> <f2> <plug>(lsp-rename)
  inoremap <expr> <cr> pumvisible() ? "\<c-y>\<cr>" : "\<cr>"
endfunction

augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
command! LspDebug let lsp_log_verbose=1 | let lsp_log_file = expand('~/lsp.log')

" let g:lsp_diagnostics_enabled = 1
" let g:lsp_diagnostics_echo_cursor = 1
" let g:asyncomplete_auto_popup = 1
" let g:asyncomplete_auto_completeopt = 0
" let g:asyncomplete_popup_delay = 200
" let g:lsp_text_edit_enabled = 1
