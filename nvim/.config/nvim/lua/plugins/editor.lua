return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      columns = {
        "icon",
        "permissions",
        "size",
        "mtime",
      },
      delete_to_trash = true,
      view_options = {
        show_hidden = true,
      },
      constrain_cursor = "name",
    },
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
  },
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (Root Dir)" },
    },
    opts = {
      winopts = {
        preview = {
          flip_columns = 200,
        },
      },
    },
  },
}
