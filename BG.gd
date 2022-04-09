extends Sprite2D



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	region_rect.position.y=region_rect.position.y-64*delta
