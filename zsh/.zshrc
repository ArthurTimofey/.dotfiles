export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

ZSH_THEME="spaceship"
source $ZSH/oh-my-zsh.sh

source $HOME/.dotfiles/zsh/.zshrc.aliases

