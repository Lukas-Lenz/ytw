extends Node2D
class_name Spawner

var item_scene = load("res://scenes/item.tscn")

@export var itemList : Array
@export var texture : CompressedTexture2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = texture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	
	if event.is_action_pressed("mouse_left"):
		#return a random new Item from itemList
		print("clicked")	
		var randomi = randi_range(0, itemList.size())
		var attributes = itemList[randomi]
		
		var new_item = item_scene.instantiate()
		new_item.set_attr(attributes)
		get_node("..").add_child(new_item)
		
