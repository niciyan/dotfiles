call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'chrisgillis/vim-bootstrap3-snippets'
Plug 'scrooloose/nerdtree'
Plug 'thinca/vim-quickrun'
Plug 'tpope/vim-commentary'
Plug 'tomasr/molokai'
Plug 'tyru/open-browser.vim'
Plug 'kannokanno/previm'
Plug 'altercation/vim-colors-solarized'
Plug 'othree/html5.vim'
Plug 'tpope/vim-surround'
Plug 'Shougo/vimproc.vim',{'do' : 'make'}
Plug 'itchyny/lightline.vim'
Plug 'w0ng/vim-hybrid'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/vim-easy-align'
Plug 'fatih/vim-go'
Plug 'cocopon/iceberg.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'yegappan/grep'
Plug 'junegunn/goyo.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

" Required:
filetype plugin indent on
syntax enable

set background=dark
colorscheme iceberg

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
set completeopt+=noinsert

if has("mac")
	set clipboard=unnamed,autoselect	
endif


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

autocmd vimenter * NERDTree 
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


au QuickfixCmdPost make,grep,grepadd,vimgrep vertical cwindow

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

let g:easy_align_delimiters = {
\ '>': { 'pattern': '>>\|=>\|>' },
\ '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment'] },
\ ']': {
\     'pattern':       '[[\]]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ ')': {
\     'pattern':       '[()]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ 'd': {
\     'pattern':      ' \(\S\+\s*[;=]\)\@=',
\     'left_margin':  0,
\     'right_margin': 0
\   }
\ }

au filetype go inoremap <buffer> . .<C-x><C-o>
