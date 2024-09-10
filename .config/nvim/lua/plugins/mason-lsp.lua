return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "eslint-lsp",
      "eslint_d",
      "js-debug-adapter",
      "lua-language-server",
      "prettier",
      "prettierd",
      "stylua",
      "selene",
      "luacheck",
      "shellcheck",
      "shfmt",
      "svelte-language-server",
      "tailwindcss-language-server",
      "vtsls",
    })
  end,
}
