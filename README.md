# My Dot FIles

---

Dotfiles ：
These Dotfile contain follow software's dot file;

```
	neovim
	alacritty
	bspwm with sxhkd
	picom
	rime
	scripts
	start-up-scripts
	gtk-style (2, 3)
```

## How to use neovim's dotfile

---

1. Install packer as neovim plugins manager;

2. comment all "require(...)" on "lua/basic/plugins.lua" to make sure all packer can initialize.

3. use ":PackerSync" to install all plugins;

NOTE: If something insatll failed. Need to re-start neovim and execute ":PackerSync" command again.

4. enjoy this neovim setting

