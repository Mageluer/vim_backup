" VIM配置文件，无插件版
" 编辑时间：2017-03-09
" 作者：Mageluer

" 让配置更改立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" >>
" 文件类型侦测
"
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
"
" <<

" >>
" 语法分析
"
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
"
" <<

" >>
" 文件编码
"
set fileencodings=utf-8,gb2312,gbk,cp936,latin-1
set fileencoding=utf-8
set termencoding=utf-8
set fileformat=unix
set encoding=utf-8
"
" <<

" >>
" 配色
"
" 配色方案
"colorscheme default
colorscheme desert
"colorscheme evening
"colorscheme slate
"colorscheme morning
" 背景色
set background=dark
" 指定配色方案是256色
set t_Co=256
"
" <<

" >>
" 状态栏美化
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat(dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage &Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly?Top/bot.
function! HighlightSearch()
    if &hls
        return 'H'
    else
        return ''
    endif
endfunction
hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe
"
" <<

" >>       
" 其他美化 
"           
" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 10.5
           
" 禁止折行 
set nowrap 
"           
" << 

" >>
" 营造专注气氛
"   
" 禁止光标闪烁
set gcr=a:block-blinkon0
   
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
   
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
   
" 启动 vim 时自动全屏
"autocmd VimEnter * call ToggleFullscreen()
"
" <<

" >>
" 备份设置
"
"vim禁用自动备份
set nobackup
set nowritebackup
set noswapfile
"
" <<

" >>
" 辅助信息
"
" 总是显示状态栏
set laststatus=2
 
"在屏幕底部显示光标所在的行、列位置
set ruler
 
" 开启行号显示
set number
 
" 高亮显示当前行/列
set cursorline
set cursorcolumn
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
 
" 高亮显示搜索结果
set hlsearch
" 
" <<

" >>
" 缩进
" 
" 自适应不同语言的智能缩进
filetype indent on

" 启用自动对齐功能，把上一行的对齐格式应用到下一行
set autoindent
" 依据上面的格式，智能的选择对齐方式，对于类似C语言编写很有用处
set smartindent
 
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
 
" 文件缩进及tab个数
au FileType html,python,vim,javascript setl shiftwidth=4
au FileType html,python,vim,javascript setl tabstop=4
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4

" C风格缩进
set cindent
set completeopt=longest,menu
" 
" <<

" >>       
" 代码折叠 
"           
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
"           
" << 

" >>
" 搜索
"
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 高亮搜索的字符串
set hlsearch
"
" <<

" >>
" 其他杂项
"
" vim 自身命令行模式智能补全
set wildmenu

"去掉有关vi一致性模式，避免以前版本的一些bug和局限，解决backspace不能使用的问题
set nocompatible
set backspace=indent,eol,start
set backspace=2

"设置帮助文件为中文(需要安装vimcdoc文档)
set helplang=cn

" 显示匹配的括号
set showmatch
"
" <<
