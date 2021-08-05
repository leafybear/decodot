local present, _ = pcall(require, "packerInit")
local packer

if present then
    packer = require "packer"
else
    return false
end

local use = packer.use

return packer.startup(
    function()

        -- package manager for neovim
        use {
            "wbthomason/packer.nvim",
            event = "VimEnter"
        }
        
        -- base16 color scheme building tool
        use {
            "siduck76/nvim-base16.lua",
            after = "packer.nvim",
            config = function()
                require "theme"
            end
        }

        -- fancy buffer list at the top
        use {
            "akinsho/nvim-bufferline.lua",
            after = "nvim-base16.lua",
            config = function()
                require "plugins.bufferline"
            end
        }

        -- fancy status bar
        use {
            "glepnir/galaxyline.nvim",
            after = "nvim-base16.lua",
            config = function()
                require "plugins.statusline"
            end
        }

        -- color previews in code
        use {
            "norcalli/nvim-colorizer.lua",
            event = "BufRead",
            config = function()
                require("plugins.others").colorizer()
            end
        }

        -- syntax highlighting
        use {
            "nvim-treesitter/nvim-treesitter",
            event = "BufRead",
            config = function()
                require "plugins.treesitter"
            end
        }

        -- file icons
        use {
            "kyazdani42/nvim-web-devicons",
            after = "nvim-base16.lua",
            config = function()
                require "plugins.icons"
            end
        }

        -- file manager
        use { "mcchrish/nnn.vim" }

        -- cool startup screen
        use {
            "glepnir/dashboard-nvim",
            cmd = {
                "Dashboard",
                "DashboardNewFile",
                "DashboardJumpMarks",
                "SessionLoad",
                "SessionSave"
            },
            setup = function()
                require "plugins.dashboard"
            end
        }
        
        -- code formatter
        use {
            "sbdchd/neoformat",
            cmd = "Neoformat"
        }

        -- Git
	use 'airblade/vim-gitgutter'

        -- various lua system tools
        -- need for theme picker and popup.
        use {
            "nvim-lua/plenary.nvim",
            event = "BufRead"
        }

        -- popup windows
        use {
            "nvim-lua/popup.nvim",
            after = "plenary.nvim"
        }

        -- find, filter, preview
        use {
            "nvim-telescope/telescope.nvim",
            cmd = "Telescope",
            config = function()
                require "plugins.telescope"
            end
        }
        use {
            "nvim-telescope/telescope-fzf-native.nvim",
            run = "make",
            cmd = "Telescope"
        }
        use {
            "nvim-telescope/telescope-media-files.nvim",
            cmd = "Telescope"
        }

        -- smooth scroll
        use {
            "karb94/neoscroll.nvim",
            event = "WinScrolled",
            config = function()
                require("plugins.others").neoscroll()
            end
        }

        -- minimal clean workspace for zero distractions
        use {
            "Pocco81/TrueZen.nvim",
            cmd = {
                "TZAtaraxis",
                "TZMinimalist",
                "TZFocus"
            },
            config = function()
                require "plugins.zenmode"
            end
        }
        

    end
)
