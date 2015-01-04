export PATH=/opt/local/bin:/opt/local/sbin:$PATH
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
      . /opt/local/etc/profile.d/bash_completion.sh
fi
# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc
##
# Your previous /Users/jbaird/.bash_profile file was backed up as /Users/jbaird/.bash_profile.macports-saved_2013-11-17_at_22:22:00
##

# MacPorts Installer addition on 2013-11-17_at_22:22:00: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#   ---------------------------
#   6.  NETWORKING
#   ---------------------------

alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
ii() {
echo -e "\nYou are logged on ${RED}$HOST"
echo -e "\nAdditionnal information:$NC " ; uname -a
echo -e "\n${RED}Users logged on:$NC " ; w -h
echo -e "\n${RED}Current date :$NC " ; date
echo -e "\n${RED}Machine stats :$NC " ; uptime
echo -e "\n${RED}Current network location :$NC " ; scselect
echo -e "\n${RED}Public facing IP Address :$NC " ;myip
#echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
echo
}

                                                                                    
