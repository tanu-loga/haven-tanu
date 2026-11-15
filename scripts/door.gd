extends Area2D

var obj_score: int = 1
@onready var coin: Area2D = $"../coin"
var is_open: bool = false
@onready var game_manager: Node = %GameManager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


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
