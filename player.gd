extends AnimatableBody2D

signal lives_changed

var speed = 300
var input_direction = Vector2.ZERO
var screensize = Vector2(480, 720)
var lives = 10

func _ready():
	lives_changed.emit(lives)

func get_input():
	return Input.get_vector("left", "right", "up", "down")
	
	

func _process(delta):
	if input_direction.x != 0:
		$Sprite2D.flip_h = input_direction.x < 0

func _physics_process(delta):
	input_direction = get_input()
	position += input_direction * speed * delta

#
#func _on_area_2d_area_entered(area):
	#print("_on_area_2d_area_entered")
	#

func hit():
	lives -= 1
	lives_changed.emit(lives)
	if lives < 1:
		queue_free()


#func _on_area_2d_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	#
	#print("_on_area_2d_area_shape_entered")
#
	#var other_shape_owner = area.shape_find_owner(area_shape_index)
	#var other_shape_node = area.shape_owner_get_owner(other_shape_owner)
#
	#var local_shape_owner = shape_find_owner(local_shape_index)
	#var local_shape_node = shape_owner_get_owner(local_shape_owner)

	#if other_shape_node.is_in_group("projectiles"):
		#hit()
		#area.queue_free()
		
		

#
#
#func _on_area_2d_body_entered(body):
	#print("_on_area_2d_body_entered")
#
#
#func _on_area_2d_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	#print("_on_area_2d_body_shape_entered")
