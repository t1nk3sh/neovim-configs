return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {

			[[███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   ]],
			[[███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ ]],
			[[███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███ ]],
			[[███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███ ]],
			[[███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███ ]],
			[[███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███ ]],
			[[███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███ ]],
			[[ ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  ]],
		}
		dashboard.section.buttons.val = {
			dashboard.button("e", "New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("SPC s f", "[S]earch [F]iles"),
			dashboard.button("SPC s g", "[S]earch by [G]rep"),
			dashboard.button("SPC s k", "[S]earch [K]eymaps"),
			dashboard.button("SPC s h", "[S]earch [H]elp"),
			dashboard.button("q", "[Q]uit NVIM", ":qa<CR>"),
		}
		alpha.setup(dashboard.opts)
	end,
}
