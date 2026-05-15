require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html-lsp",
  "css-lsp",
  "tsgo",
  "vtsls",
  "bashls",
  "lua_ls",
  "rust-analyzer",
  "gopls",
  "cairo_ls",
  "markdown_oxide",
  "yaml-language-server",
  "json-lsp",
  "tailwindcss",
  -- "roslyn",
  "pyright",
  "dockerfile-language-server",
  "docker-language-server",
  "omnisharp",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
