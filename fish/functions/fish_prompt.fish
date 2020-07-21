function fish_prompt --description 'Write out the prompt'
    if not set -q prompt_emoji
        set -g prompt_emoji 👽 👻 🤖 💩 😻 😼 😽 🙌 👏 👍 ✊ ✌️ 🐶 🐱 🐭 🐹 🐰 🦊 🐻 🐼 🐨 🐯 🦁 🐮 🐷 🐽 🐸 🐵 🙈 🙉 🙊 🐒 🐔 🐧 🐦 🐤 🐣 🐥 🦄 🐝 🐛 🦋 🐌 🐚 🐞 🐙 🦑 🦐 🦀 🐡 🐠 🐟 🐬 🐳 🐋 🦈 🐉 🐲 🌵 🎄 🌲 🌳 🌴 🌱 🌿 ☘️ 🍀 🎍 🎋 🍃 🍂 🍁 🍄 🌾 💐 🌷 🌹 🥀 🌺 🌸 🌼 🌻 💫 ⭐️ 🌟 ✨ ⚡️ ☄️ 💥 🔥 🌈 🌊 🍏 🍎 🍐 🍊 🍋 🍌 🍉 🍇 🍓 🍈 🍒 🍑 🍍 🥥 🥝 🍅 🍆 🥑 🥦 🥒 🌶 🌽 🥕 🥔 🍠 🥐 🍞 🥖 🥨 🧀 🥚 🍳 🥞 🥓 🥩 🍗 🍖 🌭 🍔 🍟 🍕 🥪 🥙 🌮 🌯 🥗 🥘 🥫 🍝 🍜 🍲 🍛 🍣 🍱 🥟 🍤 🍙 🍚 🍘 🍥 🥠 🍢 🍡 🍧 🍨 🍦 🥧 🍰 🎂 🍮 🍭 🍬 🍫 🍿 🍩 🍪 🌰 🥜 🍯 🥛 🍼 ☕️ 🍵 🥤 🍶 🍺 🍻 🥂 🍷 🥃 🍸 🍹 🍾 🎹 🥁 🎷 🎺 🎸 🚀 🛸
    end
    set -l chosen_emoji_index (random 0 1 (count $prompt_emoji - 1))
    set -l chosen_emoji $prompt_emoji[$chosen_emoji_index]

    # if test $fish_prompt_pwd_dir_length -eq 0
    # end
    echo -s (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) (__fish_git_prompt)
    echo -n -s $chosen_emoji ' '
end
