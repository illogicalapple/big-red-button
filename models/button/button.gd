extends Node3D

var backwards = false

func click():
	backwards = false
	$AnimationPlayer.play("click")

func _on_animation_player_animation_finished(anim_name):
	if backwards:
		$AnimationPlayer.stop()
		backwards = false
	else:
		$AnimationPlayer.play_backwards(anim_name)
		backwards = true
