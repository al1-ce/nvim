local fzfp         = require("pfunc.fzf")
local colsch       = require("lib.colorscheme")
local colorschemes = require("fzf-lua.providers.colorschemes").colorschemes

vim.api.nvim_create_user_command("Colorschemes", function()
    colorschemes({
        actions = {
            ["default"] = function(selected, opts) colsch.set(selected[1]) end
        }
    })
end, {})

