local awful = {}

---@alias awful.input.Modifiers
--- | 'Any' # Any modifier. This is a special value that will match any modifier.
--- | 'Shift' # The Shift key.
--- | 'Control' # The Control key.
--- | 'Lock' # The Caps Lock key
--- | 'Mod1' # The first modifier key. This is typically the Alt key.
--- | 'Mod2' # The second modifier key. This is typically the Num Lock key.
--- | 'Mod3' # The third modifier key. This is typically the Scroll Lock key.
--- | 'Mod4' # The fourth modifier key. This is typically the Windows key.
--- | 'Mod5' # The fifth modifier key. This is typically the Menu key.

awful.key = require('awful.key')
awful.button = require('awful.button')

return awful
