local mType = Game.createMonsterType("Mutated Human")
local monster = {}

monster.description = "a mutated human"
monster.experience = 150
monster.outfit = {
	lookType = 323,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 240
monster.maxHealth = 240
monster.race = "blood"
monster.corpse = 9107
monster.speed = 154
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Take that creature off my back!! I can feel it!", yell = false},
	{text = "You will regret interrupting my studies!", yell = false},
	{text = "You will be the next infected one... CRAAAHHH!", yell = false},
	{text = "Science... is a curse.", yell = false},
	{text = "Run as fast as you can.", yell = false},
	{text = "Oh by the gods! What is this... aaaaaargh!", yell = false}
}

monster.loot = {
	{id = "gold coin", chance = 44000, maxCount = 80},
	{id = "gold coin", chance = 44000, maxCount = 50},
	{id = "strange talisman", chance = 4980},
	{id = "silver amulet", chance = 70},
	{id = "fishbone", chance = 10050},
	{id = 2376, chance = 5030},
	{id = "scale armor", chance = 8080},
	{id = 2696, chance = 8000},
	{id = "fern", chance = 420},
	{id = "worm", chance = 7110, maxCount = 2},
	{id = "peanut", chance = 580},
	{id = 9808, chance = 190},
	{id = "mutated flesh", chance = 19940}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -90, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, startDamage = 60, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, minDamage = -50, maxDamage = -60, type = COMBAT_DEATHDAMAGE, length = 3, spread = 1, effect = CONST_ME_POISONAREA, target = false},
	-- poison
	{name ="combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 20, minDamage = -190, maxDamage = -280, effect = CONST_ME_HITBYPOISON, target = true},
	{name ="speed", interval = 2000, chance = 10, SpeedChange = -600, Duration = 30000}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 220, Duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
