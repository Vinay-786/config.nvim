return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				javascript = { "prettier", stop_after_first = true },
				go = { "gofumpt" },
				cpp = { "clang-format" },
			},
			format_on_save = {
				-- I recommend these options. See :help conform.format for details.
				lsp_format = "fallback",
				timeout_ms = 500,
			},
		})
	end,
}
