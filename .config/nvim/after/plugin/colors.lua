vim.cmd.colorscheme("pinkmare")

function transparent_bg()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
end

function color_bg()
    vim.api.nvim_set_hl(0, "Normal", { bg = "#202330" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#202330" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#202330" })
end

transparent_bg()
