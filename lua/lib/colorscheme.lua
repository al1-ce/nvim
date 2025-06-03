-- Color
---@diagnostic disable: undefined-field
---@diagnostic disable: param-type-mismatch
local M = { on_reload_listeners = {} }

local is_setup = false

M.on_reload = function(func) table.insert(M.on_reload_listeners, func) end
M.on_reload_now = function(func) func(); table.insert(M.on_reload_listeners, func) end

local config_loc = vim.fn.fnamemodify(vim.fn.expand("$HOME"), ":p:h") .. "/.config/neovim-theme.lua"

M.source = function()
    local f = io.open(config_loc, "r")
    if not f then
        f = io.open(config_loc, "w")
        if not f then vim.notify("Failed to write to theme config!"); return end
        f:write("vim.cmd.colorscheme('despair')")
    end
    f:close();
    vim.cmd("source " .. config_loc)
end

M.set = function(name)
    -- TODO: apply also to lualine
    local colorscheme = name:match("^[^:]+")
    pcall(function() vim.cmd("colorscheme " .. colorscheme) end)

    for _, f in ipairs(M.on_reload_listeners) do
        pcall(f)
        print(vim.inspect(f))
    end

    vim.loop.fs_open(config_loc, "w", 432, function(err, fd)
        vim.loop.fs_write(fd, "vim.cmd.colorscheme('" .. name .. "')", nil, function()
            vim.loop.fs_close(fd)
        end)
    end)
end

if not is_setup then M.source(); is_setup = true end

return M


