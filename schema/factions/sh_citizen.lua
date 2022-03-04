
FACTION.name = "Citizen"
FACTION.description = "A regular human citizen enslaved by the Universal Union."
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = true
FACTION.models = {"models/player/zelpa/female_06.mdl", "models/player/zelpa/female_07.mdl"}

for i = 1, 4 do
	table.insert(FACTION.models, "models/player/zelpa/female_0"..i..".mdl")
end

for i = 1, 11 do
	table.insert(FACTION.models, "models/player/zelpa/male_0"..i..".mdl")
end


function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("suitcase", 1)
	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end

FACTION_CITIZEN = FACTION.index
