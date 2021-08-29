--      __             ___                 
--   /\ \ \___  ___   / __\ ___  __ _ _ __ 
--  /  \/ / _ \/ _ \ /__\/// _ \/ _` | '__|
-- / /\  /  __/ (_) / \/  \  __/ (_| | |   
-- \_\ \/ \___|\___/\_____/\___|\__,_|_|   
-- 
-- neovim options for LeafyBear
-- Last edit August 2021
--

-- My options
require('options')
-- and keybindings
require('mappings')

-- Add Packer commands because we are not loading it at startup
-- just in case we're using offline
local cmd = vim.cmd
cmd "silent! command PackerClean lua require 'plugins' require('packer').clean()"
cmd "silent! command PackerCompile lua require 'plugins' require('packer').compile()"
cmd "silent! command PackerInstall lua require 'plugins' require('packer').install()"
cmd "silent! command PackerStatus lua require 'plugins' require('packer').status()"
cmd "silent! command PackerSync lua require 'plugins' require('packer').sync()"
cmd "silent! command PackerUpdate lua require 'plugins' require('packer').update()"
