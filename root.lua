---@meta

---@alias awesome.Root.EventType
--- | 'key_press' # Send a key press event.
--- | 'key_release' # Send a key release event.
--- | 'button_press' # Send a button press event.
--- | 'button_release' # Send a button release event.
--- | 'motion_notify' # Send a motion notify event.

---@alias awesome.Root.CursorType
--- | 'num_glyphs'
--- | 'arrow'
--- | 'based_arrow_down'
--- | 'based_arrow_up'
--- | 'boat'
--- | 'bogosity'
--- | 'bottom_left_corner'
--- | 'bottom_right_corner'
--- | 'bottom_side'
--- | 'bottom_tee'
--- | 'box_spiral'
--- | 'center_ptr'
--- | 'circle'
--- | 'clock'
--- | 'coffee_mug'
--- | 'cross'
--- | 'crosshair'
--- | 'cross_reverse'
--- | 'cursor'
--- | 'diamond_cross'
--- | 'dotbox'
--- | 'dot'
--- | 'double_arrow'
--- | 'draft_large'
--- | 'draft_small'
--- | 'draped_box'
--- | 'exchange'
--- | 'fleur'
--- | 'gobbler'
--- | 'gumby'
--- | 'hand'
--- | 'heart'
--- | 'icon'
--- | 'iron_cross'
--- | 'leftbutton'
--- | 'left_ptr'
--- | 'left_side'
--- | 'left_tee'
--- | 'll_angle'
--- | 'lr_angle'
--- | 'man'
--- | 'middlebutton'
--- | 'mouse'
--- | 'pencil'
--- | 'pirate'
--- | 'plus'
--- | 'question_arrow'
--- | 'rightbutton'
--- | 'right_ptr'
--- | 'right_side'
--- | 'right_tee'
--- | 'rtl_logo'
--- | 'sailboat'
--- | 'sb_down_arrow'
--- | 'sb_h_double_arrow'
--- | 'sb_left_arrow'
--- | 'sb_right_arrow'
--- | 'sb_v_double_arrow'
--- | 'shuttle'
--- | 'sizing'
--- | 'spider'
--- | 'spraycan'
--- | 'star'
--- | 'target'
--- | 'tcross'
--- | 'top_left_arrow'
--- | 'top_left_corner'
--- | 'top_right_corner'
--- | 'top_side'
--- | 'top_tee'
--- | 'trek'
--- | 'ul_angle'
--- | 'umbrella'
--- | 'ur_angle'
--- | 'watch'
--- | 'xterm'

---APIs to interact with the root window.
---
---X11 windows are stored in a tree structure. Each window can have children.
---A common example of this are modal dialog windows.
---
---This tree goes beyond a process. The root window is where the wallpaper is drawn.
---It span the combined geometry of every screen. It also persist when AwesomeWM is restarted.
---
---@class awesome.Root
---@field keys table A table with global key bindings.
---@field buttons table A table with global mouse bindings.
root = {}

---Send a fake X11 event to the root window.
---
---@param event_type awesome.Root.EventType The event type.
---@param detail string | number | boolean Can be the key code, or the button number, or a boolean which if true makes the coordinates relatives.
---@param x number The X coordinate.
---@param y number The Y coordinate.
root.fake_input = function(event_type, detail, x, y) end

---Set the root cursor.
---
---@param cursor_name awesome.Root.CursorType The cursor name.
root.cursor = function(cursor_name) end

---Get the drawins attached to a screen.
---
---@return table result A table with all drawins.
root.drawins = function() end

---Get the size of the root window.
---
---@return integer width The width of the root window.
---@return integer height The height of the root window.
root.size = function() end

---Get the physical size of the root window.
---
---@return integer width The width of the root window.
---@return integer height The height of the root window.
root.size_mm = function() end

---Get the attached tags.
---
---@return table tags A table with all tags.
root.tags = function() end

---Get the wallpaper as a Cairo surface or set it as a Cairo pattern.
---
---@param pattern unknown The pattern to set.
---@return unknown surface The wallpaper as a Cairo surface.
---@deprecated This function is deprecated, please use `awful.wallpaper`.
root.wallpaper = function(pattern) end
