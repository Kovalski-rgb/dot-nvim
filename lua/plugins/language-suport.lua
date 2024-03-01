return {
	"neovim/nvim-lspconfig",

	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},

	config = function()
		-- local instances
		local lspconfig	= require("lspconfig")
	 	local mason = require("mason")
	 	local mason_lsp = require("mason-lspconfig")

		-- setups
		mason.setup()
		mason_lsp.setup()
		lspconfig.pyright.setup({})

	end
}
