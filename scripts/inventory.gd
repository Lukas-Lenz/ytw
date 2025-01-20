extends Control

const SIZE = 3

var items : Array

func _ready():
	for i in SIZE:
		for j in SIZE:
			items[i][j] = null

func item_at_spot(pos : Vector2i):
	if pos.x < 0 || pos.x >= SIZE || pos.y < 0 || pos.y > SIZE:
		return null
	else:
		return items[pos.x][pos.y]

func add(item: Item, pos: Vector2i) -> bool:
	
	# position - position + dimensions must be free
	
	
#func _get_drag_data(at_position: Vector2) -> Variant:
	
#	if get_item(at_position)
#	pass
	

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	
	if !(data is Item):
		return false 
	
	data.dimensions
	get_placement()
	
	object_dimension = data.dimensions
	
#	pass
	

#func _drop_data(at_position: Vector2, data: Variant) -> void:
#	pass
	

#func _gui_input(event: InputEvent) -> void:
	
#	if event.is_action_released("mouse_left"):
		
#		accept_event()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
