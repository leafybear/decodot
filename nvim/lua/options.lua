--    ___       _   _                 
--   /___\_ __ | |_(_) ___  _ __  ___ 
--  //  // '_ \| __| |/ _ \| '_ \/ __|
-- / \_//| |_) | |_| | (_) | | | \__ \
-- \___/ | .__/ \__|_|\___/|_| |_|___/
--       |_|                          
-- 

-- local fn = vim.fn
-- local execute = vim.api.nvim_command

local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

g.autosave = false

opt.ruler = false
opt.hidden = true
opt.ignorecase = true
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.cul = true
opt.mouse = "a"
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.updatetime = 250 -- update interval for gitsigns
opt.timeoutlen = 400
opt.clipboard = "unnamed"
opt.tabstop = 4
opt.expandtab = false
opt.shiftwidth = 0

-- Numbers
opt.number = true
opt.numberwidth = 2

-- disable nvim intro
opt.shortmess:append("sI")

-- disable tilde on end of buffer
vim.cmd("let &fcs='eob: '")

-- Indenline
opt.smartindent = true

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>hl")

-- disable builtin vim plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
