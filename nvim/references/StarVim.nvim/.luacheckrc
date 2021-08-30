-- vim: ft=lua tw=80

stds.nvim = {
	globals = {
		"Sv",
		vim = { fields = { "g", "opt" } },
		"CONFIG_PATH",
		"CACHE_PATH",
		"DATA_PATH",
		"TERMINAL",
		"USER",
		os = { fields = { "capture" } },
		"Config",
		"packer",
		"packer_plugins",
	},
	read_globals = {
		"jit",
		"os",
		"vim",
		-- vim = { fields = { "cmd", "api", "fn", "o" } },
	},
}
std = "lua51+nvim"

-- Don't report unused self arguments of methods.
self = false

-- Rerun tests only if their modification time changed.
cache = true

ignore = {
	"631", -- max_line_length
	"212/_.*", -- unused argument, for vars with "_" prefix
}
