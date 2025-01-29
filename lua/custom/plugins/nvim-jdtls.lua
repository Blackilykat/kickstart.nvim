vim.g.started_jdtls = false

vim.api.nvim_create_autocmd('BufAdd', {
  callback = function()
    if not vim.g.started_jdtls and vim.api.nvim_buf_get_name(0):match '.java$' then
      vim.g.started_jdtls = true

      local config = {
        cmd = { vim.fn.expand '~/.local/share/nvim/mason/bin/jdtls' },
        root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
      }
      require('jdtls').start_or_attach(config)
    end
  end,
  nested = true,
})

return {
  'mfussenegger/nvim-jdtls',
}
