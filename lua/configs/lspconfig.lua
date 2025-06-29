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
}

for _, lsp in ipairs(servers) do
  local opts = {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }

  if lsp == "cairo_ls" then
    opts.cmd = { "scarb", "cairo-language-server", "/C", "--node-ipc" }
    opts.filetypes = { "cairo" }
    opts.init_options = {
      hostInfo = "neovim",
    }
    opts.root_dir = lspconfig.util.root_pattern("Scarb.toml", "cairo_project.toml", ".git")
  end

  lspconfig[lsp].setup(opts)
end
