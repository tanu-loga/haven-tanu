extends Node
@onready var score_label: Label = $score_label

var score = 0
func add_point():
	score += 1
	score_label.text = "You need %s more coin to unlock exit" % (5 - score)
