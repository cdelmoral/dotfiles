return {

  -- Disable super-tab behavior and use C-J/C-L instead
  {
    "L3MON4D3/LuaSnip",
    keys = {
      {
        "<tab>",
        function()
          return "<tab>"
        end,
        expr = true,
        silent = true,
        mode = "i",
      },
      {
        "<tab>",
        function()
          return "<tab>"
        end,
        mode = "s",
      },
      { "<s-tab>", function() end, mode = { "i", "s" } },
      {
        "<C-L>",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
        end,
        expr = true,
        silent = true,
        mode = "i",
      },
      {
        "<C-L>",
        function()
          require("luasnip").jump(1)
        end,
        mode = "s",
      },
      {
        "<C-J>",
        function()
          require("luasnip").jump(-1)
        end,
        mode = { "i", "s" },
      },
    },
  },
}
