# Architecture/Compilers
  #export ARCHFLAGS='-arch x86_64'
  #test `which gcc-42` && export CC=`which gcc-42`

# Homebrew libxslt build variables
#  LIBXSLT_ROOT="/usr/local/opt/libxslt"
#  test -d "$LIBXSLT_ROOT/lib" && export LDFLAGS="$LDFLAGS -L$LIBXSLT_ROOT/lib"
#  test -d "$LIBXSLT_ROOT/include" && export LDFLAGS="$LDFLAGS -L$LIBXSLT_ROOT/include"

# Homebrew libxml build variables
#  LIBXML2_ROOT="/usr/local/opt/libxml2"
#  test -d "$LIBXML2_ROOT/lib" && export LDFLAGS="$LDFLAGS -L$LIBXML2_ROOT/lib"
#  test -d "$LIBXML2_ROOT/include" && export LDFLAGS="$LDFLAGS -L$LIBXML2_ROOT/include"

# Homebrew
  # this speeds up $(brew --prefix)
  export HOMEBREW_PREFIX="/usr/local"

# Editor
  export EDITOR=`which vim`
  export BUNDLER_EDITOR="mvim"

# Miscellaneous
  export DOTFILES=$HOME/.dotfiles
  export MYVIMRC=$HOME/.vimrc
  # `brew install bash-completion` to get this to autocomplete
  export CDPATH=.:$HOME:$HOME/projects
  export LSCOLORS=gxfxcxdxbxegedabagacad

#JRuby
  export JRUBY_OPTS="--1.9"

# Java stuff
  #export JAVA_HOME=`/usr/libexec/java_home`
  #export M2_HOME=/usr/local/apache-maven/apache-maven-2.2.1
  #export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xms256m -Xmx512m -XX:MaxPermSize=128m"
  #export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=3998,suspend=n,server=y -Xms256m -Xmx512m -XX:MaxPermSize=256m"
  #export M2=$M2_HOME/bin

# History stuff
  shopt -s histappend
  export HISTCONTROL=ignoredups:erasedups
  export HISTSIZE=100000
  export HISTFILESIZE=100000
  # After each command, append to the history file and reread it
  export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND; }history -a; history -c; history -r"

### ANSI ESCAPE COLORS ###
  ResetColor_Off='\[\e[0m\]'       # Text Reset

  # Regular Colors
  Black='\[\e[0;30m\]'        # Black
  Red='\[\e[0;31m\]'          # Red
  Green='\[\e[0;32m\]'        # Green
  Yellow='\[\e[0;33m\]'       # Yellow
  Blue='\[\e[0;34m\]'         # Blue
  Purple='\[\e[0;35m\]'       # Purple
  Cyan='\[\e[0;36m\]'         # Cyan
  White='\[\e[0;37m\]'        # White

  # Bold
  BBlack='\[\e[1;30m\]'       # Black
  BRed='\[\e[1;31m\]'         # Red
  BGreen='\[\e[1;32m\]'       # Green
  BYellow='\[\e[1;33m\]'      # Yellow
  BBlue='\[\e[1;34m\]'        # Blue
  BPurple='\[\e[1;35m\]'      # Purple
  BCyan='\[\e[1;36m\]'        # Cyan
  BWhite='\[\e[1;37m\]'       # White

  # Underline
  UBlack='\[\e[4;30m\]'       # Black
  URed='\[\e[4;31m\]'         # Red
  UGreen='\[\e[4;32m\]'       # Green
  UYellow='\[\e[4;33m\]'      # Yellow
  UBlue='\[\e[4;34m\]'        # Blue
  UPurple='\[\e[4;35m\]'      # Purple
  UCyan='\[\e[4;36m\]'        # Cyan
  UWhite='\[\e[4;37m\]'       # White

  # Background
  On_Black='\[\e[40m\]'       # Black
  On_Red='\[\e[41m\]'         # Red
  On_Green='\[\e[42m\]'       # Green
  On_Yellow='\[\e[43m\]'      # Yellow
  On_Blue='\[\e[44m\]'        # Blue
  On_Purple='\[\e[45m\]'      # Purple
  On_Cyan='\[\e[46m\]'        # Cyan
  On_White='\[\e[47m\]'       # White

  # High Intensity
  IBlack='\[\e[0;90m\]'       # Black
  IRed='\[\e[0;91m\]'         # Red
  IGreen='\[\e[0;92m\]'       # Green
  IYellow='\[\e[0;93m\]'      # Yellow
  IBlue='\[\e[0;94m\]'        # Blue
  IPurple='\[\e[0;95m\]'      # Purple
  ICyan='\[\e[0;96m\]'        # Cyan
  IWhite='\[\e[0;97m\]'       # White

  # Bold High Intensity
  BIBlack='\[\e[1;90m\]'      # Black
  BIRed='\[\e[1;91m\]'        # Red
  BIGreen='\[\e[1;92m\]'      # Green
  BIYellow='\[\e[1;93m\]'     # Yellow
  BIBlue='\[\e[1;94m\]'       # Blue
  BIPurple='\[\e[1;95m\]'     # Purple
  BICyan='\[\e[1;96m\]'       # Cyan
  BIWhite='\[\e[1;97m\]'      # White

  # High Intensity backgrounds
  On_IBlack='\[\e[0;100m\]'   # Black
  On_IRed='\[\e[0;101m\]'     # Red
  On_IGreen='\[\e[0;102m\]'   # Green
  On_IYellow='\[\e[0;103m\]'  # Yellow
  On_IBlue='\[\e[0;104m\]'    # Blue
  On_IPurple='\[\e[0;105m\]'  # Purple
  On_ICyan='\[\e[0;106m\]'    # Cyan
  On_IWhite='\[\e[0;107m\]'   # White

