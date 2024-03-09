let mapleader = '`'

nm <space> :
nm d dd
nm y yy
nm U :redo<CR>
nm H ^
nm L $
nm <C-h> <C-w>h
nm <C-j> <C-w>j
nm <C-k> <C-w>k
nm <C-l> <C-w>l
nm <C-up> <cmd>res +1<cr>
nm <C-down> <cmd>res -1<cr>
nm <C-left> <cmd>vertical resize-1<cr>
nm <C-right> <cmd>vertical resize+1<cr>

nm <C-c> <cmd>bdelete<cr>
nm <C-t> <cmd>bp<cr>
nm <C-y> <cmd>bn<cr>
nm <ESC> <cmd>nohl<cr>
nm <Leader>x <cmd>set spell!<cr>

im <A-h> <left>
im <A-k> <up>
im <A-j> <down>
im <A-l> <right>

vm < <gv
vm > >gv

cm <space><space> <cr>
