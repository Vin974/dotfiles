        RED="\[\033[0;31m\]"
     YELLOW="\[\033[0;33m\]"
      GREEN="\[\033[0;32m\]"
       BLUE="\[\033[0;34m\]"
  LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_GRAY="\[\033[1;30m\]"
 COLOR_NONE="\[\e[0m\]"

function parse_git_branch ()
{
	gitbranch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
	if [ "$gitbranch" != "" ]; then
		echo " $GREEN($gitbranch)$COLOR_NONE"
	fi
}

function ps1 ()
{
	export PS1="$LIGHT_GRAY\A$RED \w$(parse_git_branch) $COLOR_NONE\$ "
}

PROMPT_COMMAND=ps1
