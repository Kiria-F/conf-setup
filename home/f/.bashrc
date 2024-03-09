#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export QT_QPA_PLATFORMTHEME=qt5ct

set GRIM_DEFAULT_DIR='~/Pictures/Screenshots'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias h=Hyprland
alias coq='"/home/f/.local/share/Steam/steamapps/common/Caves of Qud/CoQ.x86_64"'
arsip='89.111.155.248'
alias lib32-wipe="sudo pacman -R $(pacman -Q | grep -o '^lib32\S*' | tr '\n' ' ')"

conf-commit() {
  read -p 'Commit message: ' commit
  git --git-dir ~/Documents/conf-setup/.git/ --work-tree ~/Documents/conf-setup/ commit -a -m "$commit"
  git --git-dir ~/Documents/conf-setup/.git/ --work-tree ~/Documents/conf-setup/ push
}
alias conf-hyprland='nvim ~/.config/hypr/hyprland.conf'
alias conf-waybar='nvim ~/.config/waybar/config.jsonc'
alias conf-waybar-style='nvim ~/.config/waybar/style.css'
alias conf-wofi='nvim ~/.config/wofi/config'
alias conf-wofi-style='nvim ~/.config/wofi/style.css'
alias conf-grub='sudo nvim /etc/default/grub'
alias conf-mkinitcpo='sudo nvim /etc/mkinitcpio.conf'
alias conf-bash='nvim ~/.bashrc'
alias conf-sddm='sudo nvim /usr/lib/sddm/sddm.conf.d/default.conf'
alias conf-nvim='nvim ~/.config/nvim/init.lua'
alias conf-kitty='nvim ~/.config/kitty/kitty.conf'
alias conf-kitty-theme='nvim ~/.config/kitty/my.conf'
alias conf-broot='nvim ~/.config/broot/conf.hjson'
alias conf-broot-verbs='nvim ~/.config/broot/verbs.hjson'
alias conf-env='sudo nvim /etc/environment'

alias upd-mirrors='sudo reflector --delay 6 -c Russia -f 20 --save /etc/pacman.d/mirrorlist --verbose'
alias upd-mkinitcpio='sudo mkinitcpio -p linux'
alias upd-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# alias ssh-ars-root='sshpass -p fedor1224 ssh root@89.111.170.249'
# alias ssh-ars-f='sshpass -p fds ssh f@89.111.170.249'
# alias ssh-ars='ssh 89.111.170.249'

alias ssh-ars-root='sshpass -p fedor1224 ssh root@$arsip'
alias ssh-ars-f='sshpass -p fds ssh f@$arsip'
alias ssh-ars='kitty +kitten ssh $arsip'

alias wg-up='wg-quick up ~/wg.conf'
alias wg-down='wg-quick down ~/wg.conf'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

source /home/f/.config/broot/launcher/bash/br
