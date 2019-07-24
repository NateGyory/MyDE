# My bashrc

###############################################################################
#                               Bash Commands                                 #
###############################################################################

#
# colors - Display color palette
# usage: colors
#

colors()
{
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}


#
# extract - Archive extractor
# usage: extract <file>
#

extract ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


#
# distroArt - Distro specific screen art
# usage: distroArt
#

distroArt()
{

    if [ -x "$(command -v neofetch)" ]; then
        neofetch
    else
        echo "Download neofetch for distro ASCII art!"
    fi
}

###############################################################################
#                               Aliases and exports                           #
###############################################################################
alias v=/usr/local/bin/nvim
alias q=exit
alias cp="cp -i"               # confirm before overwriting something
alias df='df -h'               # human-readable sizes
alias free='free -m'           # show sizes in MB
alias grep='grep --colour=auto'

# Mac settings
source ~/.macrc

# PG settings
source ~/.pgrc

# Add user path binaries
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

# My env variables
export envs=$HOME/Envs/

# Case ignore autocomplete
# bind "set completion-ignore-case on"

###############################################################################
#                                   Main                                      #
###############################################################################

echo "Welcome!"

distroArt

