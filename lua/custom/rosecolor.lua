return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require('rose-pine').setup({
			disable_background = true,
			vim.api.nvim_set_hl(0,"NormalFloat", { bg = "none" })
		})
		vim.cmd("colorscheme rose-pine")
	end
}
