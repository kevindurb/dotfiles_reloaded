# other aliases to make stuff faster
alias lss="ls -lAF"
alias lsd="ls -lAFd */"
alias rmvimswp="rm -rf ~/.vim/backup/*"
alias c="clear"
alias reqtime="curl -o /dev/null -s -w %{time_total}\\\n"
alias zzz="osascript -e 'tell application \"Finder\" to sleep'"
alias lockme="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias ql="qlmanage -p"
alias ipaddresses="ipconfig getifaddr en0 && ipconfig getifaddr en1"
alias externaladdress="curl ipecho.net/plain; echo"

# work / vagrant
alias phpsyntax="vagrant ssh -c \"find /var/www/app -path /var/www/app/vendor -prune -o \( -name \"*.php\" -or -name \"*.phtml\" \) -print0 | xargs -0 -n 1 php -l\""
alias sqldumpdev="vagrant ssh -c \"mysqldump ccb_dev --user=ccb_app --password=iloveccb --lock-tables=false\""
alias ccbtags="ctags -R --exclude=node_modules --exclude=resources --exclude=vendor --exclude=feature --exclude=sql --exclude=upgrades"
alias vssh="ssh -i ~/.vagrant.d/insecure_private_key vagrant@127.0.0.1 -p 2200"

# spotify
alias spp="spotify play/pause"
alias spn="spotify next"
alias spi="spotify info"
alias spr="spotify repeat"
alias sps="spotify shuffle"

# use nvim
alias vim="/usr/local/bin/vim"

# use tmux
alias tmux="TERM=xterm-256color tmux"

# useful copy paste
if ! which pbpaste > /dev/null; then
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
fi

transfer() {
    # check arguments
    if [ $# -eq 0 ];
    then
        echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"
        return 1
    fi

    # get temporarily filename, output is written to this file show progress can be showed
    tmpfile=$( mktemp -t transferXXX )

    # upload stdin or file
    file=$1

    if tty -s;
    then
        basefile=$(basename "$file" | sed -e 's/[^a-zA-Z0-9._-]/-/g') 

        if [ ! -e $file ];
        then
            echo "File $file doesn't exists."
            return 1
        fi

        if [ -d $file ];
        then
            # zip directory and transfer
            zipfile=$( mktemp -t transferXXX.zip )
            cd $(dirname $file) && zip -r -q - $(basename $file) >> $zipfile
            curl --progress-bar --upload-file "$zipfile" "https://transfer.sh/$basefile.zip" >> $tmpfile
            rm -f $zipfile
        else
            # transfer file
            curl --progress-bar --upload-file "$file" "https://transfer.sh/$basefile" >> $tmpfile
        fi
    else
        # transfer pipe
        curl --progress-bar --upload-file "-" "https://transfer.sh/$file" >> $tmpfile
    fi

    # cat output link
    cat $tmpfile

    # cleanup
    rm -f $tmpfile
}
