return {
	-- Hints keybinds
	"folke/which-key.nvim",
	dependencies = {
		"nvim-mini/mini.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	event = "VeryLazy",
	opts = {
		preset = "helix", ---Which key suggestion appears on right side of screen
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
