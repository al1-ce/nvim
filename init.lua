require("lib.glb")

-- vim.g.vim_distro     = "despair.nvim"
-- vim.g.vim_distro     = "monolith.nvim"
include "lib.ver"

vim.g.mapleader      = ";"
vim.g.maplocalleader = ","

include "opt.opt"
include "lib.col"

if vim.g.vim_distro == "monolith.nvim" then
    -- options and local plugins
    include "lib.sdp"

end

-- des.nv load after because of big slowdown
include "opt.key"

if vim.g.vim_distro == "monolith.nvim" then
    include "plf.lzy"

    -- plugins and pluin accessories
    include "aft.src"

    -- todo
    -- check yukimemi/dvpm
end

-- if vim.g.vim_distro == "despair.nvim" then end

-- aft - after
-- lib - library
-- opt - options (config)
-- plf - plugin files
-- plg - plugin configs

