return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    lazy = true,
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files." },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Search files." }
    }
}
