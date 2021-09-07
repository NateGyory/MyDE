echo 'Installing arch packages'

declare -a packages=('neofetch'
                     'nvim'
                     'tmux'
                     'rofi'
                     'fzf'
                     'rg'
                     'zsh'
                     'alacritty'
                     'python'
                     'nodejs'
                     'yay'
                    )

for i in "${packages[@]}"
do
   eval "sudo pacman -S $i"
done 
