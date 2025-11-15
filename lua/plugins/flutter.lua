return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
    'AstroNvim/astrolsp', -- assicurati che astrolsp sia caricato prima
  },
  opts = function()
    return {
      lsp = {
        -- Usa l'on_attach di AstroLSP per avere tutte le keymaps
        on_attach = function(client, bufnr)
          -- Chiama l'on_attach di AstroLSP per registrare le keymaps
          require("astrolsp").on_attach(client, bufnr)
        end,
      },
    }
  end,
}
