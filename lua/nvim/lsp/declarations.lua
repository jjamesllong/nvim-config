local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
    {
        "sumneko_lua",
        config = function(on_attach, lsp_flags)
            return {
                on_attach = on_attach,
                lsp_flags = lsp_flags,
                capabilities = capabilities,
                settings = {
                    Lua = {
                        runtime = {
                            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                            version = "LuaJIT",
                            -- Setup your lua path
                            -- path =
                        },
                        diagnostics = {
                            -- Get the language server to recognize the `vim` global
                            globals = { "vim" }
                        },
                        workspace = {
                            -- Make the server aware of Neovim runtime files
                            library = vim.api.nvim_get_runtime_file("", true),
                            checkThirdParty = true
                        },
                        -- Do not send telemetry data containing a randomized but unique identifier
                        telemetry = {
                            enable = false
                        },
                    },
                },
            }
        end
    },
    {
        "clangd",
        config = function(on_attach, lsp_flags)
            return {
                capabilities = capabilities,
                on_attach = on_attach,
                lsp_flags = lsp_flags,
            }
        end,
    },
    {
        "hls",
        config = function(on_attach, lsp_flags)
            return {
                capabilities = capabilities,
                on_attach = on_attach,
                lsp_flags = lsp_flags,
            }
        end
    },
    {
        "rust_analyzer",
        config = function(on_attach, lsp_flags)
            return {
                on_attach = on_attach,
                lsp_flags = lsp_flags,
                capabilities = capabilities,
            }
        end
    },
}
