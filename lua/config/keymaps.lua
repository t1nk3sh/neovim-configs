-- set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)
vim.keymap.set("n", "<leader>s", "<cmd> w <CR>", { noremap = true, silent = true, desc = "[S]ave file" })

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
vim.keymap.set("n", "<leader>bl", ":bnext<CR>", { noremap = true, silent = true, desc = "[B]uffer next [L]" })
vim.keymap.set("n", "<leader>bh", ":bprevious<CR>", { noremap = true, silent = true, desc = "[B]uffer Previous [H]" })
vim.keymap.set("n", "<leader>bq", ":bdelete!<CR>", { noremap = true, silent = true, desc = "[B]uffer [Q]uit" }) -- close buffer
vim.keymap.set("n", "<leader>bn", "<cmd> enew <CR>", { noremap = true, silent = true, desc = "[B]uffer [N]ew" }) -- new buffer

-- Window management
vim.keymap.set("n", "<leader>wv", "<C-w>v", { noremap = true, silent = true, desc = "[W]indow split [V]ertically" }) -- split window vertically
vim.keymap.set(
	"n",
	"<leader>wh",
	"<C-w>s",
	{ noremap = true, silent = true, desc = "[W]indow Split [H]orizontally" }
) -- split window horizontally
vim.keymap.set("n", "<leader>we", "<C-w>=", { noremap = true, silent = true, desc = "[W]indow Split [E]qual " }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>wq", ":close<CR>", {noremap = true, silent = true, desc = "[W]indow Split [Q]uit"}) -- close current split window

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- Tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { noremap = true, silent = true, desc = "[T]ab [N]ew" }) -- open new tab
vim.keymap.set("n", "<leader>tq", ":tabclose<CR>", { noremap = true, silent = true, desc = "[T]ab [Q]uit" }) -- { desc = "[T]ab [Q]uit" } -- close current tab
vim.keymap.set("n", "<leader>tl", ":tabn<CR>", { noremap = true, silent = true, desc = "[T]ab next [L]" }) --  go to next tab
vim.keymap.set("n", "<leader>th", ":tabp<CR>", { noremap = true, silent = true, desc = "[T]ab previous [H]" }) --  go to previous tab

-- Toggle line wrapping
vim.keymap.set("n", "<leader>vw", "<cmd>set wrap!<CR>", {noremap = true, silent = true, desc = "[V]isual [W]arpping"})

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
