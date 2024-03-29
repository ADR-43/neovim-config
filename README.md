# Neovim Configuration

## Plugins
- [vim-plug](https://github.com/junegunn/vim-plug) - Plugin manager for Neovim.
- [vimtex](https://github.com/lervag/vimtex) - Plugin for LaTeX editing.
- [lua-snip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine for Neovim using Lua.

## Settings
```vim
set number              " Show line numbers
set tabstop=4           " Set tab width to 4 spaces
set expandtab           " Use spaces instead of tabs
set shiftwidth=4        " Set indentation level to 4 spaces
set autoindent          " Auto-indent new lines
set cursorline          " Highlight current line
set showmatch           " Highlight matching parentheses
set encoding=utf-8      " Set encoding to UTF-8
set mouse=a             " Enable mouse support
set clipboard+=unnamed  " Use system clipboard


vim.cmd("set expandtab")         " Ensures spaces are used for tabs
vim.cmd("set tabstop=4")         " Sets tab stop to four
vim.cmd("set softtabstop=4")     " Sets soft tab stop to four
vim.cmd("set shiftwidth=4")      " Sets shift width to four

vim.g.mapleader = " "            " Sets the the leader to spacebar
vim.g.maplocalleader = ","       " Sets local leader to ',' (used primarily for work in LaTeX

vim.wo.number = true             " Turns on line numbers
vim.wo.relativenumber = true     " Enables relative line numbers

vim.opt.conceallevel = 1         " Conceals characters when described by the highlighter (used mostly in obsidian)

> These remaps append screen centering on the half-page movements ctrl-u/d 
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', {noremap = true, silent = true})
