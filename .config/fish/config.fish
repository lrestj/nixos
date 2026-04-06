#####  FISH CONFIG  #####


if status is-interactive
    # Commands to run in interactive sessions can go here

fzf --fish | source

abbr !! --position anywhere --function last_history_item
abbr sudo "sudo"
abbr ls "ls --color=auto"
abbr grep "grep --color=auto"
abbr yay "nh os switch -H zbook --update"
abbr yup "ya pack -u"
abbr se "nh search --limit 7"
abbr clean "nh clean all --keep 3 && nh os switch -H zbook"
# abbr clean "sudo nix-collect-garbage"
abbr cleanall "sudo nix-collect-garbage -d && nix-collect-garbage -d && sudo nixos-rebuild switch --flake ~/.dotfiles/nixos#zbook"
abbr reb "reboot"
abbr nxs "nix-shell -p"
abbr nrs "nh os switch -H zbook"
# abbr nrs "sudo nixos-rebuild switch --flake ~/.dotfiles/nixos/"
abbr test "nh os test"
abbr nco "$EDITOR ~/.dotfiles/nixos/hosts/zbook/configuration.nix"
abbr pco "$EDITOR ~/.dotfiles/nixos/hosts/probook/configuration.nix"
abbr npk "$EDITOR ~/.dotfiles/nixos/modules/pkgs.nix"
abbr nfl "$EDITOR ~/.dotfiles/nixos/flake.nix"

abbr lspkg "nix-store --query --requisites /run/current-system | grep"
abbr lsgen "nh os info"
# abbr lsgen "sudo nix-env -p /nix/var/nix/profiles/system --list-generations"
abbr lsdel ".dotfiles/scripts/genlist.sh"
abbr delgen "sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations"
abbr makecurrent "sudo /run/current-system/bin/switch-to-configuration boot"

abbr hpp "NIXPKGS_ALLOW_UNFREE=1 nix-shell -p hplipWithPlugin --run 'sudo -E hp-setup'"

abbr cfg "git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME"
abbr ga "git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME add"
abbr gc --set-cursor -- "git --git-dir $HOME/.cfg.git/ --work-tree=$HOME commit -a -m \"%\""
abbr ghp "git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push -u github main"
abbr glp "git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME push gitlab main"
abbr ppp "git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor push -u github main && git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor push gitlab main"
abbr ppu "git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor pull"
abbr gcl "git clone --bare https://codeberg.org/lrestj/nixos.git"
abbr gs "git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME status"
abbr str "git --git-dir=/home/libor/.cfg.git/ --work-tree=/home/libor log --pretty=format: --name-only --diff-filter=A "
abbr untrack "git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME update-index --skip-worktree"

end


#####  END OF FILE  #####
