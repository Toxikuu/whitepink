local cmp = require("cmp")

cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body) -- Set up for snippets
        end,
    },
    mapping = {
        ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm completion
    },
    sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- Use LSP as a source
        { name = "buffer" }, -- Use buffer completions
        { name = "path" }, -- Use path completions
        { name = "crates" },
    }),
})

cmp.setup.filetype("rust", {
    sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- LSP completions
        { name = "crates" }, -- Crates completions for Cargo.toml
    }),
})
