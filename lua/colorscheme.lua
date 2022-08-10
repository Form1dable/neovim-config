-- vim.cmd "colorscheme default"

local colorscheme = "darkplus"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)  -- pcall is a protected call, underscore is the returned value of the module

if not status_of then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
