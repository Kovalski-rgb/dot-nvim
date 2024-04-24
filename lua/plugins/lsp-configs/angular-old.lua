return {
	"Everduin94/nvim-quick-switcher",

	config = function ()
		local function find(file_regex, opts)
			return function() require('nvim-quick-switcher').find(file_regex, opts) end
		end



		-- Angular binds
		vim.api.nvim_create_autocmd( {'UIEnter'}, {
			callback = function (event)
				local is_angular = next(vim.fs.find({ "angular.json"}, { upward = true }))

				if is_angular then
					-- goto CSS/style files
					vim.keymap.set("n", "<leader>gtc", find('.+css|.+scss|.+sass', { regex = true, prefix = 'full' }), opts)

					-- goto test files
					vim.keymap.set("n", "<leader>gtt", find('.+spec', { regex = true, prefix = 'full' }), opts)

					vim.keymap.set("n", "<leader>gth", find('.component.html'), opts)	-- goto html
					vim.keymap.set("n", "<leader>gts", find('.component.ts'), opts)	-- goto script
					vim.keymap.set("n", "<leader>gtm", find('.module.ts'), opts)	-- goto module
					vim.keymap.set("n", "<leader>gtv", find('.service.ts'), opts)	-- goto serVice
				end

			end
		})
	end


}
