extends CharacterBody2D

@onready
var ori_pos=position.x

var missile_scn=preload("res://missile_e_1.tscn")

func _process(delta):
	position.x=ori_pos+sin(Time.get_ticks_msec()/1000.0)*128
	position.y=position.y+64*delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_visible_on_screen_notifier_2d_screen_entered():
	#set_process(true)
	process_mode=Node.PROCESS_MODE_ALWAYS

func hit():
	queue_free()
