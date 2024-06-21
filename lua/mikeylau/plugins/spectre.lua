return {
	"nvim-pack/nvim-spectre",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local spectre = require("spectre")

		spectre.setup()
	end,
}
