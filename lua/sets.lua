vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
--vim.opt.t_Co=256
vim.opt.encoding='UTF-8'

vim.opt.swapfile=false

vim.opt.shell='/usr/bin/zsh'
vim.opt.clipboard='unnamedplus'
vim.opt.scrolloff=5

-- for wsl only
vim.cmd [[
let g:clipboard = {
\	'name': 'WslClipboard',
\	'copy': {
\		'+': 'clip.exe',
\		'*': 'clip.exe',
\	},
\	'paste': {
\		'+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r",""))',
\		'*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r",""))',
\	},
\	'cache_enabled': 0,
\}
]]




-- syntax on
--
--if !exists('g:syntax_on') | syntax enable | endif
--command V let @/=""
--command T terminal
--
--autocmd InsertEnter * :set norelativenumber
--autocmd InsertLeave * :set relativenumber
