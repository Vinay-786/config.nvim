vim.g.mapleader = " "
local set = vim.keymap.set

set("n", "<leader>pv", vim.cmd.Ex)
set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

set("n", "tn", vim.cmd.tabnext, { desc = "Move focus to next tab" })
set("n", "tp", vim.cmd.tabprevious, { desc = "Move focus to previous tab" })

set("n", "Bn", vim.cmd.bNext, { desc = "Move focus to next buffer" })
set("n", "Bp", vim.cmd.bprevious, { desc = "Move focus to previous buffer" })

set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

set("n", "<M-,>", "<c-w>5<")
set("n", "<M-.>", "<c-w>5>")
set("n", "<M-t>", "<C-W>+")
set("n", "<M-s>", "<C-W>-")

-- set('n', '<C-BS>', 'd-b')
