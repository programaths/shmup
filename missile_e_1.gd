extends RigidDynamicBody2D

var direction:Vector2=Vector2.DOWN


func _physics_process(delta):
	var col=move_and_collide(direction*255*delta)
	if col:
		var collider=col.get_collider()
		if collider.has_method("hit"):
			collider.call("hit")
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
