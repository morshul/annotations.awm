---@class gears.object.ObjectDescriptor The arguments. Default is `{}`.
---@field enable_properties? boolean Automatically call getters and setters. Default is `false`.
---@field enable_auto_signals? boolean Generate `property::xxxx` signals when an unknown property is set. Default is `false`.
---@field class? table The class table. Default is `nil`.

---Returns a new object. You can call `:emit_signal()`, `:disconnect_signal()` and `:connect_signal()` on the resulting object.
---
---Note that `args.enable_auto_signals` is only supported when `args.enable_properties` is true.
---
---@param args gears.object.ObjectDescriptor
---@return gears.object.Object object The new object.
local object = function(args) end

---The object oriented programming base class used by various Awesome widgets and components.
---
---It provide basic observer pattern, signaling and dynamic properties.
---@class gears.object.Object
local Object = {}

---Connect to a signal.
---
---@param name string The name of the signal.
---@param func function The callback to call when the signal is emitted.
function Object:connect_signal(name, func) end

---Connect to a signal weakly.
---
---This allows the callback function to be garbage collected and automatically disconnects the signal when that happens.
---Only use this function if you really, really, really know what you are doing.
---
---@param name string The name of the signal.
---@param func function The callback to call when the signal is emitted.
function Object:weak_connect_signal(name, func) end

---Disconnect from a signal.
---
---@param name string The name of the signal.
---@param func function The callback that should be disconnected.
function Object:disconnect_signal(name, func) end

---Emit a signal.
---
---@param name string The name of the signal.
---@param ...any Extra arguments for the callback functions. Each connected function receives the object as first argument and then any extra arguments that are given to `:emit_signal()`.
function Object:emit_signal(name, ...) end

---Helper function to get the module name out of `debug.getinfo`.
---
---@param level? integer Level for `debug.getinfo(level, 'S')`. Typically 2 or 3. Default is `2`.
---@return string module The module name, e.g. `wibox.container.background`.
---@see debug.getinfo
function Object.modulename(level) end

return object
