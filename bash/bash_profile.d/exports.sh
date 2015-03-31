# Architecture/Compilers
  export ARCHFLAGS='-arch x86_64'
  export CC=`which cc`

  # Homebrew libxslt build variables
  export LDFLAGS="$LDFLAGS -L/usr/local/opt/libxslt/lib"
  export CPPFLAGS="$CPPFLAGS -I/usr/local/opt/libxslt/include"

  # Homebrew libxml build variables
  export LDFLAGS="$LDFLAGS -L/usr/local/opt/libxml2/lib"
  export CPPFLAGS="$CPPFLAGS -I/usr/local/opt/libxml2/include"

# Editor
  export EDITOR="/usr/bin/vim"
  export BUNDLER_EDITOR="mvim"

# Miscellaneous
  export DOTFILES=$HOME/dotfiles
  export CDPATH=.:$HOME:$HOME/projects
  export LSCOLORS=gxfxcxdxbxegedabagacad

#Ruby Enterprise Edition
  # export RUBY_HEAP_MIN_SLOTS=1000000
  # export RUBY_HEAP_SLOTS_INCREMENT=1000000
  # export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
  # export RUBY_GC_MALLOC_LIMIT=1000000000
  # export RUBY_HEAP_FREE_MIN=500000

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

