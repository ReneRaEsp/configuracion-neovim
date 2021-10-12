call plug#begin('~/.vim/plugged')
Plug 'Rigellute/rigel'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'

Plug 'christoomey/vim-tmux-navigator'

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-commentary'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Vue highlights"
Plug 'posva/vim-vue'
"Vim Pug"
Plug 'dNitro/vim-pug-complete'
"React highlights"
Plug 'mgechev/vim-jsx'
"Snippets"
Plug 'sirver/ultisnips', {'for': ['php', 'js']}
Plug 'honza/vim-snippets', {'for': ['php', 'js']}
Plug 'ervandew/supertab'

call plug#end()

"Config para vim"

set number
set rnu
set cursorline
set mouse=a
set clipboard=unnamed
set laststatus=2
set tabstop=2
set shiftwidth=2
set expandtab
set showcmd
set noshowmode
set showmatch
set encoding=utf-8
colorscheme rigel
syntax enable

"Config para Airline Theme"
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'

"Config NerdTree"
nnoremap <C-n> :NERDTreeToggle<CR>
set ma

"Vue config"
let g:vue_pre_processors = ['pug', 'sass']

" Snippets "

let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-t>"

" Prettier "
nnoremap <C-x> :CocCommand prettier.formatFile<CR>
