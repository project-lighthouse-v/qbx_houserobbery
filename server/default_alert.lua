AddEventHandler('qbx_houserobbery:server:defaultAlert', function(playerSource, text)
    TriggerEvent('police:server:policeAlert', text, nil, playerSource)
end)
