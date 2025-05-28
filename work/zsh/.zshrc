export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin

# Source all my envs
source_all() {
	source /Users/maeve/.config/zsh/.zshrc
	tmux source /Users/maeve/.config/tmux/tmux.conf
	neofetch
}


# autocomplete
bindkey '^ ' autosuggest-accept

alias ls='ls -a'
alias cd=z

# zoxide 
eval "$(zoxide init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
# Make zsh autocomplete ignore case sens
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


#   CTRL-K / CTRL-J (or CTRL-P / CTRL-N) to move cursor up and down
#   Enter key to select the item, CTRL-C / CTRL-G / ESC to exit
#   On multi-select mode (-m), TAB and Shift-TAB to mark multiple items
#   Emacs style key bindings
#   Mouse: scroll, click, double-click; shift-click and shift-scroll on multi-select mode

function smile() {
  smile_quotes=(
    "¯\_(ツ)_/¯"
    "(｀∀´)Ψ"
    "(ó﹏ò｡)"
    "( ͡° ͜ʖ ͡°)"
    "(•ω•)"
    "(°°)"
    "(;;)"
    "(~#~)"
    "(͠≖ ͜ʖ͠≖)"
    "( ಠ ͜ʖರೃ)"
    "(• ε •)"
    "◉_◉"
  )
  smile_string="${smile_quotes[RANDOM%${#smile_quotes[@]}]}"
  echo $smile_string
  unset smile_quotes
}

# Themes
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

# How many commands zsh will load to memory.
export HISTSIZE=10000
# How many commands history will save on file.
export SAVEHIST=10000
# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS
# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS
### ZSH HOME
export ZSH=$HOME/.config/zsh
export HISTFILE=$ZSH/.zsh_history
export ZDOTDIR=$HOME/.config/zsh
export SPACESHIP_CONFIG=$HOME/.config/zsh/spaceship.zsh
export COLORTERM=truecolor
export TERM=xterm-256color

 export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source /opt/homebrew/opt/spaceship/spaceship.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
