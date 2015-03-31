source /usr/local/etc/bash_completion.d/git-prompt.sh

RUBY=$'\xf0\x9f\x94\xbb'
ARROW=$'\xe2\x9e\x9c'

__scm_ps1() {
    local s=
    if [[ -d ".svn" ]] ; then
        s=\ \(svn:$(svn info | sed -n -e '/^Revision: \([0-9]*\).*$/s//\1/p' )\)
    else
        GIT_PS1_SHOWDIRTYSTATE=true
        s=$(__git_ps1 " (git:%s)")
    fi
    echo -n "$s"
}

__ruby_version() {
  if which ruby > /dev/null; then
    ruby -v | cut -d' ' -f2
  fi
}

export GIT_PS1_SHOWDIRTYSTATE=true
export PS1="$Blue\u$ResetColor_Off:$BCyan\w$Green\$(__git_ps1) $IRed$RUBY \$(__ruby_version)$ResetColor_Off\n$Purple$ARROW  $ResetColor_Off"
