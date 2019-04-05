set nocompatible
filetype indent plugin on
" use pathogen
execute pathogen#infect()
" set shorter timeoutlen
set timeoutlen=600
syntax on
set encoding=utf-8
" colorscheme
set background=dark
set t_Co=256
colorscheme solarized
let g:solarized_hitrail=1
" linenumbers
map <F11> :set nu! rnu!<CR>
map <F12> :set paste!<CR>
set number relativenumber
"set numberwidth=5
" height of bottom bar
" set cmdheight=2
set showtabline=2
set laststatus=2
set hidden
set wildmenu
set showcmd
set hlsearch
" map enter to :noh (disable search highlights);remove :noh in command line
nnoremap <cr> :noh<cr><cr>:<backspace>
set incsearch
" center search results
nnoremap n nzz
nnoremap N Nzz
set nostartofline
set ruler
" tabs tabs tabs
set noexpandtab
set softtabstop=0
set shiftwidth=2
set tabstop=2
set autoindent
set copyindent
set preserveindent
set colorcolumn=80
set cursorline
" remap <ESC> 
imap jk <ESC>
vmap jk <ESC>
map CC <ESC>:q<CR>
"remap <Leader>
let mapleader=","
" new dirs for backup etc.
set backup
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//
"set list
set listchars=tab:»·,trail:·
set scrolloff=3
set foldenable " Turn on folding
set foldmethod=indent " Fold on the indent (damn you python)
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
" syntasitic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" insert newlines in normal mode
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
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []
inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     "
inoremap '      ''<Left>
inoremap '<CR>  '<CR>'<Esc>O
inoremap ''     '
inoremap ..     <RIGHT>
" buffers
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
let g:lightline = { 'colorscheme': 'solarized' }
" and bufferline integration
let g:lightline.tabline = { 'left': [['buffers']], 'right': [] }
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#unnamed      = '[No Name]'
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
" enable on <F10> or toggle leader <F10>
nmap <F10> :SyntasticCheck<CR>
nmap <Leader><F10> ::SyntasticToggleMode<CR>
" netrw
nmap <F7> :Rexplore<CR>
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 0
let g:netrw_winsize = 25
augroup ProjectDrawer
	autocmd!
	autocmd VimEnter * :Explore " start netrw
	autocmd VimEnter * :Rexplore " hide netrw immedially so we can switch it
augroup END
