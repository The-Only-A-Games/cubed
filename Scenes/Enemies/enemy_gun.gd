extends MeshInstance2D


var can_shoot = true
const ENEMY_PROJECTILE = preload("res://Scenes/Enemies/enemy_projectile.tscn")
@onready var marker = $Marker2D
@onready var ray_cast = $RayCast2D
@onready var timer = $Timer
@onready var player = get_parent().get_parent().get_node("Player")



func _physics_process(delta):
	var mouse_pos = get_global_mouse_position()
	var direction = (player.global_position - global_position).normalized()
	rotation = direction.angle()
	
	if ray_cast.is_colliding():
		var collider = ray_cast.get_collider()
		if collider.is_in_group("player") and can_shoot:
			_shoot()
			print("hit player")
	
	

func _shoot():
	var bullet = ENEMY_PROJECTILE.instantiate()
	
	bullet.global_position = marker.global_position
	bullet.rotation = rotation
	get_tree().current_scene.add_child(bullet)
	can_shoot = false


func _on_timer_timeout():
	can_shoot = true
