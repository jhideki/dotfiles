return {
	"simrat39/rust-tools.nvim",
	ft = "rust",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	config = function()
		local rt = require("rust-tools")
		rt.setup({
			tools = {
				inlay_hints = {
					auto = true,
					only_current_line = true,
				},
			},
		})
	end,
}
