#显示git分支
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/(\1)/p'
}

setopt PROMPT_SUBST

# Default prompt
# PS1="%n@%m %1~ %# "
PS1='%B%F{blue}%n%f%b in %F{yellow}%1~%f%F{green}$(parse_git_branch)%f %B%F{magenta}>>>%f%b '

# LSCOLORS 文件夹颜色
export LSCOLORS='dxfxcxdxbxexexabagacad'
alias ls='ls -G'

# 语法高亮
source ~/.scripts/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
# 语法自动补全
source ~/.scripts/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
