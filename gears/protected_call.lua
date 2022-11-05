---Call a function in protected mode and handle error-reporting.
---If the function call succeeds, all results of the function are returned.
---Otherwise, an error message is printed and nothing is returned.
---
---@param func function The function to call.
---@param ... any Arguments to the function.
---@return any result The result of the given function, or nothing if an error occurred.
local protected_call = function(func, ...) end

return protected_call
