# STARTING COMMAND
eval "$(starship init zsh)"

## PLUGIN
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-fzf-history-search/zsh-fzf-history-search.zsh


## ALIASES ##
alias ll="exa --icons -gal --group-directories-first"
alias ls="exa --icons -g --group-directories-first"
alias tree="exa --icons -g --tree --group-directories-first"
alias ..="cd .."

# Dotfiles repo alias
alias config="/usr/bin/git --git-dir=dotfiles.git --work-tree=$HOME"
alias 'git tr'='git log --graph --pretty=oneline --abbrev-commit'

alias cp="cp -v"
alias rm="rm -v"

alias hx="helix"

# changes the editor in the terminal, to edit long commands.
export EDITOR='helix'
export VISUAL='helix'

# PATH CONFIG
export PATH="$PATH:$HOME/binaryninja"
export PATH="$PATH:$HOME/.local/bin:$HOME/go/bin:$HOME/.cargo/bin/"
export PATH="$PATH:$HOME/zig/zig-x86_64/"

### "bat" as manpager
export MANROFFOPT='-c'
export MANPAGER="sh -c 'col -bx | bat -plman'"

# Move by words
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

eval "$(zoxide init zsh)"

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
alias dot='/usr/bin/git --git-dir=/home/math/.cfg/ --work-tree=/home/math'
