require("nassocci.set")
require("nassocci.remap")
require("nassocci.packer")
-- require("nassocci.packer")

local augroup = vim.api.nvim_create_augroup
local TheNassocciGroup = augroup('nassocci', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = TheNassocciGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25


-- -- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- -- empty setup using defaults
require("nvim-tree").setup()

-- -- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- start nvim-tree everytime nvim opens
vim.cmd("autocmd StdinReadPre * let s:std_in=1")
vim.cmd("autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NvimTreeOpen | endif")
-- put cursor on the main window
vim.cmd("autocmd StdinReadPre * let s:std_in=1")
vim.cmd("autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | wincmd p | endif")


-- packer start
-- require('packer').startup(function(use)
--   -- Packer can manage itself
--   -- test
--   use "nvim-tree/nvim-web-devicons"
--   use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
--   use "tpope/vim-commentary"
--   use "JoosepAlviste/nvim-ts-context-commentstring"
--   -- test
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
-- packer end
