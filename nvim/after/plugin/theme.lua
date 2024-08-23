local theme = require('catppuccin')

theme.setup({
  flavour = 'macchiato',
  show_end_of_buffer = true,
  color_overrides = {
    macchiato = {
      base = "#000000",
      mantle = "#000000",
      crust = "#000000"
    }
  },
})

vim.cmd.colorscheme('catppuccin')
