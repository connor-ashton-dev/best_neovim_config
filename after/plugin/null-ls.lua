local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.builtins.code_actions.eslint.with({
	only_local = "node_modules/.bin",
})

null_ls.setup({
	debug = false,
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format()
				end,
			})
		end
	end,

	sources = {
		--[[ formatting.prettier.with({ extra_args = {  "--single-quote", "--jsx-single-quote" } }), ]]
		formatting.prettier.with({
			extra_args = { "--double-quote", "--jsx-double-quote" },
			extra_filetypes = { "svelte" },
		}),
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.astyle,
		formatting.gofmt,
		formatting.sql_formatter,
		formatting.dart_format,
		formatting.prismaFmt.with({
			command = "npx",
			args = { "primsa", "format", "$FILENAME" },
		}),
		formatting.rustfmt,
		formatting.stylua,
		diagnostics.eslint,
		diagnostics.flake8,
		-- diagnostics.golangci_lint,
	},
})
