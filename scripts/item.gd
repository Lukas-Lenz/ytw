extends Node2D
class_name Item

@export var item_name : String
@export var dimensions : Vector2i
@export var weight : float


func set_attr(attributes):
	dimensions = attributes.get("dimensions", Vector2i(1,1))
	weight = attributes.get("weight", 0)
	name = attributes.get("item_name")
	#var texture_path = attributes.get("texture")
	$Sprite2D.texture = attributes.get("texture")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
