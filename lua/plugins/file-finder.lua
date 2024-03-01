return {
	"nvim-telescope/telescope.nvim",
	tag= '0.1.5',

	dependencies = {
		-- only required package
		"nvim-lua/plenary.nvim",

		-- required para live_grep
		"BurntSushi/ripgrep",
		-- telescope sorter
		"nvim-telescope/telescope-fzf-native.nvim",
		-- finder
		"sharkdp/fd",
		-- finder/preview
		"nvim-treesitter/nvim-treesitter",
	},

	config = function ()
		local telescope = require('telescope')
		local builtin = require('telescope.builtin')

		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

		telescope.setup({
			defaults = {
				file_ignore_patterns = {
					-- for angular/node projects
					"node%_modules/.*", "dist/.*", "coverage/.*", ".vscode/.*", "e2e/.*"
				}
			}
		})


	end

}
