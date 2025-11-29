-- et leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)
vim.keymap.set("n", "<leader>s", "<cmd> w <CR>", { noremap = true, silent = true, desc = "[S]ave file" })

-- save file without auto-formatting
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

-- quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)
vim.keymap.set("n", "<leader>q", "<cmd> q <CR>", {noremap = true, silent = true, desc = "[Q]uit file"})

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts) vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { noremap = true, silent = true, desc = "[B]uffer [N]ext" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { noremap = true, silent = true, desc = "[B]uffer [P]revious" })
vim.keymap.set("n", "<leader>bq", ":bdelete!<CR>", { noremap = true, silent = true, desc = "[B]uffer [Q]uit" }) -- close buffer
vim.keymap.set("n", "<leader>bo", "<cmd> enew <CR>", { noremap = true, silent = true, desc = "[B]uffer [O]pen new" }) -- new buffer

-- Window management
vim.keymap.set("n", "<leader>wsl", "<C-w>v", { noremap = true, silent = true, desc = "[W]indow [S]plit [V]ertically" }) -- split window vertically
vim.keymap.set(
	"n",
	"<leader>wsh",
	"<C-w>s",
	{ noremap = true, silent = true, desc = "[W]indow [S]plit [H]orizontally" }
) -- split window horizontally
vim.keymap.set("n", "<leader>wse", "<C-w>=", { noremap = true, silent = true, desc = "[W]indow [S]plit [E]qual " }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts) -- close current split window

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { noremap = true, silent = true, desc = "[T]ab [O]pen new" }) -- open new tab
vim.keymap.set("n", "<leader>tq", ":tabclose<CR>", { noremap = true, silent = true, desc = "[T]ab [Q]uit" }) -- { desc = "[T]ab [Q]uit" } -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", { noremap = true, silent = true, desc = "[T]ab [N]ext" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", { noremap = true, silent = true, desc = "[T]ab [P]revious" }) --  go to previous tab

-- Toggle line wrapping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)

-- Diagnostic keymaps
vim.keymap.set("n", "[d", function()
	vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Go to previous diagnostic message" })

vim.keymap.set("n", "]d", function()
	vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Go to next diagnostic message" })

-- vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
