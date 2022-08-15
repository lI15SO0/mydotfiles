  #=====#
 # DWM #
#=====#
# ..:: Start Task ::..
# startup scripts
sh ~/.config/scripts/startup.sh > /dev/null &
# Polybar
sh ~/.config/polybar/polybar_startup.sh > /dev/null&
# picom
picom > /dev/null &
# Fcitx
fcitx > /dev/null &
# BackGround Image
feh --randomize --bg-scale ~/Pictures/WallPapers/* > /dev/null &
# ScreenShot 
flameshot &

