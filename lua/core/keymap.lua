local keymap = vim.keymap

--------------视觉模式--------------
--单行或多行移动
keymap.set("v","J", ":m '>+1<CR>gv=gv")
keymap.set("v","K", ":m '<-2<CR>")

-- ---------------插件------------------
-- nvim-tree
keymap.set("n","tr", ":NvimTreeToggle<CR>")

--easy align
keymap.set("n", "ga", ":EasyAlign<CR>", opt)
keymap.set("v", "ga", ":EasyAlign<CR>", opt)

