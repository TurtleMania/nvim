vim.api.nvim_create_autocmd("VimEnter", {
    once = true,
    callback = function()
        vim.fn.jobstart({
            "git", "-C", vim.fn.stdpath("config"),
            "-c", "core.askPass=", "-c", "credential.helper=",
            "pull"
        },
        {
            env = { GIT_TERMINAL_PROMPT = "0" },
            stdout_buffered = true,
            stderr_buffered = true,
            on_stdout = function(_, stdout)
                if stdout then
                    if stdout[1] ~= "Already up to date." then
                        vim.notify(table.concat(stdout, "\n"), vim.log.levels.INFO)
                    end
                end
            end,
            on_stderr = function(_, stderr)
                if stderr then
                    vim.notify(table.concat(stderr, "\n"), vim.log.levels.WARN)
                end
            end,
        })
    end,
})
