set fish_greeting ""
if status is-interactive
    # Commands to run in interactive sessions can go here
    alias vim='nvim'
    alias firefox='librewolf'
    alias config='/usr/bin/git --git-dir=$HOME/Git/dotfiles.git/ --work-tree=$HOME'
end
