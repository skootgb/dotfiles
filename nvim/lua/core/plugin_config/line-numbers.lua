require("line-numbers").setup({
	enabled = true,
	mode = "both",
	format = "abs_rel",
	separator = " ",
	number_fallback = true,
	relativenumber_fallback = true,
	statuscolumn_fallback = "",
	rel_highlight = { link = "LineNr" },
	abs_highlight = { link = "LineNr" },
	current_rel_highlight = { link = "CursorLineNr" },
	current_abs_highlight = { link = "CursorLineNr" },
})
