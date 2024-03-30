# Neovim Configuration

## Plugins
- [vim-plug](https://github.com/junegunn/vim-plug) - Plugin manager for Neovim.
- [vimtex](https://github.com/lervag/vimtex) - Plugin for LaTeX editing.
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - Provides manually triggered completions that replace Neovim's native omnifunc for serving completions from language servers.
- [lua-snip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine for Neovim using Lua.
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion engine for Neovim.
- [mason.nvim](https://github.com/williamboman/mason.nvim) - Package manager for LSPs, DAPs, linters, and formatters.
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Mason.nvim add-on which facilitates lsp configuration.
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - A collection of configurations for LSPs
- [lsp_lines.nvim](https://git.sr.ht/~whynothugo/lsp_lines.nvim) - Renders diagnostics using virtuals lines.
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Neovim statusline.
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - File system manager to use instead of netrw.
- [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim) - Community-maintained fork of the now-archived null-ls. Currently I have only configured it to auto-format lua. 
- [obsidian.nvim](https://github.com/epwalsh/obsidian.nvim) - [Obsidian](https://obsidian.md) 🤝 Neovim (Obsidian is an excellent system for note taking and learning. I highly recommend it.)
- [rosé pine](https://github.com/rose-pine/neovim) - Soho vibes for Neovim (adds theme/colorscheme)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Picker/Finder for Neovim with built-in ui. Also provides previewing prior to picking.
- [telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim) - Sets the default Neovim ui to telescope, allowing for many other processes to use the same interface.
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - An interface to treesitter for Neomvim. (a better synatic tree builder). Allows for better highlighting within Neovim.
- [vimtex](https://github.com/lervag/vimtex) - Neovim plugin for writing, reading, and compiling LaTeX files in Neovim.

## Settings
```vim
vim.cmd("set expandtab")         " Ensures spaces are used for tabs
vim.cmd("set tabstop=4")         " Sets tab stop to four
vim.cmd("set softtabstop=4")     " Sets soft tab stop to four
vim.cmd("set shiftwidth=4")      " Sets shift width to four

vim.g.mapleader = " "            " Sets the the leader to spacebar
vim.g.maplocalleader = ","       " Sets local leader to ',' (used primarily for work in LaTeX

vim.wo.number = true             " Turns on line numbers
vim.wo.relativenumber = true     " Enables relative line numbers

vim.opt.conceallevel = 1         " Conceals characters when described by the highlighter (used mostly in obsidian)

" Appends page centering to the half-page vim movements (ctrl-u/d).
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', {noremap = true, silent = true})
