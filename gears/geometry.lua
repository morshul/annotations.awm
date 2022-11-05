---@class gears.geometry.Rectangle
---@field x number The X coordinate of the rectangle.
---@field y number The Y coordinate of the rectangle.
---@field width number The width of the rectangle.
---@field height number The height of the rectangle.

local rectangle = {}

---Get the square of the distance between a rectangle and a point.
---
---@param geometry gears.geometry.Rectangle The geometry to check.
---@param x number The X coordinate of the point.
---@param y number The Y coordinate of the point.
---@return number result The square of the distance between the rectangle and the point.
rectangle.get_square_distance = function(geometry, x, y) end

---Return the closest rectangle from `list` for a given point.
---@param list gears.geometry.Rectangle[] The list of objects to check.
---@param x number The X coordinate of the point.
---@param y number The Y coordinate of the point.
---@return gears.geometry.Rectangle result The closest rectangle from `list` for a given point.
rectangle.get_closest_by_coord = function(list, x, y) end

---Return the rectangle containing the `[X, Y]` point.
---
---@param list gears.geometry.Rectangle[] The list of objects to check.
---@param x number The X coordinate of the point.
---@param y number The Y coordinate of the point.
---@return gears.geometry.Rectangle | nil result The closest rectangle from `list` for a given point or `nil` if nothing is found.
rectangle.get_by_coord = function(list, x, y) end

---Get the nearest rectangle in a given direction.
---
---@generic TKey, TValue : gears.geometry.Rectangle
---@param direction 'up' | 'down' | 'left' | 'right' The direction relative to the rectangle.
---@param rectangles table<TKey, TValue> The list of rectangles to check.
---@param current TValue The current rectangle.
---@return TKey | nil result The key of the rectangle in `rectangles` or `nil` if nothing is found.
rectangle.get_in_direction = function(direction, rectangles, current) end

---Checks if two areas are exactly the same.
---
---@param a gears.geometry.Rectangle The first area.
---@param b gears.geometry.Rectangle The second area.
---@return boolean result True if the areas are the same, false otherwise.
rectangle.are_equal = function(a, b) end

---Checks if an area is within another area, this includes 100% of the total space.
---@param a gears.geometry.Rectangle The first area.
---@param b gears.geometry.Rectangle The second area.
---@return boolean result True if the area is within the other, false otherwise.
rectangle.is_inside = function(a, b) end

---Checks if two areas intersect.
---@param a gears.geometry.Rectangle The first area.
---@param b gears.geometry.Rectangle The second area.
---@return boolean result True if the areas intersect, false otherwise.
rectangle.area_intersect_area = function(a, b) end

---Get the intersection of two areas.
---@param a gears.geometry.Rectangle The first area.
---@param b gears.geometry.Rectangle The second area.
---@return gears.geometry.Rectangle result The intersection of the two areas.
rectangle.get_intersection = function(a, b) end

---Remove an area from a list, splitting the space between several area that can overlap.
---@param areas gears.geometry.Rectangle[] The list of areas to remove from.
---@param element gears.geometry.Rectangle The area to remove.
---@return gears.geometry.Rectangle[] result The list of areas that are left.
rectangle.area_remove = function(areas, element) end

return {
  rectangle = rectangle,
}
