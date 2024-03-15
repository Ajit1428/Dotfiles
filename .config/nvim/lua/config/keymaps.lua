local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

keymap.set("n", "x", '"_x')

--Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

--Split Window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--Move within the Window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

--Resize the window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

--Diagnostics
keymap.set("n", "<leader>r", function()
  vim.diagnostic.goto_next()
end, opts)
