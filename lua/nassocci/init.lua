require("nassocci.set")
require("nassocci.remap")
require("nassocci.packer")

local augroup = vim.api.nvim_create_augroup
local TheNassocciGroup = augroup('nassocci', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

require('telescope').load_extension('media_files')
-- require('telescope').extensions.media_files.media_files()
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
    width = 25,
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
require'lspconfig'.pyright.setup{}
-- packer end
