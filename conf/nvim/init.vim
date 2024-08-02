" vim 动词(动词表示对文本的操作)
" +----------+----------+--------------------------------------------------------+
" |d         |delete    |删除(不会进插入模式)                                    |
" +----------+----------+--------------------------------------------------------+
" |c         |change    |修改(会进插入模式)                                      |
" +----------+----------+--------------------------------------------------------+
" |y         |yank      |复制                                                    |
" +----------+----------+--------------------------------------------------------+
" |v         |visual    |选中                                                    |
" +----------+----------+--------------------------------------------------------+
" |p         |put       |粘贴                                                    |
" +----------+----------+--------------------------------------------------------+
"

" vim 名词(表示待编辑的文本对象)
" +----------+----------+--------------------------------------------------------+
" |w         |world     |一个单词                                                |
" +----------+----------+--------------------------------------------------------+
" |s         |sentence  |一个句子(以英文'.'结束作为一个句子)                     |
" +----------+----------+--------------------------------------------------------+
" |p         |paragraph |一个段落(不包含空行的内容块作为一个段落)                |
" +----------+----------+--------------------------------------------------------+
"

" vim 修饰符(可以理解为vim 介词, 表示待编辑文本的范围或者位置)
" +----------+----------+--------------------------------------------------------+
" |i         |inside    |表示在...之内(带i的命令不会包含周围空格)                |
" +----------+----------+--------------------------------------------------------+
" |a         |around    |表示环绕                                                |
" +----------+----------+--------------------------------------------------------+
" |t         |till      |直到某个字符(不包括该字符)                              |
" +----------+----------+--------------------------------------------------------+
" |f         |find      |直到某个字符(包括该字符)                                |
" +----------+----------+--------------------------------------------------------+
"


" vim 命令(动词+介词+名词):[删除|替换|复制|选中|移动]
" +----------+-------------------------------------------------------------------+
" |dw        |删除光标后的单词及其后空格, d2w:删除2个单词及其后空格              |
" +----------+-------------------------------------------------------------------+
" |diw       |删除光标所在位置的单词, 不删除其后空格                             |                                              
" +----------+-------------------------------------------------------------------+
" |de        |删除光标到单词尾的所有内容                                         |
" +----------+-------------------------------------------------------------------+
" |dj / dk   |删除光标行+上/下一行                                               |
" +----------+-------------------------------------------------------------------+
" |dh / dl   |删除光标左/右侧的1个字符(删除2个: d2h/d2l)                         |
" +----------+-------------------------------------------------------------------+
" |cw        |替换光标后的单词( 会进入插入模式 )                                 |
" +----------+-------------------------------------------------------------------+
" |ciw       |替换光标处的完整单词( 会进入插入模式 )                             |
" +----------+-------------------------------------------------------------------+
" |c2h / c2l |替换光标左侧/右侧的2个字符(会进入插入模式)                         |
" +----------+-------------------------------------------------------------------+
" |yj / yk   |复制光标行+上/下一行                                               |
" +----------+-------------------------------------------------------------------+
" |yh / yl   |复制光标左侧/右侧的1个字符(复制2个: y2h/y2l)                       |  
" +----------+-------------------------------------------------------------------+
" |ye        |复制光标到行尾的所有内容                                           |
" +----------+-------------------------------------------------------------------+
" |viw       |选中光标处一个单词(不包含其后空格)                                 |
" +----------+-------------------------------------------------------------------+
" |v2b       |向前选中2个单词                                                    |
" +----------+-------------------------------------------------------------------+
" |ve        |选中光标到行尾的所有内容(v模式下e可连续按)                         |
" +----------+-------------------------------------------------------------------+
" |xp        |交换2个字符的位置                                                  |
" +----------+-------------------------------------------------------------------+
" |ddp       |交行2行的位置                                                      |
" +----------+-------------------------------------------------------------------+
" |ea        |在单词末尾进入插入模式                                             |
" +----------+-------------------------------------------------------------------+
"

" vim 前缀命令g:g在Vim中是一个非常灵活的前缀命令,它可以与其他命令一起使用来实现各种功能
" +----------+-------------------------------------------------------------------+
" |gg        |跳转到文件开头(G跳转到文件末尾)                                    |
" +----------+-------------------------------------------------------------------+
" |gf        |打开光标所在文件路径的文件                                         |
" +----------+-------------------------------------------------------------------+
" |ge        |移动光标到前一个单词的末尾                                         |
" +----------+-------------------------------------------------------------------+
" |gu        |将单词转为全小写(guw:光标后小写, guiw:光标处单词转小写)| 字母大小写|
" +----------+-------------------------------------------------------| 互相转换用|
" |gU        |将单词转为全大写(gUw:光标后大写, gUiw:光标处单词转大写)| ~命令     |
" +----------+-------------------------------------------------------------------+
"

" vim 命令快捷键总结 : 功能自上而下依次为[插入|删除|替换|剪切|复制|选中|撤销|移动]
" +----------+-------------------------------------------------------------------+
" |命令      |功能                                                               |
" +----------+-------------------------------------------------------------------+
" |a         |在当前字符后, 进入[插入]模式                                       |
" +----------+-------------------------------------------------------------------+
" |A         |在当前行尾，进入[插入]模式                                         |
" +----------+-------------------------------------------------------------------+
" |o         |在下一行, 进入插入模式                                             |
" +----------+-------------------------------------------------------------------+
" |O         |在上一行, 进入插入模式                                             |
" +----------+-------------------------------------------------------------------+
" |i         |在当前位置, 进入插入模式                                           |
" +----------+-------------------------------------------------------------------+
" |I         |在当前行行首, 进入插入模式                                         |
" +----------+-------------------------------------------------------------------+
" |s         |删除当前字符, 进入插入模式(2s,删除光变后2个字符并进入插入模式)     |
" +----------+-------------------------------------------------------------------+
" |S         |删除当前行，进入插入模式(与cc效果相同)                             |
" +----------+-------------------------------------------------------------------+
" |x         |删除光标后的1个字符(不进入任何模式), 3x: 删除光标后的3个字符       |
" +----------+-------------------------------------------------------------------+
" |X         |删除光标前的1个字符, 2X: 删除光标前的2个字符                       |
" +----------+-------------------------------------------------------------------+
" |r         |精确替换一个字符(不进入输入模式),可视模式下会把选中内容全部替换    |
" +----------+-------------------------------------------------------------------+
" |R         |在当前行进入替换模式，直接输入替换的文本覆盖原文本                 |
" +----------+-------------------------------------------------------------------+
" |C         |删除从当前光标位置到本行末尾的所有字符, 并进入插入模式             |
" +----------+-------------------------------------------------------------------+
" |D         |剪切从当前光标位置到本行末尾的所有字符                             |
" +----------+-------------------------------------------------------------------+
" |Y         |复制整行                                                           |
" +----------+-------------------------------------------------------------------+
" |V         |进入可视行模式,可以按行选中文本                                    |
" +----------+-------------------------------------------------------------------+
" |ctrl+v    |进入可视块模式,可以选择多行中的相同列                              |
" +----------+-------------------------------------------------------------------+
" |u / Ctrl+r|撤销修改/恢复修改                                                  |
" +----------+-------------------------------------------------------------------+
" |b         |向左按单词移动                                                     |
" +----------+-------------------------------------------------------------------+
" |w         |向右按单词移动                                                     |
" +----------+-------------------------------------------------------------------+
" |e         |移动到单词末尾                                                     |
" +----------+-------------------------------------------------------------------+
" |h         |向左按字符移动, 2h为向左移动两个字符                               |
" +----------+-------------------------------------------------------------------+
" |l         |向右按字符移动, 2l为向右移动两个字符                               |
" +----------+-------------------------------------------------------------------+
" |j         |向下移动一行(注意:自定义映射已修改为j向上移动)                     |
" +----------+-------------------------------------------------------------------+
" |k         |向上移动一行(注意:自定义映射已修改为k向下移动)                     |
" +----------+-------------------------------------------------------------------+
"

" vim 个性化快捷键总结
" +----------+-------------------------------------------------------------------+
" |命令      |功能                                                               |
" +----------+-------------------------------------------------------------------+
" |q         |:q                                                                 |
" +----------+-------------------------------------------------------------------+
" |aa/ee     |光标回行首/尾                                                      |        
" +----------+-------------------------------------------------------------------+
" |ai/ei     |光标回行首/尾+进入插入模式                                         |        
" +----------+-------------------------------------------------------------------+
" |as        |光标回行首+删除第1个字符+并进入插入模式                            |
" +----------+-------------------------------------------------------------------+
" |a+空格    |删除光标后1个字符+加空格+并进入插入模式                            |
" +----------+-------------------------------------------------------------------+
" |-         |水平分屏                                                           |
" +----------+-------------------------------------------------------------------+
" |\         |垂直分屏                                                           |
" +----------+-------------------------------------------------------------------+
" |ya / yb   |选中全文复制到 vim剪贴板 / 系统剪贴板                              |
" +----------+-------------------------------------------------------------------+
" |YY        |选中整行复制到系统剪贴板                                           |        
" +----------+-------------------------------------------------------------------+
" |hi        |逆序显示历史命令                                                   |
" +----------+-------------------------------------------------------------------+
"

" 命令助记规则表(todo: 把所有命令都补充上)
" +-----------------------------------+------------------------------------+--------------------------------------+-----------------+
" |快捷键组合类型                     |示例                                |解释                                  |说明             |
" +-----------------------------------+------------------------------------+--------------------------------------+-----------------+
" |控制键 + 单词头¹/单词尾²           |¹ 空格+b : 显示buffer列表           |窗口控制键(空格) + buffer 单词头      |                 |
" |                                   |² 空格+d : 列表显示之前使用的命令   |窗口控制键(空格) + command单词尾      |                 |
" +-----------------------------------+------------------------------------+--------------------------------------+-----------------+
" |动词(单词首字母) + 名词            |g+Enter                             |generate + Enter, 产生一个换行        |与vim动词无关,本 |     
" |                                   |g+空格                              |generate + 空格 , 产生一个空格        |组快捷键仅适用于 |
" |                                   |d+Enter                             |delete + Enter  , 删除光标后的换行    |Normal模式       |
" +-----------------------------------+------------------------------------+--------------------------------------+-----------------+
"
" vim 插件快捷键总结
" -------------------------------------                    按插件归类(插件按英文首字母排序)
" +----------+----------+--------+--------- ----+
" |  插  件  |  快捷键  |  功能  |  快捷键总数  |
" +----------+----------+--------+--------------+
" 
" +----------+----------+--------------+
"

" -------------------------------------                    按前缀键归类
" +----------+----------+---------------------+--------+
" |  前缀键  |  触发键  |  所属插件  |  组合  |  功能  |        
" +----------+----------+------------+--------+--------+
" 

