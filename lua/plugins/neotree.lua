return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set('n', '<leader>b', ":Neotree toggle buffers right<cr>", {})
		vim.keymap.set('n', '<C-n>', ":Neotree toggle reveal_force_cwd<cr>", {})
	end
}
