return{
	"hrsh7th/nvim-cmp",

	dependencies = {
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",

		-- chosen required snippet engines
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},


	config = function()
		local cmp = require('cmp')
		local cmp_select = { behavior = cmp.SelectBehavior.Select }
		cmp.setup({

		    -- snippet engine
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},

			-- configs da janela
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},

			-- maps
			mapping = cmp.mapping.preset.insert({
				['<C-k>'] = cmp.mapping.scroll_docs(-4),
				['<C-j>'] = cmp.mapping.scroll_docs(4),

				['<C-Space>'] = cmp.mapping.complete(),
				['<Esc>'] = cmp.mapping.abort(),

				['<M-k>'] = cmp.mapping.select_prev_item(cmp_select),
				['<M-j>'] = cmp.mapping.select_next_item(cmp_select),
				['<CR>'] = cmp.mapping.confirm({ select = true }),
			}),

			-- fonte para popular os snippets
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
			} , {
				{ name = 'buffer' },
			})
		})

		-- setting up lsps
		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		local lspconfig	= require("lspconfig")
	 	local mason_lsp = require("mason-lspconfig")

		-- half lsp config/cmp config - auto sets up mason installed LSPs, and sets then with cmp
		mason_lsp.setup_handlers({
			function(server)
				lspconfig[server].setup({
					capabilities = capabilities
				})
			end,
		})

	end,
}
