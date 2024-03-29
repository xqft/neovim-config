require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },

	update_cwd = true,
	hijack_directories = {
		enable = true,
	},
	diagnostics = {
		enable = true,
	},
	update_focused_file = {
		enable = true,
	},
})
