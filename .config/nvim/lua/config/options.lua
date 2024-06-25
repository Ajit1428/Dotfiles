vim.g.mapleader = " "

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true
vim.opt.title = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.backup = false --Disables backup
vim.opt.inccommand = "split" --Splitting
vim.opt.nu = true --relative line number
vim.opt.rnu = true --relative line number
vim.opt.autoindent = true --Indentation
vim.opt.smartindent = true --Indentation
vim.opt.breakindent = true --Indentation
vim.opt.scrolloff = 10 --Scrolls 10 line at a time
vim.opt.shell = "fish" --shell
vim.opt.ignorecase = true --Ignores casing
vim.opt.shiftwidth = 2 --Tab
vim.opt.smarttab = true --Tab
vim.opt.tabstop = 2 --Tab
vim.opt.completeopt = { "menu", "menuone", "noselect" } --Completion
vim.opt.signcolumn = "yes" --Space present in the left side of relative line numbers
vim.opt.termguicolors = true --Terminal GUI colors
vim.opt.cursorline = true --displayes a vertical line when you are in current line
vim.opt.wrap = true --No Wrap Lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) --Finding Files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true --Put new windows below current
vim.opt.splitright = true --Put new windows right of current
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""
