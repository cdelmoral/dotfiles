return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewFileHistory" },
  keys = {
    {
      "<leader>gd",
      function()
        if next(require("diffview.lib").views) == nil then
          vim.cmd("DiffviewOpen")
        else
          vim.cmd("DiffviewClose")
        end
      end,
      desc = "Diffview (toggle)",
    },
    { "<leader>gD", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview File History (current file)" },
  },
  opts = {
    enhanced_diff_hl = true, -- nicer hl for changed text within a line
    view = {
      merge_tool = {
        layout = "diff3_mixed", -- LOCAL | REMOTE on top, MERGED below
        disable_diagnostics = true, -- LSP noise off during merges
      },
    },
  },
}
