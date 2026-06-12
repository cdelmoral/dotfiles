vim.opt.diffopt:remove("linematch:40") -- drop the default so linematch:60 is the only entry
vim.opt.diffopt:append({ "linematch:60", "algorithm:histogram", "indent-heuristic" })

vim.filetype.add({
  extension = {
    cls = "apex",
    trigger = "apex",
  },
})
