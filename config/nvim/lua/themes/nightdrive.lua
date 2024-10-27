-- credits to original theme https://rosepinetheme.com/
-- this is a modified version of it

---@type Base46Table
local M = {}

-- UI
M.base_30 = {
    white = "#7df1a8",
    black = "#000012", -- usually your theme bg
    darker_black = "#000012", -- 6% darker than black
    black2 = "#000012", -- 6% lighter than black
    one_bg = "#000012", -- 10% lighter than black
    one_bg2 = "#000012", -- 6% lighter than one_bg2
    one_bg3 = "#000012", -- 6% lighter than one_bg3
    grey = "#010144", -- 40% lighter than black (the % here depends so choose the perfect grey!)
    grey_fg = "#21254f", -- 10% lighter than grey
    grey_fg2 = "#7df1a8", -- 5% lighter than grey
    light_grey = "#f0f0f0",
    red = "#f16368",
    baby_pink = "#f98acf",
    pink = "#f98acf",
    line = "#000012", -- 15% lighter than black
    green = "#7df1a8",
    vibrant_green = "#7df1a8",
    nord_blue = "#438dff",
    blue = "#438dff",
    yellow = "#8071ee",
    sun = "#8071ee",
    purple = "#bd81ec",
    dark_purple = "#bd81ec",
    teal = "#438dff",
    orange = "#ff853f",
    cyan = "#438dff",
    statusline_bg = "#000012",
    lightbg = "#000022",
    pmenu_bg = "#907aa9",
    folder_bg = "#7df1a8",
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
    base00 = "#000012",
    base01 = "#020266",
    base02 = "#010144",
    base03 = "#020266",
    base04 = "#000012",
    base05 = "#f98acf",
    base06 = "#f98acf",
    base07 = "#000012",
    base08 = "#438dff",
    base09 = "#9643ff",
    base0A = "#7df1a8",
    base0B = "#7196ff",
    base0C = "#f16368",
    base0D = "#bd81ec",
    base0E = "#f16368",
    base0F = "#777777",
}

-- set the theme type whether is dark or light
M.type = "dark"

M.polish_hl = {
    syntax = {
        Type = { fg = M.base_30.teal },
    },

    treesitter = {
        ["@type.builtin"] = { fg = M.base_30.teal, bold = true },
        ["@variable.parameter"] = { fg = M.base_30.purple },
    },
}

M = require("base46").override_theme(M, "toxnil")

return M
