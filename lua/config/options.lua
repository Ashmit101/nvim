local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.number = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.splitright = true
opt.splitbelow = true

local current_hour = os.date("%H")
if (tonumber(current_hour) < 18) then
	vim.o.background = "light"
else
	vim.o.background = "dark"
end

