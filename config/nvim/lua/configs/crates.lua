require("crates").setup({
    null_ls = {
        enabled = true,
    },
    completion = {
        cmp = {
            enabled = true,
        },
    },
})

require("cmp").setup.buffer({
    sources = { { name = "crates" } },
})
