-- Use your favorite package manager to install, for example in lazy.nvim
--  Optionally, you can also install nvim-telescope/telescope.nvim to use some search functionality.
return {
	{
		"sourcegraph/sg.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim", --[[ "nvim-telescope/telescope.nvim ]]
		},

		-- If you have a recent version of lazy.nvim, you don't need to add this!
		build = "nvim -l build/init.lua",
		config = function()
			-- Sourcegraph configuration. All keys are optional
			require("sg").setup({
				-- Pass your own custom attach function
				--    If you do not pass your own attach function, then the following maps are provide:
				--        - gd -> goto definition
				--        - gr -> goto references
				--			on_attach = your_custom_lsp_attach_function,
			})
		end,
	},
}
