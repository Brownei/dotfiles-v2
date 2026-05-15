require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "bashls",
  "lua_ls",
  "rust_analyzer",
  "gopls",
  "cairo_ls",
  "markdown_oxide",
  "tailwindcss",
  -- "roslyn",
  "omnisharp"
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
