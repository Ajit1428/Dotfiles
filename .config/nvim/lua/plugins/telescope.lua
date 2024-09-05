return {
  "telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({
          cwd = require("lazy.core.config").options.root,
        })
      end,
      desc = "Find plugin file",
    },
    {
      ";f",
      function()
        local builtin = require("telescope.builtin")
        builtin.find_files({
          no_ignore = false,
          hidden = true,
        })
      end,
      desc = "Lists files in your current working directoru, respects .gitignore",
    },
    {
      ";r",
      function()
        local builtin = require("telescope.builtin")
        builtin.live_grep({
          additional_args = { "--hidden" },
        })
      end,
      desc = "Search for a string in your current working directory and get results live as you type, respects .gitignore",
    },
    {
      ";e",
      function()
        local builtin = require("telescope.builtin")
        builtin.diagnostics()
      end,
      desc = "Lists Diagnostics for all open buffers or a specific buffer",
    },
    {
      ";s",
      function()
        local builtin = require("telescope.builtin")
        builtin.treesitter()
      end,
      desc = "Lists functions names, variables, from Treesitter",
    },
    {
      "sf",
      function()
        local telescope = require("telescope")

        local function telescope_buffer_dir()
          return vim.fn.expand("%:p:h")
        end

        telescope.extensions.file_browser.file_browser({
          path = "%:p:h",
          cwd = telescope_buffer_dir(),
          respect_gitignore = false,
          hidden = true,
          grouped = true,
          previewer = false,
          initial_mode = "normal",
          layout_config = { height = 40 },
        })
      end,
      desc = "Open file browser with the path of the current buffer",
    },
  },

  config = function(_, opts)
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local fb_actions = require("telescope").extensions.file_browser.actions

    opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
      wrap_results = true,
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      mapping = {
        n = {},
      },
    })
    opts.pickers = {
      diagnostics = {
        theme = "ivy",
        initial_mode = "normal",
        layout_config = {
          preview_cutoff = 9999,
        },
      },
    }
    opts.extensions = {
      file_browser = {
        theme = "dropdown",
        --disables netrw and use telescope-file-browser in its place
        hijack_netrw = true,
        mappings = {
          --your custom insert mode mapping
          ["n"] = {
            --your custom normal mode mappings
            ["N"] = fb_actions.create,
            ["h"] = fb_actions.goto_parent_dir,
            ["/"] = function()
              vim.cmd("startinsert")
            end,
            ["<C-u>"] = function(prompt_buffer)
              for i = 1, 10 do
                actions.move_selection_previous(prompt_buffer)
              end
            end,
            ["<C-d>"] = function(prompt_buffer)
              for i = 1, 10 do
                actions.move_selection_next(prompt_buffer)
              end
            end,
            ["<PageUp>"] = actions.preview_scrolling_up,
            ["<PageDown>"] = actions.preview_scrolling_down,
          },
        },
      },
    }
    telescope.setup(opts)
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("file_browser")
  end,
}
