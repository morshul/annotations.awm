---@meta

local gears = {}

gears.object = require('gears.object')
gears.protected_call = require('gears.protected_call')
gears.table = require('gears.table')
gears.string = require('gears.string')
gears.math = require('gears.math')
gears.geometry = require('gears.geometry')
gears.filesystem = require('gears.filesystem')
gears.debug = require('gears.debug')
gears.timer = require('gears.timer')
gears.sort = {
  topological = require('gears.sort.topological'),
}

---@deprecated This module is deprecated, please use `awful.wallpaper`.
gears.wallpaper = {}

return gears
