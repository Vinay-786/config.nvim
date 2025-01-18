return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local builtin = require("telescope.builtin")

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
				root_dir = lspconfig.util.root_pattern("package.json"),
				single_file_support = false,
			})
			lspconfig.denols.setup({
				capabilities = capabilities,
				root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
				cmd = {
					"rustup",
					"run",
					"stable",
					"rust-analyzer",
				},
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.astro.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})
			lspconfig.elp.setup({
				capabilities = capabilities,
			})
			lspconfig.svelte.setup({
				capabilities = capabilities,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename variable" })
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Diagnostic floating window" })

			vim.keymap.set("n", "<leader>gr", builtin.lsp_references, { desc = "Show LSP References" })
			vim.keymap.set("n", "<leader>ge", builtin.diagnostics, { desc = "Show LSP Workspace Diagnostic" })
			vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, { desc = "Show LSP Workspace Diagnostic" })
		end,
	},
}
