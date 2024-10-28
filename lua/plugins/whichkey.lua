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
      -- Utilities
      { "<leader>Q", "<cmd>qa<cr>", desc = "Quit all" },
      { "<S-Tab>", "<C-d>", mode = "i" },

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
      { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Search words" },

      -- Buffer
      { "<leader>,", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
      { "<leader>.", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
      {
        "<leader>bq",
        function()
          local current = vim.api.nvim_get_current_buf()
          vim.cmd("BufferLineCyclePrev")
          vim.cmd("bdelete " .. current)
        end,
        desc = "Close buffer and go to prev buffer",
      },
      {
        "<leader>bQ",
        function()
          -- Get a list of all buffers
          local buffers = vim.api.nvim_list_bufs()
          -- Iterate through each buffer and delete it
          for _, buf in ipairs(buffers) do
            if vim.api.nvim_buf_is_loaded(buf) then
              vim.api.nvim_buf_delete(buf, { force = true })
            end
          end
        end,
        desc = "Close all buffers",
      },

      -- Git
      { "<leader>g", "<cmd>LazyGit<cr>", desc = "LazyGit" },

      -- Float Term
      { "<leader>t", "<cmd>FloatermToggle<cr>", desc = "Floaterm" },

      -- Trouble
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List",
      },
    },
  },
}
