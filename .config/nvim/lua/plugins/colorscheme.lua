return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  opts = {
    transparent_background = true,
  },
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      term_colors = true,
      highlight_overrides = {
        mocha = function(colors)
          return {
            Comment = {
              fg = "#00ff7f",
            },
            CursorLine = {
              bg = colors.surface2,
            },
            Visual = {
              bg = "#00A513",
            },
          }
        end,
      },
      integrations = {
        indent_blankline = {
          enabled = true,
          scope_color = "peach",
        },
      },
    })
  end,
}
