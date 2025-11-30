return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local which_key = require("which-key")
		which_key.setup({
			preset = "helix",
		})

		which_key.add({
			{ "<leader>/", group = "Comments" },
			{ "<leader>/_", hidden = true },

			{ "<leader>b", group = "[B]uffer" },
			{ "<leader>b_", hidden = true },

			{ "<leader>c", group = "[C]ode" },
			{ "<leader>c_", hidden = true },
			{ "<leader>cd", group = "[C]ode [D]ocument" },
			{ "<leader>cd_", hidden = true },
			{ "<leader>cw", group = "[C]ode [W]orkspace" },
			{ "<leader>cw_", hidden = true },
			{ "<leader>ct", group = "[C]ode [T]oggle"},
			{ "<leader>ct_" , hidden = true},

			{ "<leader>d", group = "[D]ebug" },
			{ "<leader>d_", hidden = true },

			{ "<leader>e", group = "[E]xplorer" },
			{ "<leader>e_", hidden = true },

			{ "<leader>f", group = "[F]ind" },
			{ "<leader>f_", hidden = true },

			{ "<leader>g", group = "[G]it" },
			{ "<leader>g_", hidden = true },
			{ "<leader>gt", group = "[G]it [T]oggle" },
			{ "<leader>gt_", hidden = true },

			{ "<leader>w", group = "[W]indow" },
			{ "<leader>w_", hidden = true },
			{ "<leader>ws", group = "[W]indow [S]plit" },
			{ "<leader>w_", hidden = true },

			{ "<leader>t", group = "[T]ab" },
			{ "<leader>t_", hidden = true },

			{ "<leader>v", group = "[V]isual" },
			{ "<leader>v_", hidden = true },
		})
	end,
}
