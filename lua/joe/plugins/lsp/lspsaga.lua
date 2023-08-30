return { 
  'nvimdev/lspsaga.nvim',
  event = "VeryLazy",
  dependencies = {
        'nvim-treesitter/nvim-treesitter' -- optional
        'nvim-tree/nvim-web-devicons'     -- optional
    }
    config = function()
        require('lspsaga').setup({})
    end,
  }
