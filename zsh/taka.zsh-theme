EMOJI=(
    '👻'
    '👽'
    '🤖'
    '💩'
    '😻'
    '😼'
    '😽'
    '🙌'
    '👏'
    '👍'
    '✊'
    '✌️'
    '🐶'
    '🐱'
    '🐭'
    '🐹'
    '🐰'
    '🦊'
    '🐻'
    '🐼'
    '🐨'
    '🐯'
    '🦁'
    '🐮'
    '🐷'
    '🐽'
    '🐸'
    '🐵'
    '🙈'
    '🙉'
    '🙊'
    '🐒'
    '🐔'
    '🐧'
    '🐦'
    '🐤'
    '🐣'
    '🐥'
    '🦄'
    '🐝'
    '🐛'
    '🦋'
    '🐌'
    '🐚'
    '🐞'
    '🐙'
    '🦑'
    '🦐'
    '🦀'
    '🐡'
    '🐠'
    '🐟'
    '🐬'
    '🐳'
    '🐋'
    '🦈'
    '🐉'
    '🐲'
    '🌵'
    '🎄'
    '🌲'
    '🌳'
    '🌴'
    '🌱'
    '🌿'
    '☘️'
    '🍀'
    '🎍'
    '🎋'
    '🍃'
    '🍂'
    '🍁'
    '🍄'
    '🌾'
    '💐'
    '🌷'
    '🌹'
    '🥀'
    '🌺'
    '🌸'
    '🌼'
    '🌻'
    '💫'
    '⭐️'
    '🌟'
    '✨'
    '⚡️'
    '☄️'
    '💥'
    '🔥'
    '🌈'
    '🌊'
    '🍏'
    '🍎'
    '🍐'
    '🍊'
    '🍋'
    '🍌'
    '🍉'
    '🍇'
    '🍓'
    '🍈'
    '🍒'
    '🍑'
    '🍍'
    '🥥'
    '🥝'
    '🍅'
    '🍆'
    '🥑'
    '🥦'
    '🥒'
    '🌶'
    '🌽'
    '🥕'
    '🥔'
    '🍠'
    '🥐'
    '🍞'
    '🥖'
    '🥨'
    '🧀'
    '🥚'
    '🍳'
    '🥞'
    '🥓'
    '🥩'
    '🍗'
    '🍖'
    '🌭'
    '🍔'
    '🍟'
    '🍕'
    '🥪'
    '🥙'
    '🌮'
    '🌯'
    '🥗'
    '🥘'
    '🥫'
    '🍝'
    '🍜'
    '🍲'
    '🍛'
    '🍣'
    '🍱'
    '🥟'
    '🍤'
    '🍙'
    '🍚'
    '🍘'
    '🍥'
    '🥠'
    '🍢'
    '🍡'
    '🍧'
    '🍨'
    '🍦'
    '🥧'
    '🍰'
    '🎂'
    '🍮'
    '🍭'
    '🍬'
    '🍫'
    '🍿'
    '🍩'
    '🍪'
    '🌰'
    '🥜'
    '🍯'
    '🥛'
    '🍼'
    '☕️'
    '🍵'
    '🥤'
    '🍶'
    '🍺'
    '🍻'
    '🥂'
    '🍷'
    '🥃'
    '🍸'
    '🍹'
    '🍾'
    '🎹'
    '🥁'
    '🎷'
    '🎺'
    '🎸'
    '🚀'
    '🛸'
)
function precmd {
    EMOJI_PICK=${EMOJI[$(( $RANDOM % ($#EMOJI + 1)))]}
}
PROMPT='%{$fg[green]%}%~ $(git_prompt_info)'$'\n''$EMOJI_PICK%{$reset_color%}  '
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}▲"
ZSH_THEME_GIT_PROMPT_CLEAN=""
