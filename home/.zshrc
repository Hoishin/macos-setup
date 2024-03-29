# zsh completion
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list '' '+m:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=* r:|=*' '+l:|=* r:|=*' '+'
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/Users/kei/.zshrc'
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# man zshoptions
setopt appendhistory extendedglob nomatch hist_find_no_dups
unsetopt autocd beep notify

# vim style keybinds
bindkey -v

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.zsh_source/.{exports,path,aliases,functions,extra,prompt}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Set tj/n folder
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
export N_PRESERVE_NPM=1

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# rbenv
eval "$(rbenv init -)"

# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# rustup
source $HOME/.cargo/env

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Haskell Stack bash completion
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"
eval "$(stack --bash-completion-script stack)"

# added by travis gem
[ -f /Users/hoishin/.travis/travis.sh ] && source /Users/hoishin/.travis/travis.sh

# Print out NODE_ENV because sometimes it automatically set production before login
echo "NODE_ENV is '${NODE_ENV}'"

# MUST BE AT THE END
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
