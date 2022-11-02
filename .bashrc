# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# ALIASES
# Order applications grid by alphabetical order
alias order="gsettings set org.gnome.shell app-picker-layout "[]""

#Fast upgrade command
alias upgrade="sudo dnf upgrade -y"

#Better listing commands
alias ll="ls -lh --color --group-directories-first"

# Save you from mistyping
alias sl=ls

# Overwrite existing commands for better defaults
alias mv="mv -i"
alias mkdir="mkdir -p"
alias df="df -h"

# To ignore an alias run it prepended with \
# eg: \ls

# Or disable an alias altogether with unalias
# eg: unalias ll

# To get an alias definition just call it with alias
# eg: alias ll

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# Added for git bare repo dotfiles management
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
