return {
  "ThePrimeagen/harpoon",
  keys = function()
    local keys = {
      {
        "<leader>hh",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon File",
      },
      {
        "<leader>hm",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon Quick Menu",
      },
    }

    local letters = { "f", "d", "s", "a", "g" }
    for i = 1, 5 do
      table.insert(keys, {
        "<leader>h" .. letters[i],
        function()
          require("harpoon"):list():select(i)
        end,
        desc = "Harpoon to File " .. i,
      })
    end
    return keys
  end,
}
