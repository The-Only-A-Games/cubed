extends MeshInstance2D



const PROJECTILE = preload("res://Scenes/Player/projectile.tscn")
@onready var marker = %Marker2D

func _physics_process(delta):
	var mouse_pos = get_global_mouse_position()
	var direction = (mouse_pos - global_position).normalized()
	rotation = direction.angle()
	
	if Input.is_action_just_pressed("shoot"):
		_shoot()
	

func _shoot():
	var bullet = PROJECTILE.instantiate()
	
	bullet.global_position = marker.global_position
	bullet.rotation = rotation
	get_tree().current_scene.add_child(bullet)
