local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    json = { "prettierd" },
    typescript = { "prettierd", "deno" },
    javascript = { "prettierd", "deno" },
    rust = { "rust-analyzer" },
    go = { "goimports", "gopls" },
    cs = { "csharpier" },
    yaml = { "yamllint" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
