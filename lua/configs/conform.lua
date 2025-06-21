local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    typescript = {"deno"},
    javascript = {"deno"},
    html = { "prettierd" },
    rust = {"rust-analyzer"},
    go = {"goimports", "gopls"}
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
