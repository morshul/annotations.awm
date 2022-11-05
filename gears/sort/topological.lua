---A topological sorting class.
---
---The object returned by this function allows to create simple dependency graphs.
---It can be used for decision making or ordering of complex sequences.
---
---@return gears.sort.Topological
local topological = function() end

---@class gears.sort.Topological
local Topological = {}

---Ensure that `node` appears after all `dependencies`.
---
---@param node any The node that edges should be added to.
---@param dependencies table The list of nodes that have to appear before the node.
function Topological:append(node, dependencies) end

---Ensure that `node` appears before all `subordinates`.
---
---@param node any The node that edges should be added to.
---@param subordinates table The list of nodes that have to appear after the node.
function Topological:prepend(node, subordinates) end

---Create a copy of this topological sort.
---This is useful to backup it before adding elements that can potentially have circular dependencies and thus render the original useless.
---
---@return gears.sort.Topological result A copy of this topological.
function Topological:clone() end

---Remove a node from the topological map.
---
---@param node any The node to remove.
function Topological:remove(node) end

---Try to sort the nodes.
---
---@return gears.sort.Topological result A sorted list of nodes.
function Topological:sort() end

return topological
