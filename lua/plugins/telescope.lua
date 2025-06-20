return {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files." },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Search files." }
    },
    config = function ()
        require("telescope").load_extension("fzy_native")
    end
}
