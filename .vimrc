" vimの設定

" 表示
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set ruler "画面右下のカーソル位置表示
set cursorline "カーソル行の背景色を変える

" 入力
set encoding=utf-8
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "インデントをスペース2つ分に設定
set smartindent "オートインデント
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅（デフォルトでは無効: 0）
set shiftwidth=2 " vimが自動で生成する（読み込み時など）tab幅をスペース4つ文にする

" 保存されていないファイルがあるときに、vim を終了時に保存確認を行う
set confirm


" 検索
set hlsearch "検索文字列をハイライトする
set incsearch "インクリメンタルサーチを行う
set ignorecase "大文字と小文字を区別しない
set wrapscan "最後尾まで検索を終えたら次の検索で先頭に移る


" コマンドライン
" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
"コマンドラインの履歴を10000件保存する
set history=10000

" 動作環境
" OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set clipboard=unnamed,unnamedplus

" deleteキーで削除を有効にする
set whichwrap=b,s,h,l,<,>,[,],~
set backspace=indent,eol,start

" Yで行末までヤンク
nnoremap Y y$

" 行末スペースをハイライト
augroup HighlightTrailingSpaces
  autocmd!
    autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
    autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END
