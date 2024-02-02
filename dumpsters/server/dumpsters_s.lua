
local Core = Config.Core
local CoreFolder = Config.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()

--<!>-- SEARCH DUMPSTERS CODE START --<!>--
-- Item rewards for dumpsters adjust items in config.lua
RegisterServerEvent('bprp-dumpsters:server:SearchDumpster', function() 
    local source = source
    local Player  = Core.Functions.GetPlayer(source)
	local trashreward = Config.TrashRewardItem[math.random(1, #Config.TrashRewardItem)]
	local trash = Config.TrashItems[math.random(1, #Config.TrashItems)]
	local trash2 = Config.TrashItems[math.random(1, #Config.TrashItems)]
    if (1 >= math.random(1, 100)) then
        if Player.Functions.AddItem(trash, math.random(1,2)) and Player.Functions.AddItem(trash2, math.random(1,2)) and Player.Functions.AddItem(trashreward, 1) then   
		TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trash], 'add')
        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trash2], 'add')
        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trashreward], 'add')
        else
            TriggerClientEvent('bprp-dumpsters:notifications', source, Config.Lang['noinvent'], 'error')
        end
	elseif (2 >= math.random(1, 100)) then
        if Player.Functions.AddItem(trash, math.random(1,2)) and Player.Functions.AddItem(trashreward, 1) then   
		TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trash], 'add')
        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trashreward], 'add')
        else
            TriggerClientEvent('bprp-dumpsters:notifications', source, Config.Lang['noinvent'], 'error')
        end
	elseif (25 >= math.random(1, 100)) then
        if Player.Functions.AddItem(trash, math.random(1,2)) and Player.Functions.AddItem(trash2, math.random(1,2)) then   
		TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trash], 'add')
		TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trash2], 'add')
        else
            TriggerClientEvent('bprp-dumpsters:notifications', source, Config.Lang['noinvent'], 'error')
        end
    elseif (50 >= math.random(1, 100)) then
        if Player.Functions.AddItem(trash, math.random(1,2)) then   
		TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trash], 'add')
        else
            TriggerClientEvent('bprp-dumpsters:notifications', source, Config.Lang['noinvent'], 'error')
        end
	else
        TriggerClientEvent('bprp-dumpsters:notifications', source, Config.Lang['searchfailed'], 'error')
	end
end)
--<!>-- SEARCH DUMPSTERS CODE END --<!>--

--<!>-- SEARCH BIN CODE START --<!>--
-- Item rewards for dumpsters adjust items in config.lua
RegisterServerEvent('bprp-dumpsters:server:SearchBin', function() 
    local source = source
    local Player  = Core.Functions.GetPlayer(source)
	local trashreward = Config.TrashRewardItem[math.random(1, #Config.TrashRewardItem)]
	local trash = Config.TrashItems[math.random(1, #Config.TrashItems)]
	local trash2 = Config.TrashItems[math.random(1, #Config.TrashItems)]
    if (1 >= math.random(1, 100)) then
        if Player.Functions.AddItem(trash, math.random(1,2)) and Player.Functions.AddItem(trashreward, 1) then   
		TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trash], 'add')
        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trashreward], 'add')
        else
            TriggerClientEvent('bprp-dumpsters:notifications', source, Config.Lang['noinvent'], 'error')
        end
	elseif (25 >= math.random(1, 100)) then
        if Player.Functions.AddItem(trash, math.random(1,2)) and Player.Functions.AddItem(trash2, math.random(1,2)) then   
		TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trash], 'add')
		TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trash2], 'add')
        else
            TriggerClientEvent('bprp-dumpsters:notifications', source, Config.Lang['noinvent'], 'error')
        end
    elseif (50 >= math.random(1, 100)) then
        if Player.Functions.AddItem(trash, math.random(1,2)) then   
		TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[trash], 'add')
        else
            TriggerClientEvent('bprp-dumpsters:notifications', source, Config.Lang['noinvent'], 'error')
        end
	else
        TriggerClientEvent('nlrp-dumpsters:notifications', source, Config.Lang['searchfailed'], 'error')
	end
end)
--<!>-- SEARCH BIN CODE END --<!>--