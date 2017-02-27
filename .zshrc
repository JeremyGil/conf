export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

zplug zsh-users/zsh-syntax-highlighting, from:github, defer:2

zplug plugins/atom, from:oh-my-zsh
zplug plugins/bower, from:oh-my-zsh
zplug plugins/brew, from:oh-my-zsh
zplug plugins/common-aliases, from:oh-my-zsh
zplug plugins/git, from:oh-my-zsh
zplug plugins/heroku, from:oh-my-zsh
zplug plugins/mix, from:oh-my-zsh
zplug plugins/npm, from:oh-my-zsh
zplug plugins/pip, from:oh-my-zsh
zplug plugins/stack, from:oh-my-zsh
zplug plugins/tmux, from:oh-my-zsh
zplug plugins/vagrant, from:oh-my-zsh
zplug plugins/z, from:oh-my-zsh

zplug load

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
