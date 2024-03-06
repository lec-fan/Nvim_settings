-- 自动安装packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- 保存此文件自动更新安装软件
-- 注意PackerCompile改成了PackerSync
-- plugins.lua改成了plugins-setup.lua，适应本地文件名字
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'mhinz/vim-janah'
  use 'junegunn/vim-easy-align'
--状态栏
  use { 'nvim-lualine/lualine.nvim',  requires = { 'nvim-tree/nvim-web-devicons', opt = true }} --状态栏
--nvim tree
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
  use'christoomey/vim-tmux-navigator'
--latex
  use'lervag/vimtex'
--背景透明
  use'xiyaowong/transparent.nvim'
--注释
  use'preservim/nerdcommenter'
  if packer_bootstrap then
    require('packer').sync()
  end
end)
