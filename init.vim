"""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""

syntax on
let mapleader=","
set cursorline
set ttyfast
set lazyredraw
set updatetime=300

"""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins List
"""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Jedi
Plug 'zchee/deoplete-jedi'

" Brackets auto-completion
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" Comment Plugin
Plug 'scrooloose/nerdcommenter'

" Auto-format
Plug 'sbdchd/neoformat'

" Code jump (go-to)
Plug 'davidhalter/jedi-vim'

" NerdTree
Plug 'scrooloose/nerdtree'

" Devicons
Plug 'ryanoasis/vim-devicons'

" Neomake
Plug 'neomake/neomake'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Highlight Yank
Plug 'machakann/vim-highlightedyank'

" Challenger Deep
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" Polyglot
Plug 'vim-python/python-syntax'

" Rainbow brackets
Plug 'luochen1990/rainbow'

" Lightline
Plug 'itchyny/lightline.vim'

" Fugitive
Plug 'tpope/vim-fugitive'

" Guide lines
Plug 'Yggdroot/indentLine'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Snippets engine
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Git NerdTree
Plug 'Xuyuanp/nerdtree-git-plugin'

" Unimpaired
Plug 'tpope/vim-unimpaired'

" Vim-Tmux navigator
Plug 'christoomey/vim-tmux-navigator'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Related Configs
"""""""""""""""""""""""""""""""""""""""""""""""

" Deoplete
let g:deoplete#enable_at_startup = 1
set splitbelow
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
call deoplete#custom#option('max_list', 10)

" Airline Theme
"let g:airline_theme='luna'
" Lightline Theme
let g:lightline = {
      \ 'colorscheme': 'challenger_deep',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Neoformat
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_enabled_python = ['yapf']

" Jedi-vim
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"

" NerdTree
autocmd VimEnter * NERDTree | wincmd p
nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Neomake
let g:neomake_python_enabled_makers = ['flake8']
call neomake#configure#automake('w', 750)
let g:neomake_open_list = 2

" Highlight yank
hi HighlightedyankRegion cterm=reverse gui=reverse

" Syntax highlighting
let g:python_highlight_all = 1
let g:python_highlight_class_vars = 1

" Raibow brackets
let g:rainbow_active = 1
let g:rainbow_conf = {
	\	'guifgs': ['darkorange3', 'seagreen3', 'firebrick', 'royalblue3'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}

" Guide lines
let g:indentLine_char = '│'

" Snippets
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Flake8 config
let g:neomake_python_flake8_maker = {
  \ 'args': ["--max-line-length=120"]}

"""""""""""""""""""""""""""""""""""""""""""""""
" => Visual Related Configs
"""""""""""""""""""""""""""""""""""""""""""""""
" long lines as just one line (have to scroll horizontally)
set nowrap

"Colorscheme
colorscheme challenger_deep

" 256 colors
"set t_Co=256

" line numbers
set number

" show the status line all the time
set laststatus=2

" disable scrollbars (real hackers don't use scrollbars)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" Enable true  color
if has('nvim') || has('termguicolors')
  set termguicolors
endif

"Colorscheme
colorscheme challenger_deep

" Ruler
set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey


"""""""""""""""""""""""""""""""""""""""""""""""
" => Keymappings
"""""""""""""""""""""""""""""""""""""""""""""""

" dont use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" really, just dont
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP><Paste>

nnoremap gb :ls<CR>:b<Space>

"""""""""""""""""""""""""""""""""""""""""""""""
" => Indentation
"""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
" :help smarttab
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Auto indent
" Copy the indentation from the previous line when starting a new line
set ai

" " Smart indent
" " Automatically inserts one extra level of indentation in some cases, and
" works for C-like files
set si
