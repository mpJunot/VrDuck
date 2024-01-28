extends "res://addons/godot-xr-tools/objects/pickable.gd"
@onready var aim = $Aim
@onready var visor = $Aim/Visor

func _process(_delta):
	if aim.is_colliding():
		visor.global_transform.origin = aim.get_collision_point()
		visor.visible = true
	else:
		visor.visible = false


func _on_action_pressed(_pickable):
	if aim.is_colliding():
		var target = aim.get_collider()
		if target is Duck:
			print("BAM BADBOUM")
			target.queue_free()
