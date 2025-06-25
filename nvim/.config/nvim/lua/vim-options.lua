vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Remap for navigating windows
-- Use vim.cmd.wincmd to call the underlying command directly.
-- This avoids issues with recursive mappings.
vim.keymap.set("n", "<C-h>", function() vim.cmd.wincmd("h") end, { desc = "Navigate to the window on the left" })
vim.keymap.set("n", "<C-j>", function() vim.cmd.wincmd("j") end, { desc = "Navigate to the window below" })
vim.keymap.set("n", "<C-k>", function() vim.cmd.wincmd("k") end, { desc = "Navigate to the window above" })
vim.keymap.set("n", "<C-l>", function() vim.cmd.wincmd("l") end, { desc = "Navigate to the window on the right" })

-- Disable the default <C-w>h/j/k/l bindings to enforce the new mappings
vim.keymap.set("n", "<C-w>h", "<Nop>", { desc = "Disabled, use <C-h>" })
vim.keymap.set("n", "<C-w>j", "<Nop>", { desc = "Disabled, use <C-j>" })
vim.keymap.set("n", "<C-w>k", "<Nop>", { desc = "Disabled, use <C-k>" })
vim.keymap.set("n", "<C-w>l", "<Nop>", { desc = "Disabled, use <C-l>" })
