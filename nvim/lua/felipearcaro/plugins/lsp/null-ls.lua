local null_ls = require('null-ls')

null_ls.builtins.diagnostics.mypy.with({
    extra_args = function()
    local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_DEFAULT_ENV") or "/usr"
    return { "--python-executable", virtual .. "/bin/python3" }
    end,
})
