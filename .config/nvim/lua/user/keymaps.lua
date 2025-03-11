-- bind options
local bind = vim.keymap.set
local remap = { remap = true }
local opts = { noremap = true, silent = true }
local bufopts = { noremap = true, silent = true, buffer = bufnr }

-- leader
vim.g.mapleader = ','

-- select all text in current buffer
bind({ 'n', 'i' }, '<Leader>a', '<Esc>ggVG<CR>')

-- escape to normal mode
bind('i', 'jj', '<Esc>')
bind({'i', 'v'}, 'kj', '<Esc>')
bind({'i', 'v'}, 'jk', '<Esc>')

-- quit safe
bind('n', 'CC', ':quitall<CR>')
bind('n', '<Leader>qq', ':quitall<CR>')

-- quit force
bind('n', '<Leader>Q', ':quitall!<CR>')

-- quick save
bind('i', '<Leader><Leader>', '<Esc>:update<CR>i<Right>')
bind('v', '<Leader><Leader>', '<Esc>:update<CR>gv')
bind('n', '<Leader><Leader>', ':update<CR>')

-- center search results
bind('n', 'n', 'nzz')
bind('n', 'N', 'Nzz')
bind('n', '#', '#zz')
bind('n', '*', '*zz')

-- auto paired chars
bind('i', '{', '{}<Left>')
bind('i', '{<CR>', '{<CR>}<Esc>O')
bind('i', '{{', '{')
bind('i', '{}', '{}')
bind('i', '(', '()<Left>')
bind('i', '(<CR>', '(<CR>)<Esc>O')
bind('i', '((', '(')
bind('i', '()', '()')
bind('i', '[', '[]<Left>')
bind('i', '[<CR>', '[<CR>]<Esc>O')
bind('i', '[[', '[')
bind('i', '[]', '[]')
bind('i', '"', '""<Left>')
bind('i', '"<CR>', '"<CR>"<Esc>O')
bind('i', '""', '"')
bind('i', '\'', '\'\'<Left>')
bind('i', '\'<CR>', '\'<CR>\'<Esc>O')
bind('i', '\'\'', '\'')
bind('i', '..', '<Right>')

-- new lines
bind('n', '<Leader>o', 'o<Esc>')
bind('n', '<Leader>O', 'O<Esc>')

-- spaces to newlines
bind('v', '<Leader>nl', ':s/ /\\r/g<CR>')
bind('n', '<Leader>nl', ':%s/ /\\r/g<CR>')

-- clipboard stuff
bind('v', '<C-c>', '"+y<Esc>')
bind('n', '<C-c>', '"+yy<Esc>')
bind('v', '<C-x>', '"+y<Esc>gvd')
bind('n', '<C-x>', '"+y<Esc>dd')
bind('n', '<C-v>', '"+p<Esc>')

-- surroundings
bind('n', '<Leader>w"', 'ciw""<Esc>P')
bind('n', '<Leader>w\'', 'ciw\'\'<Esc>P')
bind('n', '<Leader>w[', 'ciw[]<Esc>P')
bind('n', '<Leader>w(', 'ciw()<Esc>P')
bind('n', '<Leader>w{', 'ciw{}<Esc>P')
bind('n', '<Leader>w<', 'ciw<><Esc>P')
bind('n', '<Leader>wx', 'bhxwx')

-- underline
bind('n', '<Leader>u=', 'yyp<c-v>$r=o')
bind('n', '<Leader>u-', 'yyp<c-v>$r-o')
bind('n', '<Leader>u_', 'yyp<c-v>$r_o')

-- lazygit integration
bind('n', '<Leader>gg', ':LazyGit<CR>')
bind('n', '<Leader>g', ':LazyGitCurrentFile<CR>')

-- debug snippets
bind({'i', 'n'}, '<Leader>cl', '<Esc>aconsole.log();<Esc><left>i')
bind({'i', 'n'}, '<Leader>vd', '<Esc>avar_dump();<Esc><left>i')
bind({'i', 'n'}, '<Leader>pr', '<Esc>aprint_r();<Esc><left>i')

