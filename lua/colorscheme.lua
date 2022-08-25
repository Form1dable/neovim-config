-- vim.cmd "colorscheme default"

local colorscheme = "darkplus"

vim.g.material_style = "darker"
vim.g.ayucolor = "dark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)  -- pcall is a protected call, underscore is the returned value of the module

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

