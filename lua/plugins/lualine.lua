return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local mode = {
			"mode",
			fmt = function(str)
				return " " .. str
				-- return ' ' .. str:sub(1, 1) -- displays only the first character of the mode
			end,
		}

		local filename = {
			"filename",
			file_status = true, -- displays file status (readonly status, modified status)
			path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
		}

		local hide_in_width = function()
			return vim.fn.winwidth(0) > 100
		end

		local diagnostics = {
			"diagnostics",
			sources = { "nvim_diagnostic" },
			sections = { "error", "warn" },
			symbols = { error = " ", warn = " ", info = " ", hint = " " },
			colored = false,
			update_in_insert = false,
			always_visible = false,
			cond = hide_in_width,
		}

		local diff = {
			"diff",
			colored = false,
			symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
			cond = hide_in_width,
		}

		require("lualine").setup({
			options = {
				-- Use web devicons if you have a nerdfont installed
				icons_enabled = true,
				-- Set the theme to dracula, lualine documentation has other themes available as well
				theme = "nord", -- Set theme based on environment variable
				-- Some useful glyphs:
				-- https://www.nerdfonts.com/cheat-sheet
				--        
				-- Separate sections with solid triangles
				section_separators = { left = "", right = "" },
				-- Separate components of lua line with chevrons
				component_separators = { left = "", right = "" },
				-- disable the status line and winbarj
				disabled_filetypes = { "alpha", "neo-tree" },
				-- Don't focus lualine on NvimTree
				ignore_focus = { "NvimTree" },
				-- Always divide lualine in the middle
				always_divide_middle = true,
				-- Disable global status
				globalstatus = false,
				-- Refresh every 1000 miliseconds
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			-- Setup what each lualine section will contain
			-- sections start at a on the left and go to z on the right
			sections = {
				-- display the current mode in section a
				lualine_a = { mode },
				-- display the current git branch in section b
				lualine_b = { "branch" },
				-- display the filename in section c
				lualine_c = { filename },
				-- display the file encoding diagnostics, diff and (encoding,filetype) on window conditions in section x
				lualine_x = {
					diagnostics,
					diff,
					{ "encoding", cond = hide_in_width },
					{ "filetype", cond = hide_in_width },
				},
				-- display where you are at in the file in section y
				lualine_y = { "progress" },
				-- display exact location of the cursor in section z
				lualine_z = { "location" },
			},
			-- Setup what each section will contain in inactive buffers
			inactive_sections = {
				-- display nothing in sections a and b
				lualine_a = {},
				lualine_b = {},
				-- display the file name in section c
				lualine_c = { { "filename", path = 1 } },
				-- display the exact location of the cursor in section x
				lualine_x = { { "location", padding = 0 } },
				-- display nothing in sections y and z
				lualine_y = {},
				lualine_z = {},
			},
			-- Use default values for tabline, winbar, inactive winbar and extensions
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			-- use fugitive for extensions
			extensions = { "fugitive" },
		})
	end,
}