-- toogle linenumbers
bind('n', '<F11>', ':set nu! rnu!<CR>')

-- set paste
bind('n', '<F12>', ':set paste!<CR>')

-- disable search highlight, rmove from cli
bind('n', '<CR>', ':noh<cr><cr>:<backspace>')

-- retab space indents to tabs
bind('n', '<Leader>rt', ':%s/\\(^\\s*\\)\\@<=\\ \\{4}/\\t/g<CR> :set noet ts=2 sw=2 ai<CR>')
-- retab space indents to tabs
bind('n', '<Leader>rs', ':set expandtab ts=4 sw=4 ai<CR> :retab!<CR>')

-- navigate in buffers
bind({'i', 'n'}, '<Leader>j', '<Esc>:bnext<CR>')
bind({'i', 'n'}, '<Leader>k', '<Esc>:bprev<CR>')
bind({'i', 'n'}, '<Leader>bb', '<Esc>:ls<CR>:buffer<Space>')
bind({'i', 'n'}, '<Leader>x', '<Esc>:bd<CR>')
bind({'i', 'n'}, '<Leader>n', '<Esc>:enew<CR>')
bind({'i', 'n'}, '<Leader>n', '<Esc>:enew<CR>')
bind('n', '<Leader>1', '<Esc>:BufferLineGoToBuffer 1<CR>')
bind('n', '<Leader>2', '<Esc>:BufferLineGoToBuffer 2<CR>')
bind('n', '<Leader>3', '<Esc>:BufferLineGoToBuffer 3<CR>')
bind('n', '<Leader>4', '<Esc>:BufferLineGoToBuffer 4<CR>')
bind('n', '<Leader>5', '<Esc>:BufferLineGoToBuffer 5<CR>')
bind('n', '<Leader>6', '<Esc>:BufferLineGoToBuffer 6<CR>')
bind('n', '<Leader>7', '<Esc>:BufferLineGoToBuffer 7<CR>')
bind('n', '<Leader>8', '<Esc>:BufferLineGoToBuffer 8<CR>')
bind('n', '<Leader>9', '<Esc>:BufferLineGoToBuffer 9<CR>')

-- map bookmark shortcuts
bind('n', '\'',  '`')

-- better indenting
bind('v', '<', '<gv')
bind('v', '>', '>gv')

-- syntax highlighting on special file extensions
-- autocmd BufNewFile,BufRead *.layout set syntax=html
-- autocmd BufNewFile,BufRead *.txp    set syntax=html

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
bind('n', '<Leader>d', vim.diagnostic.open_float, opts)
bind('n', '<Leader>dp', vim.diagnostic.goto_prev, opts)
bind('n', '<Leader>dn', vim.diagnostic.goto_next, opts)
bind('n', '<Leader>dl', vim.diagnostic.setloclist, opts)

-- Codeium
bind({'n', 'i'}, '<Leader>cb', function () return vim.fn['codeium#Chat']() end, { expr = true, silent = true })
bind({'n', 'i'}, '<Leader>cc', '<Esc>:CodeiumToggle<CR>a', opts)
bind('i', '<C-j>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
bind('i', '<Leader>cn', function () return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
bind('i', '<Leader>cp', function () return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
bind('i', '<Leader>cx', function () return vim.fn['codeium#Clear']() end, { expr = true, silent = true })

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  bind('n', 'gD', vim.lsp.buf.declaration, bufopts)
  bind('n', 'gd', vim.lsp.buf.definition, bufopts)
  bind('n', 'gh', vim.lsp.buf.hover, bufopts)
  bind('n', 'gi', vim.lsp.buf.implementation, bufopts)
  bind('n', 'gr', vim.lsp.buf.references, bufopts)
  bind('n', 'gs', vim.lsp.buf.signature_help, bufopts)
  bind('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  bind('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  bind('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  bind('n', '<space>d', vim.lsp.buf.type_definition, bufopts)
  bind('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  bind('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  bind('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
require('lspconfig')['phpactor'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
