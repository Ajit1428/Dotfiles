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
              bg = colors.overlay0,
            },
            Visual = {
              bg = colors.green,
              fg = colors.base,
            },
          }
        end,
      },
    })
  end,
}
