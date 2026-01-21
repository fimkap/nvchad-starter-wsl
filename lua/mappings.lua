require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<BS>", ":e #<cr>")

map("n", "[g", ":Gitsigns prev_hunk<cr>")
map("n", "]g", ":Gitsigns next_hunk<cr>")
map("n", "gp", ":Gitsigns preview_hunk_inline<cr>")

map("n", "<leader>lr", ":Telescope lsp_references<cr>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
