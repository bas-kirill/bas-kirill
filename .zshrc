export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/opt/homebrew/bin:$PATH
source ~/.bash_profile
source "$HOME/.sdkman/bin/sdkman-init.sh"

# https://medium.com/code-kings/docker-how-to-fix-failed-to-solve-with-frontend-dockerfile-v0-error-when-building-a-docker-image-6d7dc95abd27
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0
export GPG_TTY=$(tty)

eval $(thefuck —alias)
alias f="fuck"
export PATH="/opt/homebrew/sbin:$PATH"

# Hacks:
alias python=python3

# Postgres:
export PGDATA='/Users/eertree_work/.postgres'

# Zero10 env:
export PATH_TO_VIRTUAL_ENV=~/.venvs/010-community

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
