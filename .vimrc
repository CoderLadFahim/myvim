" Vim setup
" 1. git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" 2. npm install in the coc.nvim directory
" 1. npm install in the prettier directory

" SSH & GPG keys setup for github
" 1. ssh-keygen -t rsa -b 4096 -C '[EMAIL]'
" 2. press enter 
" 3. Enter passphrase
" 4. Confirm passphrase
" 5. eval $(ssh-agent -s)
" 6. ssh-add ~/.ssh/id_rsa
" 7. Enter the given passphrase
" 8. clip < ~/.ssh/id_rsa.pub
" 9. paste the key in github

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
Plugin 'posva/vim-vue'
Plugin 'morhetz/gruvbox'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'Yggdroot/indentLine'


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
let g:coc_global_extensions = ['coc-tsserver', 'coc-phpls', 'coc-tabnine']

syntax on
set tabstop=3 shiftwidth=3
set number
set rnu
set noswapfile
set complete+=kspell
set completeopt+=menuone,longest
set updatetime=100
set wildignore+=*/node_modules/**/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk,*/vendor/**/*
set list lcs=tab:\¦\ 

let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#single_quote = 'true'
let g:prettier#config#use_tabs = 'false'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor'
let g:ctrlp_use_caching = 'false'
let g:ctrlp_clear_cache_on_exit = 0

nnoremap <C-g> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let g:NERDTreeShowLineNumbers=1
autocmd BufEnter NERD_* setlocal rnu

let g:airline_theme='base16'

let php_sql_query=1

let mapleader = " "

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
nnoremap <leader>it :sh <CR>
nnoremap <leader>bt :bel term <CR>

" Move up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap J yyp
nnoremap K yyP

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
nnoremap <leader>gbl :G branch
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
nnoremap <leader>gplb :G pull origin 
nnoremap <leader>gpscb :G push origin -u HEAD
nnoremap <leader>gpsb :G push origin -u 

" switching between splits
nnoremap <leader>hh :wincmd h<CR>
nnoremap <leader>jj :wincmd j<CR>
nnoremap <leader>kk :wincmd k<CR>
nnoremap <leader>ll :wincmd l<CR>

" See time
nnoremap <leader>dt :echo system("date")<CR>

" Enables tab numbers
set tabline=%!MyTabLine()  " custom tab pages line
function MyTabLine()
        let s = '' " complete tabline goes here
        " loop through each tab page
        for t in range(tabpagenr('$'))
                " set highlight
                if t + 1 == tabpagenr()
                        let s .= '%#TabLineSel#'
                else
                        let s .= '%#TabLine#'
                endif
                " set the tab page number (for mouse clicks)
                let s .= '%' . (t + 1) . 'T'
                let s .= ' '
                " set page number string
                let s .= t + 1 . ' '
                " get buffer names and statuses
                let n = ''      "temp string for buffer names while we loop and check buftype
                let m = 0       " &modified counter
                let bc = len(tabpagebuflist(t + 1))     "counter to avoid last ' '
                " loop through each buffer in a tab
                for b in tabpagebuflist(t + 1)
                        " buffer types: quickfix gets a [Q], help gets [H]{base fname}
                        " others get 1dir/2dir/3dir/fname shortened to 1/2/3/fname
                        if getbufvar( b, "&buftype" ) == 'help'
                                let n .= '[H]' . fnamemodify( bufname(b), ':t:s/.txt$//' )
                        elseif getbufvar( b, "&buftype" ) == 'quickfix'
                                let n .= '[Q]'
                        else
                                let n .= pathshorten(bufname(b))
                        endif
                        " check and ++ tab's &modified count
                        if getbufvar( b, "&modified" )
                                let m += 1
                        endif
                        " no final ' ' added...formatting looks better done later
                        if bc > 1
                                let n .= ' '
                        endif
                        let bc -= 1
                endfor
                " add modified label [n+] where n pages in tab are modified
                if m > 0
                        let s .= '[' . m . '+]'
                endif
                " select the highlighting for the buffer names
                " my default highlighting only underlines the active tab
                " buffer names.
                if t + 1 == tabpagenr()
                        let s .= '%#TabLineSel#'
                else
                        let s .= '%#TabLine#'
                endif
                " add buffer names
                if n == ''
                        let s.= '[New]'
                else
                        let s .= n
                endif
                " switch to no underlining and add final space to buffer list
                let s .= ' '
        endfor
        " after the last tab fill with TabLineFill and reset tab page nr
        let s .= '%#TabLineFill#%T'
        " right-align the label to close the current tab page
        if tabpagenr('$') > 1
                let s .= '%=%#TabLineFill#%999Xclose'
        endif
        return s
endfunction

if getcwd() =~# '^\(/some/safe/path/\|/another/safe/path/\)'
  set secure exrc
endif
