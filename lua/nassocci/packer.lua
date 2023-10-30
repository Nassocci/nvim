--tomtom/tcomment_vim" This file can be loaded by calling `lua require('plugins')` from your init.vim
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- test
  use "nvim-tree/nvim-web-devicons"
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
  use "tpope/vim-commentary"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  -- test
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'nvim-lua/popup.nvim' }
  use { 'nvim-lua/plenary.nvim' }
  -- use { 'nvim-telescope/telescope.nvim' }
  use { 'nvim-telescope/telescope-media-files.nvim' }
  -- use({
    -- "dharmx/telescope-media.nvim",
    -- config = function()
      -- require("telescope").load_extension("media")
    -- end,
  -- })
  -- use({
	  -- 'rose-pine/neovim',
	  -- as = 'rose-pine',
	  -- config = function()
		  -- vim.cmd('colorscheme rose-pine')
	  -- end
  -- })
  use({
      'folke/tokyonight.nvim',
      as = 'tokionight-storm',
      config = function()
    	  vim.cmd('colorscheme tokyonight-storm')
      end
  })
  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")
  -- use{"preservim/nerdtree", run = ":TSUpdate"}

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- Hydrovim -- python3 inside of nvim
  -- pce of shit :)
  -- use { 'MunifTanjim/nui.nvim' }
  -- use { 'smzm/hydrovim' }

end)
