-- Color
---@diagnostic disable: undefined-field
---@diagnostic disable: param-type-mismatch
local M = {}

local is_setup = false

local config_loc = vim.fn.fnamemodify(vim.fn.expand("$HOME"), ":p:h") .. "/.config/neovim-distro.lua"

M.source = function()
    local f = io.open(config_loc, "r")
    if not f then
        f = io.open(config_loc, "w")
        if not f then vim.notify("Failed to write to distro config!"); return end
        f:write("vim.g.vim_distro = 'despair.nvim'")
    end
    f:close()
    vim.cmd("source " .. config_loc)
end

M.set = function()
    -- print(vim.inspect(name))

    local new_dist = "monolith.nvim"
    if vim.g.vim_distro == new_dist then new_dist = "despair.nvim" end

    vim.loop.fs_open(config_loc, "w", 432, function(err, fd)
        vim.loop.fs_write(fd, "vim.g.vim_distro = '" .. new_dist .. "'", nil, function()
            vim.loop.fs_close(fd)
        end)
    end)
end

if not is_setup then M.source(); is_setup = true end

return M


