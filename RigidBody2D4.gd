extends KinematicBody2D
export (int) var speed = 5
var velocity = Vector2()
var time = 0

func _physics_process(delta):
	time = time + delta

	velocity = Vector2()
	
	if time > 1 and time < 2:
		velocity.x += 0

	velocity = move_and_slide(velocity)
		
	if Input.is_action_pressed("space"):
		$Sprite.play('default')
