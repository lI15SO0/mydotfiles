# UpdateLog

## 2023-08-18

---

nvim:

    [CHANGE] add ignorecase

---

## 2023-08-17
---

nvim:

    [CHANGE] Snip engine switch to luasnip
    [CHANGE] Change colorschema to nightfox_duskfox
    [CHANGE] Cancle cmp <CR> mapping.
    [CHANGE] Add <C-p> mapping to abort cmp menu.
    [FIX] Fix colorizer setup

    [ADD] snippets package.json
    [CHANGE] snippets.lua : luasnip add multi snip loader

---

## 2023-08-07
---

nvim:

    [Delete] utils/public
    [CHANGE] move utils/api out of utils dir.

---

## 2023-08-06
---

nvim:

    [CHANGE] neotree new window use "rounded" border instade "options.border".

---

## 2023-08-01

---

nvim:

    [Re] rewrite all nvim dotfiles, now plugins manager using Lazy, These can make nvim bootup faster.
    [ TODO ] now vsnip will throws a error "E474 Attemp to decode a blank string".

---

## 2023-07-31

---

polybar:

    [CHANGE] module/cpu interval fron 0.5 change to 1.0
    [CHANGE] module/wlan delete %local_ip%
    [CHANGE] module/eth delete %local_ip%
    [CHANGE] disabled module/CPUtempature from right panel
    [CHANGE] bootup scripts log warn to /tmp/polybar.log

---

## 2023-06-10

---

nvim:

	[ADD] setting.lua new line 58 add fold expr. Using treesitter to support fold.
	[CHANGE] enable treesitter's incremental_selection function.


---


## 2023-06-06

---

nvim:

    [CHANGE] Cancle all default install lsp.

---

## 2023-04-30

---

nvim:

    [CHANGE] mason auto install only install lsp server.
    [CHANGE] nvim-tree update setup

---

## 2023-04-28

---

dwm:

	[UPDATE] merge patch to 2023-04-09 10:37

---

## 2023-04-05

---

nvim:

	[ADD][PLUGINS]: li15SO0/virtuality.nvim show type after variable (this reposity was fork from [ 27justin/virtuality.nvim ](https://github.com/27justin/virtuality.nvim))
	[ADD][PLUGINS]: ray-x/lsp_signature.nvim
	[ADD][PLUGINS]: toppair/peek.nvim
	[FIX]: change prompt of vista, new it will not print err.


---

## 2023-03-13

---

nvim:

	[CHANGE] nvim plugins "surround" mapping-style change to sandwich
	[CHANGE] nvim lsp "cmake-language-server" change to "neocmakelsp" and add "cmakelang" linter and formatter

---

## 2023-03-04 23:13

---
dwm:

	[FIX] hotkey cmd fixed, add NULL

---

## 2023-02-28 17:52

---

dwm:

	[UPDATE] merge patch to 2023-02-17 05:05

nvim:

	[FIX] nvim/lua/core/plugins.lua:62  Deleted a surround about branch, now hop can load normally
	[ADD] nvim/snippets/*  Add Some snippets

---

## 2023-02-16 17:31

---

dwm:

	[UPDATE] merge patch to 2023-01-28 11:53

nvim:

[REFACTOR] nvim: Change all dotfiles. These dotfiles reference from [askfiy's nvim dotfiles](https://github.com/askfiy/nvim/tree/6918a00712085a8134151f92cca4ea656d059e2e)

UpdateNotes.md:

	[ADD] Add this log
