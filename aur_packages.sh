echo 'Installing aur packages'

declare -a packages=('bumblebee-status'
                     'tmux-plugin-manager'
                     'oh-my-zsh'
                     'instant-markdown-d'
                    )

for i in "${packages[@]}"
do
   eval "yay -S $i"
done 
