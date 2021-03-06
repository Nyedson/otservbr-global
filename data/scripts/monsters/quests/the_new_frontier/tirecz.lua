local mType = Game.createMonsterType("Tirecz")
local monster = {}

monster.description = "Tirecz"
monster.experience = 6000
monster.outfit = {
	lookType = 334,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 25000
monster.maxHealth = 25000
monster.race = "blood"
monster.corpse = 0
monster.speed = 220
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	{text = "Hissss!", yell = false}
}

monster.loot = {
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, skill = 72, attack = 100, effect = CONST_ME_DRAWBLOOD},
	{name ="invisible", interval = 2000, chance = 25, effect = CONST_ME_FIREAREA},
	{name ="combat", interval = 2000, chance = 25, minDamage = -120, maxDamage = -460, type = COMBAT_FIREDAMAGE, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = 0, maxDamage = -290, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="combat", interval = 3000, chance = 30, minDamage = -80, maxDamage = -345, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = -200, maxDamage = -370, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_DRAWBLOOD, target = false}
}

monster.defenses = {
	defense = 19,
	armor = 16
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
