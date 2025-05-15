return {
	{
		"lervag/vimtex",
		init = function()
			-- Setting the PDF viewer as default, adjust if you use something else
			vim.cmd([[filetype plugin indent on]])
			vim.g.vimtex_syntax_enabled = 0
			vim.g.vimtex_view_method = "zathura"
			-- Configure vimtex compiler settings to use
			vim.g.vimtex_compiler_progname = "nvr"
			vim.g.vimtex_compiler_method = "latexmk"
			vim.g.vimtex_compiler_latexmk = {
				executable = "latexmk",
				options = {
					"-pdf",
					"-verbose",
					"-file-line-error",
					"-synctex=1",
					"-interaction=nonstopmode",
                    "-shell-escape",
				},
			}
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "tex",
				callback = function()
					vim.opt_local.formatprg = "latexindent.pl -"
				end,
			})
		end,
	},
	{
		"iurimateus/luasnip-latex-snippets.nvim",
		dependencies = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
		config = function()
			require("luasnip-latex-snippets").setup({})
			require("luasnip").config.setup({ enable_autosnippets = false })
		end,
	},
}
