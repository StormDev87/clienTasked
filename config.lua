Config = {}

Config.lcTask = {
    {nameTask = "fast", status = true, tmTask = 25}, --eseguito ogni centSec
    {nameTask = "slow", status = true, tmTask = 100},
    {nameTask = "back", status = true, tmTask = 250},
    {nameTask = "LowPr", status = true, tmTask = 1000},
    {nameTask = "hide", status = false, tmTask = 10000},
}

Config.generalFunction = {
}

Config.cfgFunct = {
    ["fast"] = {
       "fast_1",
       "fast_2",
       "fast_3",
       "fast_4",
    },
    ["slow"] = {
        "slow_1",
        "slow_2",
        "slow_3",
        "slow_4",
     },
    ["back"] = {
        "back_1",
        "back_2",
        "back_3",
        "back_4",
     },
    ["LowPr"] = {
        "lowPr_1",
        "lowPr_2",
        "lowPr_3",
        "lowPr_4",
     },
     ["hide"] = {
     },
}


