--                           _                 
--   /\/\   __ _ _ __  _ __ (_)_ __   __ _ ___ 
--  /    \ / _` | '_ \| '_ \| | '_ \ / _` / __|
-- / /\/\ \ (_| | |_) | |_) | | | | | (_| \__ \
-- \/    \/\__,_| .__/| .__/|_|_| |_|\__, |___/
--              |_|   |_|            |___/     
-- 

local g = vim.g
local cmd = vim.cmd

-- Map leader to space
g.mapleader = " "

-- Make it easier to write key mappings
local function map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- save files with Ctl-S
map("n", "<C-s>", ":w <CR>", opt)

-- use ESC to turn off search highlighting
map("n", "<Esc>", ":noh<CR>", opt)

-- create, close buffers
map("n", "<S-t>", ":enew<CR>", opt) -- new buffer
map("n", "<C-t>b", ":tabnew<CR>", opt) -- new tab
map("n", "<S-x>", ":bd!<CR>", opt) -- close tab

-- move between Bufferline tabs
map("n", "<TAB>", ":BufferLineCycleNext<CR>", opt)
map("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", opt)

-- Neoformatter
map("n", "<Leader>fm", ":Neoformat<CR>", opt)

-- Commenter
map("n", "<leader>/", ":CommentToggle<CR>", opt)
map("v", "<leader>/", ":CommentToggle<CR>", opt)

-- Twilight
map("n", "<leader>t", ":Twilight<CR>", opt)

-- Dashboard
map("n", "<Leader>db", ":Dashboard<CR>", opt)
map("n", "<Leader>fn", ":DashboardNewFile<CR>", opt)
map("n", "<Leader>bm", ":DashboardJumpMarks<CR>", opt)
map("n", "<Leader>dc", ":DashboardChangeColorscheme<CR>", opt)
map("n", "<C-s>l", ":SessionLoad<CR>", opt)
map("n", "<C-s>s", ":SessionSave<CR>", opt)

-- Telescope
map("n", "<Leader>fw", ":Telescope live_grep<CR>", opt)
map("n", "<Leader>ff", ":Telescope find_files <CR>", opt)
map("n", "<Leader>fb", ":Telescope buffers<CR>", opt)
map("n", "<Leader>fh", ":Telescope help_tags<CR>", opt)
map("n", "<Leader>fo", ":Telescope oldfiles<CR>", opt)

-- Telekasten
map("n", "<Leader>zf", ":Telekasten find_notes<CR>", opt)
map("n", "<Leader>zd", ":Telekasten find_daily_notes<CR>", opt)
map("n", "<Leader>zg", ":Telekasten goto_today<CR>", opt)
map("n", "<Leader>zs", ":Telekasten search_notes<CR>", opt)
map("n", "<Leader>zf", ":Telekasten follow_link<CR>", opt)
map("n", "<Leader>zi", ":Telekasten insert_link<CR>", opt)
map("n", "<Leader>zy", ":Telekasten yank_notelink<CR>", opt)
map("n", "<Leader>x", ":Telekasten toggle_todo<CR>", opt)
map("v", "<Leader>x", ":Telekasten toggle_todo<CR>", opt)
-- on hesitation, bring up the panel
map("n", "<Leader>z", ":Telekasten panel<CR>", opt)

-- Compe
-- map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- map("i", "<CR>", "v:lua.completions()", {expr = true})
