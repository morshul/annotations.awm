---@meta

local mathematics = {}

---Return all subsets of a specific set.
---This function, giving a set, will return all subset it.
---For example, if we consider a set with value `{ 10, 15, 34 }`, it will return a table containing 2^n set: `{ }`, `{ 10 }`, `{ 15 }`, `{ 34 }`, `{ 10, 15 }`, `{ 10, 34 }`, etc.
---
---@param set number[] The set to get all subsets from.
---@return number[] result A table containing all subsets.
mathematics.subsets = function(set) end

---Make `index` cycle.
---@param length integer The length of the cycle.
---@param index integer The index to cycle.
---@return integer | nil result The cycled index or `nil` if `length` is less or equal to 0.
mathematics.cycle = function(length, index) end

---Round a number to the nearest integer.
---@param x number The number to round.
---@return integer result The rounded number.
mathematics.round = function(x) end

---Return a sign of the number `x`.
---@param x number The number to get the sign from.
---@return integer result Returns `1` if `x` is greater than 0, `-1` if `x` is less than 0, and `0` if `x` is equal to 0.
mathematics.sign = function(x) end

return mathematics
