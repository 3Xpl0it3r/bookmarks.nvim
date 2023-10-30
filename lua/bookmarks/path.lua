local M = {}

function M.exists(file)
	if os.rename(file, file) then
		return true
	end
	return false
end

return M

