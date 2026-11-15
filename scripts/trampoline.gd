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
		var y_delta = position.y - body.position.y
		print("gonna bounce")
		print(y_delta)
		if (y_delta > 36):
			print("b")
			animated_sprite_2d.play("launch")
			body.bounce(-400)
		else:
			body.bounce(-300)
	else:
		print("not foundd")
func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		animated_sprite_2d.play("idle")
