---@meta

---@alias awesome.DrawableEvents
--- | 'button::press' # A mouse button was pressed.
--- | 'button::release' # A mouse button was released.
--- | 'mouse::enter' # The mouse entered the drawable.
--- | 'mouse::leave' # The mouse left the drawable.
--- | 'mouse::move' # The mouse moved inside the drawable.
--- | 'property::geometry' # The geometry of the drawable changed.
--- | 'property::height' # The height of the drawable changed.
--- | 'property::width' # The width of the drawable changed.
--- | 'property::x' # The X coordinate of the drawable changed.
--- | 'property::y' # The Y coordinate of the drawable changed.
--- | 'property::surface' # The surface of the drawable changed.

---Low-level API to allow Cairo to draw on clients and wiboxes.
---
---@class awesome.Drawable
drawable = {}

---Get the count of drawable instances.
---
---@return integer count The count of drawable instances.
drawable.instances = function() end

---Connect to a signal.
---
---@param name awesome.DrawableEvents The name of the signal.
---@param func function The callback to call when the signal is emitted.
drawable.connect_signal = function(name, func) end

---Disconnect from a signal.
---
---@param name awesome.DrawableEvents The name of the signal.
---@param func function The callback to disconnect.
drawable.disconnect_signal = function(name, func) end

---Emit a signal.
---
---@param name awesome.DrawableEvents The name of the signal.
---@param ...? any The arguments to pass to the callbacks.
drawable.emit_signal = function(name, ...) end

---@class awesome.Drawable
---@field image unknown The drawable object.
local Drawable = {}

---Refresh a drawable's content.
---This has to be called whenever some drawing to the drawable's surface has been done and should become visible.
function Drawable:refresh() end

---Get the drawable's geometry.
---
---@return gears.geometry.Rectangle geometry The drawable's geometry.
function Drawable:geometry() end
