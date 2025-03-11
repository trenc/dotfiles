set nocompatible
" use pathogen
execute pathogen#infect()
" set shorter timeoutlen
set timeoutlen=600
"remap <Leader>
let mapleader=","
set syntax=on
set encoding=utf-8
" colorscheme
set t_Co=16
" set background=dark
" set termguicolors
colorscheme selenized
" colorscheme solarized
" let g:solarized_hitrail=0
" linenumbers
map <F11> :set nu! rnu!<CR>
map <F12> :set paste!<CR>
set number relativenumber
" set numberwidth=5
" height of bottom bar
" set cmdheight=2
set signcolumn=number
set showtabline=2
set laststatus=2
set noshowmode
set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
set visualbell
" map enter to :noh (disable search highlights);remove :noh in command line
nnoremap <cr> :noh<cr><cr>:<backspace>
set incsearch
" center search results
nnoremap n nzz
nnoremap N Nzz
set nostartofline
set ruler
" tabs tabs tabs
filetype indent plugin on
set softtabstop=2
set shiftwidth=0
set tabstop=2
set preserveindent
set autoindent
set noexpandtab
set copyindent
" retab space indents to tabs
nmap <leader>re :set noet<CR> :retab!<CR>
" set cindent
" set smartindent
set colorcolumn=80
set cursorline
" remap <ESC>
imap jk <ESC>
imap kj <ESC>
imap jj <ESC>
vmap jk <ESC>
vmap kj <ESC>
map CC <ESC>:q<CR>
" new dirs for backup etc.
set backup
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//
" set list
set listchars=tab:»·,trail:·
set scrolloff=3
set foldenable " Turn on folding
set foldmethod=indent " Fold on the indent (damn you python)
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
" insert newlines in normal mode
inoremap <leader>o <Esc>:<C-u>put =repeat(nr2char(10),v:count)<Bar><CR>i
nnoremap <leader>o :<C-u>put =repeat(nr2char(10),v:count)<Bar><CR>
nnoremap <leader>O k<ESC>:<C-u>put =repeat(nr2char(10),v:count)<Bar><CR>
" use par for text formatting
set formatprg=par\ -reqw80
" tagbar
nmap <F8> :TagbarToggle<CR>
" quick save
inoremap <leader><leader> <ESC>:update<CR>i<RIGHT>
vnoremap <leader><leader> <ESC>:update<CR>gv
nnoremap <leader><leader> :update<CR>
" auto paired chars
inoremap {			{}<Left>
inoremap {<CR>	{<CR>}<Esc>O
inoremap {{			{
inoremap {}			{}
inoremap (			()<Left>
inoremap (<CR>	(<CR>)<Esc>O
inoremap ((			(
inoremap ()			()
inoremap [			[]<Left>
inoremap [<CR>	[<CR>]<Esc>O
inoremap [[			[
inoremap []			[]
inoremap "			""<Left>
inoremap "<CR>	"<CR>"<Esc>O
inoremap ""			"
inoremap '			''<Left>
inoremap '<CR>	'<CR>'<Esc>O
inoremap ''			'
inoremap ..			<RIGHT>
" surroundings
nnoremap <Leader>w" ciw"<C-r>""<Esc>
nnoremap <Leader>w' ciw'<C-r>"'<Esc>
nnoremap <Leader>wx bhxwx
" console.log()
nnoremap <Leader>cl iconsole.log();<Esc>==$<left>i
inoremap <Leader>cl <Esc>iconsole.log();<Esc>==$<left>i
" var_dump()
nnoremap <Leader>vd ivar_dump();<Esc>==$<left>i
inoremap <Leader>vd <Esc>ivar_dump();<Esc>==$<left>i
" buffers
imap <Leader>j <Esc>:bnext<CR>
imap <Leader>k <Esc>:bprev<CR>
nmap <Leader>bb :ls<CR>:buffer<Space>
nmap <Leader>j :bnext<CR>
nmap <Leader>k :bprev<CR>
nmap <Leader>x :bd<CR>
nmap <Leader>n :enew<CR>
" underline
nmap <Leader>u= yyp<c-v>$r=o
nmap <Leader>u- yyp<c-v>$r-o
nmap <Leader>u_ yyp<c-v>$r_o
" lightline
let g:lightline = { 'colorscheme': 'selenized_dark' }
" and bufferline integration
let g:lightline.tabline = { 'left': [['buffers']], 'right': [] }
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type	 = {'buffers': 'tabsel'}
let g:lightline#bufferline#show_number	= 2
let g:lightline#bufferline#unnamed			= '[No Name]'
let g:lightline.active = { 'left': [['mode', 'paste'], ['gitbranch', 'filename', 'modified']] }
let g:lightline.component_function = { 'gitbranch': 'fugitive#head'  }
" hide paths
" let g:lightline#bufferline#filename_modifier = ':t'
" easy access to tabs/buffers
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
" map bookmark shortcuts
nnoremap ' `
" syntastic syntax check, disable by default
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
" eslint code format
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_php_checkers = ['php', 'phpcs']
" let g:syntastic_php_phpcs_args = '--standard=~/.php.ruleset.xml'
let g:syntastic_java_checkers = ['checkstyle']
let g:syntastic_java_checkstyle_classpath = './apps/checkstyle/checkstyle-9.0-all.jar'
let g:syntastic_java_checkstyle_conf_file = './apps/checkstyle/google_checks_modified.xml'
" enable on <F10> or toggle leader <F10>
nmap <F10> :SyntasticCheck<CR>
nmap <Leader><F10> ::SyntasticToggleMode<CR>
nnoremap <space> :lnext<CR>
nnoremap <Leader><space> :lprevious<CR>
" syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0
nmap <F7> :Ranger<CR>
let g:ranger_replace_netrw = 1
" netrw
" nmap <F7> :Explore<CR>
" set autochdir
" let g:netrw_liststyle = 3
" let g:netrw_banner = 0
" let g:netrw_browse_split = 3
" let g:net_altv = 1
" let g:netrw_winsize = 25

" neovim coc
let g:coc_disable_startup_warning = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" ctrl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" syntax highlighting on special file extensions
autocmd BufNewFile,BufRead *.layout set syntax=html
autocmd BufNewFile,BufRead *.txp    set syntax=html
