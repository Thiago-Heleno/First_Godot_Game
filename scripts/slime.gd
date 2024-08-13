extends Node2D

@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_right = $RayCastRight


@export var speed: float = 60.0
var direction = 1

func _process(delta):
	if ray_cast_left.is_colliding():
		direction = 1
		$AnimatedSprite2D.flip_h = false
	if ray_cast_right.is_colliding():
		direction = -1
		$AnimatedSprite2D.flip_h = true
		
	position.x += direction * speed * delta
	
