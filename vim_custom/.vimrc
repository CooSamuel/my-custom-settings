set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须
" 设置包括vundle和初始化相关的runtime path

set list
set lcs=tab:\|\ ,nbsp:%,trail:-
" 设定行首tab为灰色
highlight LeaderTab guifg=#666666
" 匹配行首tab
match LeaderTab /^\t/


let g:Powerline_colorscheme='solarized256'
syntax enable
syntax on " 自适应不同语言的智能缩进
filetype indent on " 将制表符扩展为空格
set expandtab " 设置编辑时制表符占用空格数
set tabstop=4 " 设置格式化时制表符占用空格数
set shiftwidth=4 " 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4 " 显示行号
set number
set smartindent " 开启新行时使用智能自动缩进

" 另一种选择, 指定一个vundle安装插件的路径

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    " 以下范例用来支持不同格式的插件安装.
    " 请将安装插件的命令放在vundle#begin和vundle#end之间.
    " Github上的插件
    " 格式为 Plugin '用户名/插件仓库名'
    Plugin 'tpope/vim-fugitive'
    " 来自 http://vim-scripts.org/vim/scripts.html 的插件
    " Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略


    " 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
    " Plugin 'git://git.wincent.com/command-t.git'
    " 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
    " Plugin 'file:///home/gmarik/path/to/plugin'
    "
    " 插件在仓库的子目录中.
    " 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下


    Plugin 'VundleVim/Vundle.vim'
    "Bundle 'Valloric/YouCompleteMe'
    "Plugin 'Valloric/YouCompleteMe'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'Lokaltog/vim-powerline'
    Plugin 'octol/vim-cpp-enhanced-highlight'
    "Bundle 'scrooloose/syntasic'
    Plugin 'scrooloose/nerdtree'


    "NERD tree
    let NERDChristmasTree=0
    let NERDTreeWinSize=35
    let NERDTreeChDirMode=2
    let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
    let NERDTreeShowBookmarks=1
    let NERDTreeWinPos="left"
    " Automatically open a NERDTree if no files where specified
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    "autocmd vimenter * if !argc() | NERDTree | endif
    " Close vim if the only window left open is a NERDTree
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    "Open a NERDTree
    map <F2> :NERDTreeToggle<CR>

    Plugin 'L9'
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

    " 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
    " Plugin 'ascenator/L9', {'name': 'newL9'}

    """"""""""""""""""""""""""""""
    " ycm settings
     """"""""""""""""""""""""""""""
     "let "g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_confirm_extra_conf'
     "let g:ycm_collect_identifiers_from_tag_files = 1
     "let g:ycm_seed_identifiers_with_syntax = 1
     "let g:ycm_confirm_extra_conf=0
     "let g:ycm_key_invoke_completion = '<C-/>'
     "nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>


" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须

filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
filetype plugin on
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后
