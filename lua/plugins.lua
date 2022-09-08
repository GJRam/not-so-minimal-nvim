local status, packer = pcall(require, 'packer')
if (not status) then
  print("packer not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'williamboman/nvim-lsp-installer'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'glepnir/lspsaga.nvim'
  use 'github/copilot.vim'
  use {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup()
      end, 100)
    end,
  }
  use { 'zbirenbaum/copilot-cmp', module = "copilot_cmp" }
  use { "catppuccin/nvim", as = "catppuccin" }



  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

end)
