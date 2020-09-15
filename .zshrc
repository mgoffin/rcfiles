source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt

# oh-my-zsh plugins
plugins=(
  autopep8
  battery
  colored-man-pages
  colorize
  command-not-found
  common-aliases
  git
  git-prompt
  pyenv
  python
  virtualenv
  virtualenvwrapper
  vscode
)


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:/$HOME/.rbenv/bin:$PATH"
export VIRTUALENVWRAPPER_PYTHON=/home/mjg/.pyenv/shims/python
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export WORKON_HOME=/home/mjg/.pyenv

eval "$(rbenv init -)"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

pyenv shell 3.7.0

alias rezsh="source ~/.zshrc"
alias ls='colorls -h --group-directories-first -1'
alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long'

export VISUAL="vim"
export EDITOR="$VISUAL"

export PYTHONDONTWRITEBYTECODE=1

source $(dirname $(gem which colorls))/tab_complete.sh
