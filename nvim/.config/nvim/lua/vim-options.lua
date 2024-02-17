vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.cmd("set relativenumber")

-- SO primagen
vim.keymap.set("x", "<leader>p", '"_dP')

-- Probably controversial
vim.keymap.set("n", "d", '"_d')
vim.keymap.set("v", "d", '"_d')

-- idk why this isn't default vim
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>p", '"+p')

vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>p", '"+p')
