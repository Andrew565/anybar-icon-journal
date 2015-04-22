# ***** ANYBAR FUNCTIONS *****
# assumes AnyBar icons are in ~/.AnyBar (the default)

# Set the AnyBar Dot
# use like: anybar {icon/color} [journal entry (in quotes)] [port]
# for example: anybar grin "Got my new AnyBar journal working"
function anybar { 
  echo -n $1 | nc -4u -w0 localhost ${3:-1738};
  LOGFILE=~/anybar.log
  echo "$(date "+%m/%d/%Y %T") - $1 - $2" >> $LOGFILE 2>&1
}
alias ab="anybar"

# List of AnyBar Icons
alias anybar-icons="ls ~/.AnyBar/*.png | cut -d"/" -f 5 | cut -d"." -f 1"
alias abi="anybar-icons"

# AnyBar Log
alias anybar-log="tail -10 ~/anybar.log"
alias abl="anybar-log"
alias anybar-log-full="cat ~/anybar.log"
alias ablf="anybar-log-full"