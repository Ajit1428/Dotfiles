return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "eslint-lsp",
      "hadolint",
      "prettierd",
      "shfmt",
      "stylua",
      "selene",
      "shellcheck",
      "delve",
      "sql-formatter",
    })
  end,
}
