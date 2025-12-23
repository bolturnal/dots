return {
	-- EXPLORER
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
		keys = { { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Explorer" } },
	},

	-- TELESCOPE
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{ "<leader>s", "<cmd>Telescope spell_suggest<cr>", desc = "Spelling Suggestions" },
			{ "<leader>f", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
			{ "<leader>g", "<cmd>Telescope live_grep<cr>", desc = "Search Text" },
		},
		opts = {
			defaults = {
				layout_strategy = "horizontal",
				sorting_strategy = "ascending",
				layout_config = { prompt_position = "top" },
			},
		},
	},

	-- MARKDOWN RENDER
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
		opts = {
			heading = { enabled = false }, -- No icons
			code = { enabled = true, style = "normal" },
		},
	},

	-- GIT INTEGRATION
	{ "lewis6991/gitsigns.nvim", opts = {} },
}
