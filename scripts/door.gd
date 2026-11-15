extends Area2D

var obj_score: int = 5

var is_open: bool = false
@onready var game_manager: Node = %GameManager
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

@onready var win_screen: ColorRect = $win_screen
@onready var door_label: Label = $door_label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animated_sprite_2d.animation = "default"
	win_screen.hide()
	door_label.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not is_open:
		open_door()
		#pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		pass

func open_door():
	if game_manager.score == obj_score:
		is_open = true
		print("door unlocked")
		animated_sprite_2d.animation = "open"
