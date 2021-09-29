"
" lI15SO0 's vim dot files
"

" :: Vim-Plug ::..
" =============================================================================
call plug#begin("~/.config/nvim/plugged")

"可视缩进
Plug 'Yggdroot/indentLine'

"airline 主题
Plug 'vim-airline/vim-airline'       
Plug 'vim-airline/vim-airline-themes' 

"彩虹括号
Plug 'luochen1990/rainbow'

"Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"c代码高亮
"Plug 'jackguo380/vim-lsp-cxx-highlight'

"浮动终端
Plug 'voldikss/vim-floaterm'

"平滑视觉
Plug 'psliwka/vim-smoothie'

"TagBar
Plug 'majutsushi/tagbar'

"NerdTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

"Snippets
Plug 'honza/vim-snippets'

Plug 'kenn7/vim-arsync'

"Code Format
Plug 'sbdchd/neoformat'

call plug#end()

" Plugin Seeting 
" Coc Seeting Strat ==========================================================
	" TextEdit might fail if hidden is not set.
	set hidden

	" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
	" delays and poor user experience.
	set updatetime=300

	" Don't pass messages to |ins-completion-menu|.
	set shortmess+=c

	" Always show the signcolumn, otherwise it would shift the text each time
	" diagnostics appear/become resolved.
	if has("nvim-0.5.0") || has("patch-8.1.1564")
	" Recently vim can merge signcolumn and number column into one
	set signcolumn=number
	else
	set signcolumn=yes
	endif

	" Use tab for trigger completion with characters ahead and navigate.
	" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
	" other plugin before putting this into your config.
	inoremap <silent><expr> <TAB>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ coc#refresh()
	inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	" Use <c-space> to trigger completion.
	if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
	else
	inoremap <silent><expr> <c-@> coc#refresh()
	endif

	" Make <CR> auto-select the first completion item and notify coc.nvim to
	" format on enter, <cr> could be remapped by other vim plugin
	inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
								\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

	" Use `[g` and `]g` to navigate diagnostics
	" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
	nmap <silent> [g <Plug>(coc-diagnostic-prev)
	nmap <silent> ]g <Plug>(coc-diagnostic-next)

	" GoTo code navigation.
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Use K to show documentation in preview window.
	nnoremap <silent> K :call <SID>show_documentation()<CR>

	function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
	endif
	endfunction

	" Highlight the symbol and its references when holding the cursor.
	autocmd CursorHold * silent call CocActionAsync('highlight')

	" Symbol renaming.
	nmap <leader>rn <Plug>(coc-rename)

	" Formatting selected code.
	xmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)

	augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder.
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
	augroup end

	" Applying codeAction to the selected region.
	" Example: `<leader>aap` for current paragraph
	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)

	" Remap keys for applying codeAction to the current buffer.
	nmap <leader>ac  <Plug>(coc-codeaction)
	" Apply AutoFix to problem on the current line.
	nmap <leader>qf  <Plug>(coc-fix-current)

	" Map function and class text objects
	" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
	xmap if <Plug>(coc-funcobj-i)
	omap if <Plug>(coc-funcobj-i)
	xmap af <Plug>(coc-funcobj-a)
	omap af <Plug>(coc-funcobj-a)
	xmap ic <Plug>(coc-classobj-i)
	omap ic <Plug>(coc-classobj-i)
	xmap ac <Plug>(coc-classobj-a)
	omap ac <Plug>(coc-classobj-a)

	" Add `:Format` command to format current buffer.
	command! -nargs=0 Format :call CocAction('format')

	" Add `:Fold` command to fold current buffer.
	command! -nargs=? Fold :call     CocAction('fold', <f-args>)

	" Add `:OR` command for organize imports of the current buffer.
	command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

	" Add (Neo)Vim's native statusline support.
	" NOTE: Please see `:h coc-status` for integrations with external plugins that
	" provide custom statusline: lightline.vim, vim-airline.
	set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Coc Seeting End ============================================================


" :: Key Map ::..
" ============================================================================

" global 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <silent> <C-e> <Esc><Esc>:NERDTreeToggle<CR>

" insert mode
imap erui <Esc>
imap <C-z> <Esc>:undo<CR>i

" normal mode
nmap <space> :
nmap d dd
nmap <C-n> :FloatermNew<CR>
nmap <C-d> :nohls<CR>
nnoremap <C-z> :bp<CR>
nnoremap <C-m> :bn<CR>
nnoremap <C-c> :bd<CR>

" command line mode
cmap <space><space> <enter>

" visual mode
vmap <space> :
vmap < <gv
vmap > >gv

" :: Vim Setings ::..
" =============================================================================

" Base Seeting
set nocompatible
set autoread

set title
set magic
set nobackup

syntax on 

" Encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformats=unix,dos,mac  
set termencoding=utf-8
set formatoptions+=m
set formatoptions+=B

" UI
set ruler
set nowrap
set nu 
set cursorline
set cursorcolumn
set relativenumber

" Search
set ignorecase
set hlsearch
set incsearch
set smartcase

" Tabstop
set tabstop=4
set softtabstop=4
"set expandtab " Use Space Instade of Tab
set smarttab
set shiftround

" Indent
set smartindent
set shiftwidth=4

" Fold
set foldmethod=syntax

" Color 
color ron


" :: 
" =============================================================================



