RegisterNetEvent('qbx_houserobbery:client:dispatchAlert', function(text, coords)
    exports['ps-dispatch']:CustomAlert({
        message = text,
        dispatchCode = 'houserobbery',
        code = '10-90',
        icon = 'fas fa-house',
        priority = 2,
        coords = coords,
        gender = false,
        jobs = { 'leo' }
    })
end)
