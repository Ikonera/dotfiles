local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  Packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- Packer itself
  use 'wbthomason/packer.nvim'

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  -- Colorschemes
  use 'folke/tokyonight.nvim'
  use "EdenEast/nightfox.nvim"

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

  -- Nnn opener
  use 'luukvbaal/nnn.nvim'

  -- Git
  use 'airblade/vim-gitgutter'
  use 'kdheepak/lazygit.nvim'

  -- LSP
  use {
	  'neovim/nvim-lspconfig',
	  'williamboman/nvim-lsp-installer'
  }

  use {'kkharji/lspsaga.nvim', branch = "nvim6.0"}

  use 'folke/lsp-colors.nvim'
  require"lsp-colors".setup({
	Error = "#db4b4b",
	Warning = "#e0af68",
	Information = "#0db9d7",
	Hint = "#10B981"
  })

  use 'onsails/lspkind-nvim'

  -- Completion
  use {
	  'hrsh7th/cmp-nvim-lsp',
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
  use {'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use { "nvim-telescope/telescope-project.nvim" }

  -- Others...
  use 'kyazdani42/nvim-web-devicons'
  use {'folke/trouble.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
  use 'arkav/lualine-lsp-progress'
  use 'folke/lua-dev.nvim'
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

end)

