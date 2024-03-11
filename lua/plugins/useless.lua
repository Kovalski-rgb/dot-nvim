return {

	"tamton-aquib/duck.nvim",
	dependencies = {
	"Eandrju/cellular-automaton.nvim",
},
	config = function ()

		vim.keymap.set('n', '<leader>pp', function() require("duck").hatch("🦆",10) end, {})
		vim.keymap.set('n', '<leader>pc', function() require("duck").cook() end, {})
		vim.keymap.set('n', '<leader>pa', function() require("duck").cook_all() end, {})
	end


}
