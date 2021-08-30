local M = {
   ui = {
      theme = "onedark",
      fav_themes = { "onedark", "gruvchad" }, -- for theme toggle
      theme_toggler = false,
      hidden_statusline = {
         -- these are filetypes, not pattern matched
         "NvimTree",
         "toggleterm",
      }
   }
}

return M
