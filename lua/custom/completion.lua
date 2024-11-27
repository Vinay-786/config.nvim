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
		cmp.setup ({
			experimental = {
				ghost_text = true, -- Enables ghost text
			},
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end
			},
			window = {
				completion = cmp.config.window.bordered({
					col_offset = 20
				}),
				documentation = cmp.config.window.bordered({
					border = "rounded",
					max_width = 50,
					max_height = 20,
					winhighlight = "Normal:CmpDocumentation,FloatBorder:CmpDocumentationBorder",

					-- side_padding = 1,
				}),
			},
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
		})
	end

}
