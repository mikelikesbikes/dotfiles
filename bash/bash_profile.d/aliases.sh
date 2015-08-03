# launching console/server
sc () {
  if [ -f ./script/rails ]; then
    rails c $@
  else
    ./script/console $@
  fi
}

sg () {
  if [ -f ./script/rails ]; then
    rails g $@
  else
    ./script/generate $@
  fi
}

ss () {
  if [ -f ./script/rails ]; then
    rails s $@
  else
    ./script/server $@
  fi
}

sspe () {
  if [ -f ./script/rails ]; then
    sudo rails s -p80 $@
  else
    sudo ./script/server -p80 $@
  fi
}

rgpull () {
  FILES="$@/*"
  for f in $FILES
  do
    pushd $f
    git pull
    popd
  done
}

speedtest () {
  echo "PING"
  ping -c5 -q google.com | grep 'round-trip'
  echo "DOWNLOAD"
  wget --output-document=/dev/null http://speedtest.sea01.softlayer.com/speedtest/speedtest/random1000x1000.jpg
}


alias ls="ls -G"
alias lop='sudo lsof -i -P | grep -i "listen"'
alias mci="mvn clean install"
alias mcp="mvn clean package"
alias mvnd="mvnDebug"
alias mt="mvn tomcat:run"
alias mtd="mvnd tomcat:run"
alias enginx="vim /opt/nginx/conf/nginx.conf"
alias snginx="sudo nginx"
alias rnginx="sudo nginx -s reload"
alias knginx="sudo nginx -s stop"
alias cputop="top -o cpu -O +rsize -s 5"
alias be="bundle exec"
alias s="`which subl` -n"
alias subl="`which subl` -n"
alias mou="open -a /Applications/Mou.app/Contents/MacOS/Mou"
alias use-bundler="bundle exec bash -l"
alias ppath="printenv PATH | tr ':' '\n'"

# Humor.
alias shit="git"
alias mf="cat ~/.bash_profile.d/mf.txt"
alias chittychitty="sudo" # primary use-case: chittychitty !!
alias fucking="sudo"
alias please="sudo"
rcowsay () {
  randcow=`cowsay -l | sed 1d | tr ' ' '\n' | gsort -R | head -1`
  cowsay -f $randcow $@
}

