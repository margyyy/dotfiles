return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    init = function()
      vim.env.PATH = vim.fn.expand("~/.cargo/bin") .. ":" .. vim.env.PATH
    end,
    config = function()
      require("nvim-treesitter").install({ "markdown", "markdown_inline" })
    end,
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      {
        "<leader>mp",
        "<cmd>RenderMarkdown toggle<cr>",
        ft = "markdown",
        desc = "Toggle Markdown rendering",
      },
    },
    opts = {
      enabled = true,
      render_modes = true,
      debounce = 100,
      completions = {
        blink = { enabled = true },
      },
    },
  },
}
