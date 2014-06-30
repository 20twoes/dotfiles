# Aliases
alias ls='ls -G'
alias ll='ls -alFG'
alias grep='grep --color=auto' 
alias dgrep="grep --exclude-dir=.git --exclude='*pyc'" 

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Brew doctor suggestion
export PATH=/usr/local/bin:$PATH

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

