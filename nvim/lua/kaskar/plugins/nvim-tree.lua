-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- transparent nvim-tree
vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])

-- configure nvim-tree
nvimtree.setup({
	update_focused_file = {
		enable = true,
	},
	-- change folder arrow icons
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "→", -- arrow when folder is closed
					arrow_open = "↓", -- arrow when folder is open
					default = "",
					open = "",
				},
				git = {
					unstaged = "☯",
				},
			},
		},
	},
	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	-- 	git = {
	-- 		ignore = false,
	-- 	},
	view = {
		width = 40,
		relativenumber = true,
		centralize_selection = true,
		side = "right",
	},
})
