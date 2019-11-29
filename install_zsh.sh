#!/bin/bash

msg() {
    printf '%b\n' "$1" >&2
}

success() {
    msg "\33[32m[✔]\33[0m ${1}${2}"
}

error() {
    msg "\33[31m[✘]\33[0m ${1}${2}"
    exit 1
}

program_exists() {
    local ret='0'
    command -v $1 >/dev/null 2>&1 || { local ret='1'; }

    # fail on non-zero return value
    if [ "$ret" -ne 0 ]; then
        return 1
    fi

    return 0
}

program_must_exist() {
    program_exists $1
    # throw error on non-zero return value
    if [ "$?" -ne 0 ]; then
        error "You must have '$1' installed to continue."
    fi
}

msg         ">>> Start checking basic requirement..."
program_must_exist "vim"
program_must_exist "git"
program_must_exist "zsh"
success     "Done."

# zsh
msg         ">>> Config zsh..."
msg         ">>> Install oh-my-zsh..."
git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
msg         ">>> Change shell to zsh"
mv ~/.zshrc ~/.zshrc.bak >/dev/null 2>&1
ln -s $PWD/.zshrc ~/.zshrc
chsh $USER -s /bin/zsh
success     "Done. You may need to re-login or reopen terminal to see the effect"\

TEST_CURRENT_SHELL=$(expr "$SHELL" : '.*/\(.*\)')
if [ "$TEST_CURRENT_SHELL" != "zsh" ]; then
  # If this platform provides a "chsh" command (not Cygwin), do it, man!
  if hash chsh >/dev/null 2>&1; then
    printf "${BLUE}Time to change your default shell to zsh!${NORMAL}\n"
    chsh $USER -s $(grep /zsh$ /etc/shells | tail -1)
  # Else, suggest the user do so manually.
  else
    printf "I can't change your shell automatically because this system does not have chsh.\n"
    printf "${BLUE}Please manually change your default shell to zsh!${NORMAL}\n"
  fi
fi

msg         "\nThanks for using my dotfiles."
msg         "© `date +%Y` https://github.com/dc3671/dotfiles"
