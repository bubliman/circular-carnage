extends Node2D

@export var projectile : PackedScene

@export var shot_timeout = 0.05
@export var shot_speed = 300
@export var shot_amount = 30
@export var total_amount = 220
@export var iteration_rotation = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	shoot()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func shoot():
	var deg = 0
	for i in total_amount / shot_amount:
		deg += iteration_rotation
		for j in shot_amount:
			deg += 360 / shot_amount
			var p = projectile.instantiate()
			add_child(p)
			p.shoot(shot_speed, Vector2.from_angle(deg_to_rad(deg)))
			$Timer.start(shot_timeout)
			await $Timer.timeout
