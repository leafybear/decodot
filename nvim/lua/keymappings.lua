local function map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- format code
map("n", "<Leader>fm", ":Neoformat<CR>", opt)

-- dashboard stuff
map("n", "<Leader>db", ":Dashboard<CR>", opt)
map("n", "<Leader>fn", ":DashboardNewFile<CR>", opt)
map("n", "<Leader>bm", ":DashboardJumpMarks<CR>", opt)
map("n", "<C-s>l", ":SessionLoad<CR>", opt)
map("n", "<C-s>s", ":SessionSave<CR>", opt)

-- Truezen.nvim
map("n", "<leader>zz", ":TZAtaraxis<CR>", opt)
map("n", "<leader>zm", ":TZMinimalist<CR>", opt)
map("n", "<leader>zf", ":TZFocus<CR>", opt)

map("n", "<C-s>", ":w <CR>", opt)

-- Commenter Keybinding
map("n", "<leader>/", ":CommentToggle<CR>", opt)
map("v", "<leader>/", ":CommentToggle<CR>", opt)

-- Telescope
map("n", "<Leader>fw", ":Telescope live_grep<CR>", opt)
map("n", "<Leader>gt", ":Telescope git_status <CR>", opt)
map("n", "<Leader>cm", ":Telescope git_commits <CR>", opt)
map("n", "<Leader>ff", ":Telescope find_files <CR>", opt)
map("n", "<Leader>fp", ":Telescope media_files <CR>", opt)
map("n", "<Leader>fb", ":Telescope buffers<CR>", opt)
map("n", "<Leader>fh", ":Telescope help_tags<CR>", opt)
map("n", "<Leader>fo", ":Telescope oldfiles<CR>", opt)
map("n", "<Leader>th", ":Telescope themes<CR>", opt)

-- bufferline tab stuff
map("n", "<S-t>", ":enew<CR>", opt) -- new buffer
map("n", "<C-t>b", ":tabnew<CR>", opt) -- new tab
map("n", "<S-x>", ":bd!<CR>", opt) -- close tab

-- move between tabs
map("n", "<TAB>", ":BufferLineCycleNext<CR>", opt)
map("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", opt)

-- use ESC to turn off search highlighting
map("n", "<Esc>", ":noh<CR>", opt)

-- Packer commands till because we are not loading it at startup
vim.cmd("silent! command PackerCompile lua require 'pluginList' require('packer').compile()")
vim.cmd("silent! command PackerInstall lua require 'pluginList' require('packer').install()")
vim.cmd("silent! command PackerStatus lua require 'pluginList' require('packer').status()")
vim.cmd("silent! command PackerSync lua require 'pluginList' require('packer').sync()")
vim.cmd("silent! command PackerUpdate lua require 'pluginList' require('packer').update()")

-- Vim Fugitive
map("n", "<Leader>gs", ":Git<CR>", opt)
map("n", "<Leader>gh", ":diffget //2<CR>", opt)
map("n", "<Leader>gl", ":diffget //3<CR>", opt)
map("n", "<Leader>gb", ":Git blame<CR>", opt)
