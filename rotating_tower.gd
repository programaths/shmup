extends StaticBody2D


@export var spin_factor=1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Position2D.rotate(delta*TAU/2.0*spin_factor)


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_visible_on_screen_notifier_2d_screen_entered():
	process_mode=Node.PROCESS_MODE_ALWAYS
