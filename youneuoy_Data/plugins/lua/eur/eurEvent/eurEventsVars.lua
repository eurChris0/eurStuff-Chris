local elves_0_desc = [[Placeholder
Desc]]
local lorien_0_desc = [[Placeholder
Desc]]
local lorien_1_desc = [[Placeholder
Desc]]
local lorien_2_desc = [[Placeholder
Desc]]

EUR_EVENTS = {
    ["ireland"] = {
        [0] = {
            name = "Mirror of Galadriel",
            desc = lorien_0_desc,
            func = nil,
            cost = 2500,
            cooldown = 40,
            active_cooldown = 0,
            duration = 6,
            image = nil,
            unlocked = false,
            locked_desc = "Our lady's efforts are needed in the defence of Lorien, reclaim Amon Lanc to unlock.",
        },
        [1] = {
            name = "Yavanna's Blessing",
            desc = lorien_1_desc,
            func = nil,
            cost = 2000,
            cooldown = 30,
            active_cooldown = 0,
            duration = 5,
            image = nil,
            unlocked = true,
        },
        [2] = {
            name = "Awakening of the Trees",
            desc = lorien_2_desc,
            func = nil,
            cost = 5000,
            cooldown = 60,
            active_cooldown = 0,
            duration = nil,
            image = nil,
            unlocked = false,
            locked_desc = "Reclaim Fangorn to call upon powerful Ent allies.",
        },
        [3] = {
            name = "Light of the Eldar",
            desc = elves_0_desc,
            func = nil,
            cost = 2500,
            cooldown = 30,
            active_cooldown = 0,
            duration = 10,
            image = nil,
            unlocked = true,
        },
    }
}