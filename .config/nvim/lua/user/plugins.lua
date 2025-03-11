return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

	-- codium
	use 'Exafunction/codeium.vim'

	-- some fonts
	use 'nvim-tree/nvim-web-devicons'

  -- load colorschema
  use { 'catppuccin/nvim', as = 'catppuccin' }
  -- use 'navarasu/onedark.nvim'
  -- use 'tanvirtin/monokai.nvim'

  -- syntax highlight
  use {
  	'nvim-treesitter/nvim-treesitter',
  	run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup({
      	ensure_installed = all,
      	auto_install = true,
      	highlight = { enable = true }
      })
    end
	}

	-- show current context
	use 'nvim-treesitter/nvim-treesitter-context'

  -- highlight word
  use 'RRethy/vim-illuminate'

  -- ranger
  use 'rbgrouleff/bclose.vim'
  use 'francoiscabrol/ranger.vim'

  -- statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup()
    end
  }

  -- bufferline
  use {
    'akinsho/bufferline.nvim',
    tag = 'v3.*',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup()
    end
  }

  -- commenting
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- git
  use 'kdheepak/lazygit.nvim'

  -- auto-completion
  use { 'ms-jpq/coq_nvim', branch =  'coq' }
  use { 'ms-jpq/coq.artifacts', branch =  'artifacts' }

  -- editorconfig
  use 'gpanders/editorconfig.nvim'

  -- lsp etc.
  use {
    'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig'
  }

	-- moving around
	use {
		'ggandor/leap.nvim',
		config = function()
			require('leap').add_default_mappings(true)
		end
	}

  -- notify
  use 'rcarriga/nvim-notify'

end)
