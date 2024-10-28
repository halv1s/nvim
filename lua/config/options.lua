local opt = vim.opt

opt.mouse = "a" -- Enable mouse mode
opt.number = true

opt.termguicolors = true

opt.clipboard:append("unnamedplus") -- Use system clipboard

-- Tab: https://gist.github.com/LunarLambda/4c444238fb364509b72cfb891979f1dd
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = -1
opt.smarttab = true
