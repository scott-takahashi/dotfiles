# Scott’s dotfiles

Much of this was taken from [rkalis’ dotfiles](https://github.com/rkalis/dotfiles) and modified for my own needs and preferences.

## Setting up a new machine

1. Restore SSH keys or create new ones.

```bash
ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C "scott@example.com"
```

Add your key to `~/.ssh/config`.

```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

Add the key to the SSH agent.

```bash
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_ed25519
```

Add the public key to your Github account if it’s not already there.

```bash
pbcopy < ~/.ssh/id_ed25519.pub
```

2. Install Homebrew and git.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install git
```

3. Clone this repository.

```bash
cd ~ && mkdir -p code && cd code
git clone git@github.com:scott-takahashi/dotfiles.git
```

4. Run the `bootstrap.sh` script in `bash`.

```bash
cd ~/code/dotfiles
source bootstrap.sh
```

5. To re-run specific scripts, `cd` into the directory and run `source setup.sh`.
