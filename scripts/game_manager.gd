extends Node
@onready var score_label: Label = $score_label
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $"../AudioStreamPlayer2D"

var score = 0
func add_point():
	score += 1
	score_label.text = "You need %s more coin to unlock exit" % (5 - score)

if a
