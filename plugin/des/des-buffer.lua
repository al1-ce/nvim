if vim.g.vim_distro ~= "despair.nvim" then return end

local noremap = require("lib.map").noremap

noremap("n", "<leader>j", function()
    local buffers = vim.api.nvim_exec2("ls", { output = true} )
    if vim.fn.count(buffers.output, "\n") < 1 then
        vim.print("Found only a single buffer")
        return
    end
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<cr>", true, false, true), "n", {})
    vim.api.nvim_echo({{buffers.output}}, false, {})
    local inp = vim.fn.input("Enter buffer number: ")
    if inp == "" then return end
    local bufnr = tonumber(inp)
    if type(bufnr) ~= "number" then
        vim.notify("Must enter a number", vim.log.levels.error)
        return
    end
    vim.cmd("b " .. tostring(bufnr))
end, { desc = "Open buffer picker" })

