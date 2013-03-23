# Architecture/Compilers
  export ARCHFLAGS='-arch x86_64'
  export CC=`which gcc-4.2`

# Editor
  export EDITOR="/usr/bin/vim"
  export BUNDLER_EDITOR="mvim"

# Miscellaneous
  export DOTFILES=$HOME/dotfiles
  export CDPATH=.:$HOME:$HOME/projects
  export LSCOLORS=gxfxcxdxbxegedabagacad

#RbEnv System Ruby
  export RBENV_VERSION=1.9.3-p392

#Ruby Enterprise Edition
  export RUBY_HEAP_MIN_SLOTS=1000000
  export RUBY_HEAP_SLOTS_INCREMENT=1000000
  export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
  export RUBY_GC_MALLOC_LIMIT=1000000000
  export RUBY_HEAP_FREE_MIN=500000

#JRuby
  export JRUBY_OPTS="--1.9"

# Java stuff
  export JAVA_HOME=`/usr/libexec/java_home`
  #export M2_HOME=/usr/local/apache-maven/apache-maven-2.2.1
  #export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xms256m -Xmx512m -XX:MaxPermSize=128m"
  #export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=3998,suspend=n,server=y -Xms256m -Xmx512m -XX:MaxPermSize=256m"
  #export M2=$M2_HOME/bin

# Path stuff (at the bottom)
  export HOMEBREW_PATH="/usr/local/bin:/usr/local/sbin"
  export STORM_PATH="$HOME/projects/storm/storm-0.7.4/bin"
  export HEROKU_PATH="/usr/local/heroku/bin"
  export PATH="$HEROKU_PATH:$HOME/bin:$HOMEBREW_PATH:/opt/local/bin:/opt/local/sbin:/opt/nginx/sbin:$STORM_PATH:$JAVA_HOME/bin:/opt/subversion/bin:$PATH"

