source ~/Library/Python/2.7/bin/virtualenvwrapper.sh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/${USER}/.oh-my-zsh

# Spaceship
ZSH_THEME="spaceship"
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_BATTERY_THRESHOLD=50
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_HG_BRANCH_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_XCODE_SHOW_GLOBAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_HASKELL_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_VI_MODE_SHOW=false

# zsh plugins
plugins=(git kubectl colorize history pip zsh-autosuggestions history-substring-search zsh-completions)
autoload -U compinit && compinit

# ZSH
source $ZSH/oh-my-zsh.sh

. `brew --prefix`/etc/profile.d/z.sh

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Python path
export PATH="/usr/local/opt/python@2/libexec/bin:$PATH"


# Aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Vim mode for  zsh
bindkey -v
