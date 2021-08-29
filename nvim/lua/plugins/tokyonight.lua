-- 
-- local present, tokyonight = pcall(require, "tokyonight")
-- if not present then
--     return
-- end
-- 
-- tokyonight.setup(
	vim.g.tokyonight_style = "storm"
	vim.g.tokyonight_italic_functions = true
	vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

	-- Load the colorscheme
	vim.cmd[[colorscheme tokyonight]]
-- )
