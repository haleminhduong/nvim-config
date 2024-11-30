local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"folke/which-key.nvim",
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{ 'rose-pine/neovim', name = 'rose-pine' },
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{'theprimeagen/harpoon'},
	{'mbbill/undotree'},
	{'tpope/vim-fugitive'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
    {'simrat39/rust-tools.nvim'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{'theprimeagen/vim-be-good'},
        -- Completion framework:
    {'hrsh7th/nvim-cmp' },

    -- LSP completion source:
    {'hrsh7th/cmp-nvim-lsp'},

    -- Useful completion sources:
    {'hrsh7th/cmp-nvim-lua'},
    {'hrsh7th/cmp-nvim-lsp-signature-help'},
    {'hrsh7th/cmp-vsnip'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/vim-vsnip'},
})
