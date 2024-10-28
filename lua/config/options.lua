local opt = vim.opt

opt.mouse = "a" -- Enable mouse mode
opt.number = true

opt.termguicolors = true

opt.clipboard:append("unnamedplus") -- Use system clipboard

opt.expandtab = true -- Convert tabs to spaces
opt.smarttab = true -- Makes tabbing smarter
opt.autoindent = true -- Enable auto-indentation
opt.smartindent = true -- Enable smart indentation
opt.tabstop = 2 -- Number of spaces a tab counts for (default)
