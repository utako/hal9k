plugins=(git fasd)
alias vim="nvim"

# git related alias
alias sha='git rev-list HEAD | head -1'

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Functions

reload() {
    source "${HOME}/.zshrc"
}


## tsh related
request_prod() {
  reason=${1}
  if [[ -z ${reason} ]]; then
    echo "please provide a reason to access prod"
  else
    tsh request new --roles prod --nowait --reason ${reason}
  fi

  echo "self approving request..."

  request_approve
}

request_approve() {
  id=${1}
  if [[ -z ${id} ]]; then
    id=$(request_id)
  fi

  if [[ -z ${id} ]]; then
    echo "please provide request id"
  else
    tctl request approve ${id}

    echo "logging in using request id: tsh login --request-id ${id}"
    tsh login --request-id ${id}

    echo "logging in to prod db: tsh db login prod-app-api-aurora"
    tsh db login prod-app-api-aurora
  fi
}

request_ls() {
  tctl requests ls
}

request_id() {
  request_ls | grep utako | cut -d' ' -f1
}

pullify() {
  git config --add remote.origin.fetch '+refs/pull/*/head:refs/remotes/origin/pr/*'
  git fetch origin
}

# Exports
# export NPM_TOKEN=
# export MAXMIND_LICENSE_KEY=
# export GOPRIVATE="github.com/calm"
# export GITHUB_ACCESS_TOKEN=

# Talos
if [[ -f ~/.talosrc ]]; then
    source ~/.talosrc
fi

# Python
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