" mac nvim支持python3
" =============================================================================
" 步骤:
"   1. 系统需要先完成安装python3
"       $ brew install python3
"   2. 安装nvim自带的python支持
"       2.1 因为mac不允许直接通过pip方式下载python组件以防止损坏系统环境,所以通过python的虚拟环境完成下载,如下:
"           $ python3 -m venv ~/.venv       // 创建一个python虚拟环境
"           $ source ~/.venv/bin/activate   // 激活虚拟环境
"           $ python3 -m pip install neovim // 下载nvim的python支持
"           $ which python3                 // 在虚拟环境中查看python3的安装路径
"           $ 在init.vim中将python3安装路径赋值给g:python3_host_prog变量
let g:python3_host_prog = '~/.venv/bin/python3'

" 通用配置
" =============================================================================
let mapleader = ","      " 定义<leader>键
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件。在~/.vim/ftplugin/下创建不同语言的缩进格式文件，例如c为c.vim。
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set cursorline           " 高亮显示当前行
set showmatch            " 自动高亮匹配的括号
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set backspace=2          " 解决vim由于兼容vi导致back删除键失效
set hidden               " 允许不保存切换buffer
set autoread             " 文件在Vim之外修改过，自动重新读入
set helpheight=999       " 查看帮助文档全屏
" set sidescroll=10      " 设置Vim中侧向滚动的粒度
set scroll=20            " 设置鼠标滚动时的滚动粒度(Max:40)
set scrolloff=20         " 进行行滚动时，当前行始终保持在屏幕中间
set signcolumn=auto:4    " 设置左侧符号区域最多显示4个字符(auto表示有标志才显示,没有不显示)
set textwidth=1000       " 设置每行文本的宽度最大为1000个字符(避免文本在超过这个值时被自动折行,所以设置一个较大的值)

" 代码缩进和排版
" =============================================================================
set autoindent           " 与前一行同样等级缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set smartindent          " 智能的选择对齐方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " tab=空格
set tabstop=4            " tab等于4个空格(不同语言tab的空格数在语言类型文件中定义)
set shiftwidth=4         " 自动缩进空格数(换行时自动缩进的空格数)
set nowrap               " 禁止折行
set nofoldenable         " 禁用折叠代码

" vim 命令补全
" =============================================================================
" vim 控制命令行补全
set wildmenu                         " 命令模式下补全以菜单形式显示
set wildoptions=pum                  " 命令行模式候选项竖排列表显示
set wildmode=longest,full            " 自动补全时优先显示最长的匹配项，然后显示所有可能的匹配项
" Vim 中控制自动补全行为
set completeopt-=preview             " 补全时不显示窗口，只显示补全列表
set completeopt=menu,menuone,longest " 在自动补全时显示菜单，并在只有一个匹配项时自动完成，同时显示最长的匹配项


" 搜索设置
" =============================================================================
" set hlsearch           " 高亮显示搜索结果
set nohlsearch           " 关闭高亮搜索结果
set incsearch            " 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set ignorecase           " 搜索时大小写不敏感
set smartcase            " 智能大小写搜索

" vim 主题设置
" =============================================================================
set background=light
" colorscheme onedark


" vim 插件列表
" =============================================================================
call plug#begin('~/.config/nvim/plugged') " 设置nvim下vim-plug下载插件的路径
" -------------------------------------                                 git 相关
Plug 'airblade/vim-gitgutter'      " 实时显示git文件修改的地方
Plug 'tpope/vim-fugitive'          " git插件(显示branch,支持vim内使用git)
Plug 'rbong/vim-flog'              " 查看git graph
Plug 'zivyangll/git-blame.vim'     " 显示git blame
Plug 'christoomey/vim-conflicted'  " 有助于解决git合并冲突(未学)

" -------------------------------------                                 任务构建
Plug 'skywind3000/asynctasks.vim'  " vim内完成编辑&编译&运行
Plug 'skywind3000/asyncrun.vim'    " 同上

" -------------------------------------                                 调    试
"Plug 'lldb-tools/vim-lldb'        " 等待社区修复使用python3.12导致的
                                   " lldb插件问题

" -------------------------------------                                 代码注释
Plug 'tomtom/tcomment_vim'         " 快速注释代码

" -------------------------------------                                 头文件切换
Plug 'vim-scripts/a.vim'           " C代码,.c与.h切换

" -------------------------------------                                 vim 美化
Plug 'vim-airline/vim-airline'     " vim 状态栏美化
Plug 'vim-airline/vim-airline-themes' " vim airline主题
Plug 'flazz/vim-colorschemes'      " vim 状态栏主题

" -------------------------------------                                 语法标签类
Plug 'preservim/tagbar'            " 显示类/方法/变量
Plug 'kshenoy/vim-signature'       " 在当前行添加一个标签(mark)

" -------------------------------------                                 自动补全
Plug 'ycm-core/YouCompleteMe'      " 基于语义的自动补全插件，支持
                                   " C/C++、C#、Python、PHP等语言
Plug 'jiangmiao/auto-pairs'        " 自动补全括号对
Plug 'tpope/vim-endwise'           " ifdef/endif补全

" -------------------------------------                                 文件管理
Plug 'preservim/nerdtree'          " 显示文件目录列表
Plug 'Xuyuanp/nerdtree-git-plugin' " 显示 NERDTree 中文件和文件夹的 
                                   " Git 状态标志
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " NerdTree文件类型高亮
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " (插件作用同下)
Plug 'junegunn/fzf.vim'            " vim 快速搜索并打开一个文件，支持
                                   " 文件内容预览

" -------------------------------------                                 搜    索
Plug 'junegunn/vim-slash'          " 优化搜索,移动光标后清除高亮(目前
                                   " 没起作用)

" -------------------------------------                                 文本操作
Plug 'machakann/vim-sandwich'      " 添加/替换/删除成对的符号(含括/引号)
Plug 'godlygeek/tabular'           " 快速对齐文本
Plug 'tpope/vim-abolish'           " 处理单词变体(修改大小写、命名格式)
                                   " [未学]
Plug 'brooth/far.vim'              " 文本查找与替换(未学)
Plug 'tommcdo/vim-exchange'        " 简单文本交换(快速交换两个单词/句子)
Plug 'terryma/vim-expand-region'   " 扩展选中的文本范围到下一个最大的
                                   " 文本对象(字符->单词->行->段->文件)
                                   
" -------------------------------------                                 文本比较
Plug 'AndrewRadev/linediff.vim'    " 快速比较两个文本块

" -------------------------------------                                 Muti-Cursor
Plug 'terryma/vim-multiple-cursors'

" -------------------------------------                                 快速笔记
Plug 'mtth/scratch.vim'            " 顶部临时开个窗口记笔记,切换窗口会
                                   " 自动关闭                                   

" -------------------------------------                                 剪贴板
Plug 'christoomey/vim-system-copy' " 可以将内容复制到系统剪贴板(终端
                                   " 不同tab中的vim可以互相复制粘贴)
" 对于通过远程SSH运行Vim的情况下执行复制非常有用(当前未启用)
" Plug 'ojroques/vim-oscyank', {'branch': 'main'}                                            

" -------------------------------------                                 寄存器
Plug 'junegunn/vim-peekaboo'       " 打开vim的寄存器列表,从中选取曾经
                                   " 复制或者删除的内容
                                   
" -------------------------------------                                 quickfix列表
Plug 'sk1418/QFGrep'               " 可以在quickfix窗口中过滤结果
Plug 'stefandtw/quickfix-reflector.vim' " 可以编辑quickfix窗口,然后将
                                        " 内容写回buffer

" -------------------------------------                                 事务管理(Todolist)
Plug 'jceb/vim-orgmode'

" -------------------------------------                                 日期管理
Plug 'tpope/vim-speeddating'       " 快速对日期加/减天数
Plug 'mattn/calendar-vim'          " 显示日历

" -------------------------------------                                 光标移动
Plug 'easymotion/vim-easymotion'   " 让光标快速到达指定位置(包括行)

" -------------------------------------                                 buffer相关
Plug 'AndrewRadev/bufferize.vim'   " 在新buffer中显示命令的输出结果,
                                   " 可对输出结果进行复制

" -------------------------------------                                 其他优化插件
Plug 'tpope/vim-repeat'            " 使用.重复上次的插件操作(未起作用)
Plug 'voldikss/vim-floaterm'       " 支持在vim上悬浮终端窗口
Plug 'mbbill/undotree'             " 以列表显示vim撤回了哪些修改
                                   " 以及修改的内容 
Plug 'chrisbra/NrrwRgn'            " 将注意力集中在一个选定的区域内，暂
                                   " 时隐藏其余部分
Plug 'kien/rainbow_parentheses.vim' " 括号对彩色高亮(默认不开启)
Plug 'vim-scripts/utl.vim'



call plug#end()


" vim 插件配置
" =============================================================================
" -------------------------------------                    vim-gitgutter
" Note: vim-gitgutter只有对被git跟踪的文件才会在编辑时显示diff，
"       新增的文件编辑时不会显示
" Usage: 以下命令需要让光标位于hunk(修改处)上
"   @gh                  : 显示所有修改内容。命令速记, 'h'表示hunk(块，即修改的地方)
"   @(当前暂未映射)      : 暂存修改(会保留修改的内容，但是去掉符号标记)
"   @(当前暂未映射)      : 撤销修改
"   @(当前暂未映射)      : 对比显示diff: 左侧显示源文件，右侧显示修改的地方
"   @ha                  : 在quickfix中显示所有有修改的文件(会忽略更改未保存的文件)
"   @,d                  : 对比显示diff
"   @]c                  : 跳到下个修改块(hunk)
"   @[c                  : 跳到上个修改块(hunk)
"   @gn                  : 在修改块之间循环跳转

set updatetime=50                         " 检测更新时间
let g:gitgutter_sign_priority = 0         " 设置gitgutter标志的优先级,0为最高,数字越小优先级越高,
                                          " vim标志绘制顺序为由左往右(优先级由高到低)

let g:gitgutter_sign_allow_clobber = 0    " 禁止vim-gitgutter覆盖其他标记
" 禁止GitGutter抢占终端焦点,当GitGutter在终端中显示Git状态信息时,仍然可以在终端中输入命令或者进行其他操作
let g:gitgutter_terminal_reports_focus=0 
" 关闭浮动窗口方式显示hunk,而是在底部用新开窗口显示hunk
let g:gitgutter_preview_win_floating = 0
" 将所有修改块加载到quickfix列表中(会忽略所有未保存的更改,如果想在quickfix中显示必须:wq写入),
" 这样就可以通过点击hunk中的修改直接转到文件
nnoremap ha :Gqf<CR>
command Gqf GitGutterQuickFix | copen

" 控制是否全局启动GitGutter插件,按一次显示diff符号及类型,再按一次关闭
" nnoremap <Leader>c :GitGutterToggle<cr>
" 对比显示diff: 左侧显示源文件，右侧显示修改的地方
nnoremap <leader>d :GitGutterDiffOrig<cr>

