return {

    {
        "williamboman/mason.nvim",
    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.treesitter")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require("configs.mason-lspconfig")
        end,
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.lint")
        end,
    },

    {
        "rshkarin/mason-nvim-lint",
        event = "VeryLazy",
        dependencies = { "nvim-lint" },
        config = function()
            require("configs.mason-lint")
        end,
    },

    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        config = function()
            require("configs.conform")
        end,
    },

    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require("configs.mason-conform")
        end,
    },

    {
        "mrcjkb/rustaceanvim",
        version = "^4",
        lazy = false,
        ["rust-analyzer"] = {
            cargo = {
                allFeatures = true,
            },
        },
    },

    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function()
            vim.g.rustfmt_autosave = 1
        end,
    },

    {
        "hrsh7th/nvim-cmp", -- Completion engine
        dependencies = {
            { "hrsh7th/cmp-nvim-lsp" }, -- LSP completion source
            { "hrsh7th/cmp-buffer" }, -- Buffer completion
            { "hrsh7th/cmp-path" }, -- Path completion
        },
        event = "InsertEnter",
        config = function()
            require("configs.cmp")
        end,
    },

    {
        "saecki/crates.nvim",
        ft = { "toml" },
        config = function()
            require("configs.crates")
        end,
    },

    {
        "jose-elias-alvarez/null-ls.nvim",
        requires = { "nvim-lua/plenary.nvim" }, -- null-ls requires plenary.nvim
        config = function()
            local null_ls = require("null-ls")

            -- Configure null-ls sources, e.g., formatters and linters
            null_ls.setup({
                sources = {},
            })
        end,
    },
}
