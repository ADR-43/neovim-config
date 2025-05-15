return {
    {
        "rose-pine/neovim",
        lazy = false,
        variant = "main",
        as = "rose-pine",
        styles = {
            transparency = true
        },
        transparency = true,
        config = function()

            vim.cmd.colorscheme "rose-pine"

        end
    },
}
