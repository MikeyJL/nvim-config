return {
	"phaazon/hop.nvim",
	branch = "v2",
	config = function()
		local hop = require("hop")

		hop.setup()

		local keymap = vim.keymap

		keymap.set("n", "<leader>h", "<cmd>lua require'hop'.hint_char1()<cr>", { desc = "Start hopping" })
	end,
}
