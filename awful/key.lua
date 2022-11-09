---@meta

---@class awful.key.KeyDescriptor
---@field key string The key to trigger an event.
---@field keygroup? string The key group to use. This parameter must be used as a replacement of the `key` parameter. Default is `nil`.
---@field modifiers awful.input.Modifiers[] The modifiers to use.
---@field on_press function The function to call when the key is pressed.
---@field on_release function The function to call when the key is released.

local input = {
  key = {
    ---The key groups names.
    ---
    ---@enum awful.key.KeyGroup
    keygroup = {
      ---The row of numbers on the top of the keyboard.
      NUMROW = 'numrow',

      ---The row of numbers on the right of the keyboard.
      NUMPAD = 'numpad',

      ---The left, right, up and down arrow keys.
      ARROWS = 'arrows',

      ---The function keys (F1 to F35).
      FKEYS = 'fkeys',
    },

    ---The key groups.
    keygroups = {
      ---The row of numbers on the top of the keyboard.
      numrow = {
        { '#10', 1 },
        { '#11', 2 },
        { '#12', 3 },
        { '#13', 4 },
        { '#14', 5 },
        { '#15', 6 },
        { '#16', 7 },
        { '#17', 8 },
        { '#18', 9 },
        { '#19', 0 },
      },

      ---The row of numbers on the right of the keyboard.
      numpad = {
        { '#87', 1 },
        { '#88', 2 },
        { '#89', 3 },
        { '#83', 4 },
        { '#84', 5 },
        { '#85', 6 },
        { '#79', 7 },
        { '#80', 8 },
        { '#81', 9 },
        { '#90', 10 },
      },

      ---The function keys (F1 to F35).
      fkeys = {
        { 'F1', 'F1' },
        { 'F2', 'F2' },
        { 'F3', 'F3' },
        { 'F4', 'F4' },
        { 'F5', 'F5' },
        { 'F6', 'F6' },
        { 'F7', 'F7' },
        { 'F8', 'F8' },
        { 'F9', 'F9' },
        { 'F10', 'F10' },
        { 'F11', 'F11' },
        { 'F12', 'F12' },
        { 'F13', 'F13' },
        { 'F14', 'F14' },
        { 'F15', 'F15' },
        { 'F16', 'F16' },
        { 'F17', 'F17' },
        { 'F18', 'F18' },
        { 'F19', 'F19' },
        { 'F20', 'F20' },
        { 'F21', 'F21' },
        { 'F22', 'F22' },
        { 'F23', 'F23' },
        { 'F24', 'F24' },
        { 'F25', 'F25' },
        { 'F26', 'F26' },
        { 'F27', 'F27' },
        { 'F28', 'F28' },
        { 'F29', 'F29' },
        { 'F30', 'F30' },
        { 'F31', 'F31' },
        { 'F32', 'F32' },
        { 'F33', 'F33' },
        { 'F34', 'F34' },
        { 'F35', 'F35' },
      },

      ---The left, right, up and down arrow keys.
      arrows = {
        { 'Left', 'Left' },
        { 'Right', 'Right' },
        { 'Up', 'Up' },
        { 'Down', 'Down' },
      },
    },

    ---The list of modifiers to ignore.
    ignore_modifiers = { 'Lock', 'Mod2' },

    ---Execute a key combination.
    ---
    ---@param mod awful.input.Modifiers[] The modifiers to use.
    ---@param key string The key to trigger an event.
    ---@deprecated This function is deprecated, please use `root.fake_input` instead.
    execute = function(mod, key) end,
  },
}

---Create a new key object.
---
---@param mod awful.input.Modifiers[] A list of modifier keys.
---@param key string The key to trigger an event.
---@param press function A function to call when the key is pressed.
---@param release? function A function to call when the key is released. Default is `nil`.
---@param data? table The user data for key. Default is `nil`.
---@overload fun(args: awful.key.KeyDescriptor): awful.key.KeyObject
---@return awful.key.KeyObject key A new key object.
input.key = function(mod, key, press, release, data) end

---@class awful.key.KeyObject
---@field key string The keyboard key used to trigger the event.
---@field modifiers awful.input.Modifiers[] The modifiers used to trigger the event.
---@field name? string The name of the event.
---@field description? string The description of the event.
---@field on_press? function The function to call when the key is pressed.
---@field on_release? function The function to call when the key is released.
local KeyObject = {}

---Execute this key object.
function KeyObject:trigger() end

---Compare two key objects with modifiers and key.
---
---@param pressed_modifiers awful.input.Modifiers[] The modifiers that are currently pressed.
---@param pressed_key string The key that is currently pressed.
function KeyObject:match(pressed_modifiers, pressed_key) end

return input.key
