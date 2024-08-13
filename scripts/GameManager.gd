extends Node

var score = 0
var paused = false;

func add_point():
	score += 1
	var label = Hud.get_node("Label")
	label.text = "Coins: " + str(score)

func pause_game():
	print('nigga')
	paused = not paused
	if paused:
		Engine.time_scale = 0
		var node = get_node("res://scenes/pause_menu.tscn")
		get_tree().get_root().add_child(node)
	else:
		Engine.time_scale = 1
