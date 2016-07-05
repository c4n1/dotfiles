#!/bin/bash
#Put into /etc/profile.d/


#Helped by these
# http://misc.flogisoft.com/bash/tip_colors_and_formatting
# http://askubuntu.com/questions/24358/how-do-i-get-long-command-lines-to-wrap-to-the-next-line

#Set some colour Vars
GREEN=$(tput setaf 10)
PINK=$(tput setaf 207)
CYAN=$(tput setaf 38)
YELLOW=$(tput setaf 11)
WHITE=$(tput setaf 7)

BKRED=$(tput setab 1)

RESETALL=$(tput sgr0)

#If root bkgrnd user with red
if [ "$(id -u)" = "0" ]; then
  export PS1='\[$GREEN\][\[$BKRED\]\[$WHITE\]\u\[$RESETALL\]\[$GREEN\]@\[$CYAN\]\h\[$GREEN\]:\[$YELLOW\]\W\[$GREEN\]]\[$PINK\]\$ \[$RESETALL\]'
else
  export PS1='\[$GREEN\][\[$PINK\]\u\[$GREEN\]@\[$CYAN\]\h\[$GREEN\]:\[$YELLOW\]\W\[$GREEN\]]\[$PINK\]\$ \[$RESETALL\]'
fi
