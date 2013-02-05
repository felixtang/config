set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
"
" indent
Bundle 'IndentAnything'
Bundle 'indentpython.vim'

" syntax
Bundle 'python.vim'
" 提供实时检查python代码语法的功能
Bundle 'pyflakes'
Bundle 'django.vim'
" 提供js语法高亮，和智能缩进(需要安装IndentAnything插件)
Bundle 'javascript.vim'
" 提供实时显示颜色的功能，如#FFFFFF
Bundle 'css.vim'
" coloscheme
Bundle 'wombat256.vim'
Bundle 'molokai'
Bundle 'desertedocean.vim'

" project
Bundle 'taglist.vim'
Bundle 'ctags.vim'

filetype plugin indent on     " required!
" or 
" filetype plugin on          " to not use the indentation settings set by plugins

" 开启语法高亮
syntax on

" 设置（软）制表符宽度为4
set tabstop=4
set softtabstop=4
" 设置缩进的空格数为4
set shiftwidth=4
" 设置自动缩进
set autoindent
set cindent

" 显示行号
set nu

" 试探换行符类型的顺序
set fileformats=unix,dos
set listchars=tab:>-
" vim内部使用的编码方式
set encoding=utf-8
" vim中当前文件的字符编码方式
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"关闭备份,不产生swp文件
set nobackup
set nowb

" 增量搜索
set incsearch
"高亮搜索
set hlsearch
"循环搜索
set wrapscan
"搜索时忽略大小写
set ignorecase

"输入括号时短暂跳到与之相匹配之处
set showmatch
"匹配括号的规则，增加针对html的<>
set matchpairs=(:),{:},[:],<:>

"让退格、空格、上下箭头遇到行首行尾时自动移到下一行
set whichwrap =b,s,<,>,[,]

" 高亮限制行长度
set colorcolumn=80

"配色
color desertedocean
set background=dark

" 打开文件，返回上次光标位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" 设置js的折叠层数
setlocal foldlevel=1
" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

" 配置taglist
let Tlist_Auto_Highlight_Tag=1
let Tlist_Auto_Update=1
let Tlist_Display_Tag_Scope=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Enable_Dold_Column=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_Use_SingleClick=1
" 使用F5显示和关闭taglist
nnoremap <silent> <F5> :TlistToggle<CR> 
