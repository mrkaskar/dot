-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "jj", "<ESC>")
keymap.set("i", "kk", "<ESC>")

-- git
keymap.set("n", "<leader>gd", ":Gvdiff<CR>")
keymap.set("n", "gdh", ":diffget //2<CR>")
keymap.set("n", "gdl", ":diffget //3<CR>")

--resize
keymap.set("n", "<leader>h", ":vertical resize -5<CR>")
keymap.set("n", "<leader>l", ":vertical resize +5<CR>")
keymap.set("n", "<leader>k", ":resize +5<CR>")
keymap.set("n", "<leader>j", ":resize -5<CR>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
--keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
--keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
--keymap.set("n", "<leader>tx", ":tabc<CR>") --  close the tab

keymap.set("n", "<leader>tn", ":BufferNext<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":BufferPrevious<CR>") --  go to previous tab
keymap.set("n", "<leader>tx", ":BufferClose<CR>") --  close the tab

keymap.set("n", "<leader>th", ":BufferMovePrevious<CR>") --  move to left
keymap.set("n", "<leader>tl", ":BufferMoveNext<CR>") --  move to next

keymap.set("n", "<leader>tc", ":BufferCloseAllButCurrent<CR>")

keymap.set("n", "<leader>t1", ":BufferGoto 1<CR>")
keymap.set("n", "<leader>t2", ":BufferGoto 2<CR>")
keymap.set("n", "<leader>t3", ":BufferGoto 3<CR>")
keymap.set("n", "<leader>t4", ":BufferGoto 4<CR>")
keymap.set("n", "<leader>t5", ":BufferGoto 5<CR>")
keymap.set("n", "<leader>t6", ":BufferGoto 6<CR>")
keymap.set("n", "<leader>t7", ":BufferGoto 7<CR>")
keymap.set("n", "<leader>t8", ":BufferGoto 8<CR>")
keymap.set("n", "<leader>t9", ":BufferGoto 9<CR>")

-- line up and line down
keymap.set("n", "∆", ":m+<CR>==")
keymap.set("n", "˚", ":m-2<CR>==")
keymap.set("i", "∆", "<Esc>:m+<CR>==gi")
keymap.set("i", "˚", "<Esc>:m-2<CR>==gi")
keymap.set("v", "∆", ":m'>+<CR>gv=gv")
keymap.set("v", "˚", ":m-2<CR>gv=gv")
----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>ew", ":NvimTreeCollapseKeepBuffers<CR>") -- close all folders except buffers

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- jest testing
keymap.set("n", "<leader>ja", ":Jest<CR>")
keymap.set("n", "<leader>jf", ":JestFile<CR>")
keymap.set("n", "<leader>js", ":JestSingle<CR>")
keymap.set("n", "<leader>jc", ":JestCoverage<CR>")
