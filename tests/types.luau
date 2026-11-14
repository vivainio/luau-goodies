--!strict
export type Point = { x: number, y: number, [string]: any }
type Fn<T, U = string> = (a: T, b: string?) -> (U, number)
local function add<T>(a: number, b: T?): number
	return a + b
end
local obj = {}
function obj:run(x: Point): ()
	self:go(x)
end
local v = x :: number
local msg = if v > 1 then "big" elseif v == 0 then "zero" else "small"
print(`hi {name} and {if v then 1 else 2}`, 1_000, 0b101)
for i = 1, 10 do
	if i % 2 == 0 then continue end
	total += i
end
local s: typeof(v) | "a" = f(if a then b else c)
