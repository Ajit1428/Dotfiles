#  █████╗ ████████╗
# ██╔══██╗╚══██╔══╝
# ███████║   ██║   
# ██╔══██║   ██║   
# ██║  ██║   ██║   
# ╚═╝  ╚═╝   ╚═╝   
# Fish config 2023

if status is-interactive
    set fish_greeting "Welcome, AT sama 🐯"
    neofetch --kitty /home/at/Pictures/Wallpapers/LordShivaNeo.png

end

starship init fish | source
fish_add_path /home/at/.spicetify
