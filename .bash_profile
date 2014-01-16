alias gf="git fetch"
alias gpr="git pull --rebase origin"
alias gp="git pull origin"
alias gpu="git push origin"
alias gs="git status"
alias gcm="git commit -m "
alias fucking='sudo'
alias ffs='sudo !!'

alias benchmark='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome -incognito --js-flags="--trace-opt --trace-deopt --trace-bailout" http://127.0.0.1/benchmark.html' 

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}
     
PS1='\[\033[01;32m\]\w\[\033[;94m\]$(parse_git_branch)\[\033[00m\]\$ '

if [ -f ~/.bash_secrets ]; then
    . ~/.bash_secrets
fi
