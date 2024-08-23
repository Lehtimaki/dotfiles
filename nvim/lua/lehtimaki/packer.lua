vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')

  use({
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      {'neovim/nvim-lspconfig'},
      {
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'},

      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  })

  use('nvim-treesitter/nvim-treesitter', {
    run = ':TSUpdate',
  })

  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  })

  use('theprimeagen/harpoon')

  use({
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  })

  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  -- Theme
  use({
    "catppuccin/nvim",
    as = "catppuccin",
  })
  --[[
  use({
    'hardhackerlabs/theme-vim',
    config = function()
      vim.cmd.colorscheme 'hardhacker'
    end
  })
  ]]--
end)
