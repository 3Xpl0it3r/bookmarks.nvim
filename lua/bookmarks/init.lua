local M = {}

M.add = function()
	require("bookmarks.actions").regist_marks()
end

M.actions = function()
	require("bookmarks.actions").operator()
end

M.clean = function ()
    require("bookmarks.actions").clean_all()
end

return M
