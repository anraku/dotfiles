"#####leader設定#####
" leaderをSpaceキーにする
let mapleader = "\<Space>"

"#####プラグイン設定#####
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
" file tree
Plug 'scrooloose/nerdtree'
" comment out 
Plug 'tyru/caw.vim'
" display git status in line
Plug 'airblade/vim-gitgutter'
" git
Plug 'tpope/vim-fugitive'
call plug#end()

set runtimepath+=~/.vim/after/ftplugin

"#####テキスト設定#####
set autowrite
set encoding=UTF-8
set guifont=DroidSansMono_Nerd_Font:h11

"#####コピー&ペーストの設定#####
set clipboard+=unnamed

"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=2 "インデントをスペース2つ分に設定
set shiftwidth=2  " 自動インデントでずれる幅
set smartindent "オートインデント
"set cursorline " カーソル行の背景色を変える
set backspace=indent,eol,start "バックスペースが効かなくなる事象に対しての対応策

"#####NERDTree設定#####
nnoremap <leader>o :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let g:NERDTreeShowBookmarks=1
nnoremap <Tab> <C-w>w
" ファイル指定せずvimを起動したらNERDTreeを表示する
" ファイル指定して起動した場合はNERDTreeを表示しない
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"#####vimコマンド設定#####
"" インサートモードの時に C-j でノーマルモードに戻る
imap <C-j> <esc>
" クイックフィクスリストの次の要素に移動する
map <C-n> :cnext<CR>
" クイックフィクスリストの前の要素に移動する
map <C-p> :cprevious<CR>
" クイックフィクスリスト閉じる
nnoremap <leader>a :cclose<CR>

" #####vim-gitgutterの設定#####
let g:gitgutter_max_signs = 1

"#####コメントアウト設定#####
nmap <C-K> <Plug>(caw:hatpos:toggle)
vmap <C-K> <Plug>(caw:hatpos:toggle)

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

"#####マウス設定#####
set mouse=a

"行番号の色を変更
highlight LineNr ctermfg=lightgray
