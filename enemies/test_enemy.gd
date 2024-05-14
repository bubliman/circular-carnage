extends Area2D

signal enemy_lives_changed

var lives = 15
# Called when the node enters the scene tree for the first time.
func _ready():
	enemy_lives_changed.emit(lives)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	if area.is_in_group("ball") and lives > 0:
		hit()
		
func hit():
	lives -= 1
	enemy_lives_changed.emit(lives)
	if lives < 1:
		$AudioStreamPlayer2D.play()
		await $AudioStreamPlayer2D.finished
		queue_free()
