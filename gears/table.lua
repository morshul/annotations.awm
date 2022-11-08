---@meta

local collections = {}

---Join all tables given as arguments.
---This will iterate over all tables and insert their entries into a new table.
---
---@param ... table Tables to join.
---@return table result A new table containing all entries from the arguments.
collections.join = function(...) end

---Override elements in the target table with values from the source table.
---
---Note that this method doesn't copy entries found in `__index`.
---Nested tables are copied by reference and not recursed into.
---
---@param target table The target table. Values from `source` will be copied into this table.
---@param source table The source table. It's values will be copied into `target`.
---@param raw? boolean If `true`, values will be assigned with `rawset`. This will bypass metamethods on `target`.
---@return table result The target table.
collections.crush = function(target, source, raw) end

---Pack all elements with an integer key into a new table.
---While both Lua and LuaJIT implement `__len` over sparse tables, the standard defines it as an implementation detail.
---
---This function removes any entries with non-numeric keys.
---
---@param target table A potentially sparse table.
---@return table result A packed table with only numeric keys.
collections.from_sparse = function(target) end

---Check if a table has an item and return its key.
---
---@param target table The table.
---@param item any The item to look for in values of the table.
---@return string | number result The key of the item.
collections.hasitem = function(target, item) end

---Get all matching table keys for a `matcher` function.
---
---@generic TKey, TValue
---@param target table<TKey, TValue> The table.
---@param matcher fun(key: TKey, value: TValue): boolean A function taking the key and value as arguments and returning a boolean.
---@param ordered? boolean If `true`, only look for continuous numeric keys. Default is `false`.
---@param max? integer The maximum number of keys to return. Default is `nil`
---@return table<TKey, TValue> | nil result An ordered table with all the keys or `nil` if none were found.
collections.find_keys = function(target, matcher, ordered, max) end

---Find the first key that matches a function.
---
---@generic TKey, TValue
---@param target table<TKey, TValue> The table.
---@param matcher fun(key: TKey, value: TValue): boolean A function taking the key and value as arguments and returning a boolean.
---@param ordered? boolean If `true`, only look for continuous numeric keys. Default is `false`.
---@return TKey | nil result The table key or `nil`.
collections.find_first_key = function(target, matcher, ordered) end

---Get a sorted table with all keys from a table.
---
---@param target table The table for which the keys to get.
---@return table result A table with keys.
collections.keys = function(target) end

---Get the number of keys in a table, both integer and string indicies.
---
---This is functionally equivalent, but faster than `gears.table.keys(target)`.
---
---@param target table The table for which to count the keys.
---@return number result The number of keys in the table.
collections.count_keys = function(target) end

---Filter a table's keys for certain content type.
---
---@param target table The table to retrieve the keys for.
---@param ... string The types to look for.
---@return table result A filtered table.
collections.keys_filter = function(target, ...) end

---Reverse a table.
---
---@param target table The table to reverse.
---@return table result A reversed table.
collections.reverse = function(target) end

---Get a table with all values from a table.
---
---@param target table The table for which the values to get.
---@param deep? boolean If `true`, recurse into nested tables. Default is `true`.
---@return table result A table with values.
collections.clone = function(target, deep) end

---Get the next (or previous) value from a table and cycle if necessary.
---
---If the table contains the same value multiple type (aka, is not a set), the `first_index` has to be specified.
---
---@generic TKey, TValue
---@param target table<TKey, TValue> The input table.
---@param value TValue The start value. Must be an element of the input table `target`.
---@param step_size? integer The amount to increment the index by. When this is negative, the function will cycle through the table backwards.
---@param filter? fun(value: TValue): boolean An optional filter function. It receives a value from the table as parameter and should return a boolean. If it returns `false`, the value is skipped and `cycle_value` tries the next one.
---@param start_at? integer Where to start the lookup from. Default is `1`.
---@return number | nil result The next eligible value. If no value matches, nil is returned.
collections.cycle_value = function(target, value, step_size, filter, start_at) end

---Iterate over a table.
---
---Returns an iterator to cycle through all elements of a table that match a given criteria, starting from the first element or the given index.
---
---@generic TKey, TValue
---@param target table<TKey, TValue> The input table.
---@param filter fun(value: TValue): boolean A function that takes a value as argument and returns a boolean. If it returns `true`, the value is returned by the iterator.
---@param start? integer The index to start the iteration from. Default is `1`.
collections.iterate = function(target, filter, start) end

---Merge items from the source table into the target table.
---
---Note that this only considers the array part of `source` (same semantics as `ipairs`).
---Nested tables are copied by reference and not recursed into.
---
---@param target table The target table. Values from `source` will be copied into this table.
---@param source table The source table. It's values will be copied into `target`.
collections.merge = function(target, source) end

---Update the `target` table with entries from the new table.
---
---Compared to `gears.table.merge`, this version is intended to work using both an `identifier` function and a `merger` function.
---This works only for indexed tables.
---
---The main use case is when changing the table reference is not possible or when the `target` contains additional content that must be kept.
---
---Note that calling this function involve a lot of looping and should not be done often.
---
---@generic TKey, TValue
---@param target table<TKey, TValue> The table to modify.
---@param new table<TKey, TValue> The table which contains the new content.
---@param identifier fun(value: TValue): any A function which take the table entry (either from the `target` or `new` table) and return an unique identifier. The identifier type isn't important as long as `==` works to compare them.
---@param merger? fun(target: table<TKey, TValue>, source: table<TKey, TValue>): table<TKey, TValue> A function takes the entry to modify as first parameter and the new entry as second. The function must return the merged value. If none is provided, there is no attempt to merge the content.
---@return table<TKey, TValue> output The target table (for daisy chaining).
---@return table<TKey, TValue> added The list of added entries.
---@return table<TKey, TValue> removed The list of removed entries.
---@return table<TKey, TValue> modified The list of modified entries.
collections.diff_merge = function(target, new, identifier, merger) end

---Map a function to a table.
---
---The function is applied to each value in the table, returning a modified table.
---
---@generic TKey, TValue
---@param func fun(value: TValue): TValue A function that takes a value as argument and returns a new value.
---@param target table<TKey, TValue> 	The container table whose values will be operated on.
---@return table<TKey, TValue> result A new table with the modified values.
collections.map = function(func, target) end

return collections
