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
        
        -- code formatter
        use {
            "sbdchd/neoformat",
            cmd = "Neoformat"
        }

    end
)
