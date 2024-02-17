local attacking
local attacktick

local f = CreateFrame'Frame'
f:RegisterEvent'PLAYER_ENTER_COMBAT'
f:RegisterEvent'PLAYER_LEAVE_COMBAT'
f:SetScript('OnEvent', function()
	attacking = event == 'PLAYER_ENTER_COMBAT'
end)

SLASH_ATTACK1 = '/wfcheck'
function SlashCmdList.ATTACK(command)
	if (attacking) and (not attacktick or attacktick < GetTime()) then
			attacktick = GetTime() + 2
if not
buffed("Windfury Totem 3", 'player') then
if not
buffed("Windfury Totem 1", 'player') then
SendChatMessage("NEED WINDFURY!!", "YELL")
end
end
end
end

f:SetScript('OnUpdate', function()
	f:SetScript('OnUpdate', nil)
	for i = 1, GetNumMacros() do
		if GetMacroInfo(i) == 'wfcheck' then
			EditMacro(i, 'wfcheck', 140, '/wfcheck', 1)
			return
		end
	end
	CreateMacro('wfcheck', 140, '/wfcheck', 1)
end)