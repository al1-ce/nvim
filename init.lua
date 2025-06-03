---@diagnostic disable

require("lib.global")

if vim.g.vim_distro == "despair.nvim" then
    vim.treesitter.start = function(_b, _n) end
end

include "lib.version"

vim.g.mapleader      = ";"
vim.g.maplocalleader = ","

include "config.options"
include "lib.colorscheme"

if vim.g.vim_distro == "monolith.nvim" then
    include "lib.depend"
end

include "config.keymap"

if vim.g.vim_distro == "monolith.nvim" then
    include "pfunc.lazy"
    include "after.loader"

    -- todo
    -- check yukimemi/dvpm
end

