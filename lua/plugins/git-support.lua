return {
	"lewis6991/gitsigns.nvim",

	dependencies = {
		-- running git on nvim editor (:G)
		"tpope/vim-fugitive"
	},


	config  = function ()

		local git = require('gitsigns')
		git.setup({
			current_line_blame_formatter = '\t<author> - | <author_time:%R> | ¬<summary>',
			current_line_blame_opts = {
		   		delay = 400,
			},
			current_line_blame = true
		})

	end

}
