local mType = Game.createMonsterType("Professor Maxxen")
local monster = {}

monster.description = "Professor Maxxen"
monster.experience = 15500
monster.outfit = {
	lookType = 679,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 90000
monster.maxHealth = 90000
monster.race = "venom"
monster.corpse = 24279
monster.speed = 340
monster.summonCost = 0
monster.maxSummons = 8

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
	staticAttackChance = 90,
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

monster.summons = {
	{name = "walker", chance = 10, interval = 2000},
	{name = "glooth trasher", chance = 10, interval = 2000},
	{name = "glooth smasher", chance = 10, interval = 2000},
	{name = "glooth slasher", chance = 10, interval = 2000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 24270, chance = 1000},
	{id = 23663, chance = 1000}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, skill = 180, attack = 200, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 11, minDamage = -250, maxDamage = -500, type = COMBAT_ENERGYDAMAGE, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 2000, chance = 20, minDamage = -450, maxDamage = -1500, type = COMBAT_MANADRAIN, length = 8, spread = 3, effect = CONST_ME_TELEPORT, target = false},
	{name ="combat", interval = 2000, chance = 20, minDamage = -450, maxDamage = -500, type = COMBAT_FIREDAMAGE, length = 8, spread = 3, effect = CONST_ME_FIREATTACK, target = false},
	{name ="combat", interval = 2000, chance = 22, target = false},
	{name ="combat", interval = 2000, chance = 16, range = 2, target = false},
	{name ="combat", interval = 2000, chance = 20, target = false},
	{name ="combat", interval = 2000, chance = 9, target = false}
}

monster.defenses = {
	defense = 45,
	armor = 40,
	{name ="speed", interval = 2000, chance = 13, SpeedChange = 460, Duration = 4000},
	{name ="combat", interval = 2000, chance = 20, minDamage = 200, maxDamage = 250, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 30000, chance = 50, target = false},
	{name ="combat", interval = 2000, chance = 5, target = false},
	{name ="combat", interval = 1000, chance = 100, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
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
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
