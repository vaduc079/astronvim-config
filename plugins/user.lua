return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "HiPhish/nvim-ts-rainbow2",
      config = function()
        -- HACK: https://github.com/p00f/nvim-ts-rainbow/issues/112#issuecomment-1310835936
        vim.api.nvim_create_autocmd({ "BufWritePost", "FocusGained" }, {
          callback = function()
            vim.cmd "TSDisable rainbow"
            vim.cmd "TSEnable rainbow"
          end,
        })
        require("nvim-treesitter.configs").setup {
          rainbow = {
            hlgroups = {
              "TSRainbowYellow",
              "TSRainbowOrange",
              "TSRainbowGreen",
              "TSRainbowViolet",
              "TSRainbowBlue",
              "TSRainbowCyan",
              "TSRainbowRed",
            },
          },
        }
      end,
    },
    opts = { rainbow = { enable = true } },
  },
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
    ft = "markdown",
  },
}
