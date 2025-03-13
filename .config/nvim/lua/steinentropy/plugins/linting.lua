return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		-- Define linters for different file types (ft)
		lint.linters_by_ft = {
			-- Web Development and Scripting Languages
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			svelte = { "eslint_d" },

			-- Python
			python = { "pylint", "flake8" }, -- Added flake8 for Python linting

			-- C and C++ (for physics and general programming)
			c = { "clang-tidy" },
			cpp = { "clang-tidy" },

			-- Java
			java = { "checkstyle" },

			-- Go
			go = { "golangci-lint" },

			-- Rust
			rust = { "cargo" },

			-- Julia
			julia = { "julia" },

			-- MATLAB
			matlab = { "matlab-linter" },

			-- R (for data science)
			r = { "lintr" },

			-- SQL (for database work)
			sql = { "sqlfluff" },

			-- LaTeX (useful for physicists writing papers)
			tex = { "lacheck" },

			-- Shell scripting
			sh = { "shellcheck" },

			-- Ruby (if needed for certain packages)
			ruby = { "ruby-lint" },
		}

		-- Set up auto commands for linting
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		-- Trigger linting on specific events
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		-- Set a keybinding to trigger linting manually
		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
