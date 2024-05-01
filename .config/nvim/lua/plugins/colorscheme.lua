return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    require("catppuccin").setup({
      highlight_overrides = {
        mocha = function()
          return {
            Comment = {
              fg = "#00ff7f",
            },
          }
        end,
      },
    })
  end,
}
