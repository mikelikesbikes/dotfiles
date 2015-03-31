# Architecture/Compilers
  export ARCHFLAGS='-arch x86_64'
  test `which gcc-42` && export CC=`which gcc-42`

  # Homebrew libxslt build variables
  LIBXSLT_ROOT="/usr/local/opt/libxslt"
  test -d "$LIBXSLT_ROOT/lib" && export LDFLAGS="$LDFLAGS -L$LIBXSLT_ROOT/lib"
  test -d "$LIBXSLT_ROOT/include" && export LDFLAGS="$LDFLAGS -L$LIBXSLT_ROOT/include"

  # Homebrew libxml build variables
  LIBXML2_ROOT="/usr/local/opt/libxml2"
  test -d "$LIBXML2_ROOT/lib" && export LDFLAGS="$LDFLAGS -L$LIBXML2_ROOT/lib"
  test -d "$LIBXML2_ROOT/include" && export LDFLAGS="$LDFLAGS -L$LIBXML2_ROOT/include"

# Editor
  export EDITOR="/usr/bin/vim"
  export BUNDLER_EDITOR="mvim"

# Miscellaneous
  export DOTFILES=$HOME/dotfiles
  export CDPATH=.:$HOME:$HOME/projects
  export LSCOLORS=gxfxcxdxbxegedabagacad

#JRuby
  export JRUBY_OPTS="--1.9"

# Java stuff
  export JAVA_HOME=`/usr/libexec/java_home`
  #export M2_HOME=/usr/local/apache-maven/apache-maven-2.2.1
  #export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xms256m -Xmx512m -XX:MaxPermSize=128m"
  #export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=3998,suspend=n,server=y -Xms256m -Xmx512m -XX:MaxPermSize=256m"
  #export M2=$M2_HOME/bin

# Path stuff
  export HOMEBREW_PATH="/usr/local/bin:/usr/local/sbin"
  export STORM_PATH="$HOME/projects/storm/storm-0.7.4/bin"
  export HEROKU_PATH="/usr/local/heroku/bin"
  export PATH="./bin:$HOME/bin:$HEROKU_PATH:$HOMEBREW_PATH:$STORM_PATH:$JAVA_HOME/bin:$PATH"

# History stuff
  shopt -s histappend
  export HISTCONTROL=ignoreboth
  export HISTSIZE=10000
  export PROMPT_COMMAND="history -a; history -n;$PROMPT_COMMAND"

