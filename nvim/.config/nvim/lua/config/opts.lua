-- ============= --
--  CORE OPTIONS
-- ============= --

local opt = vim.opt

-- general
opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.clipboard = "unnamedplus" -- sync w/ system clipboard

-- indentation (4 spaces)
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- writer's lair
opt.wrap = true
opt.linebreak = true      -- wrap at words
opt.breakindent = true    -- indent wrapped lines
opt.termguicolors = true
opt.scrolloff = 8         -- scroll context
opt.showtabline = 0       -- no tabs

-- spell checker 
opt.spelllang = "en_us"
opt.spell = true
opt.spellcapcheck = ""  -- let's not punish ellipsomania!
