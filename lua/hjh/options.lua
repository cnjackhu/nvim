vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- vim.opt.guicursor = ""

vim.schedule(function()
  vim.opt.clipboard = ""
end)
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wildmenu = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.smarttab = true
vim.opt.autoindent = true

vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- vim.opt.scrolloff = 20
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.conceallevel = 2

-- for zoxide
vim.g.zoxide_use_select = true
