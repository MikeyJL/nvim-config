return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"css",
				"dockerfile",
				"dot",
				"git_config",
				"gitignore",
				"graphql",
				"groovy",
				"html",
				"java",
				"javascript",
				"json",
				"liquid",
				"lua",
				"markdown",
				"markdown_inline",
				"nasm",
				"prisma",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
				"yaml",
			},
			ignore_install = {},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			modules = {},
		})
	end,
}
