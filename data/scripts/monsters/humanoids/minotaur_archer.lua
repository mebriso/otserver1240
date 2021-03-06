local mType = Game.createMonsterType("Minotaur Archer")
local monster = {}

monster.description = "a minotaur archer"
monster.experience = 65
monster.outfit = {
	lookType = 24,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 100
monster.maxHealth = 100
monster.race = "blood"
monster.corpse = 5982
monster.speed = 160
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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 10,
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
	{text = "Ruan Wihmpy!", yell = false},
	{text = "Kaplar!", yell = false}
}

monster.loot = {
	{id = "gold coin", chance = 75410, maxCount = 30},
	{id = "crossbow", chance = 830},
	{id = "brass armor", chance = 530},
	{id = "scale armor", chance = 530},
	{id = "bolt", chance = 90450, maxCount = 20},
	{id = "meat", chance = 5000},
	{id = "minotaur leather", chance = 1900},
	{id = "piercing bolt", chance = 12340, maxCount = 4},
	{id = "broken crossbow", chance = 15400},
	{id = "minotaur horn", chance = 1990, maxCount = 2},
	{id = "piece of archer armor", chance = 8260}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -25, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 40, minDamage = 0, maxDamage = -80, type = COMBAT_PHYSICALDAMAGE, range = 7, shootEffect = CONST_ANI_BOLT, target = false}
}

monster.defenses = {
	defense = 10,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = -1}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
