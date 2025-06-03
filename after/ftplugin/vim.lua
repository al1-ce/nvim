local bufnoremap = require("lib.remap").bufnoremap
local remap      = require("lib.remap").remap

bufnoremap("n", "<leader>xf", "<cmd>w<cr><cmd>source %<cr>", { desc = "E[X]ecute [F]ile" })

