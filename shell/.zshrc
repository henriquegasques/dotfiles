# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/gasks/.oh-my-zsh"

ZSH_THEME="lambda"
# ZSH_THEME="random"

export BAT_THEME="ansi-dark"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=11"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=25

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  asdf
  git
  docker
  docker-compose
  ruby
  rails
  vi-mode
  systemd
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# bat was installed as batcat due to name clashing with another package
alias bat="batcat --theme=ansi-dark"

alias vi="nvim"
alias vis="vi -S Session.vim"
alias zshconfig="vi ~/code/dotfiles/shell/.zshrc"
alias nvimconfig="vi ~/code/dotfiles/nvim"
alias em="emacsclient -nw --a=\"\""
alias be="bundle exec"

# Directly cd into project dir
alias dotf="cd ~/code/dotfiles"
alias afo="cd ~/code/pw/auth_force_one"
alias dpe="cd ~/code/pw/dpe"
alias pgw="cd ~/code/pw/processor_gateway"
alias fcl="cd ~/code/pw/fiserv_client"
alias mrs="cd ~/code/pw/mrewards"
alias mpt="cd ~/code/pw/mrewards_onboarding_portal"
alias apt="cd ~/code/pw/mRewards_admin"
alias pwach="cd ~/code/pw/pw_ach"
alias bm="cd ~/code/pw/balance_monitoring"
alias mcrd="cd ~/code/pw/mcards"
alias plng="cd ~/code/pw/GenU"

# Checkout git banches with FZF
alias gch="git branch -a | fzf | tr -d '[:space:]' | xargs git checkout"

# Don't lose current screen history after clear
scroll-and-clear-screen() {
  local i=1
  while read; do ((i++)); done <<< $PS1
  printf '\n%.0s' {$i..$LINES}
  zle clear-screen
}
zle -N scroll-and-clear-screen
bindkey '^l' scroll-and-clear-screen
# END keep current screen history on clear

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

export UID=$UID
export TERMINAL=alacritty
export TERM=alacritty

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:70%' --height 80% --border --preview 'batcat --color=always --style=header,grid,numbers --line-range :300 {}'"
fi

# Base16 Shell
# BASE16_SHELL="$HOME/.config/base16-shell/"
# [ -n "$PS1" ] && \
#     [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
#         eval "$("$BASE16_SHELL/profile_helper.sh")"
# END Base16 Shell

export PATH=$PATH:$HOME/.elixir-ls/release
export PATH=$PATH:/usr/local/go/bin
export PATH="$HOME/.luarocks/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.config/emacs/bin:$PATH

alias fd=fdfind

export GITHUB_USERNAME=henriquegasques

function docker-compose () {
  docker compose $@
}

function ssm_login() {
    aws ssm start-session --target $(ssm-instance-search $1) --profile pwdev
}

[ -f "/home/gasks/.ghcup/env" ] && source "/home/gasks/.ghcup/env"

export PATH=$PATH:~/roc_nightly-linux_x86_64-2023-03-17-7bba187/

# opam configuration
[[ ! -r /home/gasks/.opam/opam-init/init.zsh ]] || source /home/gasks/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
