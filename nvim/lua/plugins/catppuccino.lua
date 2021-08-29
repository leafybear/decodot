local present, catppuccino = pcall(require, "catppuccino")
if not present then
    return
end

-- configure
catppuccino.setup(
    {
		colorscheme = "catppuccino",
		transparency = false,
		styles = {
			comments = "italic",
			functions = "italic",
			keywords = "italic",
			strings = "NONE",
			variables = "NONE",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				styles = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic"
				}
			},
			lsp_trouble = false,
			lsp_saga = false,
			gitgutter = false,
			gitsigns = false,
			telescope = true,
			nvimtree = {
				enabled = false,
				show_root = false,
			},
			which_key = false,
			indent_blankline = false,
			dashboard = true,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			bufferline = true,
			markdown = false,
		}
	}
)

-- load it
catppuccino.load()
