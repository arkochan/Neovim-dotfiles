return {
	{
		"folke/persistence.nvim",
		dependencies = { "nvim-neo-tree/neo-tree.nvim" },
		event = "BufReadPre",
		opts = {},
        -- stylua: ignore
    keys = {
    -- Load the session for the current directory
    { "<leader>qs", function() require("persistence").load() end, desc = "Load session for current directory" },

    -- Select a session to load
    { "<leader>qS", function() require("persistence").select() end, desc = "Select a session to load" },

    -- Load the last session
    { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Load the last session" },

    -- Stop Persistence: session won't be saved on exit
    { "<leader>qd", function() require("persistence").stop() end, desc = "Stop Persistence: don't save session on exit" },
    },
	},
	{
		"pocco81/auto-save.nvim",
		config = true,
		event = "InsertEnter",
	},
}
