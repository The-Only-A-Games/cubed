extends Area2D


## Projectile basic bullet
const SPEED = 400.0
const MAX_DISTANCE = 20.0
var travelled_distance = 0.0


func _physics_process(delta):
	position += Vector2.RIGHT.rotated(rotation) * SPEED * delta
	
	travelled_distance += 10 * delta
	
	if travelled_distance >= MAX_DISTANCE:
		queue_free()


func _on_body_entered(body):
	if body.is_in_group("Enemy"):
		body.take_damage(50)
		queue_free()
