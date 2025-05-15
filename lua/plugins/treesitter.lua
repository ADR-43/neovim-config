return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			highlight = { enable = true },
			ensure_installed = {
				"lua",
				"python",
				"rust",
				"latex",
				"markdown",
				"markdown_inline",
				"html",
				"css",
				"javascript",
			},
			indent = { enable = true },
			auto_install = true,
		})
	end,
}
