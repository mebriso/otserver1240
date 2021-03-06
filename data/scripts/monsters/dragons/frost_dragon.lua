local mType = Game.createMonsterType("Frost Dragon")
local monster = {}

monster.description = "a frost dragon"
monster.experience = 2100
monster.outfit = {
	lookType = 248,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1800
monster.maxHealth = 1800
monster.race = "undead"
monster.corpse = 7091
monster.speed = 212
monster.summonCost = 0
monster.maxSummons = 0

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
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 250,
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
	{text = "YOU WILL FREEZE!", yell = true},
	{text = "ZCHHHHH!", yell = true},
	{text = "I am so cool.", yell = false},
	{text = "Chill out!", yell = false}
}

monster.loot = {
	{id = 1976, chance = 8500},
	{id = "golden mug", chance = 3000},
	{id = "small sapphire", chance = 5200},
	{id = "gold coin", chance = 33000, maxCount = 100},
	{id = "gold coin", chance = 33000, maxCount = 100},
	{id = "gold coin", chance = 33000, maxCount = 42},
	{id = "energy ring", chance = 5000},
	{id = "life crystal", chance = 520},
	{id = "ice rapier", chance = 350},
	{id = "strange helmet", chance = 450},
	{id = "dragon scale mail", chance = 80},
	{id = "royal helmet", chance = 210},
	{id = "tower shield", chance = 340},
	{id = "power bolt", chance = 6000, maxCount = 6},
	{id = "dragon ham", chance = 80370, maxCount = 5},
	{id = "green mushroom", chance = 12000},
	{id = "shard", chance = 550},
	{id = "dragon slayer", chance = 120},
	{id = 7441, chance = 4000}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -225, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 10, minDamage = -175, maxDamage = -380, type = COMBAT_LIFEDRAIN, length = 8, spread = 3, effect = CONST_ME_POFF, target = false},
	{name ="speed", interval = 2000, chance = 5, SpeedChange = -700, Duration = 12000},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = -850, Duration = 18000},
	{name ="combat", interval = 2000, chance = 5, minDamage = -60, maxDamage = -120, type = COMBAT_ICEDAMAGE, effect = CONST_ME_ICETORNADO, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -100, maxDamage = -240, type = COMBAT_ICEDAMAGE, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2000, chance = 5, minDamage = 0, maxDamage = -220, type = COMBAT_PHYSICALDAMAGE, length = 1, spread = 0, effect = CONST_ME_POFF, target = false},
	{name ="speed", interval = 2000, chance = 20, SpeedChange = -600, Duration = 12000}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{name ="combat", interval = 2000, chance = 10, minDamage = 150, maxDamage = 200, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 290, Duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
