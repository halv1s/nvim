return {
  "mhartington/formatter.nvim",
  event = "VeryLazy",
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

        -- Prettierd for JavaScript, JSX, TypeScript, TSX, and JSON
        javascript = {
          function()
            return {
              exe = "prettierd",
              args = { vim.api.nvim_buf_get_name(0) },
              stdin = true,
            }
          end,
        },
        javascriptreact = {
          function()
            return {
              exe = "prettierd",
              args = { vim.api.nvim_buf_get_name(0) },
              stdin = true,
            }
          end,
        },
        typescript = {
          function()
            return {
              exe = "prettierd",
              args = { vim.api.nvim_buf_get_name(0) },
              stdin = true,
            }
          end,
        },
        typescriptreact = {
          function()
            return {
              exe = "prettierd",
              args = { vim.api.nvim_buf_get_name(0) },
              stdin = true,
            }
          end,
        },
        json = {
          function()
            return {
              exe = "prettierd",
              args = { vim.api.nvim_buf_get_name(0) },
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
