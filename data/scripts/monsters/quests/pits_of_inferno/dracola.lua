local mType = Game.createMonsterType("Dracola")
local monster = {}

monster.description = "Dracola"
monster.experience = 11000
monster.outfit = {
	lookType = 231,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 16200
monster.maxHealth = 16200
monster.race = "undead"
monster.corpse = 6307
monster.speed = 370
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5
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
	staticAttackChance = 95,
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
	{text = "Your new name is breakfast.", yell = true},
	{text = "I'm bad to the bone.", yell = true},
	{text = "DEATH CAN'T STOP MY HUNGER!", yell = true}
}

monster.loot = {
	{id = 5944, chance = 100000},
	{id = 5741, chance = 9000},
	{id = 7420, chance = 3000},
	{id = 2177, chance = 12000},
	{id = 5925, chance = 5000, maxCount = 3},
	{id = 7590, chance = 9000, maxCount = 4},
	{id = 7591, chance = 9000, maxCount = 4},
	{id = 6300, chance = 14000},
	{id = 2489, chance = 29000},
	{id = 2148, chance = 29000, maxCount = 100},
	{id = 2148, chance = 29000, maxCount = 100},
	{id = 2152, chance = 20000, maxCount = 8},
	{id = 6500, chance = 6000, maxCount = 4},
	{id = 6546, chance = 100000}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -700, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 3000, chance = 20, minDamage = -800, maxDamage = -1000, type = COMBAT_LIFEDRAIN, length = 8, spread = 3, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="combat", interval = 2000, chance = 20, minDamage = -120, maxDamage = -750, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	-- drown
	{name ="combat", type = CONDITION_DROWN, interval = 1000, chance = 20, length = 8, spread = 3, effect = CONST_ME_POFF, target = false},
	{name ="combat", interval = 2000, chance = 20, minDamage = -300, maxDamage = -870, type = COMBAT_PHYSICALDAMAGE, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_DRAWBLOOD, target = true},
	{name ="combat", interval = 3000, chance = 10, minDamage = 0, maxDamage = -750, type = COMBAT_PHYSICALDAMAGE, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 1000, chance = 23, minDamage = -50, maxDamage = -175, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, minDamage = -100, maxDamage = -200, type = COMBAT_MANADRAIN, range = 7, target = false}
}

monster.defenses = {
	defense = 39,
	armor = 40,
	{name ="combat", interval = 4000, chance = 10, minDamage = 500, maxDamage = 1000, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
