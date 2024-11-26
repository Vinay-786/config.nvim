local opt = vim.opt

----- Interesting Options -----

-- You have to turn this one on :)
-- opt.inccommand = "split"

-- completion options
opt.completeopt = { "menu", "menuone", "noselect" }
opt.shortmess:append "c"

-- Best search settings :)
opt.smartcase = true
opt.smartindent = true
vim.g.netrw_banner = 0
opt.ignorecase = true

----- Personal Preferences -----
opt.number = true
opt.relativenumber = true
opt.incsearch = true
opt.termguicolors = true

opt.splitbelow = true
opt.splitright = true
opt.nu = true

-- opt.signcolumn = "yes"
-- opt.shada = { "'10", "<0", "s10", "h" }

-- opt.swapfile = false

-- Don't have `o` add a comment
-- opt.formatoptions:remove "o"

opt.wrap = false
opt.linebreak = true
opt.scrolloff = 10

opt.tabstop = 4
opt.shiftwidth = 4
