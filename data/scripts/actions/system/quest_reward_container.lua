-- Quests rewards.
-- You just need to add a new table in the data/startup/tables/chest.lua file and this script will pull everything from there.
local containerReward = Action()
function containerReward.onUse(player, item, fromPosition, itemEx, toPosition)
	local setting = ChestUnique[item.uid]
	if player:getStorageValue(setting.storage) < 0 then
		local backpack = player:getSlotItem(CONST_SLOT_BACKPACK)
		if backpack and backpack:getEmptySlots(true) > 1 then
			if (player:getFreeCapacity() / 100) > setting.weight then
				local container = player:addItem(setting.itemBag)
				for i = 1, #setting.itemReward do
					local itemid = setting.itemReward[i][1]
					local count = setting.itemReward[i][2]
					if ItemType(itemid):isStackable() or ItemType(itemid):getCharges() then
						container:addItem(itemid, count)
					else
						for c = 1, count do
							container:addItem(itemid, 1)
						end
					end
				end
				if setting.keyItem then
					keyAction = container:addItem(setting.keyItem, 1)
					keyAction:setActionId(setting.keyAction)
					player:setStorageValue(setting.storage, 1)
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. getItemName(setting.itemBag) .. ".")
				else
					player:setStorageValue(setting.storage, 1)
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. getItemName(setting.itemBag) .. ".")
				end
			else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. getItemName(setting.itemBag) .. ". Weighing " .. setting.weight .. " oz it is too heavy.")
			end
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. getItemName(setting.itemBag) .. ", but you have no room to take it")
		end
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The ".. getItemName(setting.itemId) .. " is empty.")
	end
	return true
end

for uniqueids = 10001,14000 do
	containerReward:uid(uniqueids)
end

containerReward:register()
