return {
	-- SYNTAX HIGHLIGHTING
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "lua", "python", "bash", "markdown", "markdown_inline" },
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},

	-- AUTO PAIRS
	{ "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },

	-- COMMENTS
	{ "numToStr/Comment.nvim", opts = {}, lazy = false },

	-- LSP & COMPLETION
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "pyright", "bashls", "clangd" },
			})

			local lspconfig = require("lspconfig")
			lspconfig.pyright.setup({})
			lspconfig.clangd.setup({})
			lspconfig.bashls.setup({})

			local cmp = require("cmp")
			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping.select_next_item(),
				}),
				sources = cmp.config.sources({ { name = "nvim_lsp" } }),
			})
		end,
	},
	-- FORMATTER
	{
		"stevearc/conform.nvim",
		opts = {
			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 2000,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				sh = { "shfmt" },
				bash = { "shfmt" },
				markdown = { "prettier" },
			},
		},
	},
}
