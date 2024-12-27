local clients_lsp = function()
  local bufnr = vim.api.nvim_get_current_buf()

  local clients = vim.lsp.buf_get_clients(bufnr)
  if next(clients) == nil then
    return ""
  end

  local c = {}
  for _, client in pairs(clients) do
    table.insert(c, client.name)
  end
  return table.concat(c, "|")
end

local formatters = function()
  local bufnr = vim.api.nvim_get_current_buf()

  local formatters = require("conform").list_formatters(bufnr)
  if next(formatters) == nil then
    return ""
  end

  local c = {}
  for _, formatter in pairs(formatters) do
    table.insert(c, formatter.name)
  end
  return table.concat(c, "|")
end

return {
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local lualine_require = require("lualine_require")
      lualine_require.require = require

      local icons = require("lazyvim.config").icons

      vim.o.laststatus = vim.g.lualine_laststatus

      return {
        options = {
          theme = "auto",
          globalstatus = true,
          disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          always_show_tabline = true,
        },
        tabline = {
          lualine_c = { { "filename", path = 1 } },
          lualine_z = { "tabs" },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = {
            { "branch" },
            {
              require("salesforcedx").get_default_target_org,
              cond = require("salesforcedx").is_salesforce_project_directory,
              icon = { "󰅟", align = "left", color = { fg = "cyan" } },
            },
          },
          lualine_c = {
            {
              "diagnostics",
              symbols = {
                error = icons.diagnostics.Error,
                warn = icons.diagnostics.Warn,
                info = icons.diagnostics.Info,
                hint = icons.diagnostics.Hint,
              },
            },
            {
              "diff",
              symbols = {
                added = icons.git.added,
                modified = icons.git.modified,
                removed = icons.git.removed,
              },
              source = function()
                local gitsigns = vim.b.gitsigns_status_dict
                if gitsigns then
                  return {
                    added = gitsigns.added,
                    modified = gitsigns.changed,
                    removed = gitsigns.removed,
                  }
                end
              end,
            },
          },

          lualine_x = {
            { "filetype", icon_only = false, padding = { left = 1, right = 1 } },
            { clients_lsp },
            { formatters },
          },
          lualine_y = {
            { "encoding" },
          },
          lualine_z = {
            { "progress", separator = " ", padding = { left = 1, right = 0 } },
            { "location", padding = { left = 0, right = 1 } },
          },
        },
        extensions = { "neo-tree", "lazy" },
      }
    end,
  },
}
