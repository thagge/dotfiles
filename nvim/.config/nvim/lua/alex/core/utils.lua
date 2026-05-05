local utils = {}

function utils.getOsName()
	local osname
	-- Unix, Linux variants
	local fh, _ = assert(io.popen("uname -o 2>/dev/null", "r"))
	if fh then
		osname = fh:read()
	end

	return osname or "Windows"
end

utils.all = function(dir, base, exclude, callback)
	exclude = exclude or {}

	-- Likely being called from an `init` file, so always exclude it by default
	exclude["init"] = true

	-- libuv doesn't seem to like the string representing a link
	if dir and string.sub(dir, 1, 1) == "@" then
		-- Strip this off if present
		dir = string.sub(dir, 2)
	end

	local handle = vim.loop.fs_scandir(dir)
	local ret = {}

	if not handle then
		-- Log.fmt_error("Error loading directory '%s'", dir)

		return
	end

	local name, typ, success, req, ext, res

	while handle do
		name, typ = vim.loop.fs_scandir_next(handle)

		if not name then
			-- Done, nothing left
			break
		end

		ext = vim.fn.fnamemodify(name, ":e")
		req = vim.fn.fnamemodify(name, ":r")

		if ((ext == "lua" and typ == "file") or (typ == "directory")) and not exclude[req] then
			success, res = pcall(require, base .. req)

			if success then
				ret[req] = res

				if callback and type(callback) == "function" then
					callback(res)
				end
			else
				-- Log.fmt_error("Error loading module '%s': %s", req, res)
			end
		end
	end

	return ret
end

return utils
