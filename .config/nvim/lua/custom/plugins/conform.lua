return {
  'stevearc/conform.nvim',
  version = '*',
  dependencies = { 'mason.nvim' },
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        typescript = { { 'prettierd' } },
        typescriptreact = { { 'prettierd' } },
        javascript = { { 'prettierd' } },
        javascriptreact = { { 'prettierd' } },
        json = { { 'prettierd' } },
        html = { { 'prettierd' } },
        css = { { 'prettierd' } },
        rust = { { 'rustfmt' } },
      },
    }

    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = '*',
      callback = function(args)
        require('conform').format { bufnr = args.buf }
      end,
    })
  end,
}
