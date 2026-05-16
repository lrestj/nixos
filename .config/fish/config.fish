#####  FISH CONFIG  #####


if status is-interactive
    # Commands to run in interactive sessions can go here

fzf --fish | source

abbr !! --position anywhere --function last_history_item
abbr sudo "sudo"
abbr hp "sudo hp-setup -i 192.168.77.5"
abbr ls "ls --color=auto"
abbr grep "grep --color=auto"
abbr yay "sudo dnf up --refresh"
abbr yup "ya pack -u"
abbr in "sudo dnf install"
abbr rem "sudo dnf remove"
abbr se "sudo dnf search"
abbr reb "systemctl reboot"
abbr update-grub "sudo grub2-mkconfig -o /boot/grub2/grub.cfg"


abbr cfg "git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME"
abbr ga "git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME add"
abbr nga "cd $HOME/.dotfiles/install/ && git add"
abbr gc --set-cursor -- "git --git-dir $HOME/.cfg.git/ --work-tree=$HOME commit -a -m \"%\""
abbr ngc --set-cursor -- "cd $HOME/.dotfiles/install/ && git commit -a -m \"%\""
abbr ppp "git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor push -u github fedora && git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor push gitlab fedora"
abbr npp "cd $HOME/.dotfiles/install/ && git push -u github main && git push gitlab main"
abbr gs "git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME status"
abbr ngs "cd $HOME/.dotfiles/install/ && git status"
abbr str "git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor log --pretty=format: --name-only --diff-filter=A "
abbr untrack "git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME update-index --skip-worktree"

end


#####  END OF FILE  #####
