# Neovim Configuration

## Plugins
- [vim-plug](https://github.com/junegunn/vim-plug) - Plugin manager for Neovim.
- [vimtex](https://github.com/lervag/vimtex) - Plugin for LaTeX editing.
- [lua-snip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine for Neovim using Lua.

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
