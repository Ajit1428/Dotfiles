return {
  "catppuccin/nvim",
  priority = 1400,
  lazy = true,
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
