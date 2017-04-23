export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "plugins/git",   from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"

# Syntax highlighting - always as the last to add
zplug "zsh-users/zsh-syntax-highlighting"

# Set theme
zplug "themes/clean", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Apply plugins
zplug load --verbose

# Aliases
alias c='clear'
alias q='exit'
alias gk='gitk &'
alias gu='git gui &'
alias gs='git status'
alias gg='git fetch'
alias gb='git branch'
alias go='git checkout'
alias gp='git pull --rebase'
alias ga='git add .'
alias grb='git rebase'
alias gps='git push'
alias grh='git reset --hard'
alias grs='git reset --soft'
alias gcp='git cherry-pick'
alias gc='git commit'
alias gca='git commit --amend --no-edit'
