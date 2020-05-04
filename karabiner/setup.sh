#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.config/karabiner)"

info "Setting up Karabiner Elements..."

substep_info "Creating Karabiner Elements folder..."
mkdir -p $DESTINATION

find * -name "*.json" | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
clear_broken_symlinks "$DESTINATION"

error "To get Karabiner Elements working correctly, you’ll need to manually add '/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_grabber' to the Input Monitoring list under Privacy."
error "Then, run 'sudo killall karabiner_grabber'."

success "Finished setting up Karabiner Elements."