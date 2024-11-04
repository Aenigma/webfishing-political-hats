extends Node

onready var Lure = get_node("/root/SulayreLure")

func _ready():
	Lure.add_content("Aenigma.Political Hats", "camo_hat", "mod://Assets/Cosmetics/camo_hat.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("Aenigma.Political Hats", "maga_hat", "mod://Assets/Cosmetics/maga_hat.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
