-- require("nvchad.configs.lspconfig").defaults()
--
-- local servers = { "html", "cssls" }
-- vim.lsp.enable(servers)
--
-- -- read :h vim.lsp.config for changing options of lsp servers

-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "ts_ls", "bashls", "lua_ls", "rust_analyzer", "gopls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end
