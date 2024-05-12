extends Area2D

var speed = 0
var direction = Vector2.ZERO
var screensize = Vector2(480, 720)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += speed * direction * delta
	if position.x > screensize.x:
		queue_free()
	if position.y > screensize.y:
		queue_free()

func shoot(_speed, _direction):
	speed = _speed
	direction = _direction
