return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function()
    local dashboard = require 'alpha.themes.startify'
    local logo = [[
        ██████╗ ██╗███╗   ██╗ ██████╗      ██████╗██╗  ██╗██╗██╗     ██╗     ██╗███╗   ██╗ ██████╗ 
        ██╔══██╗██║████╗  ██║██╔════╝     ██╔════╝██║  ██║██║██║     ██║     ██║████╗  ██║██╔════╝ 
        ██████╔╝██║██╔██╗ ██║██║  ███╗    ██║     ███████║██║██║     ██║     ██║██╔██╗ ██║██║  ███╗
        ██╔══██╗██║██║╚██╗██║██║   ██║    ██║     ██╔══██║██║██║     ██║     ██║██║╚██╗██║██║   ██║
        ██████╔╝██║██║ ╚████║╚██████╔╝    ╚██████╗██║  ██║██║███████╗███████╗██║██║ ╚████║╚██████╔╝
        ╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝      ╚═════╝╚═╝  ╚═╝╚═╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ 
      ]]

    dashboard.section.header.val = vim.split(logo, '\n')
    dashboard.opts.layout[1].val = 8

    return dashboard
  end,
  config = function(_, dashboard)
    require('alpha').setup(dashboard.opts)
  end,
}
