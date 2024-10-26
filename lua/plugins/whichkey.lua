return {
{
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
	-- window navigation
	{ "<leader>h", "<C-w>h", desc = "Left window" },
	{ "<leader>l", "<C-w>l", desc = "Right window" },
	{ "<leader>k", "<C-w>k", desc = "Up window" },
	{ "<leader>j", "<C-w>j", desc = "Down window" },

	-- NeoTree
	{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
  },
}
}
