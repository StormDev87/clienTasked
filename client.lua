local tmclick = 1 
Citizen.CreateThread(function()
    insertIntoFunction()
    while true do
        tmclick = tmclick + 1
        cycle(tmclick)
        Citizen.Wait(1)
    end
end)

function mainCycle(data)
    --You Must Insert a ElseIf with the function name. 
    --Example
    if data == "fast_1" then
        print("Hi i'm in: ", data)
    elseif data == "slow_1" then
        print("Hi i'm in: ", data)
    end
end    

