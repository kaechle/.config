-- autocommands

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

vim.cmd [[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
  augroup END
]]

autocmd('BufWritePre', {
  pattern = '',
  command = ":%s/\\s\\+$//e"
})

autocmd('BufEnter', {
  pattern = '',
  command = 'set fo-=c fo-=r fo-=o'
})

augroup('setLineLength', { clear = true })
autocmd('Filetype', {
  group = 'setLineLength',
  pattern = { 'text', 'markdown', 'html', 'css', 'javascript', 'typescript' },
  command = 'setlocal cc=0'
})

augroup('setIndent', { clear = true })
autocmd('Filetype', {
  group = 'setIndent',
  pattern = { 'html', 'css', 'javascript', 'typescript', 'json',
    'yaml', 'lua'
  },
  command = 'setlocal shiftwidth=2 tabstop=2'
})
