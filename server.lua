ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('esx:discardInventoryItem')
AddEventHandler('esx:discardInventoryItem', function(item, count)

	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)

  xPlayer.removeInventoryItem(item, count, true)

end)

RegisterServerEvent('esx:modelChanged')
AddEventHandler('esx:modelChanged', function(id)
	TriggerClientEvent('esx:modelChanged', id)
end)

-- Enter as many items as you want - dont forget you need each item as picture and in your items database
ESX.RegisterUsableItem('pistol_ammo_box', function(source) 	-- put here the item that should be splitted in several items
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('pistol_ammo_box', 1)	-- put here your item again - here the number (1) is for the quantity should removed from your inventory
	xPlayer.addInventoryItem('pistol_clip', 2)		-- put here your item you would receive - here the number (2) is for the quantity you put in your inventory 
end)

ESX.RegisterUsableItem('smg_ammo_box', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('smg_ammo_box', 1)
	xPlayer.addInventoryItem('smg_clip', 2)
end)

ESX.RegisterUsableItem('rifle_ammo_box', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('rifle_ammo_box', 1)
	xPlayer.addInventoryItem('rifle_clip', 2)
end)

ESX.RegisterUsableItem('shotgun_ammo_box', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('shotgun_ammo_box', 1)
	xPlayer.addInventoryItem('shotgun_clip', 4)
end)
