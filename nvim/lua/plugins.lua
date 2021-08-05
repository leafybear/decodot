--  _____  _             _           
-- |  __ \| |           (_)          
-- | |__) | |_   _  __ _ _ _ __  ___ 
-- |  ___/| | | | |/ _` | | '_ \/ __|
-- | |    | | |_| | (_| | | | | \__ \
-- |_|    |_|\__,_|\__, |_|_| |_|___/
--                  __/ |            
--                 |___/             
--


return require('packer').startup(function()
    
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Fancy buffer tabs
  use {'akinsho/nvim-bufferline.lua', 
  	requires='kyazdani42/nvim-web-devicons',
        config = function() -- go read my config file
        	require "plugins.bufferline" end
    }

    -- Show color previews in-line in editor
	use { "norcalli/nvim-colorizer.lua" }
           -- config = function()
           --     require("plugins.others").colorizer()
           -- end

    -- NNN file manager inside of neovim
    use {'mcchrish/nnn.vim'}

-- Simple line commenting
    use { "terrortylor/nvim-comment",
            cmd = "CommentToggle" }
	    
	    -- Code formatting
        use { "sbdchd/neoformat",
            cmd = "Neoformat" }

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

    -- pretty  dashboard for opening files
	use { "glepnir/dashboard-nvim",
            cmd = {
                "Dashboard",
                "DashboardNewFile",
                "DashboardJumpMarks",
                "SessionLoad",
                "SessionSave"
            },
            setup = function() -- go read my config
                require "plugins.dashboard"
            end
        }

	-- 
	-- Enhanced status bar line
	use { "glepnir/galaxyline.nvim" }

        
--        use { "siduck76/nvim-base16.lua",
  --          after = "packer.nvim",
    --        config = function()
      --          require "theme"
        --    end
        --}
	
end)

