local mType = Game.createMonsterType("Falcon Paladin")
local monster = {}

monster.description = "a falcon paladin"
monster.experience = 4920
monster.outfit = {
	lookType = 1071,
	lookHead = 57,
	lookBody = 94,
	lookLegs = 38,
	lookFeet = 86,
	lookAddons = 2,
	lookMount = 0
}

monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 32558
monster.speed = 220
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Uuunngh!", yell = false}
}

monster.loot = {
	{id = "Platinum Coin", chance = 90000, maxCount = 5},
	{id = "Small Diamond", chance = 41000, maxCount = 2},
	{id = "Great Spirit Potion", chance = 41000, maxCount = 2},
	{id = "Small Emerald", chance = 40000, maxCount = 2},
	{id = "Small Amethyst", chance = 40000, maxCount = 3},
	{id = "Assassin Star", chance = 25700, maxCount = 10},
	{id = "Small Ruby", chance = 20700, maxCount = 2},
	{id = "Small Topaz", chance = 20100, maxCount = 2},
	{id = "Onyx Arrow", chance = 14000, maxCount = 15},
	{id = "Red Gem", chance = 7500, maxCount = 3},
	{id = "Green Gem", chance = 4880},
	{id = "Violet Gem", chance = 4180},
	{id = 7633, chance = 2260},
	{id = "Damaged Armor Plates", chance = 1120},
	{id = "Falcon Crest", chance = 730},
	{id = "Golden Armor", chance = 310},
	{id = "Mastermind Shield", chance = 310}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -250, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 50, minDamage = -400, maxDamage = -550, type = COMBAT_PHYSICALDAMAGE, range = 5, shootEffect = CONST_ANI_ROYALSPEAR, target = true},
	{name ="combat", interval = 2000, chance = 20, minDamage = -200, maxDamage = 500, type = COMBAT_PHYSICALDAMAGE, range = 5, shootEffect = CONST_ANI_BOLT, target = true},
	{name ="combat", interval = 2000, chance = 15, minDamage = -350, maxDamage = -450, type = COMBAT_ENERGYDAMAGE, range = 7, shootEffect = CONST_ANI_POWERBOLT, effect = CONST_ME_ENERGYHIT, target = true},
	{name ="combat", interval = 2000, chance = 10, minDamage = -250, maxDamage = -350, type = COMBAT_ENERGYDAMAGE, length = 5, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false}
}

monster.defenses = {
	defense = 50,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 55}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
