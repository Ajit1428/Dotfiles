return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      term_colors = true,
      highlight_overrides = {
        mocha = function()
          return {
            Comment = {
              fg = "#00ff7f",
            },
            CursorLine = {
              bg = "#45475a",
            },
          }
        end,
      },
    })
  end,
}
