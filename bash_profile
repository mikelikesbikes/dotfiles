source "$HOME/.bash/exports.sh"
source "$HOME/.bash/completion.sh"
source "$HOME/.bash/prompt.sh"
source "$HOME/.bash/aliases.sh"
source "$HOME/.bash/svn_enhancements.sh"
source "$HOME/.bash/maven_color.sh"

[[ -r "$HOME/.bash_profile.local" ]] && source "$HOME/.bash_profile.local"

[[ -r "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# This loads rbenv shims and completion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
