vim.cmd([[
    set omnifunc=javascriptcomplete#CompleteJS
    so $VIMRUNTIME/autoload/javascriptcomplete.vim
]])

vim.keymap.set("n", "<leader>lv",  function()
    local what = vim.fn.input("console.log(what...): ")
    local pos = vim.api.nvim_win_get_cursor(0)[2]
    local line = vim.api.nvim_get_current_line()
    local nline = line:sub(0, pos) .. 'console.log("' .. what .. ': ", ' .. what .. ');' .. line:sub(pos + 1)
    vim.api.nvim_set_current_line(nline)
end, { desc = "[L]og [V]ariable", silent = true, noremap = true, buffer = true })

