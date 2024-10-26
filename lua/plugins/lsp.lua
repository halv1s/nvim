return {
{
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  dependencies = {
    "mason.nvim",
    { "williamboman/mason-lspconfig.nvim", config = function() end },
  },
}}
