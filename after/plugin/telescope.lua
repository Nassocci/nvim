local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
local action_layout = require("telescope.actions.layout")
require('telescope').load_extension('media_files')
require('telescope').setup{
  defaults = {
    layout_config = {
      width = 0.9,
      height = 0.9,
      preview_width = 0.5, -- Set the width to 60% of the total width
      preview_cutoff = 10,
    },
  },
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg"},
      -- find command (defaults to `fd`)
      find_cmd = "rg"
    }
  },
}
require("telescope").load_extension("media_files")
-- require('telescope').extensions.media_files.media_files()
