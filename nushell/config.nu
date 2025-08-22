# config.nu
#
# Installed by:
# version = "0.105.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.


alias lg = lazygit
alias gd = git diff
alias gp = git pull
alias gr = git rebase
alias gm = git merge
alias gf = git fetch
alias gs = git status
alias gb = git branch
alias gl = git log
alias g = git

alias ws = winget search
alias wi = winget install
alias w = winget

alias ss = scoop-search
alias s = scoop
alias cdu = cd '~/AppData/Roaming'
alias conf = cd ~/.config/
alias si = scoop install
alias su = scoop update

mkdir ($nu.data-dir | path join "vendor/autoload")
# starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
