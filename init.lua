require("nassocci")
-- examples for your init.lua

-- -- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
-- test start
-- require('packer').startup(function(use)
--   -- Packer can manage itself
--   use 'wbthomason/packer.nvim'
--   use {
-- 	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- 	  -- or                            , branch = '0.1.x',
-- 	  requires = { {'nvim-lua/plenary.nvim'} }
--   }

--   use({
-- 	  'rose-pine/neovim',
-- 	  as = 'rose-pine',
-- 	  config = function()
-- 		  vim.cmd('colorscheme rose-pine')
-- 	  end
--   })

--   use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
--   use("nvim-treesitter/playground")
--   use("theprimeagen/harpoon")
--   use("theprimeagen/refactoring.nvim")
--   use("mbbill/undotree")
--   use("tpope/vim-fugitive")
--   use("nvim-treesitter/nvim-treesitter-context");

--   use {
-- 	  'VonHeikemen/lsp-zero.nvim',
-- 	  branch = 'v1.x',
-- 	  requires = {
-- 		  -- LSP Support
-- 		  {'neovim/nvim-lspconfig'},
-- 		  {'williamboman/mason.nvim'},
-- 		  {'williamboman/mason-lspconfig.nvim'},

-- 		  -- Autocompletion
-- 		  {'hrsh7th/nvim-cmp'},
-- 		  {'hrsh7th/cmp-buffer'},
-- 		  {'hrsh7th/cmp-path'},
-- 		  {'saadparwaiz1/cmp_luasnip'},
-- 		  {'hrsh7th/cmp-nvim-lsp'},
-- 		  {'hrsh7th/cmp-nvim-lua'},

-- 		  -- Snippets
-- 		  {'L3MON4D3/LuaSnip'},
-- 		  {'rafamadriz/friendly-snippets'},
-- 	  }
--   }

--   use("folke/zen-mode.nvim")
--   use("github/copilot.vim")
--   use("eandrju/cellular-automaton.nvim")
--   use("laytan/cloak.nvim")
--   -- use{"preservim/nerdtree", run = ":TSUpdate"}
--   use {
--       'nvim-tree/nvim-tree.lua',
--       requires = {
--           'nvim-tree/nvim-web-devicons', -- optional, for file icons
--       },
--       tag = 'nightly' -- optional, updated every week. (see issue #1193)
--   }
-- end)


-- test end
-- -- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true
--
-- -- -- empty setup using defaults
-- require("nvim-tree").setup()
--
-- -- -- OR setup with some options
-- require("nvim-tree").setup({
--   sort_by = "case_sensitive",
--   view = {
--     width = 30,
--     mappings = {
--       list = {
--         { key = "u", action = "dir_up" },
--       },
--     },
--   },
--   renderer = {
--     group_empty = true,
--   },
--   filters = {
--     dotfiles = true,
--   },
-- })
-- test end
