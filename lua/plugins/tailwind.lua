---@type LazySpec
return {
  -- Tailwind CSS colorizer for completion menu
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    config = function()
      require("tailwindcss-colorizer-cmp").setup {
        color_square_width = 2,
      }
    end,
  },
  -- Additional Tailwind tools
  {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      server = {
        override = false, -- use the tailwindcss server configured in astrolsp
      },
      document_color = {
        enabled = true, -- can be toggled with :TailwindColorToggle
        kind = "inline", -- "inline" | "foreground" | "background"
        inline_symbol = "󰝤 ", -- symbol to show before color
      },
      conceal = {
        enabled = false, -- conceal long class names
      },
    },
  },
}
