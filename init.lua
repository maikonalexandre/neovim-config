vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.bo.modifiable = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.g.mapleader = " "

--insert mode
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w!<cr>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-d>", "<Esc>:wq!<cr>", { noremap = true, silent = true })

-- normal mode
vim.keymap.set("i", "<C-s>", ":w!<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "<Esc>:wq!<cr>", { noremap = true, silent = true })

-- disable arrow in normal mode
vim.keymap.set('n', '<Up>', '<NOP>', { noremap = true, silent = true })
vim.keymap.set('n', '<Down>', '<NOP>', { noremap = true, silent = true })
vim.keymap.set('n', '<Left>', '<NOP>', { noremap = true, silent = true })
vim.keymap.set('n', '<Right>', '<NOP>', { noremap = true, silent = true })

-- open and close terminal right aside
-- vim.keymap.set("n", "<C-t>", ":rightbelow vsplit term://fish<CR>", { noremap = true, silent = true })
-- vim.keymap.set('t', '<C-t>', '<C-\\><C-n>:bd!<CR>', { noremap = true, silent = true })

-- better way to navigate between windowns
-- vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
