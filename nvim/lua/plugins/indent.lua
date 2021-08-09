local present, indent = pcall(require, "indent_blankline")
if not present then
return
end
indent.setup() {
    enabled = 1,
	char = "|",
	bufftype_exclude = {"termminal"},
        filetype_exclude = {"help", "terminal", "dashboard", "packer"},
	indent_blankline_space_char = "."
}
