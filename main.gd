extends Node

onready var Lure = get_node("/root/SulayreLure")
	
func _clear_moddes_cosmetics():
	var file = File.new()
	file.open("user://webfishing_migrated_data.save", File.READ)
	var save = file.get_var()
	
	file.close()
	
	var regex = RegEx.new()
	regex.compile("^[A-Z].*\\..*")

	var narray = []
	
	for c in save["cosmetics_unlocked"]:
		if not regex.search(c):
			narray.append(c)
		else:
			print(c)
	
	save["cosmetics_unlocked"] = narray
	# print(save["cosmetics_unlocked"].filter(_is_woof))
	
	file.open("user://webfishing_migrated_data.save", File.WRITE)
	file.store_var(save)
	file.close()

func _ready():
	Lure.add_content("Aenigma.Political Hats", "camo_hat", "mod://Assets/Cosmetics/camo_hat.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("Aenigma.Political Hats", "maga_hat", "mod://Assets/Cosmetics/maga_hat.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
