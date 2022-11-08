---@meta

local filesystem = {}

---Create a directory, including all missing parent directories.
---
---@param path string The path to create.
---@return boolean result True if the directory was created, false otherwise.
filesystem.make_directories = function(path) end

---Create all parent directories for a given path.
---
---@param path string 	The path whose parents should be created.
---@return boolean result True if the parent directories were created, false otherwise.
filesystem.make_parent_directories = function(path) end

---Check if a file exists, is readable and not a directory.
---
---@param file_path string The path to the file.
---@return boolean result True if the file exists and is readable, false otherwise.
filesystem.file_readable = function(file_path) end

---Check if a file exists, is executable and not a directory.
---
---@param file_path string The path to the file.
---@return boolean result True if the file exists and is executable, false otherwise.
filesystem.file_executable = function(file_path) end

---Check if a path exists, is readable and a directory.
---
---@param path string The path to the directory.
---@return boolean result True if the path exists and is a directory, false otherwise.
filesystem.dir_readable = function(path) end

---Check if a path is a directory.
---
---@param path string The path to the directory.
---@return boolean result True if the path is a directory, false otherwise.
filesystem.is_dir = function(path) end

---Get the configuration directory according to the XDG Base Directory Specification.
---
---@return string result The path to the configuration directory.
filesystem.get_xdg_config_home = function() end

---Get the cache directory according to the XDG Base Directory Specification.
---
---@return string result The path to the cache directory.
filesystem.get_xdg_cache_home = function() end

---Get the data directory according to the XDG Base Directory Specification.
---
---@return string result The path to the data directory.
filesystem.get_xdg_data_home = function() end

---Get the data directories according to the XDG Base Directory Specification.
---
---@return string[] result The paths to the data directories.
filesystem.get_xdg_data_dirs = function() end

---Get the AwesomeWM configuration directory. This is the directory where the contains the `rc.lua` file.
---
---@return string result The path to the user's configuration directory.
filesystem.get_configuration_dir = function() end

---Get the path to a directory that should be used for caching data.
---
---@return string result The path to the cache directory.
filesystem.get_cache_dir = function() end

---Get the path to the directory where themes are installed.
---
---@return string result The path to the themes directory.
filesystem.get_themes_dir = function() end

---Get the path to the directory where icons are installed.
---
---@return string result The path to the icons directory.
filesystem.get_awesome_icon_dir = function() end

---Get the user's configuration or cache directory.
---It first checks if the environment variable `XDG_CONFIG_HOME` or `XDG_CACHE_HOME` is set.
---If it is, it returns the value of the variable.
---Otherwise, it returns the value of `~/.config` or `~/.cache`.
---
---@param directory 'config' | 'cache' The directory to get.
---@return string result The path to the user's configuration or cache directory.
filesystem.get_dir = function(directory) end

---Get the name of a random file in a directory.
---
---@param path string The path to the directory.
---@param extensions? string[] The extensions of the files to consider.
---@param absolute? boolean If true, the path will be absolute. Default is `false`.
---@return string result The path to the random file. If `absolute` is `true`, the path will be absolute.
filesystem.get_random_file_from_dir = function(path, extensions, absolute) end

return filesystem
