local mType = Game.createMonsterType("Sight of Surrender")
local monster = {}

monster.description = "a sight of surrender"
monster.experience = 17000
monster.outfit = {
	lookType = 583,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 28000
monster.maxHealth = 28000
monster.race = "undead"
monster.corpse = 22478
monster.speed = 340
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
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
	staticAttackChance = 80,
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
	{text = "BOW LOW!", yell = false},
	{text = "FEEL THE TRUE MEANING OF VANQUISH!", yell = false},
	{text = "HAHAHAHA DO YOU WANT TO AMUSE YOUR MASTER?", yell = false},
	{text = "NOW YOU WILL SURRENDER!", yell = false}
}

monster.loot = {
	{id = "platinum coin", chance = 100000, maxCount = 15},
	{id = "might ring", chance = 8000},
	{id = "stone skin amulet", chance = 18000},
	{id = "hammer of wrath", chance = 1380},
	{id = "crystal mace", chance = 5500},
	{id = "magic plate armor", chance = 1380},
	{id = "crown legs", chance = 920},
	{id = "crusader helmet", chance = 920},
	{id = "tower shield", chance = 1380},
	{id = "steel boots", chance = 920},
	{id = "onyx flail", chance = 920},
	{id = "jade hammer", chance = 920},
	{id = "great mana potion", chance = 78000, maxCount = 5},
	{id = "great spirit potion", chance = 72000, maxCount = 5},
	{id = "ultimate health potion", chance = 30000, maxCount = 5},
	{id = "blue crystal shard", chance = 23000, maxCount = 3},
	{id = "violet crystal shard", chance = 32000, maxCount = 3},
	{id = "green crystal shard", chance = 21600, maxCount = 3},
	{id = "green crystal splinter", chance = 30000, maxCount = 5},
	{id = "brown crystal splinter", chance = 30410, maxCount = 5},
	{id = "blue crystal splinter", chance = 40000, maxCount = 5},
	{id = "cluster of solace", chance = 1800},
	{id = "sight of surrender's eye", chance = 100000},
	{id = "broken visor", chance = 100000},
	{id = 22542, chance = 460}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -1100, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 15, minDamage = -500, maxDamage = -800, type = COMBAT_ENERGYDAMAGE, length = 8, spread = 3, effect = CONST_ME_YELLOWENERGY, target = true},
	{name ="combat", interval = 2000, chance = 20, minDamage = 0, maxDamage = -500, type = COMBAT_PHYSICALDAMAGE, shootEffect = CONST_ANI_LARGEROCK, target = true}
}

monster.defenses = {
	defense = 70,
	armor = 70,
	{name ="combat", interval = 2000, chance = 30, minDamage = 550, maxDamage = 1100, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 520, Duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 35},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
