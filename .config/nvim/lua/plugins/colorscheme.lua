return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    require("catppuccin").setup({
      flavour = "latte",
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
        blink_cmp = true,
        snacks = true,
      },
    })
  end,
}