" 预览当前文件的所有修改块(命令助记: _g_it _h_unk)
nmap gh <Plug>(GitGutterPreviewHunk)   
" 暂存修改(当前暂未映射)
" nmap <未映射> <Plug>(GitGutterStageHunk)     
" 撤销修改(当前暂未映射)
" nmap <未映射> <Plug>(GitGutterUndoHunk)      

" git diff状态标志的颜色
highlight GitGutterAdd    cterm=bold ctermfg=22    " 新增的内容"+" 
highlight GitGutterChange cterm=bold ctermfg=130   " 修改的内容"~"
highlight GitGutterDelete cterm=bold ctermfg=1     " 删除的内容"-"

set foldtext=gitgutter#fold#foldtext()  " 折行的显示方式：+-- 45 lines (*): abcdef

" 折叠所有未更改的行, 可使用'zr' 展开大块上方和下方的 3 行上下文
" 按'z', 折叠所有未更改的行, 按'zr'前后各展开3行
nnoremap z :GitGutterFold<cr>   

" 增强 '[c' 和 ']c' 的跳转，在修改块之间跳转时可循环遍历所有缓冲区中的块
function! NextHunkAllBuffers()
  let line = line('.')
  GitGutterNextHunk
  if line('.') != line
    return
  endif

  let bufnr = bufnr('')
  while 1
    bnext
    if bufnr('') == bufnr
      return
    endif
    if !empty(GitGutterGetHunks())
      1
      GitGutterNextHunk
      return
    endif
  endwhile
endfunction

function! PrevHunkAllBuffers()
  let line = line('.')
  GitGutterPrevHunk
  if line('.') != line
    return
  endif

  let bufnr = bufnr('')
  while 1
    bprevious
    if bufnr('') == bufnr
      return
    endif
    if !empty(GitGutterGetHunks())
      normal! G
      GitGutterPrevHunk
      return
    endif
  endwhile
endfunction

nmap <silent> ]c :call NextHunkAllBuffers()<CR>
nmap <silent> [c :call PrevHunkAllBuffers()<CR>

" 在跳转最后一个修改块时，将从头进行跳转(仅对当前buffer)
function! GitGutterNextHunkCycle()
  let line = line('.')
  silent! GitGutterNextHunk
  if line('.') == line
    1
    GitGutterNextHunk
  endif
endfunction
" 按'gn'在修改块间循环跳转(仅对当前buffer)
nmap <silent> gn :call GitGutterNextHunkCycle()<CR>

" -------------------------------------                    YCM
" Note: YCM 最初为C系列使用基于libclang的引擎,但用户应该迁移到clangd(也就是使用clangd
"       来编译ycm_core库来支持对C语言的补全),因为clangd提供了更多功能和更好的性能
"   
"   1. YCM 配置步骤：
"       1.1. 首先编译对应语言的ycm_core库，以支持对该语言的语义补全
"            编译ycm_core库可通过YCM自带的脚本install.py(在YouCompleteMe目录下)来编译, 例如对于C语言：
"            @ C语言: 执行python3 install.py --clangd-completer --verbose(通过clangd编译YCM,为
"                     C系列语言提供语义支持),这个过程会下载clangd二进制保存在YouCompleteMe
"                     目录下的third_party/clangd/output中。但是国内很大概率会卡在下载clangd的过
"                     程,如果卡住了,通过如下操作即可:
"                       (1) 第一步,先下载llvm,通过如下命令:
"                                $ brew install llvm
"                           clangd属于llvm中的一个工具,llvm下载完成后会包含clangd
"                           下载完成后在.zshrc中添加:
"                                export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
"                           然后更新.zshrc, 执行:
"                                $ source ~/.zshrc
"                           最后在init.vim中添加下面的语句:
"                                let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'
"                           这样YCM的build.py脚本就可以找到clangd二进制进行编译
"                       (2) 第二步,修改ycm的build.py脚本,注释掉下载clangd的代码
"                                $ vim ~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/build.py
"                           注释掉下面代码区域中的DownloadClangd( Print )语句:
"                                +---------------------------------------------------------------------+
"                                |        def EnableClangdCompleter( Args ):                           |
"                                |          if Args.quiet:                                             |
"                                |            sys.stdout.write( 'Setting up Clangd completer...' )     |
"                                |            sys.stdout.flush()                                       |
"                                |                                                                     |
"                                |          def Print( msg ):                                          |
"                                |            if not Args.quiet:                                       |
"                                |              print( msg )                                           |
"                                |                                                                     |
"                                |          # DownloadClangd( Print )   # 注释掉此句                   |
"                                |                                                                     |
"                                |          if Args.quiet:                                             |
"                                |            print( 'OK' )                                            |
"                                +---------------------------------------------------------------------+
"                       (3) 第三步,重新执行install.py编译ycm_core库,在YouCompleteMe目录下执行如下命令:
"                                $ python3 install.py --clangd-completer --verbose
"                       上述三步完成后,YCM插件就可以正常工作了
"       1.2. 加载YCM的库索引配置文件.ycm_extra_conf.py, 这个文件在YouCompleteMe/third_party/ycmd/examples中,
"            可以将这个文件保存在~/.config/nvim/中, 然后在.vimrc中添加let g:ycm_global_ycm_extra_conf='~/.config/nvim/.ycm_extra_conf.py'
"            这个文件主要是给YCM的补全功能提供一些库的索引。如果没有可以在文件的tags下面追加头文件路径。
"            加入的格式为: '-isystem'然后有个逗号, 下面加路径。
"            [注]: 如果引用的头文件路径过多引起卡顿，可以在项目目录中单独放一个.ycm_extra_conf.py。
"            其中ycm_global_ycm_extra_conf方式表示.ycm_extra_conf.py是一个全局路径配置，我们也可以为
"            每一个工程配置一个文件，只需要在.vimrc中添加: let g:ycm_confirm_extra_conf=0。
"            这样当你使用vim编辑代码文件时，会自动搜寻并加载工程目录下的配置文件
"

" Usage:
"       @YcmDiags : 命令模式下使用,在quickfix中显示所有诊断信息,可以快速跳转到指定的错误

" 使用libclang.so来作为YCM对C语义补全的支持(通过安装llvm自动下载clangd，其路径设置如下)
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'
" 加载全局YCM 配置文件
let g:ycm_global_ycm_extra_conf='~/.config/nvim/.ycm_extra_conf.py'
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 从第1个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" YCM 诊断相关配色
let g:ycm_error_symbol = '✘'
let g:ycm_warning_symbol = '⚠️'
highlight YcmErrorSign ctermfg=88 ctermbg=NONE    " 错误标志背景
highlight YcmWarningSign ctermbg=NONE             " 警告标志背景
highlight YcmErrorLine ctermbg=NONE               " 错误标志所在行的背景
highlight YcmWarningLine ctermfg=NONE             " 警告标志所在行的背景
highlight YcmErrorSection ctermfg=NONE ctermbg=NONE
highlight YcmWarningSection ctermfg=NONE ctermbg=yellow
highlight SignColumn ctermbg=NONE                 " 行号旁边标记列的背景色
" YCM 诊断信息显示
let g:ycm_show_diagnostics_ui = 1       " 打开 YCM 的诊断显示功能
let g:ycm_enable_diagnostic_signs = 1   " 显示诊断标志

" 基于语义自动补全函数
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

" YCM 弹出菜单(补全列表)相关
highlight PMenu cterm=NONE ctermfg=15 ctermbg=23           " 列表背景
highlight PMenuSel cterm=NONE ctermfg=15 ctermbg=106       " 列表选中项的背景
highlight PmenuSbar cterm=NONE ctermfg=NONE ctermbg=23     " 弹出菜单的滚动条区域背景
highlight PmenuThumb cterm=NONE ctermfg=white ctermbg=23   " 滚动条区域中的拖动条颜色

" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 显示自动补全候选项时使用菜单(menu)并且只显示一个匹配项(menuone)
set completeopt=menu,menuone
" 禁用自动补全时的预览功能，在自动补全时不会显示预览信息
let g:ycm_add_preview_to_completeopt=0

" 仅对白名单列表里的文件类型才启用 YCM, 避免打开延迟
let g:ycm_filetype_whitelist = {
        \ 'c': 1,
        \ 'cpp': 1,
        \ 'py': 1,
        \ 'go': 1,
        \ 'vim': 1,
        \ 'sh': 1,
        \ 'zsh': 1,
        \ }

" -------------------------------------                    nerdtree
" Usage:
"   @,n : 打开Nerdtree窗口,显示文件夹和文件列表
"
"   Nerdtree 操作命令
"   (1) 文件/文件夹操作
"       Note: root目录 = 顶层目录 = 根目录,表示Nerdtree目录的根目录
"       @u   : 将root目录向上移动一个目录
"       @U   : 与u相同,但会保持旧的root目录是打开状态
"       @e   : 进入文件夹内部浏览, 会在右侧开启小窗口进入文件夹列表
"       @O   : 递归地打开当前文件夹下的所有文件夹
"              Warn: nerdtree展开的文件夹如果包含数量巨大的子文件夹/子文件,Nerdtree会有很大的延迟,
"                    可以改用vim-floaterm插件提供的yazi文件管理器窗口,打开方式:
"                    ① vim命令: FloatermNew yazi
"                    ② 快捷键 : 空格 + y 
"       @o   : 可以打开① 文件/② 文件夹
"              ① 文件   : 在右侧窗口中打开文件
"              ② 文件夹 : 打开/关闭文件夹(按一下打开,再按关闭)
"       @x   : 关闭父级文件夹
"       @X   : 递归关闭当前文件夹下的所有文件夹
"       @p   : 返回到父目录
"       @P   : 返回到root目录(顶层目录/根目录)
"       @go  : 在预览窗口中打开文件, 光标将仍然保留在Nerdtree窗口中, 用于预览多个文件特别有用.
"       @i   : 以水平分割窗口打开文件
"       @gi  : 以水平分割窗口打开文件, 但光标仍然保留在Nerdtree窗口
"       @s   : 以垂直分割窗口打开文件
"       @gs  : 以垂直分割窗口打开文件, 但光标仍然保留在Nerdtree窗口
"       @t   : 在新标签页打开选择的文件, 并全屏
"       @T   : 在新标签页静默打开选择的文件, 并全屏, 因为是静默, 所以不会跳转到新窗口
"       @C   : 将当前所选文件夹改为根目录, 即将该文件夹作为顶层目录, 与O不同, O是在当前视图下将文件夹展开, C则是直接进入到文件夹
"       @cd  : 将当前文件夹改为CWD(当前工作目录)
"       @CD  : 将文件夹目录跳转到CWD(当前工作目录)中, 即将CWD作为顶层目录
"              Note: 要CD的目录只有是cd的子目录才能直接用CD把目录设置为Nerdtree的顶层目录。例如,用cd设置了CWD=/A/B/C,此时
"                    vim的工作目录位于C,如果现在想用CD设置B为顶层目录会无效,因为B不是C的子目录, 而是C的父级目录。所以要想
"                    用CD把目录设置为顶层目录,必需满足该目录是CWD(即cd设置的目录)的子目录。所以一般先用cd设置CWD,然后再用
"                    CD来设置想要成为顶层目录的目录
"       @m   : 对所选择的文件或文件夹弹出编辑菜单, 包括修改文件名、复制、移动、删除等操作
"       @I   : 显示系统隐藏文件
"       @f   : 开/关文件过滤器,Nerdtree启动时候会默认开启过滤器,不显示过滤的文件/文件夹,如果想显示按下f。
"              在'let NERDTreeIgnore=[]'的[]中添加要过滤的文件/文件夹
"       @FL  : 文件右侧显示文件总行数
"       @B   : 隐藏/显示书签, 如果显示书签, 还会将光标自动跳转至书签
"              <1> Nerdtree书签(Bookmark)操作
"              @:Bookmark             +name     : 创建书签(为文件/文件夹), 命令后跟要设置的名字,例如 Bookmark name
"              @:ClearBookmarks                 : 清除指定的书签,后跟要删除的书签名,例如 ClearBookmarks name
"              @:ClearAllBookmarks              : 清除所有书签
"              @:OpenBookmark         +bookmark : 打开书签,后跟书签名,对于文件夹书签,会将文件夹设为新根;对于文件书签,
"                                                 会在右侧窗口打开该文件以供编辑
"              @:RevealBookmark       +bookmark : 显示书签位置,后跟书签名
"              @:BookmarkToRoot       +bookmark : 将与书签对应的目录设为新的根目录,如果书签指向文件,则将改用文件父级目录作根目录
"              @:EditBookmarks                  : 打开书签文件进行手动编辑, 例如删除无效书签
"              @:ReadBookmarks                  : 重新读取书签
"
"   (2) 关闭&移动
"       @q          : 退出NerdTree窗口
"       @D          : 删除书签(在最上方的bookmark list里选择要删除的书签,按D删除光标所在行显示的书签)
"       @F          : 隐藏文件(将不显示任何文件,只显示文件夹),再按一次恢复文件显示
"       @ctrl +  j  : 移动到同级的下一个目录
"       @ctrl +  k  : 移动到同级的上一个目录
"       @K          : 移动到同级目录的第一个(在上方)
"       @J          : 移动到同级目录的最后一个(在下方)
"
"   (3) 全屏
"       @A  : 全屏进入NerdTree窗口(再按一次退出全屏窗口)
"
"   (4) 刷新
"       @r  : 刷新当前文件夹的缓存, 使界面刷新
"       @R  : 刷新整个文件夹树的缓存, 使整个界面更新
"
"   (5) 帮助
"       @?  : 快速显示帮助, 忘记命令时使用

nnoremap <silent> <leader>n :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
" let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowExpandable='›'
" let g:NERDTreeDirArrowCollapsible='▼'
let g:NERDTreeDirArrowCollapsible='⌄'
highlight NERDTreeUp ctermfg=25
highlight NERDTreeDir ctermfg=23
highlight NERDTreeDirSlash ctermfg=23
highlight NERDTreeOpenable ctermfg=23
highlight NERDTreeClosable ctermfg=23
highlight NERDTreeExecFile ctermfg=1

" 设置Nerdtree过滤器要忽略掉的文件/文件夹
" Note: '\.d$[[dir]]', '\.o$[[file]]', 'tmp/cache$[[path]]'分别表示文件夹、文件、路径
let NERDTreeIgnore=['\.git$[[dir]]', '\.vscode$[[dir]]', '\.dSYM$[[dir]]', 'tags']

" -------------------------------------                    nerdtree-git-plugin
" Note: git状态只有在git仓库中才能正确显示，没有git信息的
"       目录无法显示，因为获取不到git元数据
let g:NERDTreeGitStatusGitBinPath = '/usr/bin/git'
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
let g:NERDTreeGitStatusShowClean = 1
let g:NERDTreeGitStatusShowIgnored = 1      " 显示ignore状态
" Note: git文件状态含义
"     @Modified      [ M ]   (已修改):  文件有修改
"     @Staged        [ S ]   (暂  存):  文件的当前版本已经被添加到了暂存区（Index）中，
"                                       准备提交到 Git 仓库中
"     @Untracked     [ + ]   (未跟踪):  表示文件存在于工作目录中，但尚未被 Git 跟踪。这
"                                       通常是新创建的文件，Git 不会自动跟踪它们
"     @Renamed       [ R ]   (重命名):  表示文件在提交中被重命名了
"     @Unmerged      [ U ]   (未合并):  表示文件存在于一个冲突的合并中，需要手动解决冲突后才能继续
"     @Deleted       [ - ]   (已删除):  表示文件在提交中被删除了
"     @Dirty         [ ! ]       (脏):  表示工作目录中有未被暂存的改动
"     @Ignored       [ I ]   (已忽略):  表示文件被添加到了.gitignore 中，Git 将忽略对这些文件的跟踪和管理
"     @Clean         [ √ ]   (干  净):  表示工作目录中没有未被跟踪的文件，也没有未提交的修改
"     @Unknown       [ ? ]   (未  知):  表示 Git 不识别文件的状态，通常是因为文件不在 Git 仓库中
" Note:
"     表示文件的git状态符号颜色在.vim/after/syntax/nerdtree.vim中进行设置
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'M',
                \ 'Staged'    :'ꓢ',
                \ 'Untracked' :'+',
                \ 'Renamed'   :'R',
                \ 'Unmerged'  :'U',
                \ 'Deleted'   :'-',
                \ 'Dirty'     :'!',
                \ 'Ignored'   :'I',
                \ 'Clean'     :'√',
                \ 'Unknown'   :'?',
                \ }
