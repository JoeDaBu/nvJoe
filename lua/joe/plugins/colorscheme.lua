return {
  { 
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- make sure to load this before all the other start plugins 
    lazy = false, -- make sure we load this during startup if it is your main colorscheme    config = function()
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
      })
      -- load the colorscheme here
      vim.cmd([[colorscheme catppuccin]])
    end,
    }
}
