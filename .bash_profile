export PATH="$HOME/bin:$HOME/.config/composer/vendor/bin:$PATH"

GREEN="\[\e[1;37;42m\]"
BLUE="\[\e[1;37;44m\]"
BLACK="\[\e[1;37;40m\]"
COLOR_NONE="\[\e[0m\]"

function parse_git_branch ()
{
	gitbranch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
	if [ "$gitbranch" != "" ]; then
		echo "$GREEN ($gitbranch)"
	fi
}

function ps1 ()
{
	export PS1="$BLACK \A $BLUE \w $(parse_git_branch)$COLOR_NONE \$ "
}

PROMPT_COMMAND=ps1
