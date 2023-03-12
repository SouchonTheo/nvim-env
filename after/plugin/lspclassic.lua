local lspconfig = require'lspconfig'

lspconfig.zerolsp.setup {
    filetypes = { "mligo" },
    cmd = { "path/to/lspzero", "-p", "12345" },
    settings = {
        ligo_language_server = {
            completion = {
                enableSnippets = true
            },
            diagnostics = {
                enable = true,
                debounce = 1000
            },
            formatting = {
                enable = true
            }
        }
    },
    on_attach = function(client, bufnr)
        -- Configure your language server here
    end
}

