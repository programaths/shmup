extends RigidDynamicBody2D

func _physics_process(delta):
	var col=move_and_collide(Vector2.UP*512*delta)
	if col:
		var collider=col.get_collider()
		if collider.has_method("hit"):
			collider.call("hit")
		queue_free()


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
