local mType = Game.createMonsterType("Amazon")
local monster = {}

monster.description = "an amazon"
monster.experience = 60
monster.outfit = {
	lookType = 137,
	lookHead = 113,
	lookBody = 120,
	lookLegs = 95,
	lookFeet = 115,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 110
monster.maxHealth = 7200
monster.race = "blood"
monster.corpse = 20323
monster.speed = 172
monster.summonCost = 390
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
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
	{text = "Yeeee ha!", yell = false},
	{text = "Your head shall be mine!", yell = false},
	{text = "Your head will be mine!", yell = false}
}

monster.loot = {
	{id = "dagger", chance = 80000},
	{id = 2229, chance = 80000, maxCount = 2},
	{id = "gold coin", chance = 40000, maxCount = 20},
	{id = "brown bread", chance = 30000},
	{id = "sabre", chance = 23000},
	{id = "girlish hair decoration", chance = 10000},
	{id = "protective charm", chance = 5200},
	{id = 2050, chance = 1000},
	{id = "crystal necklace", chance = 260},
	{id = "small ruby", chance = 130}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -45, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 15, minDamage = 0, maxDamage = -40, type = COMBAT_PHYSICALDAMAGE, range = 5, shootEffect = CONST_ANI_THROWINGKNIFE, target = false}
}

monster.defenses = {
	defense = 10,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
