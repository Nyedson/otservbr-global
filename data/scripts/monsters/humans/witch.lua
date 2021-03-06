local mType = Game.createMonsterType("Witch")
local monster = {}

monster.description = "a witch"
monster.experience = 120
monster.outfit = {
	lookType = 54,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 300
monster.maxHealth = 300
monster.race = "blood"
monster.corpse = 20535
monster.speed = 204
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 30,
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
	{text = "Horax Pokti!", yell = false},
	{text = "Herba budinia ex!", yell = false},
	{text = "Hihihihi!", yell = false}
}

monster.loot = {
	{id = "wolf tooth chain", chance = 10120},
	{id = "gold coin", chance = 64000, maxCount = 40},
	{id = "necrotic rod", chance = 1140},
	{id = "garlic necklace", chance = 1000},
	{id = "silver dagger", chance = 500},
	{id = "sickle", chance = 3910},
	{id = "leather boots", chance = 4950},
	{id = "coat", chance = 2010},
	{id = "cape", chance = 4870},
	{id = "cookie", chance = 29750, maxCount = 8},
	{id = "star herb", chance = 8950},
	{id = "witch broom", chance = 10000},
	{id = "witch hat", chance = 80},
	{id = "stuffed toad", chance = 10},
	{id = "bag of apple slices", chance = 920}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -20, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 20, minDamage = -30, maxDamage = -75, type = COMBAT_FIREDAMAGE, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="firefield", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="outfit", interval = 2000, chance = 1}
}

monster.defenses = {
	defense = 15,
	armor = 15
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
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
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