highlight NERDTreeFlags ctermfg=22      " git 状态的[ ]颜色

" -------------------------------------                    airline
" Usage:
"       @空格+数字 : 切换到数字对应的buffer
"       @[         : 切换到上一个buffer(递减buffer编号)
"       @]         : 切换到下一个buffer(递增buffer编号)
" Note:
"     Vim 状态栏(trailing、mixed-indent、mix-indent-file)的含义:
"         @Trailing (显示行尾空格): 显示行尾存在空格的行
"         @Mixed-indent(显示混合缩进): 显示当前行的混合缩进情况。
"           混合缩进是指当前行的缩进方式与文件中其他行的缩进方式不一致
"         @Mixed-indent-file(显示文件中的混合缩进):将文件中存在混合缩进的行数显示在状态栏中
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_theme="luna"                              " vim 状态栏主题
let g:airline#extensions#tabline#enabled = 1            " 顶部显示标签
let g:airline#extensions#tabline#show_splits = 1        " 显示每个tab打开的分割(仅当tab打开时)[好像没生效]
let g:airline#extensions#tabline#show_tabs = 1          " 显示tab，无论数量多少
let g:airline#extensions#tabline#show_tab_count = 1     " 显示tab数量
let g:airline#extensions#tabline#tab_nr_type = 1        " tab编号的显示类型(只显示序号，不显示该tab下分割的buffer数)
let g:airline#extensions#tabline#tabnr_formatter = 'tabnr' "tab显示样式
let g:airline#extensions#tabline#show_tab_nr = 1        " 显示tab编号
let g:airline#extensions#tabline#show_tab_type = 1      " 显示类型:[buffers]/[tabs]
let g:airline#extensions#tabline#formatter = 'unique_tail' " buffer文件只显示文件名,不显示路径


let g:airline#extensions#branch#enabled = 1     " 底部状态栏显示git分支
let g:airline#extensions#hunks#enabled = 1      " 底部状态栏显示修改记录
let g:airline#extensions#hunks#non_zero_only = 1 " 仅当有修改时显示
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-'] " 底部状态栏显示增加/修改/删除的标记符号
let g:airline#extensions#ycm#enabled = 1        " 显示YCM检测到的当前文件中的错误和警告数量

let g:airline#extensions#tagbar#enabled = 1     " tagbar扩展[暂没明确作用]
let g:airline#extensions#fzf#enabled = 1        " fzf扩展[暂没明确作用]


let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'
let g:airline_symbols.branch = '⎇ '             " git分支图标
let g:airline_symbols.readonly = '🔒'           " 只读文件标记
let g:airline_symbols.colnr = '❯'               " 列符号
let g:airline_symbols.linenr = ' ❯'             " 行符号
let g:airline_symbols.maxlinenr = '🏁 '         " 行总数标记

" 开启buffer编号显示，按数字1、2等切换buffer,按-/+来递减/递增buffer
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <Space>1 <Plug>AirlineSelectTab1
nmap <Space>2 <Plug>AirlineSelectTab2
nmap <Space>3 <Plug>AirlineSelectTab3
nmap <Space>4 <Plug>AirlineSelectTab4
nmap <Space>5 <Plug>AirlineSelectTab5
nmap <Space>6 <Plug>AirlineSelectTab6
nmap <Space>7 <Plug>AirlineSelectTab7
nmap <Space>8 <Plug>AirlineSelectTab8
nmap <Space>9 <Plug>AirlineSelectTab9
nmap [ <Plug>AirlineSelectPrevTab
nmap ] <Plug>AirlineSelectNextTab
" buffer编号样式
let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '⓿ ',
        \ '1': '① ',
        \ '2': '② ',
        \ '3': '③ ',
        \ '4': '④ ',
        \ '5': '⑤ ',
        \ '6': '⑥ ',
        \ '7': '⑦ ',
        \ '8': '⑧ ',
        \ '9': '⑨ '
        \}

" airline 依赖的扩展插件
" -------------------------------------                      vim-flog [airline extension]
" Usage: 
"   @ctrl+l     : 打开git commit graph
"   @ctrl+n     : 直接打开下一个commit
"   @ctrl+p     : 打开上一条commit
"   @u          : 刷新graph
"   @a          : 显示所有分支
"   @gq         : 退出git commit graph
nnoremap <C-l> :Flog<cr>                    " ,+l打开git提交历史


