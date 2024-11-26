return {
	'hrsh7th/nvim-cmp',
	lazy=false,
	priority = 100,
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		{'L3MON4D3/LuaSnip', build = "make install_jsregexp" },
		'saadparwaiz1/cmp_luasnip'
	},
	config = function()
		local cmp = require "cmp"
		cmp.setup {
			sources = {
				{ name = "nvim_lsp" },
				{ name = "cody" },
				{ name = "path" },
				{ name = "buffer" },
			},
			mapping = {
				["<Tab>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
				["<S-Tab>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
				["<C-y>"] = cmp.mapping(
				cmp.mapping.confirm {
					behavior = cmp.ConfirmBehavior.Insert,
					select = true,
				},
				{ "i", "c" }
				),
			},
		}
	end

}
