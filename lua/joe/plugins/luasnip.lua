return {
  {
    "L3MON4D3/LuaSnip", -- snippet engine
    dependencies = { 
      "rafamadriz/friendly-snippets", -- useful snippets
    },
    version = "2.*",
    build = "make install_jsregexp",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip").setup {
    }

    end,

  },
  {
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    config = function()
      require("cmp_luasnip").setup {}
    end,
  }
}
