# fingerprint instead of password:
# 1. sudo vim /etc/pam.d/sudo
# 2. add auth       sufficient     pam_tid.so at top of the file

# zsh settings
export HISTFILE=~/.zsh_history    # history file
export HISTSIZE=1000000000        # history size
setopt INC_APPEND_HISTORY         # immediate appen
export HISTTIMEFORMAT="[%F %T] "  # immediate append
setopt EXTENDED_HISTORY           # add timestamp
setopt HIST_FIND_NO_DUPS          # ignore duplicates

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/opt/homebrew/bin:$PATH
source ~/.bash_profile
source "$HOME/.sdkman/bin/sdkman-init.sh"

# HINTS:
#  used ports: netstat -an | grep LISTEN
#  who is using port: 
#  alias who_using_port="f() { sudo lsof -nP -i4TCP:\"$1\" | grep LISTEN; }"
#  what ports does it use: lsof -aPi -p PID
#  encrypt with password: zip -re "zip_file_name" "file_name" 
# ----------------
#  Git:
#    * pretty log: git log --oneline --graph --all
#    * How to rename remote branch: https://stackoverflow.com/questions/30590083/how-do-i-rename-both-a-git-local-and-remote-branch-name
#  git adv log: 
#  IDEA internal properties: /Users/eertree_work/Library/Application Support/JetBrains/Toolbox/apps/IDEA-U/ch-0/222.4167.29/IntelliJ IDEA.app/Contents/bin/idea.properties
#  dump and do patch: git format-patch -1 (last commit) + git apply (patch name)
#  grep logs in real time: tail -f <filename> | grep -E "INFO|WARN|ERROR"
#  list all PSQL schemas: select schema_name from information_schema.schemata;
# ----------------
#  Postgres:
#   * create schema dump:  pg_dump --dbname=postgres --schema=pricing --file ./dump.sql
#   * restore schema dump: psql --dbname=postgres --file=./dump.sql
#   * get db size:         select pg_size_pretty( pg_database_size('postgres') );
# ----------------

# https://medium.com/code-kings/docker-how-to-fix-failed-to-solve-with-frontend-dockerfile-v0-error-when-building-a-docker-image-6d7dc95abd27
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0
export GPG_TTY=$(tty)

# install fuck cmd
# eval $(thefuck —alias)
# alias f="fuck"
export PATH="/opt/homebrew/sbin:$PATH"

# postgres:
export PGDATA='/Users/eertree_work/.postgres'


# zero10:
## backend:
export PATH_TO_VIRTUAL_ENV=~/.venvs/010-community
## ios:
alias WORKSPACE_PATH="/Users/eertree_work/PycharmProjects/010-community/ios/scripts"

# Hacks:
# alias python=python3
# alias pip=pip3

# folder shortcuts
alias idea="cd /Users/eertree/IdeaProjects"
alias charm="cd /Users/eertree/PycharmProjects"

# docker shortcuts
alias d="docker"
alias dc="docker-compose"

# git shortcuts
alias gc="git commit"
alias ga="git add"
alias gs="git status"
alias gp="git push"
alias glp="git log --oneline --graph --all"

# Django
alias pmt="python manage.py test"
alias pmmm="python manage.py makemigrations"
alias pmm="python manage.py migrate"

# Xcode
export JAVA_19_HOME=/Library/Java/JavaVirtualMachines/temurin-19.jdk/Contents/Home

alias java19="export JAVA_HOME=$JAVA_19_HOME"
java19

# C++
alias /opt/homebrew/Cellar/boost/1.81.0_1

# X5
export MAVEN_OPTS=-Xmx2g

# terraform
alias ti="terraform init"
alias tp="terraform plan"
alias ta="terraform apply"
alias td="terraform destroy"
alias to="terraform output"
alias tw="terraform workspace"

# sublime from terminal
# https://stackoverflow.com/questions/16199581/open-sublime-text-from-terminal-in-macos
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'
#  ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# poetry
export PATH="/Users/eertree_work/Library/Application Support/pypoetry/venv/bin":$PATH
fpath+=~/.zfunc
autoload -Uz compinit && compinit

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# x5
export ANT_HOME=/opt/_helper/jdev/tools/apache-ant-1.7.0
# export M2_HOME=/opt/maven 
alias alert="osascript -e 'display dialog \"Project ready.\"'"
export X5_JAVAFX_11_0_2_LIB=/Users/eertree_work/IdeaProjects/x5/xrg-core/javafx-sdk-11.0.2/lib
export X5_JAVAFX_17_0_6_LIB=/Users/eertree_work/IdeaProjects/x5/xrg-core/javafx-sdk-17.0.6/lib

# C++
alias cmm="cmake . && make"

# liquibase
export PATH=$PATH:/Users/eertree_work/liquibase-4.21.1

# Go
export GOROOT=/Users/eertree_work/sdk/go1.19.3
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# PHP (with MAMP)
export PATH=$PATH:/Applications/MAMP/bin/php/php8.1.13/bin

# Code Review
function codereview {
	git checkout "$1" && git pull && git merge --squash "origin/$2"
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
