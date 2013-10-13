source "$HOME/.bash/exports.sh"
source "$HOME/.bash/completion.sh"
source "$HOME/.bash/prompt.sh"
source "$HOME/.bash/aliases.sh"
source "$HOME/.bash/svn_enhancements.sh"
source "$HOME/.bash/maven_color.sh"

[[ -r "$HOME/.bash_profile.local" ]] && source "$HOME/.bash_profile.local"

[[ -r "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# This loads rbenv shims and completion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
