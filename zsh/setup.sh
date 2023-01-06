#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

info "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.oh-my-zsh/themes)"

find * -not -name "$(basename ${0})" -type f | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

sed -i '' 's/robbyrussell/taka/g' ~/.zshrc
source ~/.zshrc

success "Set up zsh!"
