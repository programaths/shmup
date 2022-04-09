extends Position2D

var missile_scn=preload("res://missile_e_1.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var m1=missile_scn.instantiate()
	m1.direction=Vector2.DOWN.rotated(global_rotation)
	$"/root".add_child(m1)
	m1.global_position=global_position
	m1.rotation=global_rotation
