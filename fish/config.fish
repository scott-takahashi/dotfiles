set -x -g LS_COLORS "di=38;5;27:fi=38;5;7:ln=38;5;51:pi=40;38;5;11:so=38;5;13:or=38;5;197:mi=38;5;161:ex=38;5;9:"

set -x -g TERM "xterm-256color"

# Coreutils bin and man folders
set -x -g PATH (brew --prefix coreutils)/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix coreutils)/libexec/gnuman $MANPATH

# Findutils bin and man folders
set -x -g PATH (brew --prefix findutils)/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix findutils)/libexec/gnuman $MANPATH

# User bin folder
set -x -g PATH ~/bin ~/.local/bin $PATH /usr/local/sbin

# fnm
set -x -g PATH /home/rosco/.fnm $PATH
fnm env --multi --use-on-cd | source

# autojump
[ -f (brew --prefix)/share/autojump/autojump.fish ]; and source (brew --prefix)/share/autojump/autojump.fish

set -g fish_prompt_pwd_dir_length 80

# set normal (set_color normal)
# set magenta (set_color magenta)
# set yellow (set_color yellow)
# set green (set_color green)
# set red (set_color red)
# set gray (set_color -o black)

# Fish git prompt
# set __fish_git_prompt_show_informative_status
# set __fish_git_prompt_showcolorhints
# set __fish_git_prompt_showupstream "informative"
# set __fish_git_prompt_showdirtystate 'yes'
# set __fish_git_prompt_showstashstate 'yes'
# set __fish_git_prompt_showuntrackedfiles 'yes'
# set __fish_git_prompt_showupstream 'yes'
# set __fish_git_prompt_color_branch yellow
# set __fish_git_prompt_color_upstream_ahead green
# set __fish_git_prompt_color_upstream_behind red

set green (set_color green)
set magenta (set_color magenta)
set normal (set_color normal)
set red (set_color red)
set yellow (set_color yellow)

set __fish_git_prompt_color_branch magenta --bold
set __fish_git_prompt_color_dirtystate white
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_merging yellow
set __fish_git_prompt_color_stagedstate yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_cleanstate ' 👍 '
set __fish_git_prompt_char_conflictedstate ' ⚠️ '
set __fish_git_prompt_char_dirtystate ' 💩 '
set __fish_git_prompt_char_invalidstate ' 🤮 '
set __fish_git_prompt_char_stagedstate ' 🚥 '
set __fish_git_prompt_char_stashstate ' 📦 '
set __fish_git_prompt_char_stateseparator ' |'
set __fish_git_prompt_char_untrackedfiles ' 🔍 '
set __fish_git_prompt_char_upstream_ahead ' ☝️ '
set __fish_git_prompt_char_upstream_behind ' 👇 '
set __fish_git_prompt_char_upstream_diverged ' 🚧 '
set __fish_git_prompt_char_upstream_equal ' 💯 '
