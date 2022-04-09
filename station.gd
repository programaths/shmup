extends RigidDynamicBody2D


func _process(delta):
	position.y=position.y+64*delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_visible_on_screen_notifier_2d_screen_entered():
	process_mode=Node.PROCESS_MODE_ALWAYS

func hit():
	queue_free()
