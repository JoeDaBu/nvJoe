return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-telescope/telescope-ui-select.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		-- import telescope-ui-select safely
		local themes = require("telescope.themes")
		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move up the list
						["<C-j>"] = actions.move_selection_next, -- move down the list
						-- I do not know what vim quickfixlist is
						-- ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
					},
				},
			},
			extensions = {
				["ui-select"] = {
					themes.get_dropdown({}),
				},
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")
	end,
}
