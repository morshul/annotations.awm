---@meta

---@class awful.button.ButtonDescriptor
---@field button number The button to trigger an event.
---@field modifiers awful.input.Modifiers[] The modifiers to use.
---@field on_press function The function to call when the button is pressed.
---@field on_release function The function to call when the button is released.

local input = {
  button = {
    ---The list of modifiers to ignore.
    ignore_modifiers = { 'Lock', 'Mod2' },

    ---The mouse buttons names.
    ---
    ---@enum awful.button.ButtonNames
    names = {
      ---The left mouse button.
      LEFT = 1,

      ---The right mouse button.
      RIGHT = 3,

      ---The middle mouse button.
      MIDDLE = 2,

      ---The scroll up mouse button.
      SCROLL_UP = 4,

      ---The scroll down mouse button.
      SCROLL_DOWN = 5,
    },
  },
}

---Create a new button object.
---
---@param mod awful.input.Modifiers[] A list of modifier keys.
---@param button number The button to trigger an event.
---@param press function A function to call when the button is pressed.
---@param release? function A function to call when the button is released. Default is `nil`.
---@overload fun(args: awful.button.ButtonDescriptor): awful.button.ButtonObject
---@return awful.button.ButtonObject button A new button object.
input.button = function(mod, button, press, release) end

---@class awful.button.ButtonObject
---@field button number The mouse button used to trigger the event.
---@field modifiers awful.input.Modifiers[] The modifiers used to trigger the event.
---@field name? string The name of the event.
---@field description? string The description of the event.
---@field group? string The group of the event.
---@field on_press? function The function to call when the button is pressed.
---@field on_release? function The function to call when the button is released.
local ButtonObject = {}

---Execute this button object.
function ButtonObject:trigger() end

return input.button
