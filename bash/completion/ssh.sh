complete -W "$(echo $(grep '^ssh ' $HOME/.bash_history | sort -u | sed 's/^ssh //'))" ssh
