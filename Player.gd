extends CharacterBody2D


var missile_scn=preload("res://missile_1.tscn")
signal on_hit()


func _physics_process(delta):
	if !$VisibleOnScreenNotifier2D.is_on_screen():
		velocity=(get_viewport_center()-global_position)*0.4
		move_and_slide()
		return
	
	if Input.is_action_just_pressed("shoot"):
		var m1=missile_scn.instantiate()
		get_tree().root.add_child(m1)
		m1.global_position=global_position+Vector2.UP*32
	var dir=Input.get_vector("left","right","up","down")
	velocity+=dir*8
	if dir.length_squared()==0:
		velocity=velocity*0.99
	velocity=velocity.limit_length(512)
	move_and_slide()
	
func get_viewport_center():
	var transform : Transform2D = get_viewport_transform()
	var scale : Vector2 = transform.get_scale()
	return -transform.origin / scale + get_viewport_rect().size / scale / 2

func hit():
	on_hit.emit()


