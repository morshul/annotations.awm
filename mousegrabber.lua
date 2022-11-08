---@meta

---Set a callback to process all mouse events.
mousegrabber = {}

---Grabs the mouse pointer and list motions, calling a callback on each motion.
---
---@param func fun(modifiers: table):boolean The callback to call on each motion.
---@param cursor awesome.Root.CursorType The cursor to use.
mousegrabber.run = function(func, cursor) end

---Stop grabbing the mouse pointer.
mousegrabber.stop = function() end

---Checks if the mouse pointer is grabbed.
---
---@return boolean result True if the mouse pointer is grabbed, false otherwise.
mousegrabber.isrunning = function() end
