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

func shoot(_speed, _direction):
	speed = _speed
	direction = _direction


func _on_area_entered(area):
	if area.is_in_group("player"):
		queue_free()
	if area.is_in_group("ball"):
		queue_free()
