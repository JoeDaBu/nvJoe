return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- make sure to load this before all the other start plugins
		lazy = false, -- make sure we load this during startup if it is your main colorscheme    config = function()
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				integrations = {
					nvimtree = true,
					telescope = {
						enable = true,
					},
					gitsigns = true,
					mason = true,
					cmp = true,
					treesitter = true,
					which_key = true,
					native_lsp = {
						enabled = true,
						virtual_text = {
							errors = { "italic" },
							hints = { "italic" },
							warnings = { "italic" },
							information = { "italic" },
						},
						underlines = {
							errors = { "underline" },
							hints = { "underline" },
							warnings = { "underline" },
							information = { "underline" },
						},
						inlay_hints = {
							background = true,
						},
					},
				},
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
