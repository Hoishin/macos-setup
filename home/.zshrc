# zsh completion
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list '' '+m:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=* r:|=*' '+l:|=* r:|=*' '+'
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/Users/kei/.zshrc'
autoload -Uz compinit
compinit

# man zshoptions
setopt appendhistory extendedglob nomatch hist_find_no_dups
unsetopt autocd beep notify

# vim style keybinds
bindkey -v

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.zsh_source/.{path,exports,aliases,functions,extra,zsh_prompt}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# rbenv
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Print out NODE_ENV because sometimes it automatically set production before login
echo "NODE_ENV is '${NODE_ENV}'"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/hoishin/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/hoishin/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/hoishin/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/hoishin/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# added by travis gem
[ -f /Users/hoishin/.travis/travis.sh ] && source /Users/hoishin/.travis/travis.sh

# MUST BE AT THE END
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
