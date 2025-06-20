return {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find file." },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Search files." },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find buffer." }
    },
    config = function ()
        require("telescope").load_extension("fzy_native")
    end
}
