extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update_lives(input):
	$PlayerHealth.text = "HP: " + str(input)
	
func update_enemy_lives(input):
	$EnemyHealth.text = "Enemy HP: " + str(input)
	
