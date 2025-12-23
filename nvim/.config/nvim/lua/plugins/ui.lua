return {
	-- TOKYO NIGHT THEME
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "storm",
				transparent = false,
				on_highlights = function(hl, c)
					hl.Comment = { fg = "#565f89", italic = true }
				end,
			})
			vim.cmd([[colorscheme tokyonight]])
		end,
	},

	-- ICONS
	{ "nvim-tree/nvim-web-devicons" },

	-- ZEN MODE
	{
		"folke/zen-mode.nvim",
		keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
		opts = {
			window = { width = 0.85 },
			plugins = {
				twilight = { enabled = true },
				gitsigns = { enabled = false },
				tmux = { enabled = false },
			},
		},
	},
	-- TWILIGHT
	{ "folke/twilight.nvim" },

	-- WHICH KEY?
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
	},
}
