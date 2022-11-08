---@meta

local stringify = {}

---Escape a string from XML char. Useful to set raw text in textbox.
---
---@param text string The text to escape.
---@return string result The escaped text.
stringify.xml_escape = function(text) end

---Unescape a string from entities.
---
---@param text string The text to unescape.
---@return string result The unescaped text.
stringify.xml_unescape = function(text) end

---Count number of lines in a string.
---
---@param text string The text to count lines.
---@return integer result The number of lines.
stringify.linecount = function(text) end

---Split a string into multiple lines.
---
---@param text string The text to split.
---@param width integer The maximum width of each line.
---@param indent? integer The number of spaces to indent each line. Default is `0`.
---@return string result The string with lines wrapped to width.
stringify.linewrap = function(text, width, indent) end

---Escape all special pattern-matching characters so that Lua interprets them literally instead of as a character class.
---
---@param str string The string to generate pattern for.
---@return string result The string with escaped characters.
stringify.quote_pattern = function(str) end

---Generate a pattern matching expression that ignores case.
---
---@param query string The original pattern matching expression.
---@return string result The pattern.
stringify.query_to_pattern = function(query) end

---Split separates a string containing a delimiter into the list of substrings between that delimiter.
---
---@param str string The string to split.
---@param delimiter string The delimiter to split the string with.
---@return table result A table with the split string.
stringify.split = function(str, delimiter) end

---Check if a string starts with another string.
---
---@param str string The string to check.
---@param substring string The substring to check for.
---@return boolean result True if the string starts with the substring.
stringify.startswith = function(str, substring) end

---Check if a string ends with another string.
---
---@param str string The string to check.
---@param substring string The substring to check for.
---@return boolean result True if the string ends with the substring.
stringify.endswith = function(str, substring) end

return stringify