" -------------------------------------                      tagbar
" 了解tagbar: https://github.com/vimcn/tagbar.cnx/blob/master/tagbar.cnx
" Usage:
"    @<F1>              :显示键映射帮助。
"    @<CR>/<Enter>      :跳转到当前光标下的 tag。如果是伪标签或一般的头信息则没作用.
"    @p                 :源文件跳转到当前光标下的 tag。但光标停留在 Tagbar 窗口。
"    @<LeftMouse>       :如果点击折叠图标，按折叠的当前状态开打开或关闭折叠。
"    @<2-LeftMouse>     :同 <CR>。如果希望使用单击替代双击，参考 |g:tagbar_singleclick|。
"    @<Space>           :在命令行显示当前 tag 的原型信息。(比如行号)
"    @+/zo              :打开当前光标下的折叠。
"    @-/zc              :如果光标下有折叠则关闭光标下的折叠，如果没有则关闭当前的折叠。
"    @o/za              :切换光标下的折叠状态，如果光标下没有折叠，切换当前的折叠状态。
"    @*/zR              :通过设置折叠级别(foldlevel)为 99 来打开所有的折叠。
"    @=/zM              :通过设置折叠级别为 0 来关闭所有的折叠。
"    @<C-N>             :转到下一个顶层 tag。
"    @<C-P>             :转到前一个顶层 tag。
"    @s                 :在 tag 名称排序和文件顺序排序中切换。
"    @x                 :切换 Tagbar 窗口的最大化。
"    @q                 :关闭 Tagbar 窗口。
let g:tagbar_width = 30
nnoremap <silent> <leader>t :TagbarToggle<cr>
let g:tagbar_sort = 0           " tagbar按照标签在文件中出现的顺序排序,1为按英文首字母顺序排列
let g:tagbar_autofocus = 1      " 在 Tagbar 窗口打开时，光标会自动移动到 Tagbar 窗口
" @TagbarKind: Tagbar 种类，通用的类型比如函数和变量的头。
highlight TagbarKind ctermfg=23
" @TagbarScope: Tagbar 范围，定义范围的 tags，比如 class,struct 等。
highlight TagbarScope ctermfg=25
" @TagbarType: tag 或范围的类型，如果是有的话。
highlight TagbarType ctermfg=1
" @TagbarSignature: 函数签名(参数颜色)
highlight TagbarSignature ctermfg=89
" @TagbarPseudoID: 星号表示伪标签。
" highlight TagbarPseudoID ctermfg=1
" @TagbarFoldIcon: 可折叠 tags 左边的图标。
highlight TagbarFoldIcon ctermfg=130
" @TagbarHighlight: 自动高亮的当前 tag 的颜色。
" @TagbarAccessPublic: "public" 可见性/可访问性符号(结构体成员前面的标识符)
highlight TagbarAccessPublic ctermfg=1
" @TagbarAccessProtected: "protected" 可见性/可访问性符号。
highlight TagbarAccessProtected ctermfg=1
" @TagbarAccessPrivate: "private" 可见性/可访问性符号。
highlight TagbarAccessPrivate ctermfg=1

" -------------------------------------                    fzf
" Usage:
"       @tab键  : 选择多个
"       @空格+f : 打开文件列表
"       @,+g    : 显示当前目录下所有git文件(不带git状态)
"       @,+sg   : 显示当前目录下所有git文件(带git状态)
"       @空格+b : 显示buffer列表
"       @空格+a : 显示commit列表(源代码所有commit)
"       @空格+c : 显示当前 buffer 的 commit 列表(仅当前文件的commit)
"       @空格+e : 列表显示之前打开过的文件
"       @空格+d : 列表显示之前使用的命令(vim函数或系统命令)
"        Tips: 空格+d会显示历史命令,选中命令后,直接Enter会执行该命令,如果
"              想在该命令的基础上进行修改,可以按Ctrl+e,命令会被复制到命令
"              行,可以在此基础上继续编辑
       
" 打开文件搜索列表,默认显示当前目录文件。查找指定路径可给Files函数传入路径参数，例如 :Files path, 命令助记(f = _f_iles)
nnoremap <Space>f :Files<cr>
" 显示所有git文件(文件不显示git状态)
nnoremap <silent> <Leader>g :GFiles<cr>
" 显示所有git文件(文件显示git状态)
nnoremap <silent> <Leader>sg :GFiles?<cr>
" 打开buffer列表, 命令助记(b = _b_uffer)
nnoremap <silent> <Space>b :Buffers<cr>
" 打开 commit 列表(依赖fugitive.vim插件), 命令助记(a = _a_ll commits)
nnoremap <silent> <Space>a :Commits<cr>
" 打开当前 buffer 的 commit 列表, 命令助记(c = burrer _c_ommit)
nnoremap <silent> <Space>c :BCommits<cr>
" 显示commit的diff差异时,用垂直窗口分割进行对比
set diffopt+=vertical

" 列表显示之前打开过的文件, 命令助记(e = fil_e_)
nnoremap <silent> <Space>e :History<cr> 
" 列表显示之前使用的命令, 包括vim函数或系统命令, 命令助记(d = comman_d_)
nnoremap <silent> <Space>d :History:<cr>

" 设置fzf窗口的高度和宽度
let g:fzf_layout = { 'window': { 'height': 1.0, 'width': 1.0 } }

" fzf搜索框颜色
"       @fg        : 列表项字体颜色
"       @fg+       : 列表当前项字体颜色
"       @bg        : 窗口背景色
"       @bg+       : 列表当前项背景色
"       @hl        : 突出显示的子字符串(列表)
"       @hl+       ：突出显示的子字符串(当前)
"       @preview-bg: 右侧预览窗口背景色
"       @info      : 预览框里的行信息 
"       @border    : 边框色
"       @gutter    : 文件列表左侧竖线
"       @prompt    : 搜索类型标记(path/gitfile)
"       @pointer   : 列表左侧指示箭头
"       @query     : 输入字体颜色
let g:fzf_colors =
                        \{'fg':         ['fg', 'NERDTreeDir'],
                        \ 'fg+':        ['fg', 'Error'],
                        \ 'bg':         ['bg', 'Normal'],
                        \ 'bg+':        ['bg', 'airline_c'],
                        \ 'hl':         ['fg', 'NERDTreeExecFile'],
                        \ 'hl+':        ['bg', 'airline_tabmod_right'],
                        \ 'preview-bg': ['bg', 'Normal'],
                        \ 'info':       ['bg', 'airline_c'],
                        \ 'border':     ['bg', 'airline_c'],
                        \ 'gutter':     ['bg', 'Normal'],
                        \ 'prompt':     ['bg', 'airline_b'],
                        \ 'pointer':    ['bg', 'Error'],
                        \ 'marker':     ['bg', 'Error'],
                        \ 'spinner':    ['bg', 'Error'],
                        \ 'query':      ['fg', 'Visual'],
                        \ 'header':     ['bg', 'Error'] }

" -------------------------------------                    git-blame
" Usage:
"       @ctrl+s : 查看git blame信息
nnoremap <C-s> :<C-u>call gitblame#echo()<CR>

" -------------------------------------                    vim-floaterm
" Usage:
"       @空格 + t : 在vim上打开悬浮终端窗口,再按一下隐藏
"       @空格 + y : 打开yazi文件管理器浮动窗口
" 在vim上打开悬浮终端       
let g:floaterm_keymap_toggle = '<Space>t'
let g:floaterm_width = 1.00
let g:floaterm_height = 1.02
let g:floaterm_opener='edit'    " 从yazi打开文件时从当前buffer打开(默认会用水平分割窗口打开文件)
highlight Floaterm ctermbg=NONE
highlight FloatermBorder cterm=bold ctermfg=23 ctermbg=NONE
nnoremap <silent> <Space>y :FloatermNew yazi<CR>

" -------------------------------------                    asyncrun
" Repo: 
"       https://github.com/skywind3000/asynctasks.vim/tree/master 
" Usage:
"       @`      : 编译并运行
"       @ctrl+g : 在项目中查找关键词
let g:asyncrun_open = 15             " quickfix 窗口高度
let g:asynctasks_term_rows = 10      " 终端高度为 10"
let g:asynctasks_term_pos = 'bottom' " 终端位置
"let g:asynctasks_term_pos = 'tab'   " 内置终端将在vim buffer中打开

" 运行asynctask命令后，将光标焦点保持在quickfix窗口上
"   @编译并运行
"     Note: run为async插件定义的单个任务命令，可在.task文件中定义
function! RunAndSwitch()
    :AsyncTask run
    :wincmd p
