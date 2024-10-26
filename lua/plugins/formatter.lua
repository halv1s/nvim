return {
  "mhartington/formatter.nvim",
  config = function()
    require("formatter").setup({
      logging = false,
      filetype = {
        lua = {
          function()
            return {
              exe = "stylua",
              args = {
                "--indent-type",
                "Spaces",
                "--indent-width",
                "2",
                "--stdin-filepath",
                vim.api.nvim_buf_get_name(0),
                "--",
                "-",
              },
              stdin = true,
            }
          end,
        },
      },
    })

    vim.api.nvim_create_autocmd("BufWritePost", {
      pattern = "*",
      command = "FormatWrite",
    })
  end,
}
