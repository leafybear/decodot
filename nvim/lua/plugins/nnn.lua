require("nnn").setup {
	command = "nnn -o -C",
	session = 'local',
	-- set_default_mappings = 0,
	-- replace_netrw = 1,
	-- action = {
	-- 	["<c-t>"] = "tab split",
	-- 	["<c-s>"] = "split",
	-- 	["<c-v>"] = "vsplit",
	-- 	["<c-o>"] = copy_to_clipboard,
	-- },
	-- layout = { left= '~20%' }
	layout = { window = { width = 0.5,
				height = 0.6,
				hightlight = "Debug" } }
}
