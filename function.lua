function insertIntoFunction()
    local _id = 0
    for k,v in pairs(Config.cfgFunct) do
        for _,vv in pairs(Config.cfgFunct[k]) do
        _id = _id + 1 
        local tmp = {id = _id, name = vv, func = function() mainCycle(vv) end, type = k}
        table.insert(Config.generalFunction, tmp)
        end
    end
end

function cycle(tmclick)
    _tmClick = tmclick
    for i=1, #Config.lcTask do
        if _tmClick % Config.lcTask[i].tmTask == 0 and Config.lcTask[i].status then
           for n=1, #Config.generalFunction do
                if Config.lcTask[i].nameTask == Config.generalFunction[n].type then
                    Config.generalFunction[n].func()
                end
            end
        end
    end
end

function setTask(id, status)
    Config.lcTask[id].status = status 
end

function moveTask(id, type)
    Config.generalFunction[id].type = type 
end

RegisterCommand("setTask", function(source, args)
    local _id = tonumber(args[1])
    local _bool = tonumber(args[2]) == 1 
    setTask(_id, _bool) 
end)

RegisterCommand("setAll", function(source, args)
    local _str = tostring(args[1])
    for i=1, #Config.generalFunction do
        moveTask(i, _str) 
    end
end)

RegisterCommand("changeTask", function(source, args)
    local _strSrc = tostring(args[1])
    local _str = tostring(args[2])
    for i=1, #Config.generalFunction do
        if Config.generalFunction[i].name == _strSrc then 
            moveTask(i, _str) 
            break
        end
    end
end)