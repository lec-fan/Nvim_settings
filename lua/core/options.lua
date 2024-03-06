local opt = vim.opt

--行号
opt.relativenumber = true
opt.number = true

--缩进
opt.tabstop    = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.expandtab  = true

--防止包裹
opt.wrap = false

--光标行
opt.cursorline = true

--启用鼠标
opt.mouse:append("a")

--系统剪贴板
opt.clipboard:append("unnamedplus")

--新分割窗口
opt.splitright = true
opt.splitbelow = true

--搜索
opt.ignorecase = true
opt.smartcase = true

--外观
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme janah]]