# PROMPT
source /usr/local/etc/bash_completion.d/git-prompt.sh

RUBY=$'\xf0\x9f\x94\xbb'
ARROW=$'\xe2\x9e\x9c'
CLOCK=$'\xF0\x9F\x95\x93'

__ruby_version() {
  if which ruby > /dev/null; then
    ruby -v | cut -d' ' -f2
  fi
}

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
#export PS1="$Blue\u$ResetColor_Off:$BCyan\w$Green\$(__git_ps1) $IRed$RUBY \$(__ruby_version)$ResetColor_Off\n$Purple$ARROW  $ResetColor_Off"
export PS1_INSTRUMENTS="$Black$CLOCK \t $IRed$RUBY \$(__ruby_version)"
export PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'__git_ps1 "\n$Blue\u$ResetColor_Off:$BCyan\w$Green" " $PS1_INSTRUMENTS$ResetColor_Off\n$Purple$ARROW  $ResetColor_Off" " $Green(%s$Green)"'

# ALIASES
  alias ls="ls -G"
  alias lop='sudo lsof -i -P | grep -i "listen"'
  alias enginx="vim /opt/nginx/conf/nginx.conf"
  alias snginx="sudo nginx"
  alias rnginx="sudo nginx -s reload"
  alias knginx="sudo nginx -s stop"
  alias cputop="top -o cpu -O +rsize -s 5"
  alias subl="subl -n"
  alias mou="open -a /Applications/Mou.app/Contents/MacOS/Mou"
  alias be="bundle exec"
  alias use-bundler="bundle exec bash -l"
  alias ppath="printenv PATH | tr ':' '\n'"
  alias dbreset="be rake db:drop; be rake db:create && be rake db:migrate && be rake db:seed"
  add-auto-login () {
    cat .ssh/id_rsa.pub | ssh $1 'cat >> .ssh/authorized_keys'
  }
  alias gst="git status"
  alias gco="git checkout -p"
  alias gap="git add -p"
  alias gci="git commit -v"
  alias gpl="git pull"
  alias gpr="git pull --rebase"
  alias gph="git push"

# Humor.
  alias arbys="ruby"
  alias chittychitty="sudo" # primary use-case: chittychitty !!
  alias fucking="sudo"
  alias please="sudo"
  rcowsay () {
    randcow=`cowsay -l | sed 1d | tr ' ' '\n' | gsort -R | head -1`
    cowsay -f $randcow $@
  }
  alias shotfun=shotgun
  aocdl () {
    curl -b session=$(cat ${HOME}/.aocrc) https://adventofcode.com/2022/day/$1/input 2>/dev/null > input.txt
  }
  aocmk () {
    cp -r template day-$1
  }
  alias cdaoc="cd $HOME/projects/mikelikesbikes/advent-of-code-2021"

## COMPLETIONS
  if [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
    . "$(brew --prefix)/etc/profile.d/bash_completion.sh"
  fi

# This loads rbenv shims and completion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


export GOPATH="$HOME/go"
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOPATH/bin:$GOENV_ROOT/bin:$PATH"
if which goenv > /dev/null; then eval "$(goenv init -)"; fi

test -e "$HOME/.iterm2_shell_integration.bash" && source "$HOME/.iterm2_shell_integration.bash"

# load fzf settings https://github.com/junegunn/fzf#using-homebrew-or-linuxbrew
test -f "$HOME/.fzf.bash" && source "$HOME/.fzf.bash"

# Path stuff
export PATH="./bin:$HOME/bin:/Applications/MacVim.app/Contents/bin:$PATH"

# load other profiles
test -r "$HOME/.bash_profile.local" && source "$HOME/.bash_profile.local"
