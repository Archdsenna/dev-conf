# zsh配置
# =============================================================================
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="bureau"
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 5

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# -------------------------------------                    zsh插件列表
plugins=(
    # ------------ zsh内置
	git                         # 显示git分支                              
	autojump                    # 快速转到之前进入过的目录
    vi-mode                     # zsh使用vim模式            
    copypath                    # 拷贝路径                  
    copyfile                    # 拷贝文件内容              
    sudo                        # 命令前加sudo(按2次Esc加sudo,再按2次撤销sudo)   
    z                           # 快速跳转到目录

    # ------------ 第三方插件
	zsh-autosuggestions         # 输入时显示历史命令提示
    zsh-syntax-highlighting     # 错误命令提示(错误:红色,正确:绿色)
    fzf-tab                     # 增强tab显示候选项
)

source $ZSH/oh-my-zsh.sh        # 不要移动这句的位置

# zsh插件配置&使用
# =============================================================================
# -------------------------------------                    z
# Usage:
#       @z+目录名       : 进入目录(历史目录)
#       @z+Tab          : 列出访问过的历史目录
#       @z+子字符串+Tab : 将所有匹配子字符串的目录都列出来,
#                         如果匹配的目录只有一个, 将会被直
#                         接选中

# -------------------------------------                    autojump
# Usage:
#       @j+目录名(部分关键字) : 跳转到之前打开的目录

# -------------------------------------                    copypath
# Usage: 命令行输入命令
#       @copypath              : 拷贝当前路径到系统剪贴板
#       @copypath <文件或目录> : 拷贝指定文件或目录的绝对路径
 
# -------------------------------------                    copyfile
# Usage: 命令行输入命令
#       @copyfile 文件名     : 拷贝当前路径下文件的内容
#       @copyfile <文件路径> : 拷贝指定路径文件的内容

# -------------------------------------                    sudo
# Usage:
#       @Esc x2 : 按2次Esc,在命令前加sudo,再按2次取消

# -------------------------------------                    git
# 显示git分支
## Zsh 提供了一个从版本控制系统中获取信息的框架，叫vcs_info
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '(%b)'

# -------------------------------------                    vi-mode配置
# Usage:
#       @jk : 插入模式下返回Normal模式
#       @aa : 到行首
#       @ee : 到行尾
#       @ai : 到行首,并进入插入模式
#       @ei : 到行尾,并进入插入模式
#       @vv : Normal模式下按vv进入nvim编辑当前命令
# Note: 其他用法与vim一致

# 组合键等待延迟(200ms)
KEYTIMEOUT=20

# 启用 Vi 模式
bindkey -v

# 插入模式下,按jk返回Normal模式
bindkey -M viins 'jk' vi-cmd-mode

# 移动到行首并进入插入模式
function vi-beginning-of-line-insert() {
    zle beginning-of-line
    zle vi-insert
}
zle -N vi-beginning-of-line-insert

# 移动到行尾并进入插入模式
function vi-end-of-line-insert() {
    zle end-of-line
    zle vi-insert
}
zle -N vi-end-of-line-insert

# aa:到行首
bindkey -M vicmd 'aa' beginning-of-line
# ai:到行首并进入插入模式
bindkey -M vicmd 'ai' vi-beginning-of-line-insert
# ee:到行尾
bindkey -M vicmd 'ee' end-of-line
# ei:到行尾并进入插入模式
bindkey -M vicmd 'ei' vi-end-of-line-insert

# 设置vi-mode可视模式下选中文本的背景颜色(浅绿)
zle_highlight=(region:bg=151)

# 设置j查看上一条历史命令
bindkey -M vicmd 'j' up-line-or-history
# 设置k查看下一条历史命令
bindkey -M vicmd 'k' down-line-or-history

# 关闭这个值,使用vi-mode内置的光标样式
export VI_MODE_SET_CURSOR=false

# 恢复终端光标样式
_reset_cursor_color() printf '\e]112\a'

# 根据当前的键盘映射（keymap）改变光标颜色
zle-keymap-select() {
    # 如果当前键盘映射是 vicmd(Vi命令模式),则设置光标颜色为浅绿色
    if [[ $KEYMAP = vicmd ]]; then
        printf '\e]12;#afd7af\a'
    else
        _reset_cursor_color
    fi
}
zle -N zle-keymap-select

# 每次命令行提示符出现时都会执行, 设置 ZLE 的键盘映射为 viins（Vi 插入模式）
# 即每次进入终端新的命令行,都进入插入模式
zle-line-init() zle -K viins
zle -N zle-line-init

# 每次命令执行之前,都会调用 _reset_cursor_color 函数,以确保每个新的命令行提示符都有默认的光标颜色
precmd_functions+=(_reset_cursor_color)


# 其他工具(非zsh插件)配置&使用
# =============================================================================
# -------------------------------------                    fzf
# Usage:
#       @vf : fzf中选中文件,用vim打开
#       @Ctrl+j/k : 向上/下选择

