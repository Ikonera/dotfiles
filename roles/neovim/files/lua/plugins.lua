local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  Packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup({function(use)
  -- Packer itself
  use 'wbthomason/packer.nvim'

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  -- floaterm
  use 'voldikss/vim-floaterm'

  -- Colorschemes
  use 'folke/tokyonight.nvim'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'p00f/nvim-ts-rainbow'
  use 'lewis6991/nvim-treesitter-context'
  use 'windwp/nvim-ts-autotag'

  -- Pairing
  use {'windwp/nvim-autopairs'}
  use 'terrortylor/nvim-comment'

  -- Prettier
  use 'MunifTanjim/prettier.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- LSP
  use {
	  'neovim/nvim-lspconfig',
	  'williamboman/mason.nvim',
	  'williamboman/mason-lspconfig.nvim'
  }
  use 'onsails/lspkind.nvim'

  use {'glepnir/lspsaga.nvim', branch = "main"}

  use 'pantharshit00/vim-prisma'

  use 'folke/lsp-colors.nvim'
  require"lsp-colors".setup({
	Error = "#db4b4b",
	Warning = "#e0af68",
	Information = "#0db9d7",
	Hint = "#10B981"
  })

  -- Completion
  use {
	  'hrsh7th/cmp-nvim-lsp',
	  'hrsh7th/cmp-nvim-lua',
	  'hrsh7th/cmp-buffer',
	  'hrsh7th/cmp-path',
	  'hrsh7th/cmp-cmdline',
	  'hrsh7th/nvim-cmp'
  }

  -- Snippet engines
  use {
	  'hrsh7th/cmp-vsnip',
	  'hrsh7th/vim-vsnip'
  }

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim',
	  requires = {
		  'nvim-lua/plenary.nvim',
		  'nvim-telescope/telescope-github.nvim',
		  "nvim-telescope/telescope-file-browser.nvim",
		  "nvim-telescope/telescope-project.nvim",
		  "nvim-telescope/telescope-media-files.nvim",
		  "cljoly/telescope-repo.nvim",
	  }
  }

  -- Others...
  use 'kyazdani42/nvim-web-devicons'
  use {'folke/trouble.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
  use 'arkav/lualine-lsp-progress'
  use 'folke/neodev.nvim'
  use 'davidgranstrom/nvim-markdown-preview'
  use 'rcarriga/nvim-notify'
  use 'norcalli/nvim-colorizer.lua'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if Packer_bootstrap then
    require('packer').sync()
  end

  vim.cmd([[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
  ]])

  vim.cmd [[ autocmd BufWritePost .tmux.conf execute ':!tmux source-file %' ]]

end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})
