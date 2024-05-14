extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Spawning.add_group_to_bullet($BulletNode.dict, "projectiles")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
