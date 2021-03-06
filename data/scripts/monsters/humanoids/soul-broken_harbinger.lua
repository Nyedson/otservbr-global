local mType = Game.createMonsterType("Soul-Broken Harbinger")
local monster = {}

monster.description = "a Soul-Broken Harbinger"
monster.experience = 5800
monster.outfit = {
	lookType = 1137,
	lookHead = 124,
	lookBody = 31,
	lookLegs = 17,
	lookFeet = 81,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 6300
monster.maxHealth = 6300
monster.race = "blood"
monster.corpse = 34775
monster.speed = 420
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "Platinum Coin", chance = 100000, maxCount = 12},
	{id = 34696, chance = 15750, maxCount = 3},
	{id = "Dream Essence Egg", chance = 13700},
	{id = "Elvish Talisman", chance = 4790},
	{id = "Knight Legs", chance = 4450},
	{id = "Glacier Kilt", chance = 4110},
	{id = "Glacier Shoes", chance = 3770},
	{id = "Ice Rapier", chance = 3770},
	{id = "Spellbook of Mind Control", chance = 2400},
	{id = "Crown Shield", chance = 1710},
	{id = "Wood Cape", chance = 1710},
	{id = 26185, chance = 1370},
	{id = "Tower Shield", chance = 680},
	{id = 26199, chance = 680}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -240, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 20, minDamage = 0, maxDamage = -120, type = COMBAT_PHYSICALDAMAGE, range = 7, shootEffect = CONST_ANI_ARROW, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="combat", interval = 2000, chance = 20, minDamage = 200, maxDamage = 250, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 55},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
