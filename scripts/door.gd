extends Area2D

var obj_score: int = 6

var is_open: bool = false
@onready var game_manager: Node = $"../../GameManager"

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

@onready var win_screen: ColorRect = $win_screen
@onready var door_label: Label = $door_label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animated_sprite_2d.animation = "default"
	win_screen.visible = false
	door_label.visible = false
	collision_shape_2d.disabled = true
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not is_open:
		open_door()
		
		#pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		is_open = true
		win_screen.visible = true
		door_label.visible = true
		if door_label.visible == true:
			print("ABCD")
		body.can_move = false
		print("shown")
		

func open_door():
	if game_manager.score == obj_score:
		collision_shape_2d.disabled = false
		is_open = true
		print("door unlocked")
		animated_sprite_2d.animation = "open"
