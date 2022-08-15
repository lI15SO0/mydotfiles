# My Dot FIles

---

Dotfiles ：
These Dotfile contain follow software's dot file;

```
	neovim
	alacritty
	dwm
	picom
	rime
	scripts
	start-up-scripts
	starship
	gtk-style (2, 3)
```

## How to use neovim's dotfile

---

1. Install packer as neovim plugins manager;

2. comment all "require(...)" on "lua/basic/plugins.lua" to make sure all packer can initialize.

3. use ":PackerSync" to install all plugins;

NOTE: If something insatll failed. Need to re-start neovim and execute ":PackerSync" command again.

4. enjoy this neovim setting

--

## About dwm files

-- 

Source code VERSION: 6.3

Dwm source code use the [ original LICENSE ](https://git.suckless.org/dwm/plain/LICENSE).

This branch's dwm source code was patched these patch
	alwaysontop
	actualfullscreen
	autostart
	fullgaps
	fullscreen

Those patchs can download from [dwm/patches]( dwm.suckless.org/dwm/patches )

I will add these patched at future:
	IPC
	anybars
