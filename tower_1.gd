extends StaticBody2D

@export_node_path(Node2D) var Player

func _process(delta):
	$Canon.look_at(get_node(Player).global_position)


func _on_visible_on_screen_notifier_2d_screen_entered():
	process_mode=Node.PROCESS_MODE_ALWAYS


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
