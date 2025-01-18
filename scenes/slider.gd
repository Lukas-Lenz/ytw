extends VSlider

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var handle = load("res://graphics/handle-placeholder.svg")
	var slider = load("res://graphics/controller-placeholder.svg")
	add_theme_icon_override("grabber_disabled", handle)
	add_theme_icon_override("grabber", handle)
	add_theme_icon_override("grabber_highlight", handle)
	add_theme_icon_override("slider", slider)
	pass # Replace with function body.
