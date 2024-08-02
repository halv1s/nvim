-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- NVIM CONFIG --
vim.opt.relativenumber = false

-- NEOVIDE CONFIG --
if vim.g.neovide then
  vim.g.neovide_input_macos_option_is_meta = true
  vim.g.neovide_transparency = 0.8
end

-- Prettier --
vim.g.lazyvim_prettier_needs_config = false
