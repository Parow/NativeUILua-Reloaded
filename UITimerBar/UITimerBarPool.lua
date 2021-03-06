---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dylan Malandain.
--- DateTime: 26/01/2019 17:36
---
UITimerBarPool = setmetatable({}, UITimerBarPool)
UITimerBarPool.__index = UITimerBarPool

---New
---@return table
function UITimerBarPool.New()
    local _UITimerBarPool = {
        TimerBars = {},
    }
    return setmetatable(_UITimerBarPool, UITimerBarPool)
end

function UITimerBarPool:Add(TimerBar)
    if TimerBar() == "UITimerBarProgressItem" or "UITimerBarItem" then
        table.insert(self.TimerBars, TimerBar)
    end
end

---Draw
function UITimerBarPool:Draw()
    for _, TimerBar in pairs(self.TimerBars) do
        TimerBar:Draw(38 * _)
    end
end