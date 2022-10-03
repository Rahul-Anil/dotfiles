return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- neogit 
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  --Theme
  use { "catppuccin/nvim", as = "catppuccin" }
  use("gruvbox-community/gruvbox")
  use("folke/tokyonight.nvim")
  use ({ 'projekt0n/github-nvim-theme' })

  -- Nvim native lsp
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/nvim-cmp")
  use("onsails/lspkind-nvim")
  use("nvim-lua/lsp_extensions.nvim")
  use("glepnir/lspsaga.nvim")
  use("simrat39/symbols-outline.nvim")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")

  -- treesitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

end)