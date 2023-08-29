vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps
keymap.set("i", "jk", "<ESC>") -- escape key for insert mode
keymap.set("n", "<leader>nh", ":nohl<CR>") -- remove search highlights
-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- keymap.set("n", "<leader>bo", "<cmd>enew<CR>", { desc = "Open new buffer" }) -- open new tab
-- keymap.set("n", "<leader>bx", "<cmd>bunload<CR>", { desc = "Close current buffer" }) -- close current tab
-- keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Go to next buffer" }) --  go to next tab
-- keymap.set("n", "<leader>bp", "<cmd>bp<CR>", { desc = "Go to previous buffer" }) --  go to previous tab

-- useful keymaps that are not listed
--
-- **************** NVIM SURROUND: https://github.com/kylechui/nvim-surround *********************
-- Surround word or block with text
-- ys<movement><key-to-surround-with>
--
-- Remove text around words or block
-- ds<key-to-remove>
--
-- Change text around words or block
-- cs<key-to-change>
--
--
-- **************** REPLACEWITHREGISTER https://github.com/vim-scripts/ReplaceWithRegister *********
-- yw to copy text
-- gr<movement> to replace
