local mType = Game.createMonsterType("Bloodback")
local monster = {}

monster.description = "a Bloodback"
monster.experience = 4000
monster.outfit = {
	lookType = 1039,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 5200
monster.maxHealth = 5200
monster.race = "blood"
monster.corpse = 32061
monster.speed = 250
monster.summonCost = 0
monster.maxSummons = 2

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
	illusionable = false,
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

monster.summons = {
	{name = "Wereboar", chance = 20, interval = 2000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You will DIE!", yell = false},
	{text = "The ruthlessness of boars will stamp down the careless!", yell = false}
}

monster.loot = {
	{id = "gold coin", chance = 13600000, maxCount = 100},
	{id = "gold coin", chance = 13600000, maxCount = 100},
	{id = "platinum coin", chance = 13600000, maxCount = 10},
	{id = "great health potion", chance = 13600000, maxCount = 10},
	{id = "red crystal fragment", chance = 13600000, maxCount = 2},
	{id = "small enchanted ruby", chance = 13600000, maxCount = 3},
	{id = "furry club", chance = 13600000},
	{id = "red gem", chance = 13600000},
	{id = "spiked squelcher", chance = 13600000},
	{id = "stone skin amulet", chance = 13600000},
	{id = "wereboar hooves", chance = 13600000, maxCount = 2},
	{id = "wereboar loincloth", chance = 13600000, maxCount = 2},
	{id = "wereboar tusks", chance = 13600000, maxCount = 2},
	{id = "dreaded cleaver", chance = 400},
	{id = "fur armor", chance = 400},
	{id = "fur boots", chance = 400},
	{id = 24758, chance = 250},
	{id = "silver token", chance = 250},
	{id = "wolf backpack", chance = 100}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -290, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 1000, chance = 20, minDamage = -100, maxDamage = -420, type = COMBAT_PHYSICALDAMAGE, range = 7, target = false},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = -600, Duration = 20000},
	{name ="combat", interval = 1000, chance = 14, minDamage = -100, maxDamage = -200, type = COMBAT_DEATHDAMAGE, length = 5, spread = 3, effect = CONST_ME_DRAWBLOOD, target = false}
}

monster.defenses = {
	defense = 45,
	armor = 40,
	{name ="combat", interval = 4000, chance = 15, minDamage = 150, maxDamage = 345, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 70},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
