--    ___ _             _           
--   / _ \ |_   _  __ _(_)_ __  ___ 
--  / /_)/ | | | |/ _` | | '_ \/ __|
-- / ___/| | |_| | (_| | | | | \__ \
-- \/    |_|\__,_|\__, |_|_| |_|___/
--                |___/             
-- 

-- Check if Packer is available. Install it if not.
local present, _ = pcall(require, "plugins.packer")
local packer

if present then
    packer = require "packer"
else
    return false
end

local use = packer.use

vim.cmd("packadd packer.nvim")

return packer.startup(function()

	-- THEMES
	-- junegunn/seoul256.vim
	use { "folke/tokyonight.nvim",
		config = function() require "plugins.tokyonight" end }
	-- use("drewtempelmeyer/palenight.vim")
	-- use("pineapplegiant/spaceduck")
 	-- use{ "Pocco81/Catppuccino.nvim",
	--	config = function() require "plugins.catppuccino" end }

	-- Packer plugin manager
	use {'wbthomason/packer.nvim',
        event = "VimEnter", opt = true }
 
	-- NNN file manager inside of neovim
 	use { 'mcchrish/nnn.vim',
 		config = function() require "plugins.nnn" end }
		
	-- Simple line commenting
	use { "terrortylor/nvim-comment",
		cmd = "CommentToggle",
		config = function() require "plugins.comment" end }

	-- code formatter
	use { "sbdchd/neoformat",
	 	cmd = "Neoformat" }

	-- advanced syntax highlighting
	use { "nvim-treesitter/nvim-treesitter",
		event = "BufRead",
		config = function() require "plugins.treesitter" end }

	-- preview colors in code
	use { "norcalli/nvim-colorizer.lua",
		event = "BufRead",
		config = function() require "plugins.colorizer" end }

	-- dims inactive portions of the code you're editing
	use { "folke/twilight.nvim",
		config = function() require("twilight").setup { } end }

	-- dims your inactive windows
	use { "sunjon/shade.nvim" }

	-- smooth scrolling
    use { "karb94/neoscroll.nvim",
		event = "WinScrolled",
		config = function() require "plugins.neoscroll" end }

	-- -- show where your cursor moves when jumping large distances
	-- use { "edluffy/specs.nvim" }

	-- git status marks in gutter
	use { "airblade/vim-gitgutter" }

	-- -- displays a popup with possible key bindings of the command you started typing
	-- use { "folke/which-key.nvim",
	-- 	config = function() require("which-key").setup { } end }

	-- -- quickly bring up all modified files in a diffsplit
	-- use { "sindrets/diffview.nvim" }

	-- file icons
    use { "kyazdani42/nvim-web-devicons" }
    --	config = function() require "plugins.icons" end }
	
	use { 'hoob3rt/lualine.nvim',
		config = function() require "plugins.lualine" end }

	-- fancy tab bar
    use { "akinsho/nvim-bufferline.lua",
		config = function() require "plugins.bufferline" end }

	-- -- alternative to telescope for when it doesnt work
	-- use { "liuchengxu/vim-clap" }

    -- file picker dashboard
	use { "glepnir/dashboard-nvim",
		opt = true,
		cmd = { "Dashboard",
			"DashboardChangeColorscheme",
      		"DashboardFindFile",
      		"DashboardFindHistory",
      		"DashboardFindWord",
      		"DashboardJumpMarks",
      		"DashboardNewfile",
			"SessionLoad",
			"SessionSave" },
		setup = function() require "plugins.dashboard" end }

	-- fuzzy file finder
	use { "nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } } }

	-- A File Explorer For Neovim Written In Lua
	use { 'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons' }

	-- a Markdown editor for note taking in neovim
	-- depends on Telescope.nvim
	use { 'renerocksai/telekasten.nvim',
		requires = "nvim-telescope/telescope.nvim",
		config = function() require "plugins.telekasten" end }


end)
