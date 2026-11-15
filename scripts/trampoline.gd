extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print("gonna bounce")
		if body.global_position.y < global_position.y:
			print("b")
			body.bounce(-800)
			animated_sprite_2d.play("launch")
		else:
			print("nah")
	else:
		print("not foundd")
func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		animated_sprite_2d.play("idle")
