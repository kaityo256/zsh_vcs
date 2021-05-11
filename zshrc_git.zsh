autoload -U colors; colors

function git-prompt {
  local branchname branch st
	branchname=`git symbolic-ref --short HEAD 2> /dev/null`
	if [ -z $branchname ]; then
		return
	fi
  st=`git status 2> /dev/null`
  if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
		branch="${fg[green]}($branchname)$reset_color"
  elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
		branch="${fg[yellow]}($branchname)$reset_color"
	else
		branch="${fg[red]}($branchname)$reset_color"
	fi

  echo "${fg[green]}${branch}${reset_color}"
}

git-prompt
