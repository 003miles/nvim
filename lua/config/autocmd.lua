-- close nvim-tree if it's last buffer open
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*",
	callback = function()
		if #vim.api.nvim_list_bufs() == 1 and vim.bo.filetype == "NvimTree" then
	vim.cmd("quit")
	end
	end,
})

-- linting when file is written to
vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function()
    -- try_lint without arguments runs the linters defined in `linters_by_ft`
    -- for the current filetype, on write
    require("lint").try_lint()
  end,
})

-- disable automatic comment on newline
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt.formatoptions:remove { "c", "r", "o" }
  end,
})

-- get startup time
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local startuptime = vim.fn.reltimefloat(vim.fn.reltime(vim.g.start_time))
    vim.g.startup_time_ms = string.format("%.2f ms", startuptime * 1000)
  end,
})


-- alpha on last buffer
vim.api.nvim_create_augroup("alpha_on_empty", { clear = true })
vim.api.nvim_create_autocmd("User", {
	pattern = "BDeletePre *",
	group = "alpha_on_empty",
	callback = function()
		local bufnr = vim.api.nvim_get_current_buf()
		local name = vim.api.nvim_buf_get_name(bufnr)
		if name == "" then
      vim.cmd([[:Alpha | bd#]])
		end
	end,
})
