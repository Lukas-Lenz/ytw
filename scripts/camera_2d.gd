extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

const MARGIN = 30
const SPEED = 3
const MAX_RIGHT = 600
const MAX_LEFT = -100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	DisplayServer.window_get_size()
	var mouse_pos = get_viewport().get_mouse_position()
	var wp_size = get_viewport().get_visible_rect().size
	
	position
	
	if mouse_pos.x >= wp_size.x - MARGIN && offset.x + SPEED < limit_right:
		offset.x += SPEED
	elif mouse_pos.x <= MARGIN && offset.x - SPEED > limit_left:
		offset.x -= SPEED
