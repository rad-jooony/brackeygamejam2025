extends Control

@onready var anim: AnimationPlayer = $"../AnimationPlayer"

func _on_start_button_pressed() -> void:
	print("press")
	anim.play("Intro")
	

func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	get_tree().change_scene_to_file("res://GameRoot/GameRoot.tscn")
