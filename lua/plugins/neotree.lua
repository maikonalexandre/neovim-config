return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
        		width = 30,
				position = "float",
			},
		})

		vim.keymap.set("n", "<leader>b", ":Neotree toggle left<CR>", {})
		vim.keymap.set("n", "<leader>n", ":Neotree reveal float<CR>", {})
	end,
}
