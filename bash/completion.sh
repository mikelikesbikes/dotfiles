# I'm using the bash-completion package (brew install bash-completion)
# to provide a ton of extra completion stuff. This also loads completions
# that are included in $(brew --prefix)/etc/bash_completion.d that are
# installed along with other packages (e.g. git and leinengen)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

