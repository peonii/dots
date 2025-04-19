return {
    "rebelot/heirline.nvim",
    config = function()
	local heirline = require("heirline")
	local colors = require("catppuccin.palettes").get_palette "mocha"

	local file_icon = {
	    init = function(self)
		local filename = vim.api.nvim_buf_get_name(0)
		local ext = vim.fn.fnamemodify(filename, ':e')
		self.icon, self.icon_color = require('nvim-web-devicons').get_icon_color(filename, ext, { default = true })
	    end,
	    provider = function(self)
		return self.icon and (self.icon .. " ")
	    end,
	    hl = function(self)
		return { fg = self.icon_color }
	    end
	}

	local file_name = {
	    provider = function(self)
		local filename = vim.api.nvim_buf_get_name(0)
		filename = vim.fn.fnamemodify(filename, ':.')

		if filename == "" then return "Unnamed" end

		return filename
	    end,
	    hl = { fg = colors.text }
	}

	local status_line = {
	    file_icon, file_name
	}

	heirline.setup({
	    statusline = status_line
	})
    end
}
