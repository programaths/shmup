extends Node2D

var hits=0

func _ready():
	$Player.on_hit.connect(player_hit)

func player_hit():
	hits=hits+1
	$CanvasLayer/LabelHits.text="HITS: %d"%hits
