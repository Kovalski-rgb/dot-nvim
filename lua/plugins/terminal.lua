return {

	"voldikss/vim-floaterm",

	config = function ()

		vim.keymap.set('n', '<leader>tt', ':FloatermNew<cr>')
--		vim.keymap.set('n', '<M>th', ':FloatermToggle<cr>')

	end,

}
