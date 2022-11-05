---@class gears.timer.TimerDescriptor
---@field timeout number The timeout in seconds.
---@field autostart? boolean Whether the timer should be started automatically. Default is `false`.
---@field call_now? boolean Whether the callback should be called immediately. Default is `false`.
---@field single_shot? boolean Run the timer only once. Default is `false`.
---@field callback? function The callback function.

---@alias gears.timer.TimerEvent
--- | 'start' # The timer was started.
--- | 'stop' # The timer was stopped.
--- | 'timeout' # The timer timed out.
--- | 'property::timeout' # The timeout property changed.

local timing = {
  timer = {
    ---Create a simple timer for calling the `callback` function continuously.
    ---
    ---This is a small wrapper around `gears.timer`, that creates a timer based on `callback`.
    ---The timer will run continuously and call `callback` every `timeout` seconds.
    ---It is stopped when `callback` returns `false`, when `callback` throws an error or when the `:stop()` method is called on the return value.
    ---
    ---@param timeout number The timeout in seconds.
    ---@param callback function The callback function.
    ---@return gears.timer.Timer timer The new timer object.
    start_new = function(timeout, callback) end,

    ---Create a simple timer for calling the `callback` function continuously.
    ---
    ---This function is almost identical to `gears.timer.start_new`.
    ---The only difference is that this does not prevent the callback function from being garbage collected.
    ---In addition to the conditions in `gears.timer.start_new`, this timer will also stop if `callback` was garbage collected since the previous run.
    ---
    ---@param timeout number The timeout in seconds.
    ---@param callback function The callback function.
    ---@return gears.timer.Timer timer The new timer object.
    weak_start_new = function(timeout, callback) end,

    ---Run all pending delayed calls now.
    ---This function should best not be used at all, because it means that less batching happens and the delayed calls run prematurely.
    run_delayed_calls_now = function() end,

    ---Call the given function at the end of the current GLib event loop iteration.
    ---
    ---@param callback function The function to call.
    ---@param ... any Extra arguments to pass to the function.
    delayed_call = function(callback, ...) end,
  },
}

---Create a new timer object.
---
---@param args gears.timer.TimerDescriptor The timer arguments.
---@return gears.timer.Timer timer The new timer.
timing.timer = function(args) end

---@class gears.timer.Timer : gears.object.Object
---@field started boolean The timer is started.
---@field timeout number The timer timeout value.
local Timer = {}

---Start the timer.
function Timer:start() end

---Stop the timer.
function Timer:stop() end

---Restart the timer. This is equivalent to calling `:stop()` and `:start()`.
function Timer:again() end

---Connect to a signal.
---
---@param name gears.timer.TimerEvent The name of the signal.
---@param func function The callback to call when the signal is emitted.
function Timer:connect_signal(name, func) end

---Connect to a signal weakly.
---
---@param name gears.timer.TimerEvent The name of the signal.
---@param func function The callback to call when the signal is emitted.
function Timer:weak_connect_signal(name, func) end

---Emit a signal
---
---@param name gears.timer.TimerEvent The name of the signal.
---@param ... any Extra arguments to pass to the callback.
function Timer:emit_signal(name, ...) end

---Disconnect from a signal.
---
---@param name gears.timer.TimerEvent The name of the signal.
---@param func function The callback that should be disconnected.
---@deprecated This function is not available in `gears.timer.Timer`
function Timer:disconnect_signal(name, func) end

return timing.timer
