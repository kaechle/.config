-- keymappings

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '
vim.opt.pastetoggle = '<F2>'

map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')
map('n', '<C-h>', ':bprevious<CR>')
map('n', '<C-l>', ':bnext<CR>')
map('n', '<leader>w', ':bwipeout<CR>')
map('n', '<leader>r', ':so %<CR>')
map('n', '<leader>s', ':w<CR>')
map('n', '<leader>q', ':qa!<CR>')
map('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<CR>')
map('n', '<leader>fg', ':lua require("telescope.builtin").live_grep()<CR>')
map('n', '<leader>fb', ':lua require("telescope.builtin").buffers()<CR>')
map('n', '<leader>fh', ':lua require("telescope.builtin").help_tags()<CR>')
map('n', '<C-n>', ':NeoTreeFloatToggle<CR>')
