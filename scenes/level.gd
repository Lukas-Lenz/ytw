extends Node2D

#signal level_won
#signal level_failed

func reset_level():
	get_tree().reload_current_scene()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_fail_area_body_entered(body: Node2D) -> void:
#	emit_signal("level_failed")
	$AudioStreamPlayer.stream = load("res://audio/fail-234710.mp3")
	$AudioStreamPlayer.play()
	while $AudioStreamPlayer.playing:
		pass
	reset_level()


func _on_goal_area_body_entered(body: Node2D) -> void:
#	emit_signal("level_won")
	$AudioStreamPlayer.stream = load("res://audio/success-fanfare-trumpets-6185.mp3")
	$AudioStreamPlayer.play()
	while $AudioStreamPlayer.playing:
		pass
	reset_level()
