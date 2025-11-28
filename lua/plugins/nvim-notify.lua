return {
	"rcarriga/nvim-notify",
	lazyload = false,
	config = function()
		vim.notify = require("notify")
	end,
}
