-- credits to original theme https://rosepinetheme.com/
-- this is a modified version of it

---@type Base46Table
local M = {}

-- UI
M.base_30 = {
  white = "#d73586",
  black = "#ffffff", -- usually your theme bg
  darker_black = "#ffffff", -- 6% darker than black
  black2 = "#ffffff", -- 6% lighter than black
  one_bg = "#ffffff", -- 10% lighter than black
  one_bg2 = "#ffffff", -- 6% lighter than one_bg2
  one_bg3 = "#ffffff", -- 6% lighter than one_bg3
  grey = "#e0e0e0", -- 40% lighter than black (the % here depends so choose the perfect grey!)
  grey_fg = "#e8c8c8", -- 10% lighter than grey
  grey_fg2 = "#000000", -- 5% lighter than grey
  light_grey = "#0e0e0e",
  red = "#ff3b82",
  baby_pink = "#d73586",
  pink = "#d73586",
  line = "#ffffff", -- 15% lighter than black
  green = "#000000",
  vibrant_green = "#000000",
  nord_blue = "#438dff",
  blue = "#438dff",
  yellow = "#d6ac2d",
  sun = "#d6ac2d",
  purple = "#9643ff",
  dark_purple = "#9643ff",
  teal = "#438dff",
  orange = "#ff853f",
  cyan = "#438dff",
  statusline_bg = "#ffffff",
  lightbg = "#f9f9f9",
  pmenu_bg = "#907aa9",
  folder_bg = "#000000",
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "#ffffff",
  base01 = "#ffe4f0",
  base02 = "#ffc8e0",
  base03 = "#e8c8c8",
  base04 = "#ffffff",
  base05 = "#d73586",
  base06 = "#d73586",
  base07 = "#ffffff",
  base08 = "#438dff",
  base09 = "#9643ff",
  base0A = "#ff3b82",
  base0B = "#000000",
  base0C = "#ff6565",
  base0D = "#d6ac2d",
  base0E = "#ff6565",
  base0F = "#777777",
}

-- set the theme type whether is dark or light
M.type = "light"

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
