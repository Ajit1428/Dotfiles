local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--Delete a word backwards
keymap.set("n", "dw", 'vb"_d')
keymap.set("n", "x", '"_x')

--Move lines in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<cr>gv=gv")

--Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--Split Window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--Move within the Window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

--Move within the TMUX
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", { silent = true })
keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", { silent = true })
keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", { silent = true })
keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", { silent = true })

--Resize the window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

--Telescope todo navigator
keymap.set("n", ";t", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

--Diagnostics
keymap.set("n", "<leader>r", function()
  vim.diagnostic.goto_next()
end, opts)
