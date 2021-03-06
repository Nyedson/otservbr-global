local mType = Game.createMonsterType("Novice of the Cult")
local monster = {}

monster.description = "a novice of the cult"
monster.experience = 100
monster.outfit = {
	lookType = 133,
	lookHead = 114,
	lookBody = 95,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 285
monster.maxHealth = 285
monster.race = "blood"
monster.corpse = 20467
monster.speed = 200
monster.summonCost = 0
monster.maxSummons = 1

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
	runHealth = 40,
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
	{name = "Chicken", chance = 10, interval = 2000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Fear us!", yell = false},
	{text = "You will not tell anyone what you have seen!", yell = false},
	{text = "Your curiosity will be punished!", yell = false}
}

monster.loot = {
	{id = 1962, chance = 700},
	{id = "small diamond", chance = 210},
	{id = "gold coin", chance = 43380, maxCount = 40},
	{id = "wand of vortex", chance = 450},
	{id = "garlic necklace", chance = 420},
	{id = "dwarven ring", chance = 500},
	{id = "scarf", chance = 2900},
	{id = "pirate voodoo doll", chance = 520},
	{id = 6087, chance = 970},
	{id = "cultish robe", chance = 1030},
	{id = "rope belt", chance = 5910}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -65, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, startDamage = 1, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, minDamage = -20, maxDamage = -80, type = COMBAT_LIFEDRAIN, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_MAGIC_RED, target = true}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="combat", interval = 2000, chance = 15, minDamage = 20, maxDamage = 40, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -8},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = -8}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
