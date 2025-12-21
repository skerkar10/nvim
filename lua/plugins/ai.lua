return {
    "supermaven-inc/supermaven-nvim",
    cmd = "AI",
    lazy = true,

    config = function()
        require("supermaven-nvim").setup({
            keymaps = {
                accept_suggestion = "<D-;>"
            }
        })
    end
}
