# Aliases and extra program I use
# inspiration from https://remysharp.com/2018/08/23/cli-improved

# bat > cat
# https://github.com/sharkdp/bat
alias cat='bat'
alias less='bat'

# Fuzzy search using fzf
# https://github.com/junegunn/fzf


alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

#diff-so-fancy > diff

alias diff='diff-so-fancy'


#ripgrep > grep
alias grep='rg'
