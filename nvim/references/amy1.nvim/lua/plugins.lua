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

-- PLUGINS ORDERED BY COMPLEXITY AND DEPENDENCIES
-- PART 1

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

	-- Extra lua functions needed by some plugins
	use { "nvim-lua/plenary.nvim",
		event = "BufRead" }
	
	-- Small popup window library
	use { "nvim-lua/popup.nvim",
		after = "plenary.nvim" }
    
	-- color related stuff
	use { "siduck76/nvim-base16.lua",
        after = "packer.nvim",
        config = function() require "themes.theme" end }

	-- file icons
    use { "kyazdani42/nvim-web-devicons",
    	after = "nvim-base16.lua",
        config = function() require "plugins.icons" end }

	-- advanced syntax highlighting
	use { "nvim-treesitter/nvim-treesitter",
		event = "BufRead",
		config = function() require "plugins.treesitter" end }

-- PART 2

	-- fancy tab bar
    use { "akinsho/nvim-bufferline.lua",
		after = "nvim-base16.lua",
		config = function() require "plugins.bufferline" end }
    
	-- fancy status bar
	use { "glepnir/galaxyline.nvim",
		after = "nvim-base16.lua",
		config = function() require "plugins.statusline" end }
	
	-- fuzzy file finder window
	use { "nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		config = function() require "plugins.telescope" end }

        -- use { "nvim-telescope/telescope-fzf-native.nvim",
        --     run = "make",
        --     cmd = "Telescope" }
        -- use { "nvim-telescope/telescope-media-files.nvim",
        --     cmd = "Telescope" }
	
    -- file picker dashboard
	use { "glepnir/dashboard-nvim",
		cmd = { "Dashboard",
			"DashboardNewFile",
			"DashboardJumpMarks",
			"SessionLoad",
			"SessionSave" },
		setup = function() require "plugins.dashboard" end }

	-- distraction free editing modes
	use { "Pocco81/TrueZen.nvim",
		cmd = { "TZAtaraxis",
				"TZMinimalist",
				"TZFocus" },
		config = function() require "plugins.zenmode" end }

	-- alternative to telescope for when it doesnt work
	use { "liuchengxu/vim-clap" }

-- PART 3

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

	-- preview colors in code
	use { "norcalli/nvim-colorizer.lua",
		event = "BufRead",
		config = function() require "plugins.colorizer" end }

	-- code formatter
	use { "sbdchd/neoformat",
		cmd = "Neoformat" }

-- PART 4
	
    -- load compe in insert mode only
    use { "hrsh7th/nvim-compe",
		event = "InsertEnter",
		config = function() require "plugins.compe" end }

	-- auto pair quotes and brackets
	use { "windwp/nvim-autopairs",
		after = "nvim-compe",
		config = function() require "plugins.autopairs" end }
	
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
end)
