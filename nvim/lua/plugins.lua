return { 
    { 
	"neovim/nvim-lspconfig",
	lazy = false,
	dependencies = {
	    { "ms-jpq/coq_nvim", branch = "coq" },
	    { "ms-jpq/coq.artifacts", branch = "artifacts" },
	    { "ms-jpq/coq.thirdparty", branch = "3p" }
	},
	init = function()
	    vim.g.coq_settings = {
		auto_start = true,
	    }
	end,
    },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = true
    }
}
