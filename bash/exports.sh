export ARCHFLAGS='-arch x86_64'
export EDITOR="/usr/bin/vim"
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export M2_HOME=/usr/local/apache-maven/apache-maven-2.2.1
export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xms256m -Xmx512m -XX:MaxPermSize=128m"
# export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=3998,suspend=n,server=y -Xms256m -Xmx512m -XX:MaxPermSize=256m"
export M2=$M2_HOME/bin
export HOMEBREW_PATHS="/usr/local/bin:/usr/local/sbin"
export MAVEN_PATHS="$M2:/usr/share/maven/bin"
export PATH="$HOME/bin:$HOMEBREW_PATHS:/opt/local/bin:/opt/local/sbin:/opt/nginx/sbin/:$MAVEN_PATHS:$JAVA_HOME/bin:/opt/subversion/bin:$PATH"
export CDPATH=.
export LSCOLORS=gxfxcxdxbxegedabagacad

#Ruby Enterprise Edition
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
export DOTFILES=~/dotfiles
