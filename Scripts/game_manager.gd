extends Node2D


var canvas
var health

func _ready():
	canvas = get_node("CanvasLayer")
	health = canvas.get_node("Health")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _player_damage(n):
	if health.value > 0:
		health.value -= n
