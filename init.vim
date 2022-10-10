" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on

" `matchit.vim` is built-in so let's enable it!
" Hit `%` on `if` to jump to `else`.
runtime macros/matchit.vim

" various settings
set autoindent                 " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start " Intuitive backspace behavior.
set hidden                     " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<CR>` to stop.
set ruler                      " Shows the current line number at the bottom-right
                               " of the screen.
set wildmenu                   " Great command-line completion, use `<Tab>` to move
                               " around and `<CR>` to validate.


set noerrorbells
set belloff=all
set path+=**                   " search down into subfolders
set rnu			       		   " relative line number on
set shiftwidth=4	       " set indent width
set tabstop=4	       	       " set tab size

" cursor differentiation in normal and insert mode
let &t_SI = "\e[5 q"	       " insert mode
let &t_EI = "\e[1 q"   	       " normal mode

" ***PLUGINS*** "

call plug#begin()
Plug 'Yggdroot/indentLine'
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/lh-brackets'
call plug#end()

" colorscheme
colorscheme molokai
hi MatchParen ctermfg=208 ctermbg=233 cterm=bold  	"fix highlighting for matchparen in molokai
"mapping leader key
let mapleader = " " "map leader to Space key
nnoremap <Space> <Nop>

"custom leader key stuff
nnoremap <Leader>n :bnext<CR>
nnoremap <Leader>N :bprev<CR>
nnoremap <Leader>vimrc :source ~/.vim/vimrc<CR>:echo "Reloaded vimrc"<CR>
nnoremap <Leader><Leader> <c-^>

"ale settings
let g:ale_fix_on_save = 1
let g:ale_fixers = {
 \ 'javascript': ['prettier', 'eslint'],
 \ 'typescript': ['prettier', 'eslint'],
 \ 'javascriptreact': ['prettier', 'eslint'],
 \ 'typescriptreact': ['prettier', 'eslint'],
 \ }

" get rid of the <<>> marks for lh-bracket
let g:usemarks = 0
