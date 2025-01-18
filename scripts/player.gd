extends CharacterBody2D

const SPEED = 300.0

var physics_enabled : bool

enum {SITTING, FLYING, GLIDING, FALLING}

var textures = {
	SITTING : "res://graphics/player-catapult-placeholder.svg",
	FLYING : "res://graphics/player-flying-placeholder.svg"
}

var playerState

# no error handling here please: if something 
# goes wrong we should know asap
func set_sprite(state) -> void:
	var texturePath = textures[state]
	$BauerSprite.texture = load(texturePath)

# state machine is simple enough that 
func change_state(state):
	playerState = state
	set_sprite(state)
	physics_enabled = (state != SITTING)

func _ready() -> void:
	change_state(SITTING)
	velocity = Vector2i(300, -1000)

func _physics_process(delta: float) -> void:
	
	if !physics_enabled:
		return
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	
	move_and_slide()


func _on_launch_button_pressed() -> void:
	
	var sl = $"../CatapultControl/Slider"
	velocity.y = -(sl.value + 50) * 10
	velocity.x = sl.value * 5
	
	change_state(FLYING)
