--  _____  _             _           
-- |  __ \| |           (_)          
-- | |__) | |_   _  __ _ _ _ __  ___ 
-- |  ___/| | | | |/ _` | | '_ \/ __|
-- | |    | | |_| | (_| | | | | \__ \
-- |_|    |_|\__,_|\__, |_|_| |_|___/
--                  __/ |            
--                 |___/             
--

-- Check if Packer is available. Install it if not.
local present, _ = pcall(require, "packerInit")
local packer

if present then
    packer = require "packer"
else
    return false
end

local use = packer.use

return packer.startup(function()
    
	-- Packer can manage itself as an optional plugin
	use {'wbthomason/packer.nvim', --opt = true,
            event = "VimEnter" }
 
 	-- NNN file manager inside of neovim
 	use { 'mcchrish/nnn.vim',
 		config = function() require "plugins.nnn" end }

	-- Git info in the gutter
	use { 'airblade/vim-gitgutter' }

  	-- Simple line commenting
  	use { "terrortylor/nvim-comment",
  		cmd = "CommentToggle",
  		config = function() require "plugins.comment" end }
	    
	-- Code formatting
        use { "sbdchd/neoformat",
		cmd = "Neoformat" }

	-- Auto complete features
	use { "hrsh7th/nvim-compe", 
            event = "InsertEnter",
            config = function() require "plugins.compe" end }
         
 	-- Auto pair brackets etc
         use { "windwp/nvim-autopairs",
             after = "nvim-compe",
             config = function() require "plugins.autopairs" end }
        
	-- Show color previews in-line in editor
	use { "norcalli/nvim-colorizer.lua", 
		event = "BufRead",
        	config = function() require "plugins.colorizer" end }
         
 	-- Advanced syntax highlighting
         use { "nvim-treesitter/nvim-treesitter",
             event = "BufRead",
             config = function() require "plugins.treesitter" end }
 		
 	-- Comprehensive theming tools
 	use { "siduck76/nvim-base16.lua",
 	--	after = "packer.nvim",
 		config = function() require "theme" end }
         
 	-- smooth scrolling with the mouse
         use { "karb94/neoscroll.nvim",
             event = "WinScrolled",
             config = function() require "plugins.neoscroll" end }
 
 	-- Fancy buffer tabs
 	use {'akinsho/nvim-bufferline.lua', after = "nvim-base16.lua",
 		requires='kyazdani42/nvim-web-devicons',
 		config = function() require "plugins.bufferline" end }

-- 	-- Fuzzy finder
-- 	use { 'nvim-telescope/telescope.nvim',
--       		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
-- 		config = function() require "plugins.telescope" end }

	-- pretty  dashboard for opening files
	use { "glepnir/dashboard-nvim",
		cmd = { "Dashboard", "DashboardNewFile",
                	"DashboardJumpMarks", "SessionLoad", "SessionSave" },
		setup = function() require "plugins.dashboard" end }

	-- Enhanced status bar line
	use { "glepnir/galaxyline.nvim",
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
            	config = function() require "plugins.statusline" end }

	-- beautiful distraction free editing
        use { "Pocco81/TrueZen.nvim",
            cmd = { "TZAtaraxis", "TZMinimalist", "TZFocus" },
            config = function() require "plugins.truezen" end }
--         -- use { "nvim-telescope/telescope-fzf-native.nvim",
-- 		-- run = "make", cmd = "Telescope" }
--         -- use { "nvim-telescope/telescope-media-files.nvim",
-- 		-- cmd = "Telescope" }

-- 	-- language server protocol client for Neovim
-- 	-- use { 'neovim/nvim-lspconfig' }
	

end)
