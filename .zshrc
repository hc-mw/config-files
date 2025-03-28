#==============================================================================
#                         HARDIK'S ZSH CONFIGURATION
#==============================================================================

#------------------------------------------------------------------------------
# Powerlevel10k Instant Prompt
#------------------------------------------------------------------------------
# Enable Powerlevel10k instant prompt for faster shell loading
# Keep this at the top of ~/.zshrc for best performance
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#------------------------------------------------------------------------------
# Oh My Zsh Configuration
#------------------------------------------------------------------------------
# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set Powerlevel10k as the theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Load plugins - carefully selected for performance and utility
plugins=(
  git                     # Git integration and status
  zsh-syntax-highlighting # Command syntax highlighting
  colored-man-pages       # Colorized man pages
  zsh-fzf-history-search  # Fuzzy search through command history
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

#------------------------------------------------------------------------------
# Development Environment Setup
#------------------------------------------------------------------------------
# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"  # Load NVM
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"  # Load completion

# Set default Node.js version
nvm use 22.14.0 &>/dev/null

# Deno setup
export DENO_INSTALL="$HOME/.deno"

# Cargo environment
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

#------------------------------------------------------------------------------
# PATH Configuration
#------------------------------------------------------------------------------
# Clean, organized PATH with no duplicates
export PATH="$HOME/.local/bin:$HOME/git_scripts:$HOME/.zellij:$DENO_INSTALL/bin:$NVM_DIR/versions/node/v20.11.1/bin:/opt/mw-agent/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$HOME/.local/share/JetBrains/Toolbox/scripts"

#------------------------------------------------------------------------------
# Prompt Configuration
#------------------------------------------------------------------------------
# Powerlevel10k configuration
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Fallback prompt in case powerlevel10k is not loaded
PS1='\[\e[1;97m\][\[\e[38;5;10m\]\u\[\e[38;5;10m\]@\[\e[38;5;10m\]\h\[\e[1;97m\] \[\e[1;97m\]\W\[\e[1;97m\]]:\[\e[0m\] '

#==============================================================================
#                           END OF CONFIGURATION
#==============================================================================
