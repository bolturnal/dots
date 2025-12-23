-- ============= --
-- KeyMapping!!! --
-- ============= --

local map = vim.keymap.set

map("n", "j", "gj", { desc = "go south" })
map("n", "k", "gk", { desc = "look up" })
map("n", "J", "gj", { desc = "down under" })
map("n", "K", "gk", { desc = "up up and away web" })

map("i", "<Down>", "<C-o>gj")
map("i", "<Up>", "<C-o>gk")
map("i", "<C-e>", "<End>", { desc = "end of line -- mcp" })
map("i", "<C-a>", "<Home>", { desc = "start of line" })
map("i", "<C-f>", "<Right>", { desc = "right hand" })
map("i", "<C-b>", "<Left>", { desc = "turning left" })

map("v", "<", "<gv", { desc = "indent left" })
map("v", ">", ">gv", { desc = "indent right" })

map("x", "p", "[[_dP]]") -- paste without losing copy

map("n", "<leader>w", ":w<CR>", { desc = "save" })
map("n", "<leader>q", ":q<CR>", { desc = "quit" })
map("n", "<leader>wq", ":wq<CR>", { desc = "save and quit" })
map("n", "<Esc>", ":nohlsearch<CR>", { desc = "clear highlights" })

vim.keymap.set("i", "<C-Del>", "<C-o>dw", { desc = "del words forwards" })
vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = "del words backwards" })
