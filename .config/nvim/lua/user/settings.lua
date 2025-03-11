local set = vim.opt
local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
vim.g.coq_settings = { auto_start = 'shut-up' }

-- manual codeium completion
vim.g.codeium_enabled = false

-- LSP setting
require('mason').setup()
require('mason-lspconfig').setup()
require('lspconfig').phpactor.setup{}
require('lspconfig').biome.setup{}

-- window-local options

-- buffer-local options

-- global, window, buffer
set.backup = true
set.directory = '/home/scto/.cache/nvim/swap/'
set.undodir = '/home/scto/.cache/nvim/undo'
set.backupdir = '/home/scto/.cache/nvim/backup'
set.filetype = 'on'
set.timeoutlen = 600
set.syntax = 'on'
set.encoding = 'utf-8'
set.number = true
set.relativenumber = true
set.signcolumn = 'yes'
set.showtabline = 2
set.laststatus = 3
set.hidden = true
set.wildmenu = true
set.showcmd = true
set.hlsearch = true
set.incsearch = true
set.visualbell = true
set.ruler = true
set.softtabstop = 2
set.shiftwidth = 0
set.tabstop = 2
set.preserveindent = true
set.autoindent = true
set.copyindent = true
set.smartindent = true
set.colorcolumn = '80'
set.linebreak = true
set.cursorline = true
set.formatprg = 'par -reqw80'
set.list = true
set.listchars = {
	trail = '·',
	leadmultispace = '┊   ',
	multispace = '·',
	tab = '│ ',
	nbsp = '␣',
	precedes = '<',
	extends = '>'
}
set.showbreak = '↳ '
set.scrolloff = 3
set.foldenable = true
set.foldmethod = 'indent'
set.foldlevel = 100
set.mouse = 'a'
set.completeopt = { 'menu', 'menuone' }

-- colorschema
set.termguicolors = true
-- vim.cmd.colorscheme "selenized"
-- vim.cmd.colorscheme 'catppuccin-latte'
-- vim.cmd.colorscheme 'catppuccin-frappe'
-- vim.cmd.colorscheme 'catppuccin-macchiato'
vim.cmd.colorscheme 'catppuccin-mocha'
-- vim.cmd.colorscheme 'onedark'
-- vim.cmd.colorscheme 'monokai'

-- -- Disable builtin plugins
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
   "tutor",
   "rplugin",
   "synmenu",
   "optwin",
   "compiler",
   "bugreport",
   "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
   vim.g['loaded_' .. plugin] = 1
 end

vim.filetype.add({
    extension = {
        txp = "html",
    }
})

require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

vim.treesitter.language.register("html", "txp")
