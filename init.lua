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
vim.keymap.set("n", "<C-s>", ":w!<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "<Esc>:wq!<cr>", { noremap = true, silent = true })

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vim.keymap.set("n", "<leader>su", "<C-w>k", { desc = "Go to upper window " })
vim.keymap.set("n", "<leader>sl", "<C-w>l", { desc = "Go to left window " })
vim.keymap.set("n", "<leader>sr", "<C-w>h", { desc = "Go to right window " })
vim.keymap.set("n", "<leader>sd", "<C-w>j", { desc = "Go to down window " })

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Disable arrows keys
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Right>', '<Nop>', { noremap = true, silent = true })

--Move in insetion move using Alt + h/j/k/l
vim.api.nvim_set_keymap('i', '<A-h>', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-j>', '<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-k>', '<Up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-l>', '<Right>', { noremap = true, silent = true })

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

require("lazy").setup("plugins", {
  change_detection = {
    notify = false,
  },
})
