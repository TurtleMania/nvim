return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    config = function ()
        require('nvim-treesitter').install({ 'all' }):wait(300000) -- 5 minutes
    end
}
