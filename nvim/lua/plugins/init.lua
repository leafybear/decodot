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

return packer.startup(function()

	-- Packer plugin manager
	use {'wbthomason/packer.nvim',
            event = "VimEnter" }
 
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

	-- show whitespace characters and indentation
	use { "lukas-reineke/indent-blankline.nvim",
		event = "BufRead",
		setup = function() require "plugins.blankline" end }

	-- smooth scrolling
    use { "karb94/neoscroll.nvim",
		event = "WinScrolled",
		config = function() require "plugins.neoscroll" end }

	-- git status marks in gutter
	use "airblade/vim-gitgutter"
    
	-- file icons
    use { "kyazdani42/nvim-web-devicons" }
    --	config = function() require "plugins.icons" end }
	
	use { 'hoob3rt/lualine.nvim',
		config = function() require "plugins.lualine" end }

	-- fancy tab bar
    use { "akinsho/nvim-bufferline.lua",
		config = function() require "plugins.bufferline" end }

    -- file picker dashboard
	use { "glepnir/dashboard-nvim",
		cmd = { "Dashboard",
			"DashboardNewFile",
			"DashboardFindFile",
			"DashboardFindHistory",
			"DashboardFindWord",
			"DashboardJumpMarks",
			"DashboardChangeColorscheme",
			"SessionLoad",
			"SessionSave" },
		setup = function() require "plugins.dashboard" end }

	-- fuzzy file finder
	use { "nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } } }

	-- alternative to telescope for when it doesnt work
	use { "liuchengxu/vim-clap" }

-- -- PART 4
	
    -- -- load compe in insert mode only
    -- use { "hrsh7th/nvim-compe",
	-- 	event = "InsertEnter",
	-- 	config = function() require "plugins.compe" end }

	-- -- auto pair quotes and brackets
	-- use { "windwp/nvim-autopairs",
	-- 	after = "nvim-compe",
	-- 	config = function() require "plugins.autopairs" end }
	
-- 	use {
-- 		"kabouzeid/nvim-lspinstall",
-- 		event = "BufRead"
-- 	}
-- 
-- 	use {
-- 		"neovim/nvim-lspconfig",
-- 		after = "nvim-lspinstall",
-- 		config = function()
-- 			require "plugins.lspconfig"
-- 		end
-- 	}
-- 
-- 	use {
-- 		"onsails/lspkind-nvim",
-- 		event = "BufEnter",
-- 		config = function()
-- 			require("plugins.others").lspkind()
-- 		end
-- 	}
-- 
-- 	use {
-- 		"ray-x/lsp_signature.nvim",
-- 		after = "nvim-lspconfig",
-- 		config = function()
-- 			require("plugins.others").signature()
-- 		end
-- 	}

	-- THEMES
	-- use("folke/tokyonight.nvim")
	-- use("drewtempelmeyer/palenight.vim")
	-- use("pineapplegiant/spaceduck")
	use{ "Pocco81/Catppuccino.nvim",
		config = function() require "plugins.catppuccino" end }
end)
