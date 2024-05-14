extends Node2D

@export var projectile : PackedScene

@export var shot_timeout = 0.5
@export var shot_speed = 300
@export var shot_amount = 24
@export var total_amount = 220
@export var iteration_rotation = 10
var flip = true
var counter = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Timer.is_stopped():
		counter += 1
		shoot()
	
	
func shoot():
	flip = not flip
	var deg = 0
	deg += iteration_rotation
	for j in shot_amount:

		deg += 360 / shot_amount
		var offset = 0
		var offset2 = 0
		if flip:
			offset2 = 360 / shot_amount / 2
		for k in 4:
			var p = projectile.instantiate()
			add_child(p)
			p.shoot(shot_speed, Vector2.from_angle(deg_to_rad(deg+offset+offset2 + counter)))
			offset += 90
		
		$Timer.start(shot_timeout)
		
