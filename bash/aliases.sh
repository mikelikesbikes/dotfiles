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

rgpull() {
  FILES="$@/*"
  for f in $FILES
  do
    pushd $f
    git pull
    popd
  done
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
alias uat-rev='ssh groupon_uat "cat current/REVISION"'
alias migrate="rake db:migrate:local"
alias shit="git"
alias cputop="top -o cpu -O +rsize -s 5"
alias cdg="cd ~/projects/groupon"
alias s="subl"
alias be="bundle exec"
alias mf="cat ~/.bash/mf.txt"
