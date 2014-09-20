test -d "$HOME/.bash_profile.d" && {
  profile_files="$HOME/.bash_profile.d/*.sh"
  for file in `ls $profile_files`
  do
    source $file
  done
}

test -r "$HOME/.bash_profile.local" && source "$HOME/.bash_profile.local"

test -r "$HOME/.bashrc" && source "$HOME/.bashrc"

# This loads rbenv shims and completion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
