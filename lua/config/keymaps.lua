-- vim.keymaps are automatically loaded on the VeryLazy event
-- Default vim.keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional vim.keymaps here
--
local opts = { noremap = true, silent = true }

-- Increment/decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
vim.keymap.set("n", "dw", 'vb"_d')

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
vim.keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
vim.keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
vim.keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
vim.keymap.set("n", "te", ":tabedit ")
vim.keymap.set("n", "<tab>", ":tabnext<Return>", opts)
vim.keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
vim.keymap.set("n", "ss", ":split<Return>", opts)
vim.keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sl", "<C-w>l")

-- Resize window""
vim.keymap.set("n", "<C-w><left>", "<C-w><")
vim.keymap.set("n", "<C-w><right>", "<C-w>>")
vim.keymap.set("n", "<C-w><up>", "<C-w>+")
vim.keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
vim.keymap.set("n", "<C-j>", function()
    vim.diagnostic.goto_next()
end, opts)

-- Copilot Plugin
vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

-- Telesope Plugin
vim.keymap.set(
    "n",
    "<Leader>fi",
    ":lua require('telescope.builtin').find_files{no_ignore=true}<CR>",
    { desc = "Find files (Root dir) (+I)" }
)
vim.keymap.set(
    "n",
    "<Leader>fh",
    ":lua require('telescope.builtin').find_files{hidden=true}<CR>",
    { desc = "Find files (Root dir) (+H)" }
)
vim.keymap.set(
    "n",
    "<Leader>fa",
    ":lua require('telescope.builtin').find_files{no_ignore=true,hidden=true}<CR>",
    { desc = "Find All files (Root dir)" }
)
