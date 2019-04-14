#PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

#SSH keys
ssh-add ~/.ssh/github_pro

#Initialize rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#Git info in prompt
source ~/dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export PS1="\\w\$(__git_ps1 '(%s)') \$ "