endfunction
noremap <silent> ` :call RunAndSwitch()<cr>
"   @在项目中查找关键词
"     Note: 显示所有包含关键字的代码行，选中行按Enter新打开文件
"             并跳转到关键字所在行
function! GrepAndSwitch()
    :AsyncTask grep
    :wincmd p
endfunction
noremap <silent> <C-g> :call GrepAndSwitch()<cr>

" -------------------------------------                    undotree
" Usage:
"       @ctrl+u : 打开撤销操作列表
nnoremap <silent> <C-u> :UndotreeToggle<CR>       
let g:undotree_DiffAutoOpen = 1         " 自动打开差异窗口，显示当前状态和选择的历史状态之间的差异
let g:undotree_SetFocusWhenToggle = 1   " 打开undo面板后，光标自动聚焦到undo面板
let g:undotree_ShortIndicators = 1      " 使用短指示器来表示撤销树中的分支关系
let g:undotree_WindowLayout = 2         " undo面板布局类型
let g:undotree_DiffpanelHeight = 20     " undo diff面板高度
let g:undotree_SplitWidth = 25          " undo左侧面板宽度

" -------------------------------------                    NrrwRgn
" Usage:
"       @mn     : 在新的缩小窗口中打开所选区域(原插件命令:NR)
"       @wq     : 将专注区的修改写回原始区，同时关闭专注窗口
"       @NRV    : 打开上次可视选择的区域的缩小窗口
"       @WR     : 将专注区的修改写回原始区，但不关闭专注窗口

vnoremap <silent> mn :NR<CR>                    " mn 打开专注窗口                          

"let g:nrrw_rgn_vert = 1                        " 垂直方式打开专注窗口
let g:nrrw_rgn_resize_window = 'relative'       " 通过百分比的方式设置专注窗口的尺寸
let g:nrrw_rgn_rel_min = 100                    " 专注窗口高度最小值
let g:nrrw_rgn_rel_max = 100                    " 专注窗口高度最大值
let g:nrrw_rgn_nohl = 1                         " 不在原始区域中高亮显示选中内容

" -------------------------------------                    tcomment_vim
" Usage: 
"       [注] 1. 单行: 按第一次注释，再按一次取消注释
"            2. 多行: 可视模式下选中文本进行注释/取消注释
"       @空格      : 注释当前行
"       @空格+r    : 在光标右侧添加注释
"       @空格+空格 : 选中的内容添加块注释
noremap <silent> <Space> :TComment<CR>
noremap <silent> <Space>r :TCommentRight<CR> 
noremap <silent> <Space><Space> :TCommentBlock<CR>

" -------------------------------------                    tabular
" Usage:
"       @=      : 先用v命令选中文本块,然后按'='号,会在命令行调用
"                 Tabularize /命令,然后输入对齐参照字符,例如以','
"                 对齐,在Tabularize /后直接输入','字符, 完整命令
"                 为:Tabularize /,(,号为对齐参照)
map = :Tabularize /

" -------------------------------------                    calendar-vim
" Usage:
"       @ ← ↑ ↓ →方向键         : 选择日期
"       @shift + h              : 到上个月
"       @shift + l              : 到下个月
"       @t                      : 打开日历面板/回到今天(日历面板已开的情况下)
let g:calendar_focus_today = 1          " 移至下一个或上一个日历时保持焦点在今天
let g:calendar_keys = { 'goto_next_month': '<S-l>', 'goto_prev_month': '<S-h>'} " shift+h: 到上个月, shift+l: 到下个月
let g:calendar_number_of_months = 6     " 日历面板显示6个月
let g:calendar_navi = 'top'             " 导航栏置于顶部
let g:calendar_navi = 'center'

nnoremap <silent> t :CalendarH<CR>       " 按t打开日历面板

" -------------------------------------                    vim-sandwich
" Note: 
"       (1) 下面的命令在可视模式下也可使用
"       (2) 下面的"括号"是简单表达,表示成对出现的任何字符
" Usage:
"       @sr+目标字符+替换字符 : 替换字符,把目标字符换成替换字符，例如sr"', 把"替换为', 命令sr助记: sandwich + replace
"       @sd+待删除括号        : 删除括号, 例如sd(, 删除()括号对, 命令sd助记: sandwich + delete
"                               Tips: 在可视模式下,删除选中文本块中的匹配括号对,如果只有一对匹配,直接执行sd命令即可删除括号对,
"                                     无需指定要删除的括号对,sd命令会删除任意括号对;如果选中的文本有多对匹配,例如({[]}),会默认
"                                     删除最外层的括号对,即例子中的()
"       @sal +待添加括号      : 给光标后的字符添加括号(给单词中的字母添加成对符号)
"       @saw +待添加括号      : 给光标后的单词添加括号, 例如saw(, 光标后的单词会加上括号对(), 命令sa助记: sandwich + add
"       @saiw+待添加括号      : 给光标处的单词添加括号, 例如saiw(, 光标处的单词周围会加上括号对()
"       
"       @sais+待添加括号      : 段落添加括号,不包括外层包围字符(surrounding), 助记: i=inner
"       @saas+待添加括号      : 段落添加括号,包括外层包围字符,助记: a = around
"                               Tips: sais类命令按的时候,不要一次按完,否则不生效,先按sa,然后按i,最后按s,比如: sa i s这样的节奏(下同)
"       @saib+待添加括号      : 句子添加括号,不包括外层包围字符(surrounding)
"       @saab+待添加括号      : 句子添加括号,包括外层包围字符
"                               范围解释:
"                                            |<----ib,is---->|
"                               {surrounding}{surrounded text}{surrounding}
"                               |<-----------------ab,as----------------->|

" -------------------------------------                    vim-easymotion
" Usage:
"       @,+w/b    : 跳转到当前光标前/后的位置
"       @,+j/k    : 行级跳转,跳转到当前光标行上/下的位置
"       @,+h/l    : 行内跳转,跳转到当前光标行左/右的位置 
"       @/        : 搜索跳转,按Tab向下翻页,按Shift+Tab向上翻页,到达目标区域时,按Enter显示位置
"       @,+.      : 重复上一次的搜索
map <leader> <Plug>(easymotion-prefix)
map <Leader>j <Plug>(easymotion-k)
map <Leader>k <Plug>(easymotion-j)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>l <Plug>(easymotion-lineforward)
map / <Plug>(easymotion-sn)
map <Leader>. <Plug>(easymotion-repeat)

let g:EasyMotion_smartcase = 1          " 设置此选项后, v 将匹配 v 和 V ，但 V 将仅匹配 V

hi EasyMotionTarget cterm=bold ctermbg=228 ctermfg=red         " 单字位置标识
hi EasyMotionTarget2First cterm=bold ctermbg=228 ctermfg=166   " 双字位置标识第1字
hi EasyMotionTarget2Second cterm=bold ctermbg=228 ctermfg=166  " 双字位置标识第2字
hi EasyMotionIncSearch cterm=bold ctermbg=228 ctermfg=red      " 搜索模式下匹配的文本颜色
hi EasyMotionIncCursor cterm=bold ctermbg=202                  " 搜索模式下光标颜色

" -------------------------------------                    vim-system-copy
" Usage:
"   @cpiw   : 将单词复制到系统剪贴板
"   @cy     : 将整行复制到系统剪贴板
"   @cp     : 要将选中的内容复制到剪贴板,在可视模式下选中然后cp
let g:system_copy_silent = 1            " 抑制打印消息输出
" let g:system_copy_enable_osc52 = 1    " 远程ssh使用vim复制失败的备份复制工具(当前未启用)

nmap <silent> cy <Plug>SystemCopyLine

" -------------------------------------                    vim-peekaboo
" Note: Vim有许多不同的寄存器。当你复制文本时, 它会进入"寄存器。
"       当你删除文本时, 它会进入数字寄存器。然后还有小写和大写
"       等寄存器供你个人使用。
"       当你要使用寄存器时, 这个插件会预览它们。当你按下"键时,
"       它会在右侧打开一个寄存器列表, 可以看到每个寄存器的内容
"       并选择正确的寄存器内容。
" Usage:
"   @"  : 打开vim的寄存器列表(可以用v选中文本,然后打开寄存器列表,选中寄存器
"         前面的标识符即可复制寄存器内容,然后按p将内容粘贴到光标位置) 

" -------------------------------------                    linediff.vim
" Usage:
"   @T  : 可视模式下选中第一块文本内容按'T',然后选中第二块文本再按'T'，即可比较两块文本的差异
map T :Linediff<CR>

" -------------------------------------                    vim-signature
" Usage:
"   @mx              : 在当前行添加一个标签'x'(每行可打2个标记符号)
"   @m,              : 放置下一个可用标记
"   @cmx       (原dm): 删除标签'x'
"   @dm        (原m-): 删除当前行所有标记
"   @m + 空格        : 删除当前缓冲区的所有标记
"   @m/              : 打开位置列表(quickfix)并显示当前缓冲区的所有标记
" Note: 这个插件的标记是以行为准打的,所以如果标记的位置如果有行变动(行增/行减),
"       则之前在该位置打的标记则可能会变动
" Tips:
"   1. 命令助记, m 表示mark
hi SignatureMarkText cterm=bold ctermfg=88  " mark字符标记颜色

" 选中标记跳转后自动关闭位置列表
autocmd FileType qf nnoremap <buffer> <CR> <CR>:lclose<CR>

" 重新映射原插件命令:
"   dm => cm
"   m- => dm
nnoremap cm :<C-U>call signature#utils#Remove(v:count)<CR>
nnoremap dm :<C-U>call signature#mark#Purge("line")<CR>

" -------------------------------------                    scratch.vim
" Note: Vim的文档提到了一种称为scratch缓冲区的特殊缓冲区类型。
"       这个插件实现了它。Scratch缓冲区是临时丢弃缓冲区。
" Usage:
"   @空格+n     : normal模式下打开草稿窗口并进入插入模式,当离开插入模式时，草稿窗口会关闭。
"                 在可视模式下时,会将当前选择( 按字符、按行或按块 )粘贴到草稿窗口中,所有的
"                 笔记内容会写入g:scratch_persistence_file指定的文件中,后续写入的笔记会追加
"                 在之前的记录后面
"   @空格+N     : 新打开一个干净的草稿窗口(其余功能同上),新窗口写入的内容会覆盖原笔记内容
vnoremap <Space>n <Plug>(scratch-selection-reuse)
nnoremap <Space>n <Plug>(scratch-insert-reuse)
vnoremap <Space>N <Plug>(scratch-selection-clear)
nnoremap <Space>N <Plug>(scratch-insert-clear)
let g:scratch_height = 0.5      " 草稿窗口高度
" 默认情况下,离开Vim时草稿窗口的内容会丢失。要保存笔记内容,需要将
" g:scratch_persistence_file 选项设置为有效的文件路径,该文件用来保存笔记内容
let g:scratch_persistence_file = '~/note/scratch.vim'

" -------------------------------------                    QFRestore
" Note: Quickfix是vim最大的特性之一。不幸的是,一旦用结果填充了quickfix列表，它就会被冻结。
"       无法进一步过滤quickfix列表。这种行为不太合理,因为我们总是希望细化结果。Qfgrep允许
"       这样做。现在,我们可以在quickfix窗口中过滤结果
" Usage:
"   @,q     : 对当前Quickfix进行过滤,用户以交互方式输入
"   @,qb    : 对当前Quickfix进行反向过滤，用户以交互方式输入
"   @,qr    : 恢复原始Quickfix条目
" Tips: 命令助记, q 等于 quickfix

let g:QFG_hi_prompt='ctermbg=24 ctermfg=15'     " 用户输入模式提示颜色
let g:QFG_hi_info = 'ctermbg=113 ctermfg=16'    " 信息提示颜色
let g:QFG_hi_error = 'ctermbg=88 ctermfg=15'    " 错误信息提示颜色

" 对当前Quickfix进行过滤，用户以交互方式输入
map <Leader>q :QFGrep<CR>
" 对当前Quickfix进行反向过滤，用户以交互方式输入
map <Leader>qb ::QFGrepV<CR>
" 恢复原始Quickfix条目
map <Leader>qr :QFRestore<CR>

" -------------------------------------                    quickfix-reflector
" Usage: 
"   @用法和正常编辑buffer一样,就是把quickfix当成了buffer进行操作,如果要写回buffer需要执行:w命令
"   @:w   : 将quickfix中的修改写回buffer

" -------------------------------------                    rainbow_parentheses.vim
" Note: 此插件当前默认关闭,因为当所有括号高亮后会使代码界面色彩过多,削弱语法的高亮效果
"       如需开启,将上面此插件的Plug开关打开,并取消下面的注释
" 颜色格式[ctermfg, guifg]
" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ]
" let g:rbpt_max = 16     " 最大的嵌套层数(超过不再高亮)
" let g:rbpt_loadcmd_toggle = 0
" au VimEnter * RainbowParenthesesToggle      
" au Syntax * RainbowParenthesesLoadRound     " ()
" au Syntax * RainbowParenthesesLoadSquare    " []
" au Syntax * RainbowParenthesesLoadBraces    " {}

" -------------------------------------                    a.vim
" Usage: 
"       @,a     : 垂直分割窗口并打开c\h文件
"
"       :A	    : 在新Buffer中切换到c\h文件
"       :AS     : 垂直分割窗口并打开c\h文件
"       :AT     : 新建一个Tab并打开c\h文件
" 垂直分割窗口并打开c\h文件
noremap <Leader>a :AV<CR> 


" -------------------------------------                    bufferize.vim
" Usage: 
"   @M  : 命令行调用Bufferize命令,然后在后面输入命令,在右侧的垂直窗口
"         中显示命令的输出结果(本质是一个vim临时缓冲区), 可对命令的输
"         出结果进行复制

" 将光标焦点保持在打开的输出窗口上
let g:bufferize_focus_output = 1
" 在右侧的垂直窗口中显示命令的输出结果
map M :vertical botright Bufferize 

" -------------------------------------                    vim-exchange
" Note: 先选第一处交换位置,用Usage里的命令,然后再选第二处交
"       换位置,同样是Usage里的命令,在第二处位置处按下命令后,
"       两处位置就会自动完成交换
" Usage:
"   @cx     : 标记要交换的位置范围(位置范围用w/iw/is来指定,
"             分别表示光标后单词/光标处单词/光标所在的段落,
"             如果没有指定范围, 默认位置为光标所在的字符)
"   @cxc    : 清除cx的位置标记
"   @X      : 作用与cx相同,但用于[ 可视模式 ]
"   @cxl    : 标记位置范围为[ 光标后的字符 ]
"   @cxw    : 标记位置范围为[ 光标后的单词 ]
"   @cxiw   : 标记位置范围为[ 光标位置的完整单词 ]
"   @cxis   : 标记位置范围为[ 光标所在的段落 ]
"   @cxx    : 标记位置范围为[ 光标所在的行 ]
" Tips:
"   1. 用法可以理解为: cx + 交换范围,cx就是标记第一处位置,表明
"      这处位置接下来要与哪处位置进行交换。按下cx后,可以指定要
"      交换的范围,例如w表示光标后的单词,iw表示光标所在的完整单
"      词,如果cx后没有指定范围, 默认会标记当前光标所在的字符作
"      为交换位置。标记好第一处位置后,接下来将光标移动到第二处
"      位置,再次用命令选中要交换的位置,选中的同时,位置交换完成
"   2. 如果两处交换的位置相同,例如都是cxiw,第二处可以直接使用.

" -------------------------------------                    vim-expand-region
" Usage:
"       @+      : 可视模式下先选中,然后按 + 展开视觉选择
"       @_      : 可视模式下先选中,然后按 _ 缩小视觉选择


" -------------------------------------                    vim-orgmode
"


" -------------------------------------                    far.vim
" Usage:
"   @
let g:far#enable_undo=1         " 支持撤回替换操作



" vim 个性化
" =============================================================================
" -------------------------------------                    vim字符样式
" 修改vim填充字符, 去掉'~'符号。 注: '\'后有个空格
set fillchars=eob:\ 

" 修改分割线样式
set fillchars+=vert:\⎜

" vim diff 模式下将删除部分的填充字符设置为空格
set fillchars+=diff:\ 

" -------------------------------------                    vim光标
set guicursor=a:block-iCursor-blinkon0      " 设置所有模式下光标保持为不闪烁的块

" 终端模拟器光标颜色(此处用于控制vim-fzf插件打开的搜索窗口中的光标颜色)
hi TermCursor ctermbg=NONE ctermfg=darkred

" 修改vim-easymotion插件搜索输入(按/)时双光标问题的第一个光标颜色(此问题属于nvim问题,还未修复)
hi Cursor ctermbg=166 ctermfg=166

" 自定义vim颜色配置
" -------------------------------------                    vim区域配色
" Note: 分割线颜色(必须放在vim配置的最后，否则不生效)
" hi VertSplit cterm=bold ctermbg=NONE ctermfg=22    " vim 使用VertSplit控制垂直分割线 
hi WinSeparator cterm=bold ctermbg=NONE ctermfg=22   " nvim使用WinSeparator控制垂直分割线

" 当前行&当前行行号颜色
highlight CursorLine cterm=bold ctermfg=NONE ctermbg=151
highlight CursorLineNr cterm=bold ctermfg=black ctermbg=151

" 设置行号颜色为浅灰色
highlight LineNr ctermfg=249

" 设置括号对的颜色
highlight MatchParen cterm=bold ctermbg=yellow ctermfg=Red

" 多窗口时底部状态栏的分割线颜色
highlight StatusLine cterm=NONE ctermfg=NONE ctermbg=23
highlight StatusLineNC cterm=NONE  ctermfg=NONE ctermbg=23

" 底部状态栏显示的字体颜色
highlight StatusLine cterm=bold ctermbg=23 ctermfg=15

" 底部模式字符颜色
hi ModeMsg cterm=bold ctermbg=NONE ctermfg=88   " 插入模式字符,例如'--插入--'
hi MoreMsg cterm=bold ctermbg=NONE ctermfg=88   " 查看模式,例如'--更多--' 

" vim 搜索匹配字符的颜色
hi Search cterm=NONE ctermbg=228 ctermfg=1
hi CurSearch cterm=NONE ctermbg=228 ctermfg=1

" 底部交互模式时信息提示字符颜色
hi Question cterm=NONE ctermfg=25

" vim diff模式下比较文本差异时的配色
highlight DiffAdd cterm=NONE ctermfg=23 ctermbg=194 " 新增文本背景色
highlight DiffDelete cterm=NONE ctermfg=1 ctermbg=224
highlight DiffChange cterm=NONE ctermfg=1 ctermbg=224
highlight DiffText cterm=NONE ctermfg=124 ctermbg=217


" 代码折叠相关配色
highlight Folded ctermfg=NONE ctermbg=NONE         " Folded 指的是被折叠起来的代码块
highlight FoldColumn ctermfg=NONE ctermbg=NONE     " 折叠列
highlight CursorLineFold ctermfg=NONE ctermbg=NONE " 光标所在行折叠

" vim 可视(块)模式下选中文字的背景色
highlight Visual ctermbg=151 ctermfg=22

" -------------------------------------                    vim语法通用部分配色
" Note: 语言相关的配色通过ftplugin目录下的x.vim进行单独配色,例如c.vim为C语言配色,
"       语言文件中未指定的配色,将使用vim的自动配色设置，就是下面的语法类型的设置
"
" Tips:
"       Q: 想修改某个字符的配色,如何查看它属于哪个高亮组？
"       A: 将光标放在该单词上,然后使用以下命令来检查该位置的语法组: 
"               :echo synIDattr(synID(line("."), col("."), 1), "name")
"       Q: 怎么查看某个高亮组是哪种配色方案？
"       A: 使用hi(highlight缩写)命令, 例如查看VertSplit的高亮色,命令如下:
"               :hi VertSplit     
"
" 语法类解释:
"     Comment       : 用于注释代码中的解释或说明        
"     Constant      : 常数,表示固定的数值、字符串或符号
"     Special       : 表示特殊字符或符号
"     Identifier    : 表示标识符或变量名  
"     Statement     : 语句中涉及到的语法关键字颜色 
"     PreProc       : 表示预处理指令 
"     Type          : 表示数据类型 
"     Underlined    : 表示下划线
"     Ignore        : 表示忽略的内容  
"     String        : 表示字符串 
"     Character     : 表示字符 
"     Number        : 表示数字
"     Boolean       : 表示布尔值 
"     Float         : 表示浮点数
"     Function      : 表示函数 
"     Conditional   : 表示条件语句
"     Repeat        : 表示循环语句
"     Label         : 表示标签
"     Operator      : 表示运算符 
"     Keyword       : 语法关键字颜色 
"     Include       : 表示包含的文件 
"     Define        : 表示宏定义 
"     Macro         : 表示宏 
"     PreCondit     : 表示预处理条件  
"     StorageClass  : 表示存储类 
"     Structure     : 表示结构体
"     Typedef       : 表示类型定义 
"     Tag           : 表示标签 
"     SpecialChar   : 表示特殊字符
"     Delimiter     : 表示分隔符
"     SpecialComment: 表示特殊注释

hi Comment cterm=NONE ctermfg=239
hi Constant cterm=NONE ctermfg=88    
hi Special cterm=NONE ctermfg=5
hi Identifier cterm=NONE ctermfg=25
hi Keyword cterm=NONE ctermfg=130
hi Statement cterm=NONE ctermfg=130
hi PreProc cterm=NONE ctermfg=88
hi Type cterm=NONE ctermfg=28
hi Ignore cterm=NONE ctermfg=88
hi String cterm=NONE ctermfg=88
hi Character cterm=NONE ctermfg=88
hi Number cterm=NONE ctermfg=88
hi Boolean cterm=NONE ctermfg=136
hi Float cterm=NONE ctermfg=89
hi Function cterm=NONE ctermfg=25
hi Conditional cterm=NONE ctermfg=126
hi Repeat cterm=NONE ctermfg=5
hi Label cterm=NONE ctermfg=126
hi Operator cterm=NONE ctermfg=166
hi Keyword cterm=NONE ctermfg=red
hi Include cterm=NONE ctermfg=88
hi Define cterm=NONE ctermfg=126
hi Macro cterm=NONE ctermfg=25
hi PreCondit cterm=NONE ctermfg=31
hi StorageClass cterm=NONE ctermfg=130
hi Structure cterm=NONE ctermfg=89
hi Typedef cterm=NONE ctermfg=5
hi Tag cterm=NONE ctermfg=25
hi SpecialChar cterm=NONE ctermfg=88 
hi Delimiter cterm=NONE ctermfg=130
hi SpecialComment cterm=NONE ctermfg=239


" 为所有文件类型添加特殊字符的高亮
" -------------------------------------                    vim特殊字符配色
" 特殊字符高亮组, 包括: *, &, !, $, @
augroup SpecialCharsHighlight
    autocmd!
    " 定义新的语法规则，匹配特定的特殊字符
    autocmd BufEnter * syntax match SpecialChars /[\\*&!\$@]/
    " 设置高亮颜色
    autocmd BufEnter * highlight SpecialChars ctermfg=130
augroup END

" 箭头字符高亮组, 包括: ->
augroup ArrowHighlight
    autocmd!
    " 定义新的语法规则，专门匹配 '->'
    autocmd BufEnter * syntax match ArrowOperator /->/
    " 设置高亮颜色
    autocmd BufEnter * highlight ArrowOperator cterm=bold ctermfg=124
augroup END


" -------------------------------------                    自定义自动命令
" 自定义vim快捷键映射
" -------------------------------------                    移动窗口
" Usage:
"       @空格+h : 移到 左 窗口
"       @空格+j : 移到 上 窗口
"       @空格+k : 移到 下 窗口
"       @空格+l : 移到 右 窗口
nnoremap <Space>h <C-w>h
nnoremap <Space>j <C-w>k
nnoremap <Space>k <C-w>j
nnoremap <Space>l <C-w>l

" -------------------------------------                    快速垂直滚动
" Usage:
"       @shift+j    : 单按1次▶光标上移20行, 持续按▶以20行/秒的速度向上滚动
"       @shift+k    : 单按1次▶光标下移20行, 持续按▶以20行/秒的速度向下滚动
map <S-j> 20<Up>
map <S-k> 20<Down>

" -------------------------------------                    快速水平滚动
" Usage:
"       @shift+h    : 单按1次▶光标左移5个字符, 持续按▶以5个字符/秒的速度向左滚动
"       @shift+l    : 单按1次▶光标右移5个字符, 持续按▶以5个字符/秒的速度向右滚动
map <S-h> 5<Left>
map <S-l> 5<Right>

" -------------------------------------                    单行移动
" Usage:
"       @j      : 上移一行
"       @k      : 下移一行
" Tips: 
"       1. 快速滚动到目标区域附近后，通过j、k以单行向上、下移动
"       2. 以下设置在所有模式下都生效
map j <Up>
map k <Down>

" -------------------------------------                    分屏
" Usage:
"       @- : 水平分屏
"       @\ : 垂直分屏
nnoremap <silent> - :sp<CR>
nnoremap <silent> \ :vsp<CR>

" -------------------------------------                    退出
" Usage:
"   q   : 按q直接退出
nnoremap <silent> q :q<CR>

" -------------------------------------                    光标回行首/尾
" Usage:
"       @aa : 光标回行首
"       @ee : 光标回行尾
noremap <silent> aa 0
noremap <silent> ee $
  
" -------------------------------------                    光标回行首/尾+进入插入模式
" Usage:
"       @ai : 光标回行首+进入插入模式
"       @ei : 光标回行尾+进入插入模式
nnoremap <silent> ai 0i
nnoremap <silent> ei $a

" -------------------------------------                    "注释快速编辑: 
" Usage:
"       @as     : 光标回行首+删除第一个字符+进入插入模式
"                 [适用]: 有注释如" abc, 要删除注释符,并且进入插入模式
"       @a+空格 : 删除光标后第一个字符+加空格+进入插入模式
"                 [适用]: 在""下,需要删除第2个",空格后,进入插入模式
" 删除光标后字符+增加空格+进入插入模式
nnoremap <silent> as 0s
nnoremap <silent> a<Space> ls<Space>

" -------------------------------------                    增加空行
" Usage:
"       @gj : 在上方增加空行(光标在当前行不动)
"       @gk : 在下方增加空行(光标在当前行不动)
nmap gj O<Esc>k
nmap gk o<Esc>j

" -------------------------------------                    移动当前行
" Usage:
"       @ctrl + j : 当前行上移
"       @ctrl + k : 当前行下移
nnoremap <C-j> :m-2<CR>
nnoremap <C-k> :m+1<CR>

" -------------------------------------                    增加空格
" Usage:
"   @gs : 在光标前添加一个空格(generate space)
nnoremap g<Space> :normal! i<Space><Esc>

" -------------------------------------                    增加换行
" Usage:
"   @g+Enter    : 将光标后的内容移入下一行(generate enter)
nnoremap <silent> g<CR> i<CR><Esc>

" -------------------------------------                    取消换行
" Usage:
"   @d+Enter    : 将下一行内容移入光标后(delete enter)
nnoremap <silent> d<CR> a<Del><Esc>

" -------------------------------------                    缩短组合前缀键等待延时(ms)
set timeoutlen=200

" -------------------------------------                    复制全文
" Usage:
"       @ya : 选中全文复制到vim剪贴板
"       @yb : 选中全文复制到系统剪贴板
" Note: 快捷映射使用vim Ex 命令
"       % : 表示选择整个文件。
"       y : 是 yank(复制)命令。
"       + : 指定使用系统剪贴板
nnoremap ya :%y<CR>
nnoremap yb :%y+<CR>

" -------------------------------------                    复制光标到行尾
" Usage:
"       @yee : 复制光标至行尾内容到vim剪贴板
"       @ce : 复制光标到行尾内容到系统剪贴板
" nnoremap yes v$hcp

" -------------------------------------                    反转(逆序)文本
" Usage:
"       @:ReverseText : 反转全部文本
command! ReverseText execute "g/^/m0"

" -------------------------------------                    逆序显示历史命令
" Usage:
"   @hi  : 逆序显示历史命令(时间越近,位置越前)
function! HistoryReverse()
    execute "vertical botright Bufferize history"
    execute "g/^/m0"
endfunction
map <silent> hi :call HistoryReverse()<CR>

" -------------------------------------                    输入法自动切换英文
" Note: 
"       (1) 工具地址: https://github.com/daipeihust/im-select
"       (2) 安装:(安装好后可以在/usr/local/bin中找到工具)
"               $ brew tap daipeihust/tap
"               $ brew install im-select
"           然后在init.vim中添加下面的语句:
"               autocmd ModeChanged *:n,*:v silent !im-select 输入法名
           
" Normal/Visual模式自动切换到英文输入法
autocmd ModeChanged *:n,*:v silent !im-select com.apple.keylayout.ABC

" vim 配色笔记
" =============================================================================
" vim 终端背景三元色(RGB):
"       红:226
"       绿:240
"       蓝:218

" Vim识别三种不同的终端：
"       @term——黑白终端；
"       @cterm——彩色终端；
"       @gui——Gvim窗口
" 对于cterm:
"       cterm可以用ctermfg设置前景色；用ctermbg设置背景色, 用cterm设置字体
" 可用颜色:
"       cterm-colors + 256色, cterm-colors如下:
" -------------------------------------                    cterm-colors
"       NR-16   NR-8    COLOR NAME ~
"	    0	    0	    Black
"	    1	    4	    DarkBlue
"	    2	    2	    DarkGreen
"	    3	    6	    DarkCyan
"	    4	    1	    DarkRed
"	    5	    5	    DarkMagenta
"	    6	    3	    Brown, DarkYellow
"	    7	    7	    LightGray, LightGrey, Gray, Grey
"	    8	    0*	    DarkGray, DarkGrey
"	    9	    4*	    Blue, LightBlue
"	    10	    2*	    Green, LightGreen
"	    11	    6*	    Cyan, LightCyan
"	    12	    1*	    Red, LightRed
"	    13	    5*	    Magenta, LightMagenta
"	    14	    3*	    Yellow, LightYellow
"	    15	    7*	    White

" tips:
"       1、想修改vim某个地方的颜色, 或者自定义配置的颜色不生效, 可以
"          使用:highlight命令列出当前vim所有高亮配色, 从中找到相近颜
"          色的配置项在.vimrc中进行修改, 如果修改没有生效,找到修改该
"          配置项的插件, 然后在 .vim/after 下新建一个同名的插件,例如
"          xxx.vim,将配色方案写在该文件中,vim在运行时会最后加载该目录的插件

" vim 快捷键映射模式说明
" =============================================================================
" Note: 快捷键映射插件操作的语法解释
"       @ nmap 和 nnoremap 的区别在于:
"               nmap:     会将键映射应用到 Normal、Visual、Select 和 Operator-pending 
"                         模式，可能会导致意外的行为，因为它会递归地展开键映射。
"               nnoremap: 只会将键映射应用到 Normal 模式，不会展开其他键
"                         映射，避免了潜在的问题


" vim tips
" =============================================================================
" 1. 查看vim映射键组合是否有其他绑定,使用verbose map命令, 例如查看a有哪些映射绑定:
"       :verbose map a
" 2. 查看当前的快捷键所绑定的函数,使用map命令,例如查看,h所绑定的函数:
"       :map ,h
" 3. Q: vim 如何修改原有的插件映射?
"    A: 使用verbose map命令查看原映射对应的插件函数,然后直接把插件函数原封不动放在新的映射命令后面即可
"       (1) 例如, 有映射如下:
"               n gs <Plug>(scratch-insert-reuse)
"           现在想修改gs,换成新的映射命令,直接将gs后面的映射函数放在新的映射命令后面即可,如下:
"               nnoremap ab <Plug>(scratch-insert-reuse)
"       (2) 例如, 有映射如下:
"               
" 4. vim 查看全局变量的值，例如查看g:scratch_height的值:
"       :echo g:scratch_height
" 5. vim查看用set设置的某个选项的值, 例如查看signcolum的值:
"       :set signcolumn?
" 6. vim 查看某个内容的帮助信息,使用h命令,后面跟要查询的内容,如下:
"       :h g:scratch_height
" 7. vim 查看某个插件的帮助信息,h命令后跟插件名字,如下:
"       :h tagbar
" 8. 查看sign column里所有标记的信息
"       :sign list
" 9. Q: vim如何 


let g:org_agenda_files=['~/org/index.org']

" airline_x_inactive xxx ctermfg=59 ctermbg=23 guifg=#4e4e4e guibg=#002b2b
" airline_x_inactive_bold xxx cterm=bold ctermfg=59 ctermbg=23 gui=bold guifg=#4e4e4e guibg=#002b2b
" airline_x_inactive_red xxx ctermfg=231 ctermbg=23 guifg=#ffffff guibg=#002b2b
" airline_y_inactive xxx ctermfg=59 ctermbg=23 guifg=#4e4e4e guibg=#002b2b
" airline_y_inactive_bold xxx cterm=bold ctermfg=59 ctermbg=23 gui=bold guifg=#4e4e4e guibg=#002b2b
" airline_y_inactive_red xxx ctermfg=231 ctermbg=23 guifg=#ffffff guibg=#002b2b
" airline_z_inactive xxx ctermfg=59 ctermbg=23 guifg=#4e4e4e guibg=#002b2b
" airline_z_inactive_bold xxx cterm=bold ctermfg=59 ctermbg=23 gui=bold guifg=#4e4e4e guibg=#002b2b
" airline_z_inactive_red xxx ctermfg=231 ctermbg=23 guifg=#ffffff guibg=#002b2b
" airline_term_inactive xxx ctermfg=85 ctermbg=232 guifg=#9cffd3 guibg=#202020
" airline_term_inactive_bold xxx cterm=bold ctermfg=85 ctermbg=232 gui=bold guifg=#9cffd3 guibg=#202020
" airline_term_inactive_red xxx ctermfg=231 ctermbg=232 guifg=#ffffff guibg=#202020
" airline_error_inactive xxx ctermfg=232 ctermbg=160 guifg=#000000 guibg=#990000
" airline_error_inactive_bold xxx cterm=bold ctermfg=232 ctermbg=160 gui=bold guifg=#000000 guibg=#990000
" airline_error_inactive_red xxx ctermfg=231 ctermbg=160 guifg=#ffffff guibg=#990000
" airline_a_inactive xxx ctermfg=59 ctermbg=23 guifg=#4e4e4e guibg=#002b2b
" airline_a_inactive_bold xxx cterm=bold ctermfg=59 ctermbg=23 gui=bold guifg=#4e4e4e guibg=#002b2b
" airline_a_inactive_red xxx ctermfg=231 ctermbg=23 guifg=#ffffff guibg=#002b2b
" airline_b_inactive xxx ctermfg=59 ctermbg=23 guifg=#4e4e4e guibg=#002b2b
" airline_b_inactive_bold xxx cterm=bold ctermfg=59 ctermbg=23 gui=bold guifg=#4e4e4e guibg=#002b2b
" airline_b_inactive_red xxx ctermfg=231 ctermbg=23 guifg=#ffffff guibg=#002b2b
" airline_c_inactive xxx ctermfg=59 ctermbg=23 guifg=#4e4e4e guibg=#002b2b
" airline_c_inactive_bold xxx cterm=bold ctermfg=59 ctermbg=23 gui=bold guifg=#4e4e4e guibg=#002b2b
" airline_c_inactive_red xxx ctermfg=231 ctermbg=23 guifg=#ffffff guibg=#002b2b
