return {
    -- Colour picker and colour background
    {
        "uga-rosa/ccc.nvim",
        event = { "BufEnter", "BufNew" },
        opts = {
            highlighter = {
                auto_enable = true,
                lsp = true
            }
        },
        keys = {
            { "<leader>cp", "<cmd>CccPick<cr>", mode = "n", noremap = true, silent = true, desc = "Opens color picker" },
        },
    },
    {
        'jakemason/ouroboros',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
            extension_preferences_table = {
                c = { h = 2, hpp = 1 },
                h = { c = 2, cpp = 1 },
                cpp = { hpp = 2, h = 1 },
                hpp = { cpp = 2, c = 1 },
            },
            switch_to_open_pane_if_possible = true,
        },
        cmd = "Ouroboros",
        ft = { "c", "cpp" },
        keys = {
            { "gh", "<cmd>Ouroboros<cr>", mode = "n", noremap = true, silent = true, desc = "Switch to header", ft = { "c", "cpp" } },
        }
    },
}
