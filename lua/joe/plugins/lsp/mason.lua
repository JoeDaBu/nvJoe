return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-null-ls.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- import mason-null-ls
		local mason_null_ls = require("mason-null-ls")

		-- enable mason
		mason.setup()

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"jdtls",
				"tsserver",
				"terraformls",
				"html",
				"cssls",
				"jsonls",
				"lua_ls",
				"clangd",
				"sqlls",
				"jedi_language_server",
				"graphql",
				"rust_analyzer",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_null_ls.setup({
			-- list of formatters & linters for mason to install
			ensure_installed = {
				"prettierd", -- ts/js formatter
				"stylua", -- lua formatter
				"eslint_d", -- ts/js linter
				"checkstyle", -- java linter
				"tsc", -- typescript debugger
				"cppcheck", -- analysis of C and C++
				"ruff", -- python linter
				"black", -- python code formatter
				"isort", -- python import sorter
				"rustup", -- rust formatter
				"pg_format", -- postgres and sql formatter
				-- no terraform setup
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true,
		})
	end,
}
