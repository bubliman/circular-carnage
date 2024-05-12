extends AnimatableBody2D

var speed = 300
var input_direction = Vector2.ZERO
var screensize = Vector2(480, 720)


func get_input():
	return Input.get_vector("left", "right", "up", "down")
	

func _process(delta):
	
	if input_direction.x != 0:
		$Sprite2D.flip_h = input_direction.x < 0
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)
	

func _physics_process(delta):
	input_direction = get_input()
	position += input_direction * speed * delta
