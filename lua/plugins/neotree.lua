return {
	{
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
config = function()
      -- Automatically open NeoTree when Neovim starts without any files specified
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          if vim.fn.argc() == 0 then
            -- No file arguments are given, open NeoTree
            vim.cmd("Neotree")
          end
        end,
      })
    end,
},
}
