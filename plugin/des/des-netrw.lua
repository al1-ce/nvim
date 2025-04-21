if vim.g.vim_distro ~= "despair.nvim" then return end

local noremap = require("lib.map").noremap

-- some netrw mappings
noremap("n", "-", ':Ex <bar> :sil! /<C-R>=expand("%:t")<CR><CR>')

