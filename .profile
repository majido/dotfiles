function git_ps(){
	echo "$(sh /Users/majidv/.git-ps1.sh)"
}

PS1='\u @ \W$(git_ps) \$'
