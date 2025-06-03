local bufnoremap = require("lib.remap").bufnoremap
local remap      = require("lib.remap").remap

bufnoremap("n", "<leader>xf", "<cmd>w<cr><cmd>source %<cr>", { desc = "E[X]ecute [F]ile" })
bufnoremap("n", "<leader>xc", "V:lua<cr>", { desc = "E[X]ecute Lua" })
bufnoremap("x", "<leader>xc", ":lua<cr>", { desc = "E[X]ecute Lua" })

