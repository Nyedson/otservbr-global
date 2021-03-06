local mType = Game.createMonsterType("Charging Outburst")
local monster = {}

monster.description = "Charging Outburst"
monster.experience = 50000
monster.outfit = {
	lookType = 876,
	lookHead = 77,
	lookBody = 82,
	lookLegs = 82,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 12000
monster.maxHealth = 12000
monster.race = "venom"
monster.corpse = 0
monster.speed = 300
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 25
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

monster.events = {"ChargingOutDeath"}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = -300, maxDamage = -1800, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 25, minDamage = -300, maxDamage = -500, type = COMBAT_DEATHDAMAGE, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 25, minDamage = -450, maxDamage = -900, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="combat", interval = 2000, chance = 25, minDamage = -600, maxDamage = -1000, type = COMBAT_PHYSICALDAMAGE, length = 8, spread = 3, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="combat", interval = 2000, chance = 40, target = false},
	{name ="combat", interval = 10000, chance = 100, minDamage = -1500, maxDamage = -2000, target = false}
}

monster.defenses = {
	defense = 100,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -50},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
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
