return {
	"numToStr/Comment.nvim",
	-- event = { "BufReadPre", "BufNewFile" },
        -- gcc in line comment
        --[[ gbc blockwise comment ]]
        lazy = false,
	config = function()
		-- import comment plugin safely
		local comment = require("Comment")

		-- enable comment
		comment.setup({})
	end,
}
