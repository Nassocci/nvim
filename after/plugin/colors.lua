function ColorMyPencils(color)
	-- color = color or "rose-pine"
	-- vim.cmd.colorscheme(color)
    color = color or "tokionight-moon"
    vim.cmd[[colorscheme tokyonight-moon]]

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
