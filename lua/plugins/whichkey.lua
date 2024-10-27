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
      -- Window navigation
      { "<leader>h", "<C-w>h", desc = "Left window" },
      { "<leader>l", "<C-w>l", desc = "Right window" },
      { "<leader>k", "<C-w>k", desc = "Up window" },
      { "<leader>j", "<C-w>j", desc = "Down window" },

      -- NeoTree
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },

      -- Telescope
      { "<leader>f", desc = "Telescope", group = "Telescope" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Search words" },

      -- Buffer
      { "<leader>,", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
      { "<leader>.", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
      {
        "<leader>q",
        function()
          local current = vim.api.nvim_get_current_buf()
          vim.cmd("BufferLineCyclePrev")
          vim.cmd("bdelete " .. current)
        end,
        desc = "Close buffer and go to prev buffer",
      },

      -- Git
      { "<leader>g", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}
