export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

ZSH_THEME="spaceship"
source $ZSH/oh-my-zsh.sh

source $HOME/.dotfiles/zsh/.zshrc.aliases


# bun completions
[ -s "/Users/arturs/.bun/_bun" ] && source "/Users/arturs/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
