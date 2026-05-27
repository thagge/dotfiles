vim.api.nvim_create_user_command("PackAdd", function(args)
    vim.pack.add(args.fargs)
end, {
    nargs = "+", desc = "Add plugins (:PackAdd user/repo)"
})

vim.api.nvim_create_user_command("PackDel", function(args)
    vim.pack.del(args.fargs)
end, {
    nargs = "+", desc = "Delete plugins (:PackAdd user/repo)"
})

vim.api.nvim_create_user_command("PackUpdate", function(opts)
    -- checks if any argument is passed
    if opts.args:match("%S") then
        local plugins = vim.split(opts.args, "%s+", {trimempty = true})
        vim.pack.update(plugins)
    else
        vim.pack.update()
    end
end, {
    nargs = "+", desc = "Update all plugins or specific ones"
})

vim.api.nvim_create_user_command("PackCheck", function(args)
    local non_active = vim.iter(vim.pack.get())
        :filter(function(x) return not x.active end)
        :map(function(x) return x.spec.name end)
        :totable()

    if #non_active == 0 then
        vim.notify("No non-active plugins found!", vim.log.levels.INFO)
        return
    end
end, {
    nargs = "+", desc = "Delete plugins (:PackAdd user/repo)"
})