extends Area2D

var speed = 300
var velocity

func get_input():
	var input_dir = Input.get_vector("left", "right", "up", "down")
	velocity = input_dir * speed

func _process(delta):
	get_input()
	position += velocity * delta
