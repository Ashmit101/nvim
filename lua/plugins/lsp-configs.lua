return {
	{
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗"
				}
			}
		})
	end
},
{
	"williamboman/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "lua_ls", "pyright", "bashls", "cmake", "terraformls", "clangd" },
	}
},
{
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({})
		lspconfig.pyright.setup({})
		lspconfig.bashls.setup({})
		lspconfig.terraformls.setup({})
		lspconfig.cmake.setup({})
		lspconfig.clangd.setup({})

		vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {})
	end
}
}
