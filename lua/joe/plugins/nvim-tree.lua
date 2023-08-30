vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
return {
	"nvim-tree/nvim-tree.lua",
	-- version = "*",
	-- use ctrl + (h, l) to jump between NvimTree and Vim windows
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			renderer = {
				highlight_git = true,
				icons = {
					show = {
						git = true,
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})
	end,
}