# 设置 fzf 键绑定和模糊补全 
# ▶ fzf版本: >= 0.48.0
source <(fzf --zsh)
# ▶ fzf版本: < 0.48.0
#       Ubuntu安装方法:
#       (1)载入fzf的zsh自动补全脚本,在zsh中输入命令时,就可以通过按Tab键来得到fzf的自动补全建议
#               $ source /usr/share/doc/fzf/examples/completion.zsh 
#       (2)载入fzf的键绑定脚本,这样就可以用Ctrl+t进行文件模糊查找,Ctrl+r搜索历史命令
#               $ source /usr/share/doc/fzf/examples/key-bindings.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fzf启动配置
export FZF_DEFAULT_OPTS="--color fg:23,fg+:23,bg+:151,hl:1,hl+:228,info:23,border:23,gutter:-1,prompt:29,pointer:9,query:0,header:23        \
        --height=100% --layout=reverse --info=inline --margin=1 --padding=1 --ansi   \
        --preview 'bat --style=numbers --color=always {}' --preview-window=right:50% \
        --pointer '❯' --bind ctrl-j:up --bind ctrl-k:down"
        
# 为了支持在fzf中选中文件后直接vim打开: 终端输入vf命令
function vf(){
    local file
    file=$(fzf)
    if [ -n "$file" ]; then
        nvim "$file"
    fi
}

# -------------------------------------                    fzf-tab
# Dependance: 需要安装的依赖工具
#       @eza
# Usage:
#       @cd+Tab   : 显示目录里的子目录/文件(依赖eza)
#       @/        : 进入目录
#       @Ctrl+j/k : 向上/下选择
# fzf-tab: 增强tab功能,按下tab会以交互形式显示候选项,
#          然后用tab选择

# 禁用排序 : 禁用了在执行 git checkout 命令时的补全结果排序
#            默认情况下, Zsh 可能会根据某种算法对补全结果进
#            行排序, 这条设置使得结果按照原始顺序显示
zstyle ':completion:*:git-checkout:*' sort false

# 设置了补全描述的格式。[%d] 表示描述将被放在方括号内
zstyle ':completion:*:descriptions' format '[%d]'

# 禁用菜单模式 : 这条命令禁用了补全的菜单选择模式。在菜单模式中,
#                用户可以使用键盘导航选择补全项。设置为 no 后,补
#                全将直接在命令行中展开。
zstyle ':completion:*' menu no

# fzf-tab 目录补全预览
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'

# 设置切换组的键 : 这条命令设置了在 fzf-tab 补全中切换组的键。
#                  < 和 > 被设置为切换键，允许用户在不同的补
#                  全组(如文件、命令等)之间切换
zstyle ':fzf-tab:*' switch-group '<' '>'

# 补全列表的窗口高度
zstyle ':fzf-tab:*' fzf-flags '--height=70%'


# -------------------------------------                    vim coc.nvim(自动补全)插件支持
# 为了支持vim coc.nvim插件,通过llvm自动下载clangd,添加其bin路径
# export PATH="/opt/homebrew/opt/llvm/bin:$PATH"   # only for mac, need to check


# -------------------------------------                    vim-lldb
# 支持在vim中使用lldb,导入python3的lldb库路径
# 在使用 Python 3 时，使用的是 Xcode 开发工具中附带的 Python 3 解释器，而不是系统中可能存在的其他 Python 3 解释器
#export PYTHONPATH=/opt/homebrew/Cellar/llvm/18.1.7/libexec/python3.12/site-packages/
#export PYTHONPATH=$PYTHONPATH:/opt/homebrew/Cellar/llvm/18.1.7/libexec/python3.12/site-packages/lldb

# zsh自定义配置
# =============================================================================
# -------------------------------------                    终端提示符
# 这里使用了%{$fg[green]%}来设置%n的颜色为绿色，然后
# 使用%{$reset_color%}来重置颜色，确保后续内容不受影响
PS1="%{$fg[blue]%}%1~%{$reset_color%} %{$fg[red]%}❯%{$reset_color%} "

# -------------------------------------                    别名设置
alias vim='nvim'
alias y='/usr/local/bin/yazi'
alias cp='/usr/local/bin/cp -g'
alias mv='/usr/local/bin/mv -g'

alias bat='/usr/local/bin/bat'            # only for ubuntu


# alias python='/usr/bin/python3'         # only for mac, need to check
# alias make='/opt/homebrew/bin/gmake'    # only for mac, need to check


# -------------------------------------                    默认文本编辑器
# 设置默认的文本编辑器为nvim
export EDITOR='nvim'
#
# 设置默认的图形界面编辑器为nvim(许多命令行程序,如git、
# crontab等, 会使用这个变量来决定调用哪个编辑器)
export VISUAL='nvim'


