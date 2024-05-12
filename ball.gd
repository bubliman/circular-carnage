extends RigidBody2D

@export var default_speed = 300
@export var boost_speed = 400
@export var streak_bonus_speed = 50
@export var boost_duration = 3.5
@export var streak_bonus_duration = 0.1

var direction
var speed = default_speed
var streak = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#direction = Vector2.from_angle(randi())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if linear_velocity.x != 0:
		$Sprite2D.flip_h = linear_velocity.x < 0
	#position += direction  * speed * delta

#
#func _on_area_entered(area):
	#bounce(area)
	#
	#
#func bounce(area):
	#if area.is_in_group("left") or area.is_in_group("right"):
		#direction.x = -direction.x + randf_range(-0.1, 0.1)
	#if area.is_in_group("up") or area.is_in_group("down"):
		#direction.y = -direction.y + randf_range(-0.1, 0.1)
	#if area.is_in_group("player"):
		#direction = -global_position.direction_to(area.global_position)
		#$Boost.start(boost_duration + streak_bonus_duration * streak)
		#speed = boost_speed + streak_bonus_speed * streak
		#streak += 1
#
#
#func _on_boost_timeout():
	#speed = default_speed
	#streak = 0
