let mapleader=";"
filetype on
filetype plugin on
set mouse=a
set encoding=utf-8
set noswapfile
" 默认使用系统剪切板
set clipboard=unnamed
" 设置快捷键将选中文本块复制至系统剪贴板
" vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
" nmap <Leader>p "+p
set incsearch
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示搜索结果
set hlsearch
" 高亮显示当前行
" set cursorline
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 粘贴模式
set pastetoggle=<F4>

" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
" za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠

"-------------------plugin----------------
" pathogen
" 将pathogen 自身也置于独立目录中，需指定其路径 
runtime bundle/pathogen/autoload/pathogen.vim
" 运行 pathogen
execute pathogen#infect()

" ctags indexer vimprj
" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" " 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>
" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
let g:indexer_dontUpdateTagsIfFileExists=1

" ctrlsf.vim
" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。
nnoremap <Leader>f :CtrlSF
" 键入 p 键，将在右侧子窗口中给出该匹配项的完整代码
" 如果有钟意的项，光标定位该项后回车，立即跳至新 buffer 中对应位置

" NERD Commenter
" Usage
" <leader>cc，注释当前选中文本
" <leader>cu，取消选中文本块的注释

" NerdTree
" 使用 NERDTree 插件查看工程文件。设置快捷键
nmap <f3> :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 回车，打开选中文件
" r，刷新工程目录文件列表
" I（大写），显示/隐藏隐藏文件
" m，出现创建/删除/剪切/拷贝操作列表

" autoclose
let g:autoclose_vim_commentmode = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" vim-gitgutter

" Omnicppcomplete
set completeopt=menuone,menu
let OmniCpp_SelectFirstItem = 2
" 自动关闭补全窗口
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
highlight Pmenu    ctermbg=darkgrey  ctermfg=black
highlight PmenuSel ctermbg=lightgrey ctermfg=black

" vim-airline
" 设置主题栏风格
" set t_Co=256
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#tab_nr_type = 1
"let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_min_count = 2 
"let g:airline#extensions#tabline#tab_min_count = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader><tab> :bnext<CR>
nmap <leader>d :bdelete<CR>

" Tagbar
nmap <f2> :TagbarToggle<CR>
