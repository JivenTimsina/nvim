return {
  cmd = { 'lua-language-server', '--background-index' },
  root_markers = { 'compile_commands.json', 'compile_flags.txt' },
  filetypes = {'lua'},
	settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim', 'use', 'packer' }, -- disable global declaration errors for these keywords
      },
    },
  },
}

