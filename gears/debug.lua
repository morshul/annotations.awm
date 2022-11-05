---@class gears.debug.DeprecateDescriptor
---@field raw boolean If true, the deprecation message will not be formatted.
---@field deprecated_in integer The version in which the function was deprecated.

---@class gears.debug.DeprecateClassDescriptor
---@field deprecated_in integer The version in which the class was deprecated.

local debugging = {}

---Inspect the value in data.
---
---@param data any The value to inspect.
---@param tag any The name of the value.
---@param depth? integer The depth of recursion.
---@return string result A string that contains the expanded value of data.
debugging.dump_return = function(data, tag, depth) end

---Print the value to the console.
---
---@param data any The value to print.
---@param tag any The name of the value.
---@param depth? integer The depth of recursion.
debugging.dump = function(data, tag, depth) end

---Print an warning message to the console.
---
---@param message string The message to print.
debugging.print_warning = function(message) end

---Print an error message to the console.
---
---@param message string The message to print.
debugging.print_error = function(message) end

---Display a deprecation notice, but only once per traceback.
---
---This function also emits the `debug::deprecation` signal at runtime.
---If the deprecated API has been deprecated for more than one API level, it will also send a non-fatal error.
---
---@param see? string The name of the replacement API.
---@param args? gears.debug.DeprecateDescriptor The extra arguments.
debugging.deprecate = function(see, args) end

---Create a class proxy with deprecation messages. This is useful when a class has moved somewhere else.
---
---@generic TClass : table
---@param fallback TClass The class to use as a fallback.
---@param old_name string The old name of the class.
---@param new_name string The new name of the class.
---@param args? gears.debug.DeprecateClassDescriptor The extra arguments.
---@return TClass result The proxy class.
debugging.deprecate_class = function(fallback, old_name, new_name, args) end

return debugging
