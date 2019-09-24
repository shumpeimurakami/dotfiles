set number
set nocompatible
set whichwrap=b,s,h,l,[,],<,>,~
set backspace=indent,eol,start
set undofile
set clipboard+=unnamed
set mouse=
nmap <silent> <Tab> 15<Right>
vmap <silent> <Tab> <C-o>15<Right>
nmap <silent> <S-Tab> 15<Left>
vmap <silent> <S-Tab> <C-o>15<Left>

" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " ファイルをtree表示してくれる
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'open-browser.vim'
NeoBundle 'tell-k/vim-browsereload-mac'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'Shougo/neocomplete.vim'
" My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

"molokoi
 colorscheme molokai

syntax on

set t_Co=256

"open-browser.vim
let g:netrw_nogx=1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

"browsereload
let g:returnApp = "iTerm"
nmap <Space>bc :ChromeReloadStart<CR>
nmap <Space>bC :ChromeReloadStop<CR>

"markdown
let g:previm_disable_default_css=1
let g:previm_custome_css_path = '/Users/mattn/public_html/style.css'


"neocomplete
"起動時に有効
let g:neocomplete#enable_at_startup=1
"ポップアップメニューで表示される候補の数
let g:neocomplete#max_list=50
"キーワードの長さ、デフォルトで80
let g:neocomplete#max_keyword_width = 80
let g:neocomplete#enable_ignore_case = 1
highlight Pmenu ctermbg = 6
highlight PmenuSel ctermbg = 5
highlight PmenuSbar ctermbg=0
inoremap <expr><CR> pumvisible()?neocomplete#close_popup():"<CR>"
