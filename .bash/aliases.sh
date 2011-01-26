# rails 3 shortcut 'r'
alias r='rails'

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


alias ls="ls -G"
alias lop='sudo lsof -i -P | grep -i "listen"'
alias mci="mvn clean install"
alias mcp="mvn clean package"
alias mvnd="mvnDebug"
alias mt="mvn tomcat:run"
alias mtd="mvnd tomcat:run"
alias enginx="mate /opt/nginx/conf/nginx.conf"
alias snginx="sudo nginx"
alias rnginx="sudo nginx -s reload"
alias knginx="sudo nginx -s stop"