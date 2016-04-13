# jump to a project from anywhere
go () { cd ~/projects/$1; }
_go () { _files -W ~/projects -/; }
compdef _go go

# jump to a project from anywhere
ccb () { cd ~/Development/churchcommunitybuilder/app/$1; }
_ccb () { _files -W ~/Development/churchcommunitybuilder/app -/; }
compdef _ccb ccb

# noitifications
notify () {
  osascript -e "display notification \"$1\" with title \"$2\""
}

vagrant_mysql() {
  if ! vagrant ssh -c "mysql --user=ccb_app --password=iloveccb"
  then
    echo "Is vagrant up?"
  else
    echo "Success!"
  fi
}

set_ma () {
  ma_id=1

  if [ ! -z "$1" ]
  then
    ma_id="$1"
  fi

  cat ~/Development/sql_scripts/update_ma.sql | sed s/MA_ID/${ma_id}/ | vagrant_mysql
}

set_package () {
  package="deluxe"

  if [ ! -z "$1" ]
  then
    package="$1"
  fi

  cat ~/Development/sql_scripts/update_package.sql | sed s/PACKAGE/${package}/ | vagrant_mysql
}

automation() {
}

reset_grunt() {
  vagrant ssh -c "rm -rf /var/www/app/resources/assets;sudo service gruntwatch stop;sudo service gruntwatch start;"
}

eq() {
    calc="${@//p/+}"
    calc="${calc//x/*}"
    bc -l <<<"scale=10;$calc"
}

reset_origin() {
  git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)
}

tiny() {
  curl http://tinyurl.com/api-create.php?url="$1"
}

battery() {
  pmset -g batt | grep Internal | awk '{print $2;}'
}

review() {
  hash=$(git rev-parse HEAD)

  if [ ! -z "$1" ]
  then
    hash="$1"
  fi

  echo "https://testdrivesite.beanstalkapp.com/churchcommunitybuilder/changesets/${hash}" | pbcopy
}
