local mType = Game.createMonsterType("Boogy")
local monster = {}

monster.description = "a boogy"
monster.experience = 950
monster.outfit = {
	lookType = 981,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1300
monster.maxHealth = 1300
monster.race = "blood"
monster.corpse = 29106
monster.speed = 210
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 20,
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
	{text = "Go to sleep!", yell = false}
}

monster.loot = {
	{id = 27058, chance = 3000, maxCount = 5},
	{id = 7439, chance = 1500},
	{id = 9980, chance = 100},
	{id = 28998, chance = 15000},
	{id = 2148, chance = 100000, maxCount = 200},
	{id = 2418, chance = 900},
	{id = 5015, chance = 100},
	{id = 27630, chance = 2500, maxCount = 2},
	{id = 18420, chance = 3600, maxCount = 2},
	{id = 2802, chance = 3200},
	{id = 7761, chance = 3000, maxCount = 3},
	{id = 7588, chance = 15000},
	{id = 7887, chance = 3200},
	{id = 2791, chance = 4500}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -450, effect = CONST_ME_DRAWBLOOD},
	-- physical damage
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 11, minDamage = -100, maxDamage = -300, shootEffect = CONST_ANI_WHIRLWINDCLUB, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="combat", interval = 2000, chance = 15, minDamage = -60, maxDamage = -115, type = COMBAT_ENERGYDAMAGE, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_EXPLOSIONAREA, target = true}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 450, Duration = 5000},
	{name ="combat", interval = 2000, chance = 10, minDamage = 0, maxDamage = 110, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 70},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
