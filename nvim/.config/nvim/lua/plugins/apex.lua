return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["apex"] = { "prettier" },
      },
    },
  },
  {

    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        apex_ls = {
          filetypes = { "apex" },
        },
      },
    },
  },
  {
    {
      "nvim-treesitter/nvim-treesitter",
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
        vim.list_extend(opts.ensure_installed, { "apex" })
      end,
    },
  },
}
