vim.schedule(function()
  local highlight = {
    'RainbowDelimiterRed',
    'RainbowDelimiterYellow',
    'RainbowDelimiterGreen',
    'RainbowDelimiterCyan',
    'RainbowDelimiterBlue',
    'RainbowDelimiterViolet',
  }

  local hooks = require 'ibl.hooks'

  vim.g.rainbow_delimiters = { highlight = highlight }
  require('ibl').setup { scope = { highlight = highlight } }

  hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
end)
return {
  'lukas-reineke/indent-blankline.nvim',
}
