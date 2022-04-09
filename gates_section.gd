extends Node2D

var player=preload("res://Player.gd")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_visible_on_screen_notifier_2d_screen_entered():
	process_mode=Node.PROCESS_MODE_ALWAYS


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_area_2d_body_entered(body):
	if body is player:
		$Area2D.body_entered.disconnect(_on_area_2d_body_entered)
		await get_tree().create_timer(3).timeout
		$Part1.open()
		$Part2.open()
		$Part3.open()
		
