return {
  "cdelmoral/salesforcedx.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    require("salesforcedx").setup()
  end,
  keys = {
    { "<leader>sf", '<cmd>lua require("salesforcedx").show_menu()<CR>', desc = "Salesforce DX" },
  },
}
