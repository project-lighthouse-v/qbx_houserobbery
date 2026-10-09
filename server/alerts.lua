local config = require 'config.server'

AddEventHandler('qbx_houserobbery:server:dispatchAlert', function(playerSource, text, coords)
    if config.useExternalDispatch and config.dispatch == 'ps-dispatch' then
        if GetResourceState('ps-dispatch') == 'started' then
            TriggerClientEvent('qbx_houserobbery:client:dispatchAlert', playerSource, text, coords)
            return
        end

        lib.print.warn('ps-dispatch is configured for qbx_houserobbery but is not started; using the default police alert')
    elseif config.useExternalDispatch and config.dispatch ~= 'ps-dispatch' then
        lib.print.warn(('unsupported qbx_houserobbery dispatch "%s"; using the default police alert'):format(tostring(config.dispatch)))
    end

    TriggerEvent('qbx_houserobbery:server:defaultAlert', playerSource, text)
end)
