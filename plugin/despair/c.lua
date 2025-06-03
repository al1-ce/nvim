if vim.g.vim_distro ~= "despair.nvim" then return end

-- in ftplugin c
__switch_c_hc = function(split_type)
    local flipname
    if vim.fn.match(vim.fn.expand("%"), "\\.c") > 0 then
        flipname = vim.fn.substitute(vim.fn.expand("%:t"), "\\.c\\(.*\\)", ".h\\1", "")
    elseif vim.fn.match(vim.fn.expand("%"), "\\.h") > 0 then
        flipname = vim.fn.substitute(vim.fn.expand("%:t"), "\\.h\\(.*\\)", ".c\\1", "")
    else return end
    local ok, err = pcall(vim.cmd, "find " .. flipname)
    if not ok then
        vim.notify("Failed to find '" .. flipname .. "' in path.", vim.log.levels.ERROR)
    end
    if split_type ~= "none" then vim.cmd(split_type .. " | wincmd p | edit # | wincmd p") end
end

