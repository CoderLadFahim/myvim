set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'preservim/nerdtree'
Plugin 'mitermayer/vim-prettier'
Plugin 'tpope/vim-surround'
Plugin 'leafOfTree/vim-matchtag'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'mg979/vim-visual-multi'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'posva/vim-vue'
Plugin 'morhetz/gruvbox'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
call vundle#end()

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver']

set tabstop=3 shiftwidth=3
set number
set rnu
set noswapfile
set complete+=kspell
set completeopt+=menuone,longest
set updatetime=100

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#single_quote = 'true'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_use_caching = 'false'

nnoremap <C-g> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let g:NERDTreeShowLineNumbers=1
autocmd BufEnter NERD_* setlocal rnu

let g:airline_theme='base16'

" let php_sql_query=1

" Abbreviations
"JAVASCRIPT
ab cl console.log(
ab cd console.dir(
ab fne const functionName = (params) => {}
ab fnd function functionName(params) {}
ab dq document.querySelector('
ab im import something from 'somewhere' 
ab dsc describe('something', () => {})
ab itb it('does something', () => {})
ab ed export default something
" React
ab ius import {useState} from 'react'
ab iue import {useEffect} from 'react'
ab iuse import {useState, useEffect} from 'react'
ab ue useEffect(() => {}, [])
ab us const [something, setSomething] = useState(null)
ab rcc function Component() {return (<>Content</>)}; export default Component;
ab rns 'Inky pinkies per donkey monkeys'
ab st setTimeout(() => {}, 1000)
ab si setInterval(() => {}, 1000)

let mapleader = " "

inoremap <leader>q <C-w>N<CR>

nnoremap <leader>PI :PluginInstall
nnoremap <leader>PC :PluginClean

" Delete Everything
nnoremap <leader>dAA ggdG

" Change split size
nnoremap <leader>- <C-w><
nnoremap <leader>+ <C-w>>

" Tabs
nnoremap <leader>tn :tabedit<CR>
nnoremap <leader>tq :tabclose!<CR>
nnoremap <leader>taq :tabonly!<CR>


" Open terminal
nnoremap <leader>it :sh <RETURN>

" Move up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap J yyp
nnoremap K yyP

vnoremap <leader>J :co .<CR>
vnoremap <leader>K :copy .-1<CR>

"vnoremap <tab>J:co '><CR>V'[=gv

" Find and Replace
nnoremap <leader>fr :%s/

nnoremap CSLX :!shutdown -s
nnoremap UCSLX :!shutdown -a

" Open current working directory
nnoremap <leader>fl :!explorer .<RETURN><RETURN>

nnoremap <leader>w :w <RETURN>
nnoremap <leader>q :q!
nnoremap <leader>src :source %

" Git commands
nnoremap <leader>glo :G log --oneline
nnoremap <leader>gs :G status
nnoremap <leader>gb :G branch
nnoremap <leader>gbd :G branch -D
nnoremap <leader>gd :G diff
nnoremap <leader>gnb :G checkout -b 
nnoremap <leader>gr. :G restore .
nnoremap <leader>gcb :G checkout
nnoremap <leader>ga. :G add .
nnoremap <leader>gcm :G commit -m ""
nnoremap <leader>gcam :G commit --amend -m ""
nnoremap <leader>gcan :G commit --amend --no-edit
nnoremap <leader>gm :G merge

nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

" single line visual mode
nnoremap <leader>v <C-v>

" See time
nnoremap <leader>dt :echo system("date")<CR>


