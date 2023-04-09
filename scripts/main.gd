extends Node3D

@onready var button = $Button
var clicks = 0

signal mouse_entered
signal mouse_exit

func _unhandled_input(event):
	if event.is_action_pressed("click"):
		button.click()
		clicks += 1
		$GUI.update_clicks(clicks)
