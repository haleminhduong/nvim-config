local rt = require("rust-tools")
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client, bufnr)
    -- Enable inlay hints
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
end

rt.setup({
    server = {
        on_attach = on_attach,
        capabilities = capabilities,
    },
})

lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {
        "rustup", "run", "stable", "rust-analyzer",
    },
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                allFeatures = true,
            },
            procMacro = {
                enable = true
            },
        }
    }
})
