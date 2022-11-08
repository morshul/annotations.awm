---@meta

---@alias awesome.AwesomeEvents
--- | 'debug::error' # A call into the Lua code aborted with an error.
--- | 'debug::deprecation' # A deprecated API was used.
--- | 'debug::index::miss' # An invalid key was read from an object.
--- | 'debug::newindex::miss' # An invalid key was written to an object.
--- | 'systray::update' # The systray should be updated.
--- | 'wallpaper_changed' # The wallpaper has changed.
--- | 'xkb::map_changed' # The XKB keyboard layout has changed.
--- | 'xkb::group_changed' # The XKB keyboard group has changed.
--- | 'refresh' # The AwesomeWM was refreshed.
--- | 'startup' # AwesomeWM is about to enter the event loop.
--- | 'exit' # AwesomeWM is about to exit.
--- | 'screen::changed' # The output status of a screen has changed.
--- | 'spawn::canceled' # A spawn request was canceled.
--- | 'spawn::change' # A spawn request has changed.
--- | 'spawn::completed' # A spawn request has completed.
--- | 'spawn::initiated' # A spawn request has been initiated.
--- | 'spawn::timeout' # A spawn request has timed out.

---AwesomeWM lifecycle and low-level APIs.
---
---This module contains the functions and signals to manage the lifecycle of the AwesomeWM process.
---It allows to execute code at specific point from the early initialization all the way to the last events before exiting or restarting.
---
---Additionaly it handles signals for spawn and keyboard related events.
---
---@class awesome.AwesomeRT
---@field version string The version of AwesomeWM.
---@field release string The release name of AwesomeWM.
---@field api_level string The API level of AwesomeWM.
---@field conffile string The path to the configuration file.
---@field startup boolean True if AwesomeWM is starting up, false otherwise.
---@field startup_errors string The errors that occured during the startup.
---@field composite_manager_running boolean True if a composite manager is running, false otherwise.
---@field unix_signal table A table of unix signals that AwesomeWM is listening to.
---@field hostname string The hostname of the computer.
---@field themes_path string The path to the themes directory.
---@field icon_path string The path to the icons directory.
awesome = {}

---Register a new X property.
---
---@param name string The name of the property.
---@param type string The type of the property.
awesome.register_xproperty = function(name, type) end

---Quit AwesomeWM.
---
---@param code? integer The exit code. Default is 0.
awesome.quit = function(code) end

---Restart AwesomeWM.
awesome.restart = function() end

---Execute another application, probably a window manager, to replace AwesomeWM.
---
---@param command string The command to execute.
awesome.exec = function(command) end

---Send a signal to a process.
---
---@param process_id integer The process identifier.
---@param signal integer The signal to send. See `awesome.unix_signal` for a list of signals.
---@return boolean result True if the signal was sent, false otherwise.
awesome.kill = function(process_id, signal) end

---Synchronize the AwesomeWM state with the X server.
---This is needed in the test suite to avoid some race conditions.
---You should never need to use this function.
awesome.sync = function() end

---Translate a `GdkPixBuf` to a Cairo surface.
---
---@param pixbuf unknown The `GdkPixBuf` to translate.
---@param path string The `GdkPixBuf` origin path.
---@return unknown surface The Cairo surface.
awesome.pixbuf_to_surface = function(pixbuf, path) end

---Load an image from a file.
---
---@param path string The path to the image file.
---@return unknown surface The Cairo surface.
---@return nil | string error The error message if the image could not be loaded.
awesome.load_image = function(path) end

---Set the preferred size for client icons.
---
---@param size integer The size of the icons in pixels.
awesome.set_preferred_icon_size = function(size) end

---Connect to a signal.
---
---@param name awesome.AwesomeEvents The name of the signal.
---@param func function The callback to call when the signal is emitted.
awesome.connect_signal = function(name, func) end

---Disconnect from a signal.
---
---@param name awesome.AwesomeEvents The name of the signal.
---@param func function The callback to disconnect.
awesome.disconnect_signal = function(name, func) end

---Emit a signal.
---
---@param name awesome.AwesomeEvents The name of the signal.
---@param ...? any The arguments to pass to the callbacks.
awesome.emit_signal = function(name, ...) end

---Spawn a new program. The program will be started in the default screen.
---
---@param cmd? table The environment to use for the spawned program. Without this the spawned process inherits awesome's environment. Default is `nil`.
---@param use_sn? boolean Use the startup notification protocol. Default is `false`.
---@param stdin? boolean Redirect stdin to the spawned program. Default is `false`.
---@param stdout? boolean Redirect stdout to the spawned program. Default is `false`.
---@param stderr? boolean Redirect stderr to the spawned program. Default is `false`.
---@param exit_callback? fun(type: 'exit' | 'signal', code: integer) The callback to call when the program exits. Default is `nil`.
---@return integer | string result The process identifier, if the program was started successfully. Or an error message.
---@return string sn_id The startup notification identifier, if the program was started successfully and `use_sn` is `true`.
---@return integer stdin The stdin identifier, if the program was started successfully and `stdin` is `true`.
---@return integer stdout The stdout identifier, if the program was started successfully and `stdout` is `true`.
---@return integer stderr The stderr identifier, if the program was started successfully and `stderr` is `true`.
awesome.spawn = function(cmd, use_sn, stdin, stdout, stderr, exit_callback) end

---Switch the keyboard layout.
---
---@param number 0 | 1 | 2 | 3 The keyboard layout number.
awesome.xkb_set_layout_group = function(number) end

---Get the current keyboard layout.
---
---@return integer layout The current keyboard layout.
awesome.xkb_get_layout_group = function() end

---Get the layout short name.
---
---@return string name The description of the current keyboard layout.
awesome.xkb_get_group_names = function() end
