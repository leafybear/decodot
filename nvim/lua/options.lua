--   ____        _   _                 
--  / __ \      | | (_)                
-- | |  | |_ __ | |_ _  ___  _ __  ___ 
-- | |  | | '_ \| __| |/ _ \| '_ \/ __|
-- | |__| | |_) | |_| | (_) | | | \__ \
--  \____/| .__/ \__|_|\___/|_| |_|___/
--        | |                          
--        |_|                          
--

--local fn = vim.fn
--local execute = vim.api.nvim_command
--local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

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
opt.clipboard = "unnamedplus"

-- Numbers
opt.number = true
opt.numberwidth = 2

-- disable nvim intro
--opt.shortmess:append("sI")

-- disable tilde on end of buffer
vim.cmd("let &fcs='eob: '")

-- Indenline
opt.smartindent = true

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>hl")
