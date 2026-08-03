local function disable_autopairs()
    local loaded, autopairs = pcall(require, "nvim-autopairs")

    if loaded then
        autopairs.disable()
    end
end

local function enable_autopairs()
    local loaded, autopairs = pcall(require, "nvim-autopairs")

    if loaded then
        autopairs.enable()
    end
end

return {
    "brenton-leighton/multiple-cursors.nvim",
    version = "*",
    opts = {
        pre_hook = disable_autopairs,
        post_hook = enable_autopairs,
    },
    keys = {
        {
            "<C-l>",
            "<Cmd>MultipleCursorsAddJumpNextMatch<CR>",
            mode = { "n", "x" },
            desc = "Add cursor at next match",
        },
        {
            "<C-x>",
            "<Cmd>MultipleCursorsJumpNextMatch<CR>",
            mode = { "n", "x" },
            desc = "Skip next cursor match",
        },
        {
            "<C-m>",
            "<Cmd>MultipleCursorsAddUp<CR>",
            mode = { "n", "i", "x" },
            desc = "Add cursor above",
        },
        {
            "<C-p>",
            "<Cmd>MultipleCursorsAddDown<CR>",
            mode = { "n", "i", "x" },
            desc = "Add cursor below",
        },
    },
}
