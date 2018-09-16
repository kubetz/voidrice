# Setup monitors properly - yes, this is super specific for my machine, sorry :/
xrandr --output DP-1 --off --output DVI-I-1 --off --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DVI-D-1 --mode 1920x1080 --pos 1920x0 --rotate normal

exec i3
xset r rate 200 50
