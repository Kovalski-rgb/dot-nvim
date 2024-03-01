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
		mason_lsp.setup({
			ensure_installed = {
				'lua_ls',
				'ast_grep',
				'angularls'
			}
		})
		-- auto setup installed LSPs provided by Mason
		-- function is running on ./auto-completion.lua
		-- mason_lsp.setup_handlers({
		-- 	function(server)
		-- 		lspconfig[server].setup({})
		-- 	end,
		-- })

		-- setup 'vim' as global to stop warning spam on sets and maps
		-- setup 'vim' as a global for lua lsp	
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { 'vim' }
					}
				}
			}
		})
	end
}

