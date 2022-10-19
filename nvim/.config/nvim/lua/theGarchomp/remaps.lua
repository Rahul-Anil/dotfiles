local Remap = require("theGarchomp.keymaps")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<leader>u", ":UndotreeToggle<CR>")

-- greatest remap ever
xnoremap("<leader>p", "\"_dP")

-- Telescope remaps
nnoremap("<leader>fi", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end)
nnoremap("<leader>ff", ":Telescope find_files hidden=true<CR>")
nnoremap("<leader>fs", function()
    require('telescope.builtin').live_grep()
end)
nnoremap("<leader>bb", function()
    require('telescope.builtin').buffers()
end)
nnoremap("<leader>fh", function()
    require('telescope.builtin').help_tags()
end)
nnoremap("<leader>fgf", function()
    require('telescope.builtin').git_files()
end)
nnoremap("<leader>fgs", function()
    require('telescope.builtin').git_status()
end)
nnoremap("<leader>fgc", function()
    require('telescope.builtin').git_commits()
end)

-- Telscope extensions
nnoremap("<leader>fb", ":Telescope file_browser<CR>")

-- neogit 
nnoremap("<leader>gs", ":Neogit kind=vsplit<CR>")
nnoremap("<leader>ga", "<cmd>!git fetch --all<CR>")

-- Harpoon remaps!!
nnoremap("<leader>x", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, silent)

nnoremap("<C-h>", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<C-j>", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<C-k>", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<C-l>", function() require("harpoon.ui").nav_file(4) end, silent)











