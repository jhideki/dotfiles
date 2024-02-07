local functions = {}

function functions.setTheme(themeName, bg)
  vim.cmd('set background=' .. bg)
  vim.cmd('colorscheme ' .. themeName)
end

return functions
