return {
	"neovim/nvim-lspconfig",

	dependencies = {
		"williamboman/mason.nvim",
	},

	config = function()
		-- local instances
		local lspconfig	= require("lspconfig")
	 	local mason = require("mason")

		-- setups
		mason.setup()
		lspconfig.pyright.setup({})

	end
}
