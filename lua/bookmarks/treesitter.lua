local M = {}

local lspKind = {
	Method = "m",
	Function = "󰊕",
}

function M.function_surrounding_cursor()
	local current_node = vim.treesitter.get_node()

	local prev_node = current_node

	while current_node ~= true do
		if current_node:type() == "source_file" then
			break
		end
		prev_node = current_node
		current_node = current_node:parent()
	end

	if prev_node == nil then
		return { type = "", name = "", icon = "" }
	end

	local node_type = prev_node:type()
	local name = ""
	local icon = ""

	if node_type == "function_declaration" then
		name = vim.treesitter.get_node_text(prev_node:named_child(0), 0)
		icon = lspKind.Function
	elseif node_type == "method_declaration" then
		name = vim.treesitter.get_node_text(prev_node:named_child(1), 0)
		icon = lspKind.Method
	end

	return { type = node_type, name = name, icon = icon }
end

return M
