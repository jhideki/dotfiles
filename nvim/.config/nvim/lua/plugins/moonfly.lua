return {
	{
		"bluz71/vim-moonfly-colors",
		lazy = false,
		name = "moonfly",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("moonfly")
		end,
	},
}
